.class public abstract Lcom/android/org/bouncycastle/math/raw/Nat192;
.super Ljava/lang/Object;
.source "Nat192.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add([I[I[I)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 19
    long-to-int v3, v0

    aput v3, p2, v2

    .line 20
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 21
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 22
    long-to-int v4, v0

    aput v4, p2, v3

    .line 23
    ushr-long/2addr v0, v2

    .line 24
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 25
    long-to-int v4, v0

    aput v4, p2, v3

    .line 26
    ushr-long/2addr v0, v2

    .line 27
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 28
    long-to-int v4, v0

    aput v4, p2, v3

    .line 29
    ushr-long/2addr v0, v2

    .line 30
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 31
    long-to-int v4, v0

    aput v4, p2, v3

    .line 32
    ushr-long/2addr v0, v2

    .line 33
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 34
    long-to-int v4, v0

    aput v4, p2, v3

    .line 35
    ushr-long/2addr v0, v2

    .line 36
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addBothTo([I[I[I)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 41
    const-wide/16 v0, 0x0

    .line 42
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 43
    long-to-int v3, v0

    aput v3, p2, v2

    .line 44
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 45
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 46
    long-to-int v4, v0

    aput v4, p2, v3

    .line 47
    ushr-long/2addr v0, v2

    .line 48
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 49
    long-to-int v4, v0

    aput v4, p2, v3

    .line 50
    ushr-long/2addr v0, v2

    .line 51
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 52
    long-to-int v4, v0

    aput v4, p2, v3

    .line 53
    ushr-long/2addr v0, v2

    .line 54
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 55
    long-to-int v4, v0

    aput v4, p2, v3

    .line 56
    ushr-long/2addr v0, v2

    .line 57
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 58
    long-to-int v4, v0

    aput v4, p2, v3

    .line 59
    ushr-long/2addr v0, v2

    .line 60
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addTo([II[III)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "cIn"    # I

    .line 89
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 90
    .local v0, "c":J
    add-int/lit8 v4, p1, 0x0

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x0

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 91
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 92
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 93
    add-int/lit8 v5, p1, 0x1

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 94
    add-int/lit8 v5, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v5

    .line 95
    ushr-long/2addr v0, v4

    .line 96
    add-int/lit8 v5, p1, 0x2

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 97
    add-int/lit8 v5, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v5

    .line 98
    ushr-long/2addr v0, v4

    .line 99
    add-int/lit8 v5, p1, 0x3

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 100
    add-int/lit8 v5, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v5

    .line 101
    ushr-long/2addr v0, v4

    .line 102
    add-int/lit8 v5, p1, 0x4

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 103
    add-int/lit8 v5, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v5

    .line 104
    ushr-long/2addr v0, v4

    .line 105
    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v2, v7

    add-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 106
    add-int/lit8 v2, p3, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 107
    ushr-long/2addr v0, v4

    .line 108
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addTo([I[I)I
    .registers 13
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 65
    const-wide/16 v0, 0x0

    .line 66
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 67
    long-to-int v3, v0

    aput v3, p1, v2

    .line 68
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 69
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 70
    long-to-int v4, v0

    aput v4, p1, v3

    .line 71
    ushr-long/2addr v0, v2

    .line 72
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 73
    long-to-int v4, v0

    aput v4, p1, v3

    .line 74
    ushr-long/2addr v0, v2

    .line 75
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 76
    long-to-int v4, v0

    aput v4, p1, v3

    .line 77
    ushr-long/2addr v0, v2

    .line 78
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 79
    long-to-int v4, v0

    aput v4, p1, v3

    .line 80
    ushr-long/2addr v0, v2

    .line 81
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 82
    long-to-int v4, v0

    aput v4, p1, v3

    .line 83
    ushr-long/2addr v0, v2

    .line 84
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addToEachOther([II[II)I
    .registers 14
    .param p0, "u"    # [I
    .param p1, "uOff"    # I
    .param p2, "v"    # [I
    .param p3, "vOff"    # I

    .line 113
    const-wide/16 v0, 0x0

    .line 114
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p3, 0x0

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    add-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 115
    add-int/lit8 v2, p1, 0x0

    long-to-int v3, v0

    aput v3, p0, v2

    .line 116
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 117
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 118
    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 119
    add-int/lit8 v3, p1, 0x1

    long-to-int v6, v0

    aput v6, p0, v3

    .line 120
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 121
    ushr-long/2addr v0, v2

    .line 122
    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 123
    add-int/lit8 v3, p1, 0x2

    long-to-int v6, v0

    aput v6, p0, v3

    .line 124
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 125
    ushr-long/2addr v0, v2

    .line 126
    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 127
    add-int/lit8 v3, p1, 0x3

    long-to-int v6, v0

    aput v6, p0, v3

    .line 128
    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    .line 129
    ushr-long/2addr v0, v2

    .line 130
    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 131
    add-int/lit8 v3, p1, 0x4

    long-to-int v6, v0

    aput v6, p0, v3

    .line 132
    add-int/lit8 v3, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v3

    .line 133
    ushr-long/2addr v0, v2

    .line 134
    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    add-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 135
    add-int/lit8 v3, p1, 0x5

    long-to-int v4, v0

    aput v4, p0, v3

    .line 136
    add-int/lit8 v3, p3, 0x5

    long-to-int v4, v0

    aput v4, p2, v3

    .line 137
    ushr-long/2addr v0, v2

    .line 138
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist copy([II[II)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 153
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget v1, p0, v1

    aput v1, p2, v0

    .line 154
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    aput v1, p2, v0

    .line 155
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget v1, p0, v1

    aput v1, p2, v0

    .line 156
    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    aget v1, p0, v1

    aput v1, p2, v0

    .line 157
    add-int/lit8 v0, p3, 0x4

    add-int/lit8 v1, p1, 0x4

    aget v1, p0, v1

    aput v1, p2, v0

    .line 158
    add-int/lit8 v0, p3, 0x5

    add-int/lit8 v1, p1, 0x5

    aget v1, p0, v1

    aput v1, p2, v0

    .line 159
    return-void
.end method

.method public static blacklist copy([I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 143
    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    .line 144
    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    .line 145
    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    .line 146
    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    .line 147
    const/4 v0, 0x4

    aget v1, p0, v0

    aput v1, p1, v0

    .line 148
    const/4 v0, 0x5

    aget v1, p0, v0

    aput v1, p1, v0

    .line 149
    return-void
.end method

.method public static blacklist copy64([JI[JI)V
    .registers 7
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I

    .line 170
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 171
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 172
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 173
    return-void
.end method

.method public static blacklist copy64([J[J)V
    .registers 5
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 163
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 164
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 165
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 166
    return-void
.end method

.method public static blacklist create()[I
    .registers 1

    .line 177
    const/4 v0, 0x6

    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist create64()[J
    .registers 1

    .line 182
    const/4 v0, 0x3

    new-array v0, v0, [J

    return-object v0
.end method

.method public static blacklist createExt()[I
    .registers 1

    .line 187
    const/16 v0, 0xc

    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist createExt64()[J
    .registers 1

    .line 192
    const/4 v0, 0x6

    new-array v0, v0, [J

    return-object v0
.end method

.method public static blacklist diff([II[II[II)Z
    .registers 13
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 197
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([II[II)Z

    move-result v0

    .line 198
    .local v0, "pos":Z
    if-eqz v0, :cond_a

    .line 200
    invoke-static/range {p0 .. p5}, Lcom/android/org/bouncycastle/math/raw/Nat192;->sub([II[II[II)I

    goto :goto_13

    .line 204
    :cond_a
    move-object v1, p2

    move v2, p3

    move-object v3, p0

    move v4, p1

    move-object v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/raw/Nat192;->sub([II[II[II)I

    .line 206
    :goto_13
    return v0
.end method

.method public static blacklist eq([I[I)Z
    .registers 5
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 211
    const/4 v0, 0x5

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_e

    .line 213
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_b

    .line 215
    const/4 v1, 0x0

    return v1

    .line 211
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 218
    .end local v0    # "i":I
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist eq64([J[J)Z
    .registers 7
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    .line 223
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_10

    .line 225
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_d

    .line 227
    const/4 v1, 0x0

    return v1

    .line 223
    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 230
    .end local v0    # "i":I
    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 5
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 235
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_2a

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xc0

    if-gt v0, v1, :cond_2a

    .line 240
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    .line 241
    .local v0, "z":[I
    const/4 v1, 0x0

    .line 242
    .local v1, "i":I
    :goto_13
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_29

    .line 244
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v0, v1

    .line 245
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v1, v2

    goto :goto_13

    .line 247
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_29
    return-object v0

    .line 237
    .end local v0    # "z":[I
    .end local v1    # "i":I
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist fromBigInteger64(Ljava/math/BigInteger;)[J
    .registers 6
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 252
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_2a

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xc0

    if-gt v0, v1, :cond_2a

    .line 257
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create64()[J

    move-result-object v0

    .line 258
    .local v0, "z":[J
    const/4 v1, 0x0

    .line 259
    .local v1, "i":I
    :goto_13
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_29

    .line 261
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    aput-wide v3, v0, v1

    .line 262
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v1, v2

    goto :goto_13

    .line 264
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_29
    return-object v0

    .line 254
    .end local v0    # "z":[J
    .end local v1    # "i":I
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist getBit([II)I
    .registers 5
    .param p0, "x"    # [I
    .param p1, "bit"    # I

    .line 269
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 271
    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0

    .line 273
    :cond_8
    shr-int/lit8 v1, p1, 0x5

    .line 274
    .local v1, "w":I
    if-ltz v1, :cond_18

    const/4 v2, 0x6

    if-lt v1, v2, :cond_10

    goto :goto_18

    .line 278
    :cond_10
    and-int/lit8 v0, p1, 0x1f

    .line 279
    .local v0, "b":I
    aget v2, p0, v1

    ushr-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x1

    return v2

    .line 276
    .end local v0    # "b":I
    :cond_18
    :goto_18
    return v0
.end method

.method public static blacklist gte([II[II)Z
    .registers 9
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I

    .line 298
    const/4 v0, 0x5

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x1

    if-ltz v0, :cond_1a

    .line 300
    add-int v2, p1, v0

    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 301
    .local v2, "x_i":I
    add-int v4, p3, v0

    aget v4, p2, v4

    xor-int/2addr v3, v4

    .line 302
    .local v3, "y_i":I
    if-ge v2, v3, :cond_14

    .line 303
    const/4 v1, 0x0

    return v1

    .line 304
    :cond_14
    if-le v2, v3, :cond_17

    .line 305
    return v1

    .line 298
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 307
    .end local v0    # "i":I
    :cond_1a
    return v1
.end method

.method public static blacklist gte([I[I)Z
    .registers 7
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 284
    const/4 v0, 0x5

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x1

    if-ltz v0, :cond_16

    .line 286
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 287
    .local v2, "x_i":I
    aget v4, p1, v0

    xor-int/2addr v3, v4

    .line 288
    .local v3, "y_i":I
    if-ge v2, v3, :cond_10

    .line 289
    const/4 v1, 0x0

    return v1

    .line 290
    :cond_10
    if-le v2, v3, :cond_13

    .line 291
    return v1

    .line 284
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 293
    .end local v0    # "i":I
    :cond_16
    return v1
.end method

.method public static blacklist isOne([I)Z
    .registers 5
    .param p0, "x"    # [I

    .line 312
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    .line 314
    return v0

    .line 316
    :cond_7
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_8
    const/4 v3, 0x6

    if-ge v1, v3, :cond_13

    .line 318
    aget v3, p0, v1

    if-eqz v3, :cond_10

    .line 320
    return v0

    .line 316
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 323
    .end local v1    # "i":I
    :cond_13
    return v2
.end method

.method public static blacklist isOne64([J)Z
    .registers 7
    .param p0, "x"    # [J

    .line 328
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a

    .line 330
    return v0

    .line 332
    :cond_a
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_b
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1a

    .line 334
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_17

    .line 336
    return v0

    .line 332
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 339
    .end local v1    # "i":I
    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isZero([I)Z
    .registers 3
    .param p0, "x"    # [I

    .line 344
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_d

    .line 346
    aget v1, p0, v0

    if-eqz v1, :cond_a

    .line 348
    const/4 v1, 0x0

    return v1

    .line 344
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 351
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isZero64([J)Z
    .registers 6
    .param p0, "x"    # [J

    .line 356
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_11

    .line 358
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_e

    .line 360
    const/4 v1, 0x0

    return v1

    .line 356
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 363
    .end local v0    # "i":I
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist mul([II[II[II)V
    .registers 32
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    .line 425
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 426
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 427
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 428
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 429
    .local v8, "y_3":J
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 430
    .local v10, "y_4":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 433
    .local v12, "y_5":J
    const-wide/16 v14, 0x0

    .local v14, "c":J
    add-int/lit8 v16, p1, 0x0

    move-wide/from16 v17, v12

    .end local v12    # "y_5":J
    .local v17, "y_5":J
    aget v12, p0, v16

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 434
    .local v12, "x_0":J
    mul-long v19, v12, v0

    add-long v14, v14, v19

    .line 435
    add-int/lit8 v16, p5, 0x0

    long-to-int v2, v14

    aput v2, p4, v16

    .line 436
    const/16 v2, 0x20

    ushr-long/2addr v14, v2

    .line 437
    mul-long v21, v12, v4

    add-long v14, v14, v21

    .line 438
    add-int/lit8 v3, p5, 0x1

    long-to-int v2, v14

    aput v2, p4, v3

    .line 439
    const/16 v2, 0x20

    ushr-long/2addr v14, v2

    .line 440
    mul-long v21, v12, v6

    add-long v14, v14, v21

    .line 441
    add-int/lit8 v3, p5, 0x2

    long-to-int v2, v14

    aput v2, p4, v3

    .line 442
    const/16 v2, 0x20

    ushr-long/2addr v14, v2

    .line 443
    mul-long v21, v12, v8

    add-long v14, v14, v21

    .line 444
    add-int/lit8 v3, p5, 0x3

    long-to-int v2, v14

    aput v2, p4, v3

    .line 445
    const/16 v2, 0x20

    ushr-long/2addr v14, v2

    .line 446
    mul-long v21, v12, v10

    add-long v14, v14, v21

    .line 447
    add-int/lit8 v3, p5, 0x4

    long-to-int v2, v14

    aput v2, p4, v3

    .line 448
    const/16 v2, 0x20

    ushr-long/2addr v14, v2

    .line 449
    mul-long v21, v12, v17

    add-long v14, v14, v21

    .line 450
    add-int/lit8 v3, p5, 0x5

    long-to-int v2, v14

    aput v2, p4, v3

    .line 451
    const/16 v2, 0x20

    ushr-long/2addr v14, v2

    .line 452
    add-int/lit8 v2, p5, 0x6

    long-to-int v3, v14

    aput v3, p4, v2

    .line 455
    .end local v12    # "x_0":J
    .end local v14    # "c":J
    const/4 v2, 0x1

    move v3, v2

    move/from16 v2, p5

    .end local p5    # "zzOff":I
    .local v2, "zzOff":I
    .local v3, "i":I
    :goto_84
    const/4 v12, 0x6

    if-ge v3, v12, :cond_136

    .line 457
    add-int/lit8 v2, v2, 0x1

    .line 458
    const-wide/16 v12, 0x0

    .local v12, "c":J
    add-int v14, p1, v3

    aget v14, p0, v14

    int-to-long v14, v14

    const-wide v19, 0xffffffffL

    and-long v14, v14, v19

    .line 459
    .local v14, "x_i":J
    mul-long v21, v14, v0

    add-int/lit8 v23, v2, 0x0

    move-wide/from16 v24, v0

    .end local v0    # "y_0":J
    .local v24, "y_0":J
    aget v0, p4, v23

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long v21, v21, v0

    add-long v12, v12, v21

    .line 460
    add-int/lit8 v0, v2, 0x0

    long-to-int v1, v12

    aput v1, p4, v0

    .line 461
    const/16 v0, 0x20

    ushr-long/2addr v12, v0

    .line 462
    mul-long v0, v14, v4

    add-int/lit8 v21, v2, 0x1

    move-wide/from16 v22, v4

    .end local v4    # "y_1":J
    .local v22, "y_1":J
    aget v4, p4, v21

    int-to-long v4, v4

    const-wide v19, 0xffffffffL

    and-long v4, v4, v19

    add-long/2addr v0, v4

    add-long/2addr v12, v0

    .line 463
    add-int/lit8 v0, v2, 0x1

    long-to-int v1, v12

    aput v1, p4, v0

    .line 464
    const/16 v0, 0x20

    ushr-long v4, v12, v0

    .line 465
    .end local v12    # "c":J
    .local v4, "c":J
    mul-long v0, v14, v6

    add-int/lit8 v12, v2, 0x2

    aget v12, p4, v12

    int-to-long v12, v12

    const-wide v19, 0xffffffffL

    and-long v12, v12, v19

    add-long/2addr v0, v12

    add-long/2addr v4, v0

    .line 466
    add-int/lit8 v0, v2, 0x2

    long-to-int v1, v4

    aput v1, p4, v0

    .line 467
    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    .line 468
    mul-long v0, v14, v8

    add-int/lit8 v12, v2, 0x3

    aget v12, p4, v12

    int-to-long v12, v12

    const-wide v19, 0xffffffffL

    and-long v12, v12, v19

    add-long/2addr v0, v12

    add-long/2addr v4, v0

    .line 469
    add-int/lit8 v0, v2, 0x3

    long-to-int v1, v4

    aput v1, p4, v0

    .line 470
    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    .line 471
    mul-long v0, v14, v10

    add-int/lit8 v12, v2, 0x4

    aget v12, p4, v12

    int-to-long v12, v12

    const-wide v19, 0xffffffffL

    and-long v12, v12, v19

    add-long/2addr v0, v12

    add-long/2addr v4, v0

    .line 472
    add-int/lit8 v0, v2, 0x4

    long-to-int v1, v4

    aput v1, p4, v0

    .line 473
    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    .line 474
    mul-long v12, v14, v17

    add-int/lit8 v0, v2, 0x5

    aget v0, p4, v0

    int-to-long v0, v0

    const-wide v19, 0xffffffffL

    and-long v0, v0, v19

    add-long/2addr v12, v0

    add-long/2addr v4, v12

    .line 475
    add-int/lit8 v0, v2, 0x5

    long-to-int v1, v4

    aput v1, p4, v0

    .line 476
    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    .line 477
    add-int/lit8 v1, v2, 0x6

    long-to-int v12, v4

    aput v12, p4, v1

    .line 455
    .end local v4    # "c":J
    .end local v14    # "x_i":J
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v4, v22

    move-wide/from16 v0, v24

    goto/16 :goto_84

    .line 479
    .end local v3    # "i":I
    .end local v22    # "y_1":J
    .end local v24    # "y_0":J
    .restart local v0    # "y_0":J
    .local v4, "y_1":J
    :cond_136
    return-void
.end method

.method public static blacklist mul([I[I[I)V
    .registers 33
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 368
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 369
    .local v1, "y_0":J
    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    .line 370
    .local v6, "y_1":J
    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 371
    .local v9, "y_2":J
    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    .line 372
    .local v12, "y_3":J
    const/4 v14, 0x4

    aget v15, p1, v14

    int-to-long v14, v15

    and-long/2addr v14, v3

    .line 373
    .local v14, "y_4":J
    const/16 v17, 0x5

    aget v11, p1, v17

    move-wide/from16 v20, v9

    .end local v9    # "y_2":J
    .local v20, "y_2":J
    int-to-long v8, v11

    and-long/2addr v8, v3

    .line 376
    .local v8, "y_5":J
    const-wide/16 v10, 0x0

    .local v10, "c":J
    aget v5, p0, v0

    move-wide/from16 v24, v1

    .end local v1    # "y_0":J
    .local v24, "y_0":J
    int-to-long v0, v5

    and-long/2addr v0, v3

    .line 377
    .local v0, "x_0":J
    mul-long v26, v0, v24

    add-long v10, v10, v26

    .line 378
    long-to-int v2, v10

    const/4 v5, 0x0

    aput v2, p2, v5

    .line 379
    const/16 v2, 0x20

    ushr-long/2addr v10, v2

    .line 380
    mul-long v26, v0, v6

    add-long v10, v10, v26

    .line 381
    long-to-int v5, v10

    const/16 v22, 0x1

    aput v5, p2, v22

    .line 382
    ushr-long/2addr v10, v2

    .line 383
    mul-long v22, v0, v20

    add-long v10, v10, v22

    .line 384
    long-to-int v5, v10

    const/16 v19, 0x2

    aput v5, p2, v19

    .line 385
    ushr-long/2addr v10, v2

    .line 386
    mul-long v22, v0, v12

    add-long v10, v10, v22

    .line 387
    long-to-int v5, v10

    const/16 v18, 0x3

    aput v5, p2, v18

    .line 388
    ushr-long/2addr v10, v2

    .line 389
    mul-long v18, v0, v14

    add-long v10, v10, v18

    .line 390
    long-to-int v5, v10

    const/16 v16, 0x4

    aput v5, p2, v16

    .line 391
    ushr-long/2addr v10, v2

    .line 392
    mul-long v18, v0, v8

    add-long v10, v10, v18

    .line 393
    long-to-int v5, v10

    aput v5, p2, v17

    .line 394
    ushr-long/2addr v10, v2

    .line 395
    long-to-int v5, v10

    const/4 v2, 0x6

    aput v5, p2, v2

    .line 398
    .end local v0    # "x_0":J
    .end local v10    # "c":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_6e
    if-ge v0, v2, :cond_fc

    .line 400
    const-wide/16 v10, 0x0

    .restart local v10    # "c":J
    aget v1, p0, v0

    int-to-long v1, v1

    and-long/2addr v1, v3

    .line 401
    .local v1, "x_i":J
    mul-long v17, v1, v24

    add-int/lit8 v19, v0, 0x0

    aget v5, p2, v19

    move-wide/from16 v26, v8

    .end local v8    # "y_5":J
    .local v26, "y_5":J
    int-to-long v8, v5

    and-long/2addr v8, v3

    add-long v17, v17, v8

    add-long v10, v10, v17

    .line 402
    add-int/lit8 v5, v0, 0x0

    long-to-int v8, v10

    aput v8, p2, v5

    .line 403
    const/16 v5, 0x20

    ushr-long v8, v10, v5

    .line 404
    .end local v10    # "c":J
    .local v8, "c":J
    mul-long v10, v1, v6

    add-int/lit8 v5, v0, 0x1

    aget v5, p2, v5

    move-wide/from16 v17, v6

    .end local v6    # "y_1":J
    .local v17, "y_1":J
    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v10, v5

    add-long/2addr v8, v10

    .line 405
    add-int/lit8 v5, v0, 0x1

    long-to-int v6, v8

    aput v6, p2, v5

    .line 406
    const/16 v5, 0x20

    ushr-long v6, v8, v5

    .line 407
    .end local v8    # "c":J
    .local v6, "c":J
    mul-long v9, v1, v20

    add-int/lit8 v5, v0, 0x2

    aget v5, p2, v5

    move-wide/from16 v28, v14

    .end local v14    # "y_4":J
    .local v28, "y_4":J
    int-to-long v14, v5

    and-long/2addr v14, v3

    add-long/2addr v9, v14

    add-long/2addr v6, v9

    .line 408
    add-int/lit8 v5, v0, 0x2

    long-to-int v8, v6

    aput v8, p2, v5

    .line 409
    const/16 v5, 0x20

    ushr-long/2addr v6, v5

    .line 410
    mul-long v8, v1, v12

    add-int/lit8 v5, v0, 0x3

    aget v5, p2, v5

    int-to-long v10, v5

    and-long/2addr v10, v3

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 411
    add-int/lit8 v5, v0, 0x3

    long-to-int v8, v6

    aput v8, p2, v5

    .line 412
    const/16 v5, 0x20

    ushr-long/2addr v6, v5

    .line 413
    mul-long v14, v1, v28

    add-int/lit8 v5, v0, 0x4

    aget v5, p2, v5

    int-to-long v8, v5

    and-long/2addr v8, v3

    add-long/2addr v14, v8

    add-long/2addr v6, v14

    .line 414
    add-int/lit8 v5, v0, 0x4

    long-to-int v8, v6

    aput v8, p2, v5

    .line 415
    const/16 v5, 0x20

    ushr-long/2addr v6, v5

    .line 416
    mul-long v8, v1, v26

    add-int/lit8 v5, v0, 0x5

    aget v5, p2, v5

    int-to-long v10, v5

    and-long/2addr v10, v3

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 417
    add-int/lit8 v5, v0, 0x5

    long-to-int v8, v6

    aput v8, p2, v5

    .line 418
    const/16 v5, 0x20

    ushr-long/2addr v6, v5

    .line 419
    add-int/lit8 v8, v0, 0x6

    long-to-int v9, v6

    aput v9, p2, v8

    .line 398
    .end local v1    # "x_i":J
    .end local v6    # "c":J
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v6, v17

    move-wide/from16 v8, v26

    move-wide/from16 v14, v28

    const/4 v2, 0x6

    goto/16 :goto_6e

    .line 421
    .end local v0    # "i":I
    .end local v17    # "y_1":J
    .end local v26    # "y_5":J
    .end local v28    # "y_4":J
    .local v6, "y_1":J
    .local v8, "y_5":J
    .restart local v14    # "y_4":J
    :cond_fc
    return-void
.end method

.method public static blacklist mul33Add(I[II[II[II)J
    .registers 32
    .param p0, "w"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 562
    const-wide/16 v0, 0x0

    move/from16 v2, p0

    .local v0, "c":J
    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 563
    .local v3, "wVal":J
    add-int/lit8 v7, p2, 0x0

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    .line 564
    .local v7, "x0":J
    mul-long v9, v3, v7

    add-int/lit8 v11, p4, 0x0

    aget v11, p3, v11

    int-to-long v11, v11

    and-long/2addr v11, v5

    add-long/2addr v9, v11

    add-long/2addr v0, v9

    .line 565
    add-int/lit8 v9, p6, 0x0

    long-to-int v10, v0

    aput v10, p5, v9

    .line 566
    const/16 v9, 0x20

    ushr-long/2addr v0, v9

    .line 567
    add-int/lit8 v10, p2, 0x1

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v5

    .line 568
    .local v10, "x1":J
    mul-long v12, v3, v10

    add-long/2addr v12, v7

    add-int/lit8 v14, p4, 0x1

    aget v14, p3, v14

    int-to-long v14, v14

    and-long/2addr v14, v5

    add-long/2addr v12, v14

    add-long/2addr v0, v12

    .line 569
    add-int/lit8 v12, p6, 0x1

    long-to-int v13, v0

    aput v13, p5, v12

    .line 570
    ushr-long/2addr v0, v9

    .line 571
    add-int/lit8 v12, p2, 0x2

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v5

    .line 572
    .local v12, "x2":J
    mul-long v14, v3, v12

    add-long/2addr v14, v10

    add-int/lit8 v16, p4, 0x2

    aget v9, p3, v16

    move-wide/from16 v17, v7

    .end local v7    # "x0":J
    .local v17, "x0":J
    int-to-long v7, v9

    and-long/2addr v7, v5

    add-long/2addr v14, v7

    add-long/2addr v0, v14

    .line 573
    add-int/lit8 v7, p6, 0x2

    long-to-int v8, v0

    aput v8, p5, v7

    .line 574
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 575
    add-int/lit8 v7, p2, 0x3

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    .line 576
    .local v7, "x3":J
    mul-long v14, v3, v7

    add-long/2addr v14, v12

    add-int/lit8 v9, p4, 0x3

    aget v9, p3, v9

    move-wide/from16 v19, v10

    .end local v10    # "x1":J
    .local v19, "x1":J
    int-to-long v9, v9

    and-long/2addr v9, v5

    add-long/2addr v14, v9

    add-long/2addr v0, v14

    .line 577
    add-int/lit8 v9, p6, 0x3

    long-to-int v10, v0

    aput v10, p5, v9

    .line 578
    const/16 v9, 0x20

    ushr-long/2addr v0, v9

    .line 579
    add-int/lit8 v9, p2, 0x4

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v5

    .line 580
    .local v9, "x4":J
    mul-long v14, v3, v9

    add-long/2addr v14, v7

    add-int/lit8 v11, p4, 0x4

    aget v11, p3, v11

    move-wide/from16 v21, v7

    .end local v7    # "x3":J
    .local v21, "x3":J
    int-to-long v7, v11

    and-long/2addr v7, v5

    add-long/2addr v14, v7

    add-long/2addr v0, v14

    .line 581
    add-int/lit8 v7, p6, 0x4

    long-to-int v8, v0

    aput v8, p5, v7

    .line 582
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 583
    add-int/lit8 v7, p2, 0x5

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    .line 584
    .local v7, "x5":J
    mul-long v14, v3, v7

    add-long/2addr v14, v9

    add-int/lit8 v11, p4, 0x5

    aget v11, p3, v11

    move-wide/from16 v23, v3

    .end local v3    # "wVal":J
    .local v23, "wVal":J
    int-to-long v2, v11

    and-long/2addr v2, v5

    add-long/2addr v14, v2

    add-long/2addr v0, v14

    .line 585
    add-int/lit8 v2, p6, 0x5

    long-to-int v3, v0

    aput v3, p5, v2

    .line 586
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 587
    add-long/2addr v0, v7

    .line 588
    return-wide v0
.end method

.method public static blacklist mul33DWordAdd(IJ[II)I
    .registers 24
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 622
    move-object/from16 v0, p3

    move/from16 v1, p4

    const-wide/16 v2, 0x0

    move/from16 v4, p0

    .local v2, "c":J
    int-to-long v5, v4

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 623
    .local v5, "xVal":J
    and-long v9, p1, v7

    .line 624
    .local v9, "y00":J
    mul-long v11, v5, v9

    add-int/lit8 v13, v1, 0x0

    aget v13, v0, v13

    int-to-long v13, v13

    and-long/2addr v13, v7

    add-long/2addr v11, v13

    add-long/2addr v2, v11

    .line 625
    add-int/lit8 v11, v1, 0x0

    long-to-int v12, v2

    aput v12, v0, v11

    .line 626
    const/16 v11, 0x20

    ushr-long/2addr v2, v11

    .line 627
    ushr-long v12, p1, v11

    .line 628
    .local v12, "y01":J
    mul-long v14, v5, v12

    add-long/2addr v14, v9

    add-int/lit8 v16, v1, 0x1

    aget v11, v0, v16

    move-wide/from16 v17, v5

    .end local v5    # "xVal":J
    .local v17, "xVal":J
    int-to-long v4, v11

    and-long/2addr v4, v7

    add-long/2addr v14, v4

    add-long/2addr v2, v14

    .line 629
    add-int/lit8 v4, v1, 0x1

    long-to-int v5, v2

    aput v5, v0, v4

    .line 630
    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    .line 631
    add-int/lit8 v4, v1, 0x2

    aget v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    add-long/2addr v4, v12

    add-long/2addr v2, v4

    .line 632
    add-int/lit8 v4, v1, 0x2

    long-to-int v5, v2

    aput v5, v0, v4

    .line 633
    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    .line 634
    add-int/lit8 v4, v1, 0x3

    aget v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    add-long/2addr v2, v4

    .line 635
    add-int/lit8 v4, v1, 0x3

    long-to-int v5, v2

    aput v5, v0, v4

    .line 636
    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    .line 637
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_61

    const/4 v4, 0x0

    goto :goto_67

    :cond_61
    const/4 v4, 0x6

    const/4 v5, 0x4

    invoke-static {v4, v0, v1, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_67
    return v4
.end method

.method public static blacklist mul33WordAdd(II[II)I
    .registers 16
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 645
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .local v2, "xVal":J
    int-to-long v6, p1

    and-long/2addr v6, v4

    .line 646
    .local v6, "yVal":J
    mul-long v8, v6, v2

    add-int/lit8 v10, p3, 0x0

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 647
    add-int/lit8 v8, p3, 0x0

    long-to-int v9, v0

    aput v9, p2, v8

    .line 648
    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    .line 649
    add-int/lit8 v9, p3, 0x1

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v9, v6

    add-long/2addr v0, v9

    .line 650
    add-int/lit8 v9, p3, 0x1

    long-to-int v10, v0

    aput v10, p2, v9

    .line 651
    ushr-long/2addr v0, v8

    .line 652
    add-int/lit8 v9, p3, 0x2

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v0, v4

    .line 653
    add-int/lit8 v4, p3, 0x2

    long-to-int v5, v0

    aput v5, p2, v4

    .line 654
    ushr-long/2addr v0, v8

    .line 655
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_40

    const/4 v4, 0x0

    goto :goto_46

    :cond_40
    const/4 v4, 0x6

    const/4 v5, 0x3

    invoke-static {v4, p2, p3, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_46
    return v4
.end method

.method public static blacklist mulAddTo([II[II[II)I
    .registers 35
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    .line 521
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 522
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 523
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 524
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 525
    .local v8, "y_3":J
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 526
    .local v10, "y_4":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 528
    .local v12, "y_5":J
    const-wide/16 v14, 0x0

    .line 529
    .local v14, "zc":J
    const/16 v16, 0x0

    move-wide/from16 v17, v14

    move/from16 v15, v16

    move/from16 v14, p5

    .end local p5    # "zzOff":I
    .local v14, "zzOff":I
    .local v15, "i":I
    .local v17, "zc":J
    :goto_33
    const/4 v2, 0x6

    if-ge v15, v2, :cond_109

    .line 531
    const-wide/16 v2, 0x0

    .local v2, "c":J
    add-int v16, p1, v15

    move/from16 p5, v15

    .end local v15    # "i":I
    .local p5, "i":I
    aget v15, p0, v16

    move-wide/from16 v21, v12

    .end local v12    # "y_5":J
    .local v21, "y_5":J
    int-to-long v12, v15

    const-wide v15, 0xffffffffL

    and-long/2addr v12, v15

    .line 532
    .local v12, "x_i":J
    mul-long v23, v12, v0

    add-int/lit8 v19, v14, 0x0

    move-wide/from16 v25, v0

    .end local v0    # "y_0":J
    .local v25, "y_0":J
    aget v0, p4, v19

    int-to-long v0, v0

    and-long/2addr v0, v15

    add-long v23, v23, v0

    add-long v2, v2, v23

    .line 533
    add-int/lit8 v0, v14, 0x0

    long-to-int v1, v2

    aput v1, p4, v0

    .line 534
    const/16 v0, 0x20

    ushr-long v1, v2, v0

    .line 535
    .end local v2    # "c":J
    .local v1, "c":J
    mul-long v15, v12, v4

    add-int/lit8 v3, v14, 0x1

    aget v3, p4, v3

    move-wide/from16 v27, v1

    .end local v1    # "c":J
    .local v27, "c":J
    int-to-long v0, v3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v15, v0

    add-long v1, v27, v15

    .line 536
    .end local v27    # "c":J
    .restart local v1    # "c":J
    add-int/lit8 v0, v14, 0x1

    long-to-int v3, v1

    aput v3, p4, v0

    .line 537
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 538
    mul-long v15, v12, v6

    add-int/lit8 v0, v14, 0x2

    aget v0, p4, v0

    move-wide/from16 v27, v4

    .end local v4    # "y_1":J
    .local v27, "y_1":J
    int-to-long v3, v0

    const-wide v19, 0xffffffffL

    and-long v3, v3, v19

    add-long/2addr v15, v3

    add-long/2addr v1, v15

    .line 539
    add-int/lit8 v0, v14, 0x2

    long-to-int v3, v1

    aput v3, p4, v0

    .line 540
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 541
    mul-long v3, v12, v8

    add-int/lit8 v0, v14, 0x3

    aget v0, p4, v0

    move-wide v15, v6

    .end local v6    # "y_2":J
    .local v15, "y_2":J
    int-to-long v5, v0

    const-wide v19, 0xffffffffL

    and-long v5, v5, v19

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 542
    add-int/lit8 v0, v14, 0x3

    long-to-int v3, v1

    aput v3, p4, v0

    .line 543
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 544
    mul-long v3, v12, v10

    add-int/lit8 v0, v14, 0x4

    aget v0, p4, v0

    int-to-long v5, v0

    const-wide v19, 0xffffffffL

    and-long v5, v5, v19

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 545
    add-int/lit8 v0, v14, 0x4

    long-to-int v3, v1

    aput v3, p4, v0

    .line 546
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 547
    mul-long v3, v12, v21

    add-int/lit8 v0, v14, 0x5

    aget v0, p4, v0

    int-to-long v5, v0

    const-wide v19, 0xffffffffL

    and-long v5, v5, v19

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 548
    add-int/lit8 v0, v14, 0x5

    long-to-int v3, v1

    aput v3, p4, v0

    .line 549
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 550
    add-int/lit8 v0, v14, 0x6

    aget v0, p4, v0

    int-to-long v3, v0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    move-wide/from16 v5, v17

    .end local v17    # "zc":J
    .local v5, "zc":J
    add-long v17, v5, v3

    add-long v1, v1, v17

    .line 551
    add-int/lit8 v0, v14, 0x6

    long-to-int v3, v1

    aput v3, p4, v0

    .line 552
    const/16 v0, 0x20

    ushr-long v17, v1, v0

    .line 553
    .end local v5    # "zc":J
    .restart local v17    # "zc":J
    nop

    .end local v1    # "c":J
    .end local v12    # "x_i":J
    add-int/lit8 v14, v14, 0x1

    .line 529
    add-int/lit8 v0, p5, 0x1

    move-wide v6, v15

    move-wide/from16 v12, v21

    move-wide/from16 v4, v27

    const-wide v2, 0xffffffffL

    move v15, v0

    move-wide/from16 v0, v25

    .end local p5    # "i":I
    .local v0, "i":I
    goto/16 :goto_33

    .end local v21    # "y_5":J
    .end local v25    # "y_0":J
    .end local v27    # "y_1":J
    .local v0, "y_0":J
    .restart local v4    # "y_1":J
    .restart local v6    # "y_2":J
    .local v12, "y_5":J
    .local v15, "i":I
    :cond_109
    move-wide/from16 v25, v0

    move-wide/from16 v5, v17

    .line 555
    .end local v0    # "y_0":J
    .end local v15    # "i":I
    .end local v17    # "zc":J
    .restart local v5    # "zc":J
    .restart local v25    # "y_0":J
    long-to-int v0, v5

    return v0
.end method

.method public static blacklist mulAddTo([I[I[I)I
    .registers 31
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 483
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 484
    .local v0, "y_0":J
    const/4 v4, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 485
    .local v4, "y_1":J
    const/4 v6, 0x2

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 486
    .local v6, "y_2":J
    const/4 v8, 0x3

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 487
    .local v8, "y_3":J
    const/4 v10, 0x4

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 488
    .local v10, "y_4":J
    const/4 v12, 0x5

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 490
    .local v12, "y_5":J
    const-wide/16 v14, 0x0

    .line 491
    .local v14, "zc":J
    const/16 v16, 0x0

    move/from16 v2, v16

    .local v2, "i":I
    :goto_29
    const/4 v3, 0x6

    if-ge v2, v3, :cond_ee

    .line 493
    const-wide/16 v18, 0x0

    .local v18, "c":J
    aget v3, p0, v2

    move-wide/from16 v20, v14

    .end local v14    # "zc":J
    .local v20, "zc":J
    int-to-long v14, v3

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    .line 494
    .local v14, "x_i":J
    mul-long v22, v14, v0

    add-int/lit8 v3, v2, 0x0

    aget v3, p2, v3

    move-wide/from16 v24, v0

    .end local v0    # "y_0":J
    .local v24, "y_0":J
    int-to-long v0, v3

    and-long v0, v0, v16

    add-long v22, v22, v0

    add-long v0, v18, v22

    .line 495
    .end local v18    # "c":J
    .local v0, "c":J
    add-int/lit8 v3, v2, 0x0

    move-wide/from16 v18, v12

    .end local v12    # "y_5":J
    .local v18, "y_5":J
    long-to-int v12, v0

    aput v12, p2, v3

    .line 496
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 497
    mul-long v12, v14, v4

    add-int/lit8 v22, v2, 0x1

    aget v3, p2, v22

    move-wide/from16 v26, v4

    .end local v4    # "y_1":J
    .local v26, "y_1":J
    int-to-long v3, v3

    const-wide v16, 0xffffffffL

    and-long v3, v3, v16

    add-long/2addr v12, v3

    add-long/2addr v0, v12

    .line 498
    add-int/lit8 v3, v2, 0x1

    long-to-int v4, v0

    aput v4, p2, v3

    .line 499
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 500
    mul-long v3, v14, v6

    add-int/lit8 v5, v2, 0x2

    aget v5, p2, v5

    int-to-long v12, v5

    const-wide v16, 0xffffffffL

    and-long v12, v12, v16

    add-long/2addr v3, v12

    add-long/2addr v0, v3

    .line 501
    add-int/lit8 v3, v2, 0x2

    long-to-int v4, v0

    aput v4, p2, v3

    .line 502
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 503
    mul-long v3, v14, v8

    add-int/lit8 v5, v2, 0x3

    aget v5, p2, v5

    int-to-long v12, v5

    const-wide v16, 0xffffffffL

    and-long v12, v12, v16

    add-long/2addr v3, v12

    add-long/2addr v0, v3

    .line 504
    add-int/lit8 v3, v2, 0x3

    long-to-int v4, v0

    aput v4, p2, v3

    .line 505
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 506
    mul-long v3, v14, v10

    add-int/lit8 v5, v2, 0x4

    aget v5, p2, v5

    int-to-long v12, v5

    const-wide v16, 0xffffffffL

    and-long v12, v12, v16

    add-long/2addr v3, v12

    add-long/2addr v0, v3

    .line 507
    add-int/lit8 v3, v2, 0x4

    long-to-int v4, v0

    aput v4, p2, v3

    .line 508
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 509
    mul-long v12, v14, v18

    add-int/lit8 v3, v2, 0x5

    aget v3, p2, v3

    int-to-long v3, v3

    const-wide v16, 0xffffffffL

    and-long v3, v3, v16

    add-long/2addr v12, v3

    add-long/2addr v0, v12

    .line 510
    add-int/lit8 v3, v2, 0x5

    long-to-int v4, v0

    aput v4, p2, v3

    .line 511
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 512
    add-int/lit8 v3, v2, 0x6

    aget v3, p2, v3

    int-to-long v3, v3

    const-wide v12, 0xffffffffL

    and-long/2addr v3, v12

    add-long v3, v20, v3

    add-long/2addr v0, v3

    .line 513
    add-int/lit8 v3, v2, 0x6

    long-to-int v4, v0

    aput v4, p2, v3

    .line 514
    const/16 v3, 0x20

    ushr-long v14, v0, v3

    .line 491
    .end local v0    # "c":J
    .end local v20    # "zc":J
    .local v14, "zc":J
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v12, v18

    move-wide/from16 v0, v24

    move-wide/from16 v4, v26

    goto/16 :goto_29

    .end local v18    # "y_5":J
    .end local v24    # "y_0":J
    .end local v26    # "y_1":J
    .local v0, "y_0":J
    .restart local v4    # "y_1":J
    .restart local v12    # "y_5":J
    :cond_ee
    move-wide/from16 v24, v0

    .line 516
    .end local v0    # "y_0":J
    .end local v2    # "i":I
    .restart local v24    # "y_0":J
    long-to-int v0, v14

    return v0
.end method

.method public static blacklist mulWord(I[I[II)I
    .registers 13
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 676
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 677
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 680
    .local v6, "i":I
    :goto_a
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    .line 681
    add-int v7, p3, v6

    long-to-int v8, v0

    aput v8, p2, v7

    .line 682
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 684
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x6

    if-lt v6, v7, :cond_1f

    .line 685
    long-to-int v4, v0

    return v4

    .line 684
    :cond_1f
    goto :goto_a
.end method

.method public static blacklist mulWordAddExt(I[II[II)I
    .registers 16
    .param p0, "x"    # I
    .param p1, "yy"    # [I
    .param p2, "yyOff"    # I
    .param p3, "zz"    # [I
    .param p4, "zzOff"    # I

    .line 595
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 596
    .local v2, "xVal":J
    add-int/lit8 v6, p2, 0x0

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    mul-long/2addr v6, v2

    add-int/lit8 v8, p4, 0x0

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 597
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 598
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 599
    add-int/lit8 v7, p2, 0x1

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x1

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 600
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 601
    ushr-long/2addr v0, v6

    .line 602
    add-int/lit8 v7, p2, 0x2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x2

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 603
    add-int/lit8 v7, p4, 0x2

    long-to-int v8, v0

    aput v8, p3, v7

    .line 604
    ushr-long/2addr v0, v6

    .line 605
    add-int/lit8 v7, p2, 0x3

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x3

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 606
    add-int/lit8 v7, p4, 0x3

    long-to-int v8, v0

    aput v8, p3, v7

    .line 607
    ushr-long/2addr v0, v6

    .line 608
    add-int/lit8 v7, p2, 0x4

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x4

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 609
    add-int/lit8 v7, p4, 0x4

    long-to-int v8, v0

    aput v8, p3, v7

    .line 610
    ushr-long/2addr v0, v6

    .line 611
    add-int/lit8 v7, p2, 0x5

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x5

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 612
    add-int/lit8 v4, p4, 0x5

    long-to-int v5, v0

    aput v5, p3, v4

    .line 613
    ushr-long/2addr v0, v6

    .line 614
    long-to-int v4, v0

    return v4
.end method

.method public static blacklist mulWordDwordAdd(IJ[II)I
    .registers 16
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 661
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 662
    .local v2, "xVal":J
    and-long v6, p1, v4

    mul-long/2addr v6, v2

    add-int/lit8 v8, p4, 0x0

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 663
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 664
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 665
    ushr-long v7, p1, v6

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x1

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 666
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 667
    ushr-long/2addr v0, v6

    .line 668
    add-int/lit8 v7, p4, 0x2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v4, v7

    add-long/2addr v0, v4

    .line 669
    add-int/lit8 v4, p4, 0x2

    long-to-int v5, v0

    aput v5, p3, v4

    .line 670
    ushr-long/2addr v0, v6

    .line 671
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_42

    const/4 v4, 0x0

    goto :goto_48

    :cond_42
    const/4 v4, 0x6

    const/4 v5, 0x3

    invoke-static {v4, p3, p4, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_48
    return v4
.end method

.method public static blacklist square([II[II)V
    .registers 45
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "zz"    # [I
    .param p3, "zzOff"    # I

    .line 806
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 809
    .local v0, "x_0":J
    const/4 v4, 0x0

    .line 811
    .local v4, "c":I
    const/4 v5, 0x5

    .local v5, "i":I
    const/16 v6, 0xc

    .line 814
    .local v6, "j":I
    :goto_f
    add-int/lit8 v7, v5, -0x1

    .end local v5    # "i":I
    .local v7, "i":I
    add-int v5, p1, v5

    aget v5, p0, v5

    int-to-long v8, v5

    and-long/2addr v8, v2

    .line 815
    .local v8, "xVal":J
    mul-long v10, v8, v8

    .line 816
    .local v10, "p":J
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    shl-int/lit8 v12, v4, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v10, v13

    long-to-int v14, v14

    or-int/2addr v12, v14

    aput v12, p2, v5

    .line 817
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    const/4 v12, 0x1

    ushr-long v14, v10, v12

    long-to-int v14, v14

    aput v14, p2, v5

    .line 818
    long-to-int v4, v10

    .line 820
    .end local v8    # "xVal":J
    .end local v10    # "p":J
    if-gtz v7, :cond_1f0

    .line 823
    mul-long v8, v0, v0

    .line 824
    .local v8, "p":J
    shl-int/lit8 v5, v4, 0x1f

    int-to-long v10, v5

    and-long/2addr v10, v2

    ushr-long v13, v8, v13

    or-long/2addr v10, v13

    .line 825
    .local v10, "zz_1":J
    add-int/lit8 v5, p3, 0x0

    long-to-int v13, v8

    aput v13, p2, v5

    .line 826
    const/16 v5, 0x20

    ushr-long v13, v8, v5

    long-to-int v13, v13

    and-int/lit8 v4, v13, 0x1

    .line 830
    .end local v6    # "j":I
    .end local v7    # "i":I
    .end local v8    # "p":J
    add-int/lit8 v6, p1, 0x1

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 831
    .local v6, "x_1":J
    add-int/lit8 v8, p3, 0x2

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 834
    .local v8, "zz_2":J
    mul-long v12, v6, v0

    add-long/2addr v10, v12

    .line 835
    long-to-int v12, v10

    .line 836
    .local v12, "w":I
    add-int/lit8 v13, p3, 0x1

    shl-int/lit8 v14, v12, 0x1

    or-int/2addr v14, v4

    aput v14, p2, v13

    .line 837
    ushr-int/lit8 v4, v12, 0x1f

    .line 838
    ushr-long v13, v10, v5

    add-long/2addr v8, v13

    .line 841
    add-int/lit8 v13, p1, 0x2

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v2

    .line 842
    .local v13, "x_2":J
    add-int/lit8 v15, p3, 0x3

    aget v15, p2, v15

    move-wide/from16 v17, v6

    .end local v6    # "x_1":J
    .local v17, "x_1":J
    int-to-long v5, v15

    and-long/2addr v5, v2

    .line 843
    .local v5, "zz_3":J
    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    move-wide/from16 v19, v10

    .end local v10    # "zz_1":J
    .local v19, "zz_1":J
    int-to-long v10, v7

    and-long/2addr v10, v2

    .line 845
    .local v10, "zz_4":J
    mul-long v21, v13, v0

    add-long v8, v8, v21

    .line 846
    long-to-int v7, v8

    .line 847
    .end local v12    # "w":I
    .local v7, "w":I
    add-int/lit8 v12, p3, 0x2

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 848
    ushr-int/lit8 v4, v7, 0x1f

    .line 849
    const/16 v12, 0x20

    ushr-long v15, v8, v12

    mul-long v21, v13, v17

    add-long v15, v15, v21

    add-long/2addr v5, v15

    .line 850
    ushr-long v21, v5, v12

    add-long v10, v10, v21

    .line 851
    and-long/2addr v5, v2

    .line 854
    add-int/lit8 v12, p1, 0x3

    aget v12, p0, v12

    move-wide/from16 v21, v8

    move v9, v7

    .end local v7    # "w":I
    .end local v8    # "zz_2":J
    .local v9, "w":I
    .local v21, "zz_2":J
    int-to-long v7, v12

    and-long/2addr v7, v2

    .line 855
    .local v7, "x_3":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    move-wide/from16 v23, v13

    .end local v13    # "x_2":J
    .local v23, "x_2":J
    int-to-long v12, v12

    and-long/2addr v12, v2

    const/16 v14, 0x20

    ushr-long v15, v10, v14

    add-long/2addr v12, v15

    .local v12, "zz_5":J
    and-long/2addr v10, v2

    .line 856
    add-int/lit8 v15, p3, 0x6

    aget v15, p2, v15

    move/from16 v25, v9

    move-wide/from16 v26, v10

    .end local v9    # "w":I
    .end local v10    # "zz_4":J
    .local v25, "w":I
    .local v26, "zz_4":J
    int-to-long v9, v15

    and-long/2addr v9, v2

    ushr-long v28, v12, v14

    add-long v9, v9, v28

    .local v9, "zz_6":J
    and-long v11, v12, v2

    .line 858
    .end local v12    # "zz_5":J
    .local v11, "zz_5":J
    mul-long v13, v7, v0

    add-long/2addr v5, v13

    .line 859
    long-to-int v13, v5

    .line 860
    .end local v25    # "w":I
    .local v13, "w":I
    add-int/lit8 v14, p3, 0x3

    shl-int/lit8 v15, v13, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v14

    .line 861
    ushr-int/lit8 v4, v13, 0x1f

    .line 862
    const/16 v14, 0x20

    ushr-long v15, v5, v14

    mul-long v28, v7, v17

    add-long v15, v15, v28

    add-long v15, v26, v15

    .line 863
    .end local v26    # "zz_4":J
    .local v15, "zz_4":J
    ushr-long v25, v15, v14

    mul-long v27, v7, v23

    add-long v25, v25, v27

    add-long v11, v11, v25

    .line 864
    and-long v25, v15, v2

    .line 865
    .end local v15    # "zz_4":J
    .local v25, "zz_4":J
    ushr-long v27, v11, v14

    add-long v9, v9, v27

    .line 866
    and-long/2addr v11, v2

    .line 869
    add-int/lit8 v14, p1, 0x4

    aget v14, p0, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 870
    .local v14, "x_4":J
    add-int/lit8 v27, p3, 0x7

    move-wide/from16 v28, v5

    .end local v5    # "zz_3":J
    .local v28, "zz_3":J
    aget v5, p2, v27

    int-to-long v5, v5

    and-long/2addr v5, v2

    const/16 v16, 0x20

    ushr-long v30, v9, v16

    add-long v5, v5, v30

    .local v5, "zz_7":J
    and-long/2addr v9, v2

    .line 871
    add-int/lit8 v27, p3, 0x8

    move/from16 v30, v13

    .end local v13    # "w":I
    .local v30, "w":I
    aget v13, p2, v27

    move-wide/from16 v31, v7

    .end local v7    # "x_3":J
    .local v31, "x_3":J
    int-to-long v7, v13

    and-long/2addr v7, v2

    ushr-long v33, v5, v16

    add-long v7, v7, v33

    .local v7, "zz_8":J
    and-long/2addr v5, v2

    .line 873
    mul-long v33, v14, v0

    add-long v2, v25, v33

    .line 874
    .end local v25    # "zz_4":J
    .local v2, "zz_4":J
    long-to-int v13, v2

    .line 875
    .end local v30    # "w":I
    .restart local v13    # "w":I
    add-int/lit8 v25, p3, 0x4

    shl-int/lit8 v26, v13, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 876
    ushr-int/lit8 v4, v13, 0x1f

    .line 877
    const/16 v16, 0x20

    ushr-long v25, v2, v16

    mul-long v33, v14, v17

    add-long v25, v25, v33

    add-long v11, v11, v25

    .line 878
    ushr-long v25, v11, v16

    mul-long v33, v14, v23

    add-long v25, v25, v33

    add-long v9, v9, v25

    .line 879
    const-wide v25, 0xffffffffL

    and-long v11, v11, v25

    .line 880
    ushr-long v33, v9, v16

    mul-long v35, v14, v31

    add-long v33, v33, v35

    add-long v5, v5, v33

    .line 881
    and-long v9, v9, v25

    .line 882
    ushr-long v33, v5, v16

    add-long v7, v7, v33

    .line 883
    and-long v5, v5, v25

    .line 886
    add-int/lit8 v27, p1, 0x5

    move-wide/from16 v33, v2

    .end local v2    # "zz_4":J
    .local v33, "zz_4":J
    aget v2, p0, v27

    int-to-long v2, v2

    and-long v2, v2, v25

    .line 887
    .local v2, "x_5":J
    add-int/lit8 v27, p3, 0x9

    move/from16 v30, v13

    .end local v13    # "w":I
    .restart local v30    # "w":I
    aget v13, p2, v27

    move-wide/from16 v35, v14

    .end local v14    # "x_4":J
    .local v35, "x_4":J
    int-to-long v13, v13

    and-long v13, v13, v25

    const/16 v15, 0x20

    ushr-long v37, v7, v15

    add-long v13, v13, v37

    .local v13, "zz_9":J
    and-long v7, v7, v25

    .line 888
    add-int/lit8 v16, p3, 0xa

    aget v15, p2, v16

    move-wide/from16 v37, v7

    .end local v7    # "zz_8":J
    .local v37, "zz_8":J
    int-to-long v7, v15

    and-long v7, v7, v25

    const/16 v15, 0x20

    ushr-long v39, v13, v15

    add-long v7, v7, v39

    .local v7, "zz_10":J
    and-long v13, v13, v25

    .line 890
    mul-long v25, v2, v0

    add-long v11, v11, v25

    .line 891
    long-to-int v15, v11

    .line 892
    .end local v30    # "w":I
    .local v15, "w":I
    add-int/lit8 v25, p3, 0x5

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 893
    ushr-int/lit8 v4, v15, 0x1f

    .line 894
    const/16 v16, 0x20

    ushr-long v25, v11, v16

    mul-long v39, v2, v17

    add-long v25, v25, v39

    add-long v9, v9, v25

    .line 895
    ushr-long v25, v9, v16

    mul-long v39, v2, v23

    add-long v25, v25, v39

    add-long v5, v5, v25

    .line 896
    ushr-long v25, v5, v16

    mul-long v39, v2, v31

    add-long v25, v25, v39

    move-wide/from16 v39, v0

    .end local v0    # "x_0":J
    .local v39, "x_0":J
    add-long v0, v37, v25

    .line 897
    .end local v37    # "zz_8":J
    .local v0, "zz_8":J
    ushr-long v25, v0, v16

    mul-long v37, v2, v35

    add-long v25, v25, v37

    add-long v13, v13, v25

    .line 898
    ushr-long v25, v13, v16

    add-long v7, v7, v25

    .line 901
    long-to-int v15, v9

    .line 902
    add-int/lit8 v25, p3, 0x6

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 903
    ushr-int/lit8 v4, v15, 0x1f

    .line 904
    long-to-int v15, v5

    .line 905
    add-int/lit8 v25, p3, 0x7

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 906
    ushr-int/lit8 v4, v15, 0x1f

    .line 907
    long-to-int v15, v0

    .line 908
    add-int/lit8 v25, p3, 0x8

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 909
    ushr-int/lit8 v4, v15, 0x1f

    .line 910
    long-to-int v15, v13

    .line 911
    add-int/lit8 v25, p3, 0x9

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 912
    ushr-int/lit8 v4, v15, 0x1f

    .line 913
    long-to-int v15, v7

    .line 914
    add-int/lit8 v25, p3, 0xa

    shl-int/lit8 v26, v15, 0x1

    or-int v26, v26, v4

    aput v26, p2, v25

    .line 915
    ushr-int/lit8 v4, v15, 0x1f

    .line 916
    add-int/lit8 v25, p3, 0xb

    aget v25, p2, v25

    move-wide/from16 v26, v0

    const/16 v16, 0x20

    .end local v0    # "zz_8":J
    .local v26, "zz_8":J
    ushr-long v0, v7, v16

    long-to-int v0, v0

    add-int v25, v25, v0

    .line 917
    .end local v15    # "w":I
    .local v25, "w":I
    add-int/lit8 v0, p3, 0xb

    shl-int/lit8 v1, v25, 0x1

    or-int/2addr v1, v4

    aput v1, p2, v0

    .line 918
    return-void

    .line 820
    .end local v2    # "x_5":J
    .end local v5    # "zz_7":J
    .end local v9    # "zz_6":J
    .end local v11    # "zz_5":J
    .end local v13    # "zz_9":J
    .end local v17    # "x_1":J
    .end local v19    # "zz_1":J
    .end local v21    # "zz_2":J
    .end local v23    # "x_2":J
    .end local v25    # "w":I
    .end local v26    # "zz_8":J
    .end local v28    # "zz_3":J
    .end local v31    # "x_3":J
    .end local v33    # "zz_4":J
    .end local v35    # "x_4":J
    .end local v39    # "x_0":J
    .local v0, "x_0":J
    .local v6, "j":I
    .local v7, "i":I
    :cond_1f0
    move-wide/from16 v39, v0

    move-wide/from16 v25, v2

    .end local v0    # "x_0":J
    .restart local v39    # "x_0":J
    move v5, v7

    goto/16 :goto_f
.end method

.method public static blacklist square([I[I)V
    .registers 50
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    .line 690
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 693
    .local v1, "x_0":J
    const/4 v5, 0x0

    .line 695
    .local v5, "c":I
    const/4 v6, 0x5

    .local v6, "i":I
    const/16 v7, 0xc

    .line 698
    .local v7, "j":I
    :goto_e
    add-int/lit8 v8, v6, -0x1

    .end local v6    # "i":I
    .local v8, "i":I
    aget v6, p0, v6

    int-to-long v9, v6

    and-long/2addr v9, v3

    .line 699
    .local v9, "xVal":J
    mul-long v11, v9, v9

    .line 700
    .local v11, "p":J
    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v6, v5, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v11, v13

    long-to-int v14, v14

    or-int/2addr v6, v14

    aput v6, p1, v7

    .line 701
    add-int/lit8 v7, v7, -0x1

    const/4 v6, 0x1

    ushr-long v14, v11, v6

    long-to-int v14, v14

    aput v14, p1, v7

    .line 702
    long-to-int v5, v11

    .line 704
    .end local v9    # "xVal":J
    .end local v11    # "p":J
    if-gtz v8, :cond_1ba

    .line 707
    mul-long v9, v1, v1

    .line 708
    .local v9, "p":J
    shl-int/lit8 v11, v5, 0x1f

    int-to-long v11, v11

    and-long/2addr v11, v3

    ushr-long v13, v9, v13

    or-long/2addr v11, v13

    .line 709
    .local v11, "zz_1":J
    long-to-int v13, v9

    aput v13, p1, v0

    .line 710
    const/16 v0, 0x20

    ushr-long v13, v9, v0

    long-to-int v13, v13

    and-int/lit8 v5, v13, 0x1

    .line 714
    .end local v7    # "j":I
    .end local v8    # "i":I
    .end local v9    # "p":J
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v3

    .line 715
    .local v7, "x_1":J
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v13, v10

    and-long/2addr v13, v3

    .line 718
    .local v13, "zz_2":J
    mul-long v15, v7, v1

    add-long/2addr v11, v15

    .line 719
    long-to-int v10, v11

    .line 720
    .local v10, "w":I
    shl-int/lit8 v15, v10, 0x1

    or-int/2addr v15, v5

    aput v15, p1, v6

    .line 721
    ushr-int/lit8 v5, v10, 0x1f

    .line 722
    ushr-long v15, v11, v0

    add-long/2addr v13, v15

    .line 725
    aget v6, p0, v9

    move/from16 v16, v10

    .end local v10    # "w":I
    .local v16, "w":I
    int-to-long v9, v6

    and-long/2addr v9, v3

    .line 726
    .local v9, "x_2":J
    const/4 v6, 0x3

    aget v15, p1, v6

    move-wide/from16 v18, v7

    .end local v7    # "x_1":J
    .local v18, "x_1":J
    int-to-long v6, v15

    and-long/2addr v6, v3

    .line 727
    .local v6, "zz_3":J
    const/4 v15, 0x4

    aget v8, p1, v15

    move-wide/from16 v21, v1

    .end local v1    # "x_0":J
    .local v21, "x_0":J
    int-to-long v0, v8

    and-long/2addr v0, v3

    .line 729
    .local v0, "zz_4":J
    mul-long v23, v9, v21

    add-long v13, v13, v23

    .line 730
    long-to-int v8, v13

    .line 731
    .end local v16    # "w":I
    .local v8, "w":I
    shl-int/lit8 v16, v8, 0x1

    or-int v16, v16, v5

    const/16 v17, 0x2

    aput v16, p1, v17

    .line 732
    ushr-int/lit8 v5, v8, 0x1f

    .line 733
    const/16 v2, 0x20

    ushr-long v16, v13, v2

    mul-long v23, v9, v18

    add-long v16, v16, v23

    add-long v6, v6, v16

    .line 734
    ushr-long v16, v6, v2

    add-long v0, v0, v16

    .line 735
    and-long/2addr v6, v3

    .line 738
    const/16 v16, 0x3

    aget v2, p0, v16

    move/from16 v16, v8

    move-wide/from16 v23, v9

    .end local v8    # "w":I
    .end local v9    # "x_2":J
    .restart local v16    # "w":I
    .local v23, "x_2":J
    int-to-long v8, v2

    and-long/2addr v8, v3

    .line 739
    .local v8, "x_3":J
    const/4 v10, 0x5

    aget v2, p1, v10

    move-wide/from16 v25, v11

    .end local v11    # "zz_1":J
    .local v25, "zz_1":J
    int-to-long v10, v2

    and-long/2addr v10, v3

    const/16 v2, 0x20

    ushr-long v27, v0, v2

    add-long v10, v10, v27

    .local v10, "zz_5":J
    and-long/2addr v0, v3

    .line 740
    const/16 v17, 0x6

    aget v12, p1, v17

    move-wide/from16 v28, v13

    .end local v13    # "zz_2":J
    .local v28, "zz_2":J
    int-to-long v12, v12

    and-long/2addr v12, v3

    ushr-long v30, v10, v2

    add-long v12, v12, v30

    .local v12, "zz_6":J
    and-long/2addr v10, v3

    .line 742
    mul-long v30, v8, v21

    add-long v6, v6, v30

    .line 743
    long-to-int v14, v6

    .line 744
    .end local v16    # "w":I
    .local v14, "w":I
    shl-int/lit8 v16, v14, 0x1

    or-int v16, v16, v5

    const/16 v20, 0x3

    aput v16, p1, v20

    .line 745
    ushr-int/lit8 v5, v14, 0x1f

    .line 746
    const/16 v2, 0x20

    ushr-long v30, v6, v2

    mul-long v32, v8, v18

    add-long v30, v30, v32

    add-long v0, v0, v30

    .line 747
    ushr-long v30, v0, v2

    mul-long v32, v8, v23

    add-long v30, v30, v32

    add-long v10, v10, v30

    .line 748
    and-long/2addr v0, v3

    .line 749
    ushr-long v30, v10, v2

    add-long v12, v12, v30

    .line 750
    and-long/2addr v10, v3

    .line 753
    aget v2, p0, v15

    move-wide/from16 v30, v6

    .end local v6    # "zz_3":J
    .local v30, "zz_3":J
    int-to-long v6, v2

    and-long/2addr v6, v3

    .line 754
    .local v6, "x_4":J
    const/16 v20, 0x7

    aget v2, p1, v20

    move-wide/from16 v32, v8

    .end local v8    # "x_3":J
    .local v32, "x_3":J
    int-to-long v8, v2

    and-long/2addr v8, v3

    const/16 v2, 0x20

    ushr-long v34, v12, v2

    add-long v8, v8, v34

    .local v8, "zz_7":J
    and-long/2addr v12, v3

    .line 755
    const/16 v16, 0x8

    aget v15, p1, v16

    move/from16 v35, v14

    .end local v14    # "w":I
    .local v35, "w":I
    int-to-long v14, v15

    and-long/2addr v14, v3

    ushr-long v36, v8, v2

    add-long v14, v14, v36

    .local v14, "zz_8":J
    and-long/2addr v8, v3

    .line 757
    mul-long v36, v6, v21

    add-long v0, v0, v36

    .line 758
    long-to-int v2, v0

    .line 759
    .end local v35    # "w":I
    .local v2, "w":I
    shl-int/lit8 v35, v2, 0x1

    or-int v35, v35, v5

    const/16 v34, 0x4

    aput v35, p1, v34

    .line 760
    ushr-int/lit8 v5, v2, 0x1f

    .line 761
    const/16 v34, 0x20

    ushr-long v35, v0, v34

    mul-long v37, v6, v18

    add-long v35, v35, v37

    add-long v10, v10, v35

    .line 762
    ushr-long v35, v10, v34

    mul-long v37, v6, v23

    add-long v35, v35, v37

    add-long v12, v12, v35

    .line 763
    and-long/2addr v10, v3

    .line 764
    ushr-long v35, v12, v34

    mul-long v37, v6, v32

    add-long v35, v35, v37

    add-long v8, v8, v35

    .line 765
    and-long v35, v12, v3

    .line 766
    .end local v12    # "zz_6":J
    .local v35, "zz_6":J
    ushr-long v12, v8, v34

    add-long/2addr v14, v12

    .line 767
    and-long/2addr v8, v3

    .line 770
    const/4 v12, 0x5

    aget v13, p0, v12

    int-to-long v12, v13

    and-long/2addr v12, v3

    .line 771
    .local v12, "x_5":J
    const/16 v37, 0x9

    move-wide/from16 v38, v0

    .end local v0    # "zz_4":J
    .local v38, "zz_4":J
    aget v0, p1, v37

    int-to-long v0, v0

    and-long/2addr v0, v3

    const/16 v34, 0x20

    ushr-long v40, v14, v34

    add-long v0, v0, v40

    .local v0, "zz_9":J
    and-long/2addr v14, v3

    .line 772
    const/16 v40, 0xa

    move/from16 v41, v2

    .end local v2    # "w":I
    .local v41, "w":I
    aget v2, p1, v40

    move-wide/from16 v42, v6

    .end local v6    # "x_4":J
    .local v42, "x_4":J
    int-to-long v6, v2

    and-long/2addr v6, v3

    ushr-long v44, v0, v34

    add-long v6, v6, v44

    .local v6, "zz_10":J
    and-long/2addr v0, v3

    .line 774
    mul-long v3, v12, v21

    add-long/2addr v10, v3

    .line 775
    long-to-int v3, v10

    .line 776
    .end local v41    # "w":I
    .local v3, "w":I
    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v4, v5

    const/16 v27, 0x5

    aput v4, p1, v27

    .line 777
    ushr-int/lit8 v4, v3, 0x1f

    .line 778
    .end local v5    # "c":I
    .local v4, "c":I
    const/16 v2, 0x20

    ushr-long v44, v10, v2

    mul-long v46, v12, v18

    add-long v44, v44, v46

    move-wide/from16 v46, v10

    .end local v10    # "zz_5":J
    .local v46, "zz_5":J
    add-long v10, v35, v44

    .line 779
    .end local v35    # "zz_6":J
    .local v10, "zz_6":J
    ushr-long v34, v10, v2

    mul-long v44, v12, v23

    add-long v34, v34, v44

    add-long v8, v8, v34

    .line 780
    ushr-long v34, v8, v2

    mul-long v44, v12, v32

    add-long v34, v34, v44

    add-long v14, v14, v34

    .line 781
    ushr-long v34, v14, v2

    mul-long v44, v12, v42

    add-long v34, v34, v44

    add-long v0, v0, v34

    .line 782
    ushr-long v34, v0, v2

    add-long v6, v6, v34

    .line 785
    long-to-int v3, v10

    .line 786
    shl-int/lit8 v5, v3, 0x1

    or-int/2addr v5, v4

    aput v5, p1, v17

    .line 787
    ushr-int/lit8 v4, v3, 0x1f

    .line 788
    long-to-int v3, v8

    .line 789
    shl-int/lit8 v5, v3, 0x1

    or-int/2addr v5, v4

    aput v5, p1, v20

    .line 790
    ushr-int/lit8 v4, v3, 0x1f

    .line 791
    long-to-int v3, v14

    .line 792
    shl-int/lit8 v5, v3, 0x1

    or-int/2addr v5, v4

    aput v5, p1, v16

    .line 793
    ushr-int/lit8 v4, v3, 0x1f

    .line 794
    long-to-int v3, v0

    .line 795
    shl-int/lit8 v5, v3, 0x1

    or-int/2addr v5, v4

    aput v5, p1, v37

    .line 796
    ushr-int/lit8 v4, v3, 0x1f

    .line 797
    long-to-int v3, v6

    .line 798
    shl-int/lit8 v5, v3, 0x1

    or-int/2addr v5, v4

    aput v5, p1, v40

    .line 799
    ushr-int/lit8 v4, v3, 0x1f

    .line 800
    const/16 v5, 0xb

    aget v16, p1, v5

    move-wide/from16 v34, v0

    const/16 v2, 0x20

    .end local v0    # "zz_9":J
    .local v34, "zz_9":J
    ushr-long v0, v6, v2

    long-to-int v0, v0

    add-int v16, v16, v0

    .line 801
    .end local v3    # "w":I
    .restart local v16    # "w":I
    shl-int/lit8 v0, v16, 0x1

    or-int/2addr v0, v4

    aput v0, p1, v5

    .line 802
    return-void

    .line 704
    .end local v4    # "c":I
    .end local v6    # "zz_10":J
    .end local v10    # "zz_6":J
    .end local v12    # "x_5":J
    .end local v14    # "zz_8":J
    .end local v16    # "w":I
    .end local v18    # "x_1":J
    .end local v21    # "x_0":J
    .end local v23    # "x_2":J
    .end local v25    # "zz_1":J
    .end local v28    # "zz_2":J
    .end local v30    # "zz_3":J
    .end local v32    # "x_3":J
    .end local v34    # "zz_9":J
    .end local v38    # "zz_4":J
    .end local v42    # "x_4":J
    .end local v46    # "zz_5":J
    .restart local v1    # "x_0":J
    .restart local v5    # "c":I
    .local v7, "j":I
    .local v8, "i":I
    :cond_1ba
    move-wide/from16 v21, v1

    .end local v1    # "x_0":J
    .restart local v21    # "x_0":J
    move v6, v8

    goto/16 :goto_e
.end method

.method public static blacklist sub([II[II[II)I
    .registers 16
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 946
    const-wide/16 v0, 0x0

    .line 947
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p3, 0x0

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    sub-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 948
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 949
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 950
    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 951
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 952
    shr-long/2addr v0, v2

    .line 953
    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 954
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 955
    shr-long/2addr v0, v2

    .line 956
    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 957
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 958
    shr-long/2addr v0, v2

    .line 959
    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 960
    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    .line 961
    shr-long/2addr v0, v2

    .line 962
    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    sub-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 963
    add-int/lit8 v3, p5, 0x5

    long-to-int v4, v0

    aput v4, p4, v3

    .line 964
    shr-long/2addr v0, v2

    .line 965
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist sub([I[I[I)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 922
    const-wide/16 v0, 0x0

    .line 923
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 924
    long-to-int v3, v0

    aput v3, p2, v2

    .line 925
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 926
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 927
    long-to-int v4, v0

    aput v4, p2, v3

    .line 928
    shr-long/2addr v0, v2

    .line 929
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 930
    long-to-int v4, v0

    aput v4, p2, v3

    .line 931
    shr-long/2addr v0, v2

    .line 932
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 933
    long-to-int v4, v0

    aput v4, p2, v3

    .line 934
    shr-long/2addr v0, v2

    .line 935
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 936
    long-to-int v4, v0

    aput v4, p2, v3

    .line 937
    shr-long/2addr v0, v2

    .line 938
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    sub-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 939
    long-to-int v4, v0

    aput v4, p2, v3

    .line 940
    shr-long/2addr v0, v2

    .line 941
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subBothFrom([I[I[I)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 970
    const-wide/16 v0, 0x0

    .line 971
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p2, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 972
    long-to-int v3, v0

    aput v3, p2, v2

    .line 973
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 974
    const/4 v3, 0x1

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 975
    long-to-int v4, v0

    aput v4, p2, v3

    .line 976
    shr-long/2addr v0, v2

    .line 977
    const/4 v3, 0x2

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 978
    long-to-int v4, v0

    aput v4, p2, v3

    .line 979
    shr-long/2addr v0, v2

    .line 980
    const/4 v3, 0x3

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 981
    long-to-int v4, v0

    aput v4, p2, v3

    .line 982
    shr-long/2addr v0, v2

    .line 983
    const/4 v3, 0x4

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 984
    long-to-int v4, v0

    aput v4, p2, v3

    .line 985
    shr-long/2addr v0, v2

    .line 986
    const/4 v3, 0x5

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    sub-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 987
    long-to-int v4, v0

    aput v4, p2, v3

    .line 988
    shr-long/2addr v0, v2

    .line 989
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subFrom([II[II)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 1018
    const-wide/16 v0, 0x0

    .line 1019
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p1, 0x0

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    sub-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 1020
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1021
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1022
    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1023
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1024
    shr-long/2addr v0, v2

    .line 1025
    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1026
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1027
    shr-long/2addr v0, v2

    .line 1028
    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1029
    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1030
    shr-long/2addr v0, v2

    .line 1031
    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1032
    add-int/lit8 v3, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1033
    shr-long/2addr v0, v2

    .line 1034
    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    sub-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 1035
    add-int/lit8 v3, p3, 0x5

    long-to-int v4, v0

    aput v4, p2, v3

    .line 1036
    shr-long/2addr v0, v2

    .line 1037
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subFrom([I[I)I
    .registers 13
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 994
    const-wide/16 v0, 0x0

    .line 995
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 996
    long-to-int v3, v0

    aput v3, p1, v2

    .line 997
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 998
    const/4 v3, 0x1

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 999
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1000
    shr-long/2addr v0, v2

    .line 1001
    const/4 v3, 0x2

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1002
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1003
    shr-long/2addr v0, v2

    .line 1004
    const/4 v3, 0x3

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1005
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1006
    shr-long/2addr v0, v2

    .line 1007
    const/4 v3, 0x4

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1008
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1009
    shr-long/2addr v0, v2

    .line 1010
    const/4 v3, 0x5

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    sub-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 1011
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1012
    shr-long/2addr v0, v2

    .line 1013
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist toBigInteger([I)Ljava/math/BigInteger;
    .registers 5
    .param p0, "x"    # [I

    .line 1042
    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 1043
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/4 v2, 0x6

    if-ge v1, v2, :cond_16

    .line 1045
    aget v2, p0, v1

    .line 1046
    .local v2, "x_i":I
    if-eqz v2, :cond_13

    .line 1048
    rsub-int/lit8 v3, v1, 0x5

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 1043
    .end local v2    # "x_i":I
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1051
    .end local v1    # "i":I
    :cond_16
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static blacklist toBigInteger64([J)Ljava/math/BigInteger;
    .registers 8
    .param p0, "x"    # [J

    .line 1056
    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 1057
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1a

    .line 1059
    aget-wide v3, p0, v1

    .line 1060
    .local v3, "x_i":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_17

    .line 1062
    rsub-int/lit8 v5, v1, 0x2

    shl-int/lit8 v2, v5, 0x3

    invoke-static {v3, v4, v0, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 1057
    .end local v3    # "x_i":J
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1065
    .end local v1    # "i":I
    :cond_1a
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static blacklist zero([I)V
    .registers 3
    .param p0, "z"    # [I

    .line 1070
    const/4 v0, 0x0

    aput v0, p0, v0

    .line 1071
    const/4 v1, 0x1

    aput v0, p0, v1

    .line 1072
    const/4 v1, 0x2

    aput v0, p0, v1

    .line 1073
    const/4 v1, 0x3

    aput v0, p0, v1

    .line 1074
    const/4 v1, 0x4

    aput v0, p0, v1

    .line 1075
    const/4 v1, 0x5

    aput v0, p0, v1

    .line 1076
    return-void
.end method
