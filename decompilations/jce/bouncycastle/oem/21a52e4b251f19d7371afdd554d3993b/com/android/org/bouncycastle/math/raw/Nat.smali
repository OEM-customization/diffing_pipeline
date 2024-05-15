.class public abstract Lcom/android/org/bouncycastle/math/raw/Nat;
.super Ljava/lang/Object;
.source "Nat.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add(I[I[I[I)I
    .registers 13
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p0, :cond_1d

    .line 20
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 21
    long-to-int v3, v0

    aput v3, p3, v2

    .line 22
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 18
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 24
    .end local v2    # "i":I
    :cond_1d
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist add33At(II[II)I
    .registers 11
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I

    .line 30
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 31
    .local v0, "c":J
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 32
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 33
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 34
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 35
    ushr-long/2addr v0, v4

    .line 36
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_34

    :cond_2e
    add-int/lit8 v2, p3, 0x2

    invoke-static {p0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    :goto_34
    return v2
.end method

.method public static blacklist add33At(II[III)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I

    .line 42
    add-int v0, p3, p4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 43
    .local v0, "c":J
    add-int v4, p3, p4

    long-to-int v5, v0

    aput v5, p2, v4

    .line 44
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 45
    add-int v5, p3, p4

    add-int/lit8 v5, v5, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 46
    add-int v2, p3, p4

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 47
    ushr-long/2addr v0, v4

    .line 48
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_32

    const/4 v2, 0x0

    goto :goto_38

    :cond_32
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p2, p3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_38
    return v2
.end method

.method public static blacklist add33To(II[I)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    .line 53
    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    .line 54
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p2, v0

    .line 55
    const/16 v5, 0x20

    ushr-long/2addr v1, v5

    .line 56
    const/4 v6, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    add-long/2addr v1, v3

    .line 57
    long-to-int v3, v1

    aput v3, p2, v6

    .line 58
    ushr-long/2addr v1, v5

    .line 59
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_27

    goto :goto_2c

    :cond_27
    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    :goto_2c
    return v0
.end method

.method public static blacklist add33To(II[II)I
    .registers 11
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 64
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 65
    .local v0, "c":J
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 66
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 67
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 68
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 69
    ushr-long/2addr v0, v4

    .line 70
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_33

    :cond_2e
    const/4 v2, 0x2

    invoke-static {p0, p2, p3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_33
    return v2
.end method

.method public static blacklist addBothTo(I[II[II[II)I
    .registers 16
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 87
    const-wide/16 v0, 0x0

    .line 88
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p0, :cond_2a

    .line 90
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-int v7, p6, v2

    aget v7, p5, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 91
    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    .line 92
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 94
    .end local v2    # "i":I
    :cond_2a
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addBothTo(I[I[I[I)I
    .registers 13
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .line 75
    const-wide/16 v0, 0x0

    .line 76
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p0, :cond_22

    .line 78
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    aget v7, p3, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 79
    long-to-int v3, v0

    aput v3, p3, v2

    .line 80
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 82
    .end local v2    # "i":I
    :cond_22
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addDWordAt(IJ[II)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zPos"    # I

    .line 100
    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    add-long/2addr v0, v4

    .line 101
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 102
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 103
    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 104
    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 105
    ushr-long/2addr v0, v4

    .line 106
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_34

    :cond_2e
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    :goto_34
    return v2
.end method

.method public static blacklist addDWordAt(IJ[III)I
    .registers 13
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I
    .param p5, "zPos"    # I

    .line 112
    add-int v0, p4, p5

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    add-long/2addr v0, v4

    .line 113
    .local v0, "c":J
    add-int v4, p4, p5

    long-to-int v5, v0

    aput v5, p3, v4

    .line 114
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 115
    add-int v5, p4, p5

    add-int/lit8 v5, v5, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 116
    add-int v2, p4, p5

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 117
    ushr-long/2addr v0, v4

    .line 118
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_32

    const/4 v2, 0x0

    goto :goto_38

    :cond_32
    add-int/lit8 v2, p5, 0x2

    invoke-static {p0, p3, p4, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_38
    return v2
.end method

.method public static blacklist addDWordTo(IJ[I)I
    .registers 13
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I

    .line 123
    const/4 v0, 0x0

    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    add-long/2addr v1, v5

    .line 124
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p3, v0

    .line 125
    const/16 v5, 0x20

    ushr-long/2addr v1, v5

    .line 126
    const/4 v6, 0x1

    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    ushr-long v7, p1, v5

    add-long/2addr v3, v7

    add-long/2addr v1, v3

    .line 127
    long-to-int v3, v1

    aput v3, p3, v6

    .line 128
    ushr-long/2addr v1, v5

    .line 129
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_27

    goto :goto_2c

    :cond_27
    const/4 v0, 0x2

    invoke-static {p0, p3, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    :goto_2c
    return v0
.end method

.method public static blacklist addDWordTo(IJ[II)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 134
    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    add-long/2addr v0, v4

    .line 135
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 136
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 137
    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 138
    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 139
    ushr-long/2addr v0, v4

    .line 140
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_33

    :cond_2e
    const/4 v2, 0x2

    invoke-static {p0, p3, p4, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_33
    return v2
.end method

.method public static blacklist addTo(I[II[II)I
    .registers 14
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 157
    const-wide/16 v0, 0x0

    .line 158
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p0, :cond_23

    .line 160
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 161
    add-int v3, p4, v2

    long-to-int v4, v0

    aput v4, p3, v3

    .line 162
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 164
    .end local v2    # "i":I
    :cond_23
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addTo(I[I[I)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 145
    const-wide/16 v0, 0x0

    .line 146
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p0, :cond_1d

    .line 148
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 149
    long-to-int v3, v0

    aput v3, p2, v2

    .line 150
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 152
    .end local v2    # "i":I
    :cond_1d
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addWordAt(II[II)I
    .registers 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I

    .line 170
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 171
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p2, p3

    .line 172
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 173
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_20

    :cond_1a
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    :goto_20
    return v2
.end method

.method public static blacklist addWordAt(II[III)I
    .registers 11
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I

    .line 179
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int v4, p3, p4

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 180
    .local v0, "c":J
    add-int v2, p3, p4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 181
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 182
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1e

    const/4 v2, 0x0

    goto :goto_24

    :cond_1e
    add-int/lit8 v2, p4, 0x1

    invoke-static {p0, p2, p3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_24
    return v2
.end method

.method public static blacklist addWordTo(II[I)I
    .registers 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    .line 187
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v4, 0x0

    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 188
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p2, v4

    .line 189
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 190
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1a

    goto :goto_1f

    :cond_1a
    const/4 v2, 0x1

    invoke-static {p0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v4

    :goto_1f
    return v4
.end method

.method public static blacklist addWordTo(II[II)I
    .registers 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 195
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 196
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p2, p3

    .line 197
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 198
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_1f

    :cond_1a
    const/4 v2, 0x1

    invoke-static {p0, p2, p3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_1f
    return v2
.end method

.method public static blacklist cadd(II[I[I[I)I
    .registers 16
    .param p0, "len"    # I
    .param p1, "mask"    # I
    .param p2, "x"    # [I
    .param p3, "y"    # [I
    .param p4, "z"    # [I

    .line 203
    and-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 204
    .local v0, "MASK":J
    const-wide/16 v4, 0x0

    .line 205
    .local v4, "c":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_d
    if-ge v6, p0, :cond_22

    .line 207
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    aget v9, p3, v6

    int-to-long v9, v9

    and-long/2addr v9, v0

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 208
    long-to-int v7, v4

    aput v7, p4, v6

    .line 209
    const/16 v7, 0x20

    ushr-long/2addr v4, v7

    .line 205
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 211
    .end local v6    # "i":I
    :cond_22
    long-to-int v2, v4

    return v2
.end method

.method public static blacklist cmov(II[II[II)V
    .registers 10
    .param p0, "len"    # I
    .param p1, "mask"    # I
    .param p2, "x"    # [I
    .param p3, "xOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 216
    and-int/lit8 v0, p1, 0x1

    neg-int p1, v0

    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, p0, :cond_19

    .line 220
    add-int v1, p5, v0

    aget v1, p4, v1

    .local v1, "z_i":I
    add-int v2, p3, v0

    aget v2, p2, v2

    xor-int/2addr v2, v1

    .line 221
    .local v2, "diff":I
    and-int v3, v2, p1

    xor-int/2addr v1, v3

    .line 222
    add-int v3, p5, v0

    aput v1, p4, v3

    .line 218
    .end local v1    # "z_i":I
    .end local v2    # "diff":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 234
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method public static blacklist copy(I[II[II)V
    .registers 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 250
    invoke-static {p1, p2, p3, p4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    return-void
.end method

.method public static blacklist copy(I[I[I)V
    .registers 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 245
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    return-void
.end method

.method public static blacklist copy(I[I)[I
    .registers 4
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .line 238
    new-array v0, p0, [I

    .line 239
    .local v0, "z":[I
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    return-object v0
.end method

.method public static blacklist create(I)[I
    .registers 2
    .param p0, "len"    # I

    .line 255
    new-array v0, p0, [I

    return-object v0
.end method

.method public static blacklist create64(I)[J
    .registers 2
    .param p0, "len"    # I

    .line 260
    new-array v0, p0, [J

    return-object v0
.end method

.method public static blacklist csub(II[I[I[I)I
    .registers 16
    .param p0, "len"    # I
    .param p1, "mask"    # I
    .param p2, "x"    # [I
    .param p3, "y"    # [I
    .param p4, "z"    # [I

    .line 265
    and-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 266
    .local v0, "MASK":J
    const-wide/16 v4, 0x0

    .line 267
    .local v4, "c":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_d
    if-ge v6, p0, :cond_22

    .line 269
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    aget v9, p3, v6

    int-to-long v9, v9

    and-long/2addr v9, v0

    sub-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 270
    long-to-int v7, v4

    aput v7, p4, v6

    .line 271
    const/16 v7, 0x20

    shr-long/2addr v4, v7

    .line 267
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 273
    .end local v6    # "i":I
    :cond_22
    long-to-int v2, v4

    return v2
.end method

.method public static blacklist dec(I[I)I
    .registers 5
    .param p0, "len"    # I
    .param p1, "z"    # [I

    .line 278
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, -0x1

    if-ge v0, p0, :cond_11

    .line 280
    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, p1, v0

    if-eq v2, v1, :cond_e

    .line 282
    const/4 v1, 0x0

    return v1

    .line 278
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 285
    .end local v0    # "i":I
    :cond_11
    return v1
.end method

.method public static blacklist dec(I[I[I)I
    .registers 6
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "i":I
    :goto_1
    const/4 v1, -0x1

    if-ge v0, p0, :cond_1a

    .line 293
    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    .line 294
    .local v2, "c":I
    aput v2, p2, v0

    .line 295
    add-int/lit8 v0, v0, 0x1

    .line 296
    if-eq v2, v1, :cond_19

    .line 298
    :goto_e
    if-ge v0, p0, :cond_17

    .line 300
    aget v1, p1, v0

    aput v1, p2, v0

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 303
    :cond_17
    const/4 v1, 0x0

    return v1

    .line 305
    .end local v2    # "c":I
    :cond_19
    goto :goto_1

    .line 306
    :cond_1a
    return v1
.end method

.method public static blacklist decAt(I[II)I
    .registers 6
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zPos"    # I

    .line 312
    move v0, p2

    .local v0, "i":I
    :goto_1
    const/4 v1, -0x1

    if-ge v0, p0, :cond_11

    .line 314
    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, p1, v0

    if-eq v2, v1, :cond_e

    .line 316
    const/4 v1, 0x0

    return v1

    .line 312
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    .end local v0    # "i":I
    :cond_11
    return v1
.end method

.method public static blacklist decAt(I[III)I
    .registers 8
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "zPos"    # I

    .line 325
    move v0, p3

    .local v0, "i":I
    :goto_1
    const/4 v1, -0x1

    if-ge v0, p0, :cond_13

    .line 327
    add-int v2, p2, v0

    aget v3, p1, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, p1, v2

    if-eq v3, v1, :cond_10

    .line 329
    const/4 v1, 0x0

    return v1

    .line 325
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 332
    .end local v0    # "i":I
    :cond_13
    return v1
.end method

.method public static blacklist eq(I[I[I)Z
    .registers 6
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .line 337
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_f

    .line 339
    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_c

    .line 341
    const/4 v1, 0x0

    return v1

    .line 337
    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 344
    .end local v0    # "i":I
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist fromBigInteger(ILjava/math/BigInteger;)[I
    .registers 7
    .param p0, "bits"    # I
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 349
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_2c

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p0, :cond_2c

    .line 354
    add-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v0, v0, 0x5

    .line 355
    .local v0, "len":I
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v1

    .line 356
    .local v1, "z":[I
    const/4 v2, 0x0

    .line 357
    .local v2, "i":I
    :goto_15
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-eqz v3, :cond_2b

    .line 359
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    aput v4, v1, v2

    .line 360
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    move v2, v3

    goto :goto_15

    .line 362
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_2b
    return-object v1

    .line 351
    .end local v0    # "len":I
    .end local v1    # "z":[I
    .end local v2    # "i":I
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist getBit([II)I
    .registers 5
    .param p0, "x"    # [I
    .param p1, "bit"    # I

    .line 367
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 369
    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0

    .line 371
    :cond_8
    shr-int/lit8 v1, p1, 0x5

    .line 372
    .local v1, "w":I
    if-ltz v1, :cond_18

    array-length v2, p0

    if-lt v1, v2, :cond_10

    goto :goto_18

    .line 376
    :cond_10
    and-int/lit8 v0, p1, 0x1f

    .line 377
    .local v0, "b":I
    aget v2, p0, v1

    ushr-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x1

    return v2

    .line 374
    .end local v0    # "b":I
    :cond_18
    :goto_18
    return v0
.end method

.method public static blacklist gte(I[I[I)Z
    .registers 8
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .line 382
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_2
    const/4 v1, 0x1

    if-ltz v0, :cond_17

    .line 384
    aget v2, p1, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 385
    .local v2, "x_i":I
    aget v4, p2, v0

    xor-int/2addr v3, v4

    .line 386
    .local v3, "y_i":I
    if-ge v2, v3, :cond_11

    .line 387
    const/4 v1, 0x0

    return v1

    .line 388
    :cond_11
    if-le v2, v3, :cond_14

    .line 389
    return v1

    .line 382
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 391
    .end local v0    # "i":I
    :cond_17
    return v1
.end method

.method public static blacklist inc(I[I)I
    .registers 5
    .param p0, "len"    # I
    .param p1, "z"    # [I

    .line 396
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x1

    if-ge v0, p0, :cond_10

    .line 398
    aget v2, p1, v0

    add-int/2addr v2, v1

    aput v2, p1, v0

    if-eqz v2, :cond_d

    .line 400
    const/4 v1, 0x0

    return v1

    .line 396
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 403
    .end local v0    # "i":I
    :cond_10
    return v1
.end method

.method public static blacklist inc(I[I[I)I
    .registers 6
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "i":I
    :goto_1
    const/4 v1, 0x1

    if-ge v0, p0, :cond_19

    .line 411
    aget v2, p1, v0

    add-int/2addr v2, v1

    .line 412
    .local v2, "c":I
    aput v2, p2, v0

    .line 413
    add-int/lit8 v0, v0, 0x1

    .line 414
    if-eqz v2, :cond_18

    .line 416
    :goto_d
    if-ge v0, p0, :cond_16

    .line 418
    aget v1, p1, v0

    aput v1, p2, v0

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 421
    :cond_16
    const/4 v1, 0x0

    return v1

    .line 423
    .end local v2    # "c":I
    :cond_18
    goto :goto_1

    .line 424
    :cond_19
    return v1
.end method

.method public static blacklist incAt(I[II)I
    .registers 6
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zPos"    # I

    .line 430
    move v0, p2

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x1

    if-ge v0, p0, :cond_10

    .line 432
    aget v2, p1, v0

    add-int/2addr v2, v1

    aput v2, p1, v0

    if-eqz v2, :cond_d

    .line 434
    const/4 v1, 0x0

    return v1

    .line 430
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 437
    .end local v0    # "i":I
    :cond_10
    return v1
.end method

.method public static blacklist incAt(I[III)I
    .registers 8
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "zPos"    # I

    .line 443
    move v0, p3

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x1

    if-ge v0, p0, :cond_12

    .line 445
    add-int v2, p2, v0

    aget v3, p1, v2

    add-int/2addr v3, v1

    aput v3, p1, v2

    if-eqz v3, :cond_f

    .line 447
    const/4 v1, 0x0

    return v1

    .line 443
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 450
    .end local v0    # "i":I
    :cond_12
    return v1
.end method

.method public static blacklist isOne(I[I)Z
    .registers 6
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .line 455
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    .line 457
    return v0

    .line 459
    :cond_7
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_8
    if-ge v1, p0, :cond_12

    .line 461
    aget v3, p1, v1

    if-eqz v3, :cond_f

    .line 463
    return v0

    .line 459
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 466
    .end local v1    # "i":I
    :cond_12
    return v2
.end method

.method public static blacklist isZero(I[I)Z
    .registers 4
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .line 471
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_c

    .line 473
    aget v1, p1, v0

    if-eqz v1, :cond_9

    .line 475
    const/4 v1, 0x0

    return v1

    .line 471
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 478
    .end local v0    # "i":I
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist mul(I[II[II[II)V
    .registers 16
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "zz"    # [I
    .param p6, "zzOff"    # I

    .line 493
    add-int v0, p6, p0

    aget v2, p1, p2

    move v1, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWord(II[II[II)I

    move-result v1

    aput v1, p5, v0

    .line 495
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_10
    if-ge v0, p0, :cond_28

    .line 497
    add-int v1, p6, v0

    add-int/2addr v1, p0

    add-int v2, p2, v0

    aget v4, p1, v2

    add-int v8, p6, v0

    move v3, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v2

    aput v2, p5, v1

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 499
    .end local v0    # "i":I
    :cond_28
    return-void
.end method

.method public static blacklist mul(I[I[I[I)V
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "zz"    # [I

    .line 483
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {p0, v0, p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWord(II[I[I)I

    move-result v0

    aput v0, p3, p0

    .line 485
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_a
    if-ge v0, p0, :cond_1e

    .line 487
    add-int v7, v0, p0

    aget v2, p1, v0

    const/4 v4, 0x0

    move v1, p0

    move-object v3, p2

    move-object v5, p3

    move v6, v0

    invoke-static/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v1

    aput v1, p3, v7

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 489
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method

.method public static blacklist mul([III[III[II)V
    .registers 17
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "xLen"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "yLen"    # I
    .param p6, "zz"    # [I
    .param p7, "zzOff"    # I

    .line 503
    add-int v6, p7, p5

    aget v1, p0, p1

    move v0, p5

    move-object v2, p3

    move v3, p4

    move-object v4, p6

    move/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWord(II[II[II)I

    move-result v0

    aput v0, p6, v6

    .line 505
    const/4 v0, 0x1

    move v6, v0

    .local v6, "i":I
    :goto_12
    move v7, p2

    if-ge v6, v7, :cond_2c

    .line 507
    add-int v0, p7, v6

    add-int v8, v0, p5

    add-int v0, p1, v6

    aget v1, p0, v0

    add-int v5, p7, v6

    move v0, p5

    move-object v2, p3

    move v3, p4

    move-object v4, p6

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v0

    aput v0, p6, v8

    .line 505
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 509
    .end local v6    # "i":I
    :cond_2c
    return-void
.end method

.method public static blacklist mul31BothAdd(II[II[I[II)I
    .registers 22
    .param p0, "len"    # I
    .param p1, "a"    # I
    .param p2, "x"    # [I
    .param p3, "b"    # I
    .param p4, "y"    # [I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 540
    const-wide/16 v0, 0x0

    move/from16 v2, p1

    .local v0, "c":J
    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    move/from16 v7, p3

    .local v3, "aVal":J
    int-to-long v8, v7

    and-long/2addr v8, v5

    .line 541
    .local v8, "bVal":J
    const/4 v10, 0x0

    .line 544
    .local v10, "i":I
    :goto_10
    aget v11, p2, v10

    int-to-long v11, v11

    and-long/2addr v11, v5

    mul-long/2addr v11, v3

    aget v13, p4, v10

    int-to-long v13, v13

    and-long/2addr v13, v5

    mul-long/2addr v13, v8

    add-long/2addr v11, v13

    add-int v13, p6, v10

    aget v13, p5, v13

    int-to-long v13, v13

    and-long/2addr v13, v5

    add-long/2addr v11, v13

    add-long/2addr v0, v11

    .line 545
    add-int v11, p6, v10

    long-to-int v12, v0

    aput v12, p5, v11

    .line 546
    const/16 v11, 0x20

    ushr-long/2addr v0, v11

    .line 548
    add-int/lit8 v10, v10, 0x1

    move v11, p0

    if-lt v10, v11, :cond_32

    .line 549
    long-to-int v5, v0

    return v5

    .line 548
    :cond_32
    goto :goto_10
.end method

.method public static blacklist mulAddTo(I[II[II[II)I
    .registers 16
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "zz"    # [I
    .param p6, "zzOff"    # I

    .line 526
    const-wide/16 v0, 0x0

    .line 527
    .local v0, "zc":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p0, :cond_30

    .line 529
    add-int v3, p2, v2

    aget v4, p1, v3

    move v3, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-static/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 530
    .local v3, "c":J
    add-int v7, p6, p0

    aget v7, p5, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v5, v0

    add-long/2addr v3, v5

    .line 531
    add-int v5, p6, p0

    long-to-int v6, v3

    aput v6, p5, v5

    .line 532
    const/16 v5, 0x20

    ushr-long v0, v3, v5

    .line 533
    nop

    .end local v3    # "c":J
    add-int/lit8 p6, p6, 0x1

    .line 527
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 535
    .end local v2    # "i":I
    :cond_30
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist mulAddTo(I[I[I[I)I
    .registers 13
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "zz"    # [I

    .line 513
    const-wide/16 v0, 0x0

    .line 514
    .local v0, "zc":J
    const/4 v2, 0x0

    move v8, v2

    .local v8, "i":I
    :goto_4
    if-ge v8, p0, :cond_2c

    .line 516
    aget v3, p1, v8

    const/4 v5, 0x0

    move v2, p0

    move-object v4, p2

    move-object v6, p3

    move v7, v8

    invoke-static/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 517
    .local v2, "c":J
    add-int v6, v8, p0

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    add-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 518
    add-int v4, v8, p0

    long-to-int v5, v2

    aput v5, p3, v4

    .line 519
    const/16 v4, 0x20

    ushr-long v0, v2, v4

    .line 514
    .end local v2    # "c":J
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 521
    .end local v8    # "i":I
    :cond_2c
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist mulWord(II[II[II)I
    .registers 15
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 568
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 569
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 572
    .local v6, "i":I
    :goto_a
    add-int v7, p3, v6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    .line 573
    add-int v7, p5, v6

    long-to-int v8, v0

    aput v8, p4, v7

    .line 574
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 576
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p0, :cond_20

    .line 577
    long-to-int v4, v0

    return v4

    .line 576
    :cond_20
    goto :goto_a
.end method

.method public static blacklist mulWord(II[I[I)I
    .registers 13
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .line 554
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 555
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 558
    .local v6, "i":I
    :goto_a
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    .line 559
    long-to-int v7, v0

    aput v7, p3, v6

    .line 560
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 562
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p0, :cond_1c

    .line 563
    long-to-int v4, v0

    return v4

    .line 562
    :cond_1c
    goto :goto_a
.end method

.method public static blacklist mulWordAddTo(II[II[II)I
    .registers 18
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 582
    const-wide/16 v0, 0x0

    move v2, p1

    .local v0, "c":J
    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 583
    .local v3, "xVal":J
    const/4 v7, 0x0

    .line 586
    .local v7, "i":I
    :goto_b
    add-int v8, p3, v7

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v5

    mul-long/2addr v8, v3

    add-int v10, p5, v7

    aget v10, p4, v10

    int-to-long v10, v10

    and-long/2addr v10, v5

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 587
    add-int v8, p5, v7

    long-to-int v9, v0

    aput v9, p4, v8

    .line 588
    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    .line 590
    add-int/lit8 v7, v7, 0x1

    move v8, p0

    if-lt v7, v8, :cond_29

    .line 591
    long-to-int v5, v0

    return v5

    .line 590
    :cond_29
    goto :goto_b
.end method

.method public static blacklist mulWordDwordAddAt(IIJ[II)I
    .registers 19
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # J
    .param p4, "z"    # [I
    .param p5, "zPos"    # I

    .line 597
    move-object/from16 v0, p4

    const-wide/16 v1, 0x0

    move v3, p1

    .local v1, "c":J
    int-to-long v4, v3

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 598
    .local v4, "xVal":J
    and-long v8, p2, v6

    mul-long/2addr v8, v4

    add-int/lit8 v10, p5, 0x0

    aget v10, v0, v10

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v8, v10

    add-long/2addr v1, v8

    .line 599
    add-int/lit8 v8, p5, 0x0

    long-to-int v9, v1

    aput v9, v0, v8

    .line 600
    const/16 v8, 0x20

    ushr-long/2addr v1, v8

    .line 601
    ushr-long v9, p2, v8

    mul-long/2addr v9, v4

    add-int/lit8 v11, p5, 0x1

    aget v11, v0, v11

    int-to-long v11, v11

    and-long/2addr v11, v6

    add-long/2addr v9, v11

    add-long/2addr v1, v9

    .line 602
    add-int/lit8 v9, p5, 0x1

    long-to-int v10, v1

    aput v10, v0, v9

    .line 603
    ushr-long/2addr v1, v8

    .line 604
    add-int/lit8 v9, p5, 0x2

    aget v9, v0, v9

    int-to-long v9, v9

    and-long/2addr v6, v9

    add-long/2addr v1, v6

    .line 605
    add-int/lit8 v6, p5, 0x2

    long-to-int v7, v1

    aput v7, v0, v6

    .line 606
    ushr-long/2addr v1, v8

    .line 607
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-nez v6, :cond_46

    const/4 v6, 0x0

    move v7, p0

    goto :goto_4d

    :cond_46
    add-int/lit8 v6, p5, 0x3

    move v7, p0

    invoke-static {p0, v0, v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v6

    :goto_4d
    return v6
.end method

.method public static blacklist shiftDownBit(I[II)I
    .registers 7
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "c"    # I

    .line 612
    move v0, p0

    .line 613
    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_10

    .line 615
    aget v1, p1, v0

    .line 616
    .local v1, "next":I
    ushr-int/lit8 v2, v1, 0x1

    shl-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 617
    move p2, v1

    .line 618
    .end local v1    # "next":I
    goto :goto_1

    .line 619
    :cond_10
    shl-int/lit8 v1, p2, 0x1f

    return v1
.end method

.method public static blacklist shiftDownBit(I[III)I
    .registers 9
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "c"    # I

    .line 624
    move v0, p0

    .line 625
    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    .line 627
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 628
    .local v1, "next":I
    add-int v2, p2, v0

    ushr-int/lit8 v3, v1, 0x1

    shl-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 629
    move p3, v1

    .line 630
    .end local v1    # "next":I
    goto :goto_1

    .line 631
    :cond_14
    shl-int/lit8 v1, p3, 0x1f

    return v1
.end method

.method public static blacklist shiftDownBit(I[III[II)I
    .registers 11
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 648
    move v0, p0

    .line 649
    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    .line 651
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 652
    .local v1, "next":I
    add-int v2, p5, v0

    ushr-int/lit8 v3, v1, 0x1

    shl-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p4, v2

    .line 653
    move p3, v1

    .line 654
    .end local v1    # "next":I
    goto :goto_1

    .line 655
    :cond_14
    shl-int/lit8 v1, p3, 0x1f

    return v1
.end method

.method public static blacklist shiftDownBit(I[II[I)I
    .registers 8
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "c"    # I
    .param p3, "z"    # [I

    .line 636
    move v0, p0

    .line 637
    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_10

    .line 639
    aget v1, p1, v0

    .line 640
    .local v1, "next":I
    ushr-int/lit8 v2, v1, 0x1

    shl-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p3, v0

    .line 641
    move p2, v1

    .line 642
    .end local v1    # "next":I
    goto :goto_1

    .line 643
    :cond_10
    shl-int/lit8 v1, p2, 0x1f

    return v1
.end method

.method public static blacklist shiftDownBits(I[III)I
    .registers 8
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I

    .line 661
    move v0, p0

    .line 662
    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    .line 664
    aget v1, p1, v0

    .line 665
    .local v1, "next":I
    ushr-int v2, v1, p2

    neg-int v3, p2

    shl-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 666
    move p3, v1

    .line 667
    .end local v1    # "next":I
    goto :goto_1

    .line 668
    :cond_11
    neg-int v1, p2

    shl-int v1, p3, v1

    return v1
.end method

.method public static blacklist shiftDownBits(I[IIII)I
    .registers 10
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I

    .line 674
    move v0, p0

    .line 675
    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    .line 677
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 678
    .local v1, "next":I
    add-int v2, p2, v0

    ushr-int v3, v1, p3

    neg-int v4, p3

    shl-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 679
    move p4, v1

    .line 680
    .end local v1    # "next":I
    goto :goto_1

    .line 681
    :cond_15
    neg-int v1, p3

    shl-int v1, p4, v1

    return v1
.end method

.method public static blacklist shiftDownBits(I[IIII[II)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 700
    move v0, p0

    .line 701
    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    .line 703
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 704
    .local v1, "next":I
    add-int v2, p6, v0

    ushr-int v3, v1, p3

    neg-int v4, p3

    shl-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p5, v2

    .line 705
    move p4, v1

    .line 706
    .end local v1    # "next":I
    goto :goto_1

    .line 707
    :cond_15
    neg-int v1, p3

    shl-int v1, p4, v1

    return v1
.end method

.method public static blacklist shiftDownBits(I[III[I)I
    .registers 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I

    .line 687
    move v0, p0

    .line 688
    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    .line 690
    aget v1, p1, v0

    .line 691
    .local v1, "next":I
    ushr-int v2, v1, p2

    neg-int v3, p2

    shl-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p4, v0

    .line 692
    move p3, v1

    .line 693
    .end local v1    # "next":I
    goto :goto_1

    .line 694
    :cond_11
    neg-int v1, p2

    shl-int v1, p3, v1

    return v1
.end method

.method public static blacklist shiftDownWord(I[II)I
    .registers 5
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "c"    # I

    .line 712
    move v0, p0

    .line 713
    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_b

    .line 715
    aget v1, p1, v0

    .line 716
    .local v1, "next":I
    aput p2, p1, v0

    .line 717
    move p2, v1

    .line 718
    .end local v1    # "next":I
    goto :goto_1

    .line 719
    :cond_b
    return p2
.end method

.method public static blacklist shiftUpBit(I[II)I
    .registers 7
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "c"    # I

    .line 724
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_10

    .line 726
    aget v1, p1, v0

    .line 727
    .local v1, "next":I
    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 728
    move p2, v1

    .line 724
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 730
    .end local v0    # "i":I
    :cond_10
    ushr-int/lit8 v0, p2, 0x1f

    return v0
.end method

.method public static blacklist shiftUpBit(I[III)I
    .registers 9
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "c"    # I

    .line 735
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_14

    .line 737
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 738
    .local v1, "next":I
    add-int v2, p2, v0

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 739
    move p3, v1

    .line 735
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 741
    .end local v0    # "i":I
    :cond_14
    ushr-int/lit8 v0, p3, 0x1f

    return v0
.end method

.method public static blacklist shiftUpBit(I[III[II)I
    .registers 11
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 757
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_14

    .line 759
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 760
    .local v1, "next":I
    add-int v2, p5, v0

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p4, v2

    .line 761
    move p3, v1

    .line 757
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 763
    .end local v0    # "i":I
    :cond_14
    ushr-int/lit8 v0, p3, 0x1f

    return v0
.end method

.method public static blacklist shiftUpBit(I[II[I)I
    .registers 8
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "c"    # I
    .param p3, "z"    # [I

    .line 746
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_10

    .line 748
    aget v1, p1, v0

    .line 749
    .local v1, "next":I
    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p3, v0

    .line 750
    move p2, v1

    .line 746
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 752
    .end local v0    # "i":I
    :cond_10
    ushr-int/lit8 v0, p2, 0x1f

    return v0
.end method

.method public static blacklist shiftUpBit64(I[JIJ[JI)J
    .registers 16
    .param p0, "len"    # I
    .param p1, "x"    # [J
    .param p2, "xOff"    # I
    .param p3, "c"    # J
    .param p5, "z"    # [J
    .param p6, "zOff"    # I

    .line 768
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x3f

    if-ge v0, p0, :cond_17

    .line 770
    add-int v2, p2, v0

    aget-wide v2, p1, v2

    .line 771
    .local v2, "next":J
    add-int v4, p6, v0

    const/4 v5, 0x1

    shl-long v5, v2, v5

    ushr-long v7, p3, v1

    or-long/2addr v5, v7

    aput-wide v5, p5, v4

    .line 772
    move-wide p3, v2

    .line 768
    .end local v2    # "next":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 774
    .end local v0    # "i":I
    :cond_17
    ushr-long v0, p3, v1

    return-wide v0
.end method

.method public static blacklist shiftUpBits(I[III)I
    .registers 8
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I

    .line 780
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_11

    .line 782
    aget v1, p1, v0

    .line 783
    .local v1, "next":I
    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 784
    move p3, v1

    .line 780
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 786
    .end local v0    # "i":I
    :cond_11
    neg-int v0, p2

    ushr-int v0, p3, v0

    return v0
.end method

.method public static blacklist shiftUpBits(I[IIII)I
    .registers 10
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I

    .line 792
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_15

    .line 794
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 795
    .local v1, "next":I
    add-int v2, p2, v0

    shl-int v3, v1, p3

    neg-int v4, p3

    ushr-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 796
    move p4, v1

    .line 792
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 798
    .end local v0    # "i":I
    :cond_15
    neg-int v0, p3

    ushr-int v0, p4, v0

    return v0
.end method

.method public static blacklist shiftUpBits(I[IIII[II)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 828
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_15

    .line 830
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 831
    .local v1, "next":I
    add-int v2, p6, v0

    shl-int v3, v1, p3

    neg-int v4, p3

    ushr-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p5, v2

    .line 832
    move p4, v1

    .line 828
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 834
    .end local v0    # "i":I
    :cond_15
    neg-int v0, p3

    ushr-int v0, p4, v0

    return v0
.end method

.method public static blacklist shiftUpBits(I[III[I)I
    .registers 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I

    .line 816
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_11

    .line 818
    aget v1, p1, v0

    .line 819
    .local v1, "next":I
    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p4, v0

    .line 820
    move p3, v1

    .line 816
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 822
    .end local v0    # "i":I
    :cond_11
    neg-int v0, p2

    ushr-int v0, p3, v0

    return v0
.end method

.method public static blacklist shiftUpBits64(I[JIIJ)J
    .registers 14
    .param p0, "len"    # I
    .param p1, "z"    # [J
    .param p2, "zOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # J

    .line 804
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_15

    .line 806
    add-int v1, p2, v0

    aget-wide v1, p1, v1

    .line 807
    .local v1, "next":J
    add-int v3, p2, v0

    shl-long v4, v1, p3

    neg-int v6, p3

    ushr-long v6, p4, v6

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    .line 808
    move-wide p4, v1

    .line 804
    .end local v1    # "next":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 810
    .end local v0    # "i":I
    :cond_15
    neg-int v0, p3

    ushr-long v0, p4, v0

    return-wide v0
.end method

.method public static blacklist shiftUpBits64(I[JIIJ[JI)J
    .registers 16
    .param p0, "len"    # I
    .param p1, "x"    # [J
    .param p2, "xOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # J
    .param p6, "z"    # [J
    .param p7, "zOff"    # I

    .line 840
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_15

    .line 842
    add-int v1, p2, v0

    aget-wide v1, p1, v1

    .line 843
    .local v1, "next":J
    add-int v3, p7, v0

    shl-long v4, v1, p3

    neg-int v6, p3

    ushr-long v6, p4, v6

    or-long/2addr v4, v6

    aput-wide v4, p6, v3

    .line 844
    move-wide p4, v1

    .line 840
    .end local v1    # "next":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 846
    .end local v0    # "i":I
    :cond_15
    neg-int v0, p3

    ushr-long v0, p4, v0

    return-wide v0
.end method

.method public static blacklist square(I[II[II)V
    .registers 23
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "zz"    # [I
    .param p4, "zzOff"    # I

    .line 875
    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    shl-int/lit8 v5, v0, 0x1

    .line 876
    .local v5, "extLen":I
    const/4 v6, 0x0

    .line 877
    .local v6, "c":I
    move/from16 v7, p0

    .local v7, "j":I
    move v8, v5

    .line 880
    .local v8, "k":I
    :goto_10
    add-int/lit8 v7, v7, -0x1

    add-int v9, v2, v7

    aget v9, v1, v9

    int-to-long v9, v9

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    .line 881
    .local v9, "xVal":J
    mul-long v11, v9, v9

    .line 882
    .local v11, "p":J
    add-int/lit8 v8, v8, -0x1

    add-int v13, v4, v8

    shl-int/lit8 v14, v6, 0x1f

    const/16 v15, 0x21

    move-wide/from16 v16, v9

    .end local v9    # "xVal":J
    .local v16, "xVal":J
    ushr-long v9, v11, v15

    long-to-int v9, v9

    or-int/2addr v9, v14

    aput v9, v3, v13

    .line 883
    add-int/lit8 v8, v8, -0x1

    add-int v9, v4, v8

    const/4 v10, 0x1

    ushr-long v13, v11, v10

    long-to-int v10, v13

    aput v10, v3, v9

    .line 884
    long-to-int v6, v11

    .line 886
    .end local v11    # "p":J
    .end local v16    # "xVal":J
    if-gtz v7, :cond_53

    .line 888
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_3d
    if-ge v9, v0, :cond_4b

    .line 890
    invoke-static {v1, v2, v9, v3, v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->squareWordAdd([III[II)I

    move-result v6

    .line 891
    shl-int/lit8 v10, v9, 0x1

    invoke-static {v5, v6, v3, v4, v10}, Lcom/android/org/bouncycastle/math/raw/Nat;->addWordAt(II[III)I

    .line 888
    add-int/lit8 v9, v9, 0x1

    goto :goto_3d

    .line 894
    .end local v9    # "i":I
    :cond_4b
    aget v9, v1, v2

    shl-int/lit8 v9, v9, 0x1f

    invoke-static {v5, v3, v4, v9}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[III)I

    .line 895
    return-void

    .line 886
    :cond_53
    goto :goto_10
.end method

.method public static blacklist square(I[I[I)V
    .registers 14
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "zz"    # [I

    .line 851
    shl-int/lit8 v0, p0, 0x1

    .line 852
    .local v0, "extLen":I
    const/4 v1, 0x0

    .line 853
    .local v1, "c":I
    move v2, p0

    .local v2, "j":I
    move v3, v0

    .line 856
    .local v3, "k":I
    :goto_5
    add-int/lit8 v2, v2, -0x1

    aget v4, p1, v2

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 857
    .local v4, "xVal":J
    mul-long v6, v4, v4

    .line 858
    .local v6, "p":J
    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v8, v1, 0x1f

    const/16 v9, 0x21

    ushr-long v9, v6, v9

    long-to-int v9, v9

    or-int/2addr v8, v9

    aput v8, p2, v3

    .line 859
    add-int/lit8 v3, v3, -0x1

    const/4 v8, 0x1

    ushr-long v8, v6, v8

    long-to-int v8, v8

    aput v8, p2, v3

    .line 860
    long-to-int v1, v6

    .line 862
    .end local v4    # "xVal":J
    .end local v6    # "p":J
    if-gtz v2, :cond_41

    .line 864
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_2a
    if-ge v4, p0, :cond_38

    .line 866
    invoke-static {p1, v4, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->squareWordAdd([II[I)I

    move-result v1

    .line 867
    shl-int/lit8 v5, v4, 0x1

    invoke-static {v0, v1, p2, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    .line 864
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 870
    .end local v4    # "i":I
    :cond_38
    const/4 v4, 0x0

    aget v4, p1, v4

    shl-int/lit8 v4, v4, 0x1f

    invoke-static {v0, p2, v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II)I

    .line 871
    return-void

    .line 862
    :cond_41
    goto :goto_5
.end method

.method public static blacklist squareWordAdd([III[II)I
    .registers 16
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "xPos"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 913
    const-wide/16 v0, 0x0

    .local v0, "c":J
    add-int v2, p1, p2

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 914
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 917
    .local v6, "i":I
    :goto_e
    add-int v7, p1, v6

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int v9, p2, p4

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 918
    add-int v7, p2, p4

    long-to-int v8, v0

    aput v8, p3, v7

    .line 919
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 920
    add-int/lit8 p4, p4, 0x1

    .line 922
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p2, :cond_2d

    .line 923
    long-to-int v4, v0

    return v4

    .line 922
    :cond_2d
    goto :goto_e
.end method

.method public static blacklist squareWordAdd([II[I)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "xPos"    # I
    .param p2, "z"    # [I

    .line 899
    const-wide/16 v0, 0x0

    .local v0, "c":J
    aget v2, p0, p1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 900
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 903
    .local v6, "i":I
    :goto_c
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int v9, p1, v6

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 904
    add-int v7, p1, v6

    long-to-int v8, v0

    aput v8, p2, v7

    .line 905
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 907
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p1, :cond_27

    .line 908
    long-to-int v4, v0

    return v4

    .line 907
    :cond_27
    goto :goto_c
.end method

.method public static blacklist sub(I[II[II[II)I
    .registers 16
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 940
    const-wide/16 v0, 0x0

    .line 941
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p0, :cond_23

    .line 943
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 944
    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    .line 945
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 941
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 947
    .end local v2    # "i":I
    :cond_23
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist sub(I[I[I[I)I
    .registers 13
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .line 928
    const-wide/16 v0, 0x0

    .line 929
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p0, :cond_1d

    .line 931
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 932
    long-to-int v3, v0

    aput v3, p3, v2

    .line 933
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 929
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 935
    .end local v2    # "i":I
    :cond_1d
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist sub33At(II[II)I
    .registers 11
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I

    .line 953
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 954
    .local v0, "c":J
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 955
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 956
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 957
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 958
    shr-long/2addr v0, v4

    .line 959
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_34

    :cond_2e
    add-int/lit8 v2, p3, 0x2

    invoke-static {p0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    :goto_34
    return v2
.end method

.method public static blacklist sub33At(II[III)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I

    .line 965
    add-int v0, p3, p4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 966
    .local v0, "c":J
    add-int v4, p3, p4

    long-to-int v5, v0

    aput v5, p2, v4

    .line 967
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 968
    add-int v5, p3, p4

    add-int/lit8 v5, v5, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 969
    add-int v2, p3, p4

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 970
    shr-long/2addr v0, v4

    .line 971
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_32

    const/4 v2, 0x0

    goto :goto_38

    :cond_32
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p2, p3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_38
    return v2
.end method

.method public static blacklist sub33From(II[I)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    .line 976
    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    .line 977
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p2, v0

    .line 978
    const/16 v5, 0x20

    shr-long/2addr v1, v5

    .line 979
    const/4 v6, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    const-wide/16 v7, 0x1

    sub-long/2addr v3, v7

    add-long/2addr v1, v3

    .line 980
    long-to-int v3, v1

    aput v3, p2, v6

    .line 981
    shr-long/2addr v1, v5

    .line 982
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_27

    goto :goto_2c

    :cond_27
    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_2c
    return v0
.end method

.method public static blacklist sub33From(II[II)I
    .registers 11
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 987
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 988
    .local v0, "c":J
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 989
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 990
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 991
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 992
    shr-long/2addr v0, v4

    .line 993
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_33

    :cond_2e
    const/4 v2, 0x2

    invoke-static {p0, p2, p3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_33
    return v2
.end method

.method public static blacklist subBothFrom(I[II[II[II)I
    .registers 16
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 1010
    const-wide/16 v0, 0x0

    .line 1011
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p0, :cond_2a

    .line 1013
    add-int v3, p6, v2

    aget v3, p5, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p2, v2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1014
    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    .line 1015
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1011
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1017
    .end local v2    # "i":I
    :cond_2a
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subBothFrom(I[I[I[I)I
    .registers 13
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .line 998
    const-wide/16 v0, 0x0

    .line 999
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p0, :cond_22

    .line 1001
    aget v3, p3, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1002
    long-to-int v3, v0

    aput v3, p3, v2

    .line 1003
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 999
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1005
    .end local v2    # "i":I
    :cond_22
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subDWordAt(IJ[II)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zPos"    # I

    .line 1023
    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    sub-long/2addr v0, v4

    .line 1024
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 1025
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1026
    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 1027
    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 1028
    shr-long/2addr v0, v4

    .line 1029
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_34

    :cond_2e
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    :goto_34
    return v2
.end method

.method public static blacklist subDWordAt(IJ[III)I
    .registers 13
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I
    .param p5, "zPos"    # I

    .line 1035
    add-int v0, p4, p5

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    sub-long/2addr v0, v4

    .line 1036
    .local v0, "c":J
    add-int v4, p4, p5

    long-to-int v5, v0

    aput v5, p3, v4

    .line 1037
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1038
    add-int v5, p4, p5

    add-int/lit8 v5, v5, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 1039
    add-int v2, p4, p5

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 1040
    shr-long/2addr v0, v4

    .line 1041
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_32

    const/4 v2, 0x0

    goto :goto_38

    :cond_32
    add-int/lit8 v2, p5, 0x2

    invoke-static {p0, p3, p4, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_38
    return v2
.end method

.method public static blacklist subDWordFrom(IJ[I)I
    .registers 13
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I

    .line 1046
    const/4 v0, 0x0

    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    sub-long/2addr v1, v5

    .line 1047
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p3, v0

    .line 1048
    const/16 v5, 0x20

    shr-long/2addr v1, v5

    .line 1049
    const/4 v6, 0x1

    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    ushr-long v7, p1, v5

    sub-long/2addr v3, v7

    add-long/2addr v1, v3

    .line 1050
    long-to-int v3, v1

    aput v3, p3, v6

    .line 1051
    shr-long/2addr v1, v5

    .line 1052
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_27

    goto :goto_2c

    :cond_27
    const/4 v0, 0x2

    invoke-static {p0, p3, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_2c
    return v0
.end method

.method public static blacklist subDWordFrom(IJ[II)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 1057
    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    sub-long/2addr v0, v4

    .line 1058
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 1059
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1060
    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 1061
    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 1062
    shr-long/2addr v0, v4

    .line 1063
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_33

    :cond_2e
    const/4 v2, 0x2

    invoke-static {p0, p3, p4, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_33
    return v2
.end method

.method public static blacklist subFrom(I[II[II)I
    .registers 14
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 1080
    const-wide/16 v0, 0x0

    .line 1081
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p0, :cond_23

    .line 1083
    add-int v3, p4, v2

    aget v3, p3, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p2, v2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1084
    add-int v3, p4, v2

    long-to-int v4, v0

    aput v4, p3, v3

    .line 1085
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1081
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1087
    .end local v2    # "i":I
    :cond_23
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subFrom(I[I[I)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 1068
    const-wide/16 v0, 0x0

    .line 1069
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p0, :cond_1d

    .line 1071
    aget v3, p2, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1072
    long-to-int v3, v0

    aput v3, p2, v2

    .line 1073
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1069
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1075
    .end local v2    # "i":I
    :cond_1d
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subWordAt(II[II)I
    .registers 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I

    .line 1093
    aget v0, p2, p3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 1094
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p2, p3

    .line 1095
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1096
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_20

    :cond_1a
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    :goto_20
    return v2
.end method

.method public static blacklist subWordAt(II[III)I
    .registers 11
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I

    .line 1102
    add-int v0, p3, p4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 1103
    .local v0, "c":J
    add-int v2, p3, p4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1104
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1105
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1e

    const/4 v2, 0x0

    goto :goto_24

    :cond_1e
    add-int/lit8 v2, p4, 0x1

    invoke-static {p0, p2, p3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_24
    return v2
.end method

.method public static blacklist subWordFrom(II[I)I
    .registers 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    .line 1110
    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v3, v5

    sub-long/2addr v1, v3

    .line 1111
    .local v1, "c":J
    long-to-int v3, v1

    aput v3, p2, v0

    .line 1112
    const/16 v3, 0x20

    shr-long/2addr v1, v3

    .line 1113
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1a

    goto :goto_1f

    :cond_1a
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_1f
    return v0
.end method

.method public static blacklist subWordFrom(II[II)I
    .registers 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 1118
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 1119
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1120
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1121
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1e

    const/4 v2, 0x0

    goto :goto_23

    :cond_1e
    const/4 v2, 0x1

    invoke-static {p0, p2, p3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_23
    return v2
.end method

.method public static blacklist toBigInteger(I[I)Ljava/math/BigInteger;
    .registers 6
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .line 1126
    shl-int/lit8 v0, p0, 0x2

    new-array v0, v0, [B

    .line 1127
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, p0, :cond_16

    .line 1129
    aget v2, p1, v1

    .line 1130
    .local v2, "x_i":I
    if-eqz v2, :cond_13

    .line 1132
    add-int/lit8 v3, p0, -0x1

    sub-int/2addr v3, v1

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 1127
    .end local v2    # "x_i":I
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1135
    .end local v1    # "i":I
    :cond_16
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static blacklist zero(I[I)V
    .registers 4
    .param p0, "len"    # I
    .param p1, "z"    # [I

    .line 1140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_9

    .line 1142
    const/4 v1, 0x0

    aput v1, p1, v0

    .line 1140
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1144
    .end local v0    # "i":I
    :cond_9
    return-void
.end method

.method public static blacklist zero64(I[J)V
    .registers 5
    .param p0, "len"    # I
    .param p1, "z"    # [J

    .line 1148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_a

    .line 1150
    const-wide/16 v1, 0x0

    aput-wide v1, p1, v0

    .line 1148
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1152
    .end local v0    # "i":I
    :cond_a
    return-void
.end method
