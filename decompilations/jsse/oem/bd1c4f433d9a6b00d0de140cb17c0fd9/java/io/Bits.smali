.class Ljava/io/Bits;
.super Ljava/lang/Object;
.source "Bits.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBoolean([BI)Z
    .registers 4
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .prologue
    const/4 v0, 0x0

    .line 40
    aget-byte v1, p0, p1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method static getChar([BI)C
    .registers 4
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .prologue
    .line 44
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 45
    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x8

    .line 44
    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method static getDouble([BI)D
    .registers 4
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .prologue
    .line 76
    invoke-static {p0, p1}, Ljava/io/Bits;->getLong([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static getFloat([BI)F
    .registers 3
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .prologue
    .line 61
    invoke-static {p0, p1}, Ljava/io/Bits;->getInt([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method static getInt([BI)I
    .registers 4
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .prologue
    .line 54
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 55
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 54
    add-int/2addr v0, v1

    .line 56
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 54
    add-int/2addr v0, v1

    .line 57
    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    .line 54
    add-int/2addr v0, v1

    return v0
.end method

.method static getLong([BI)J
    .registers 10
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .prologue
    const-wide/16 v6, 0xff

    .line 65
    add-int/lit8 v0, p1, 0x7

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long/2addr v0, v6

    .line 66
    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    .line 65
    add-long/2addr v0, v2

    .line 67
    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    .line 65
    add-long/2addr v0, v2

    .line 68
    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    .line 65
    add-long/2addr v0, v2

    .line 69
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 65
    add-long/2addr v0, v2

    .line 70
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    .line 65
    add-long/2addr v0, v2

    .line 71
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    .line 65
    add-long/2addr v0, v2

    .line 72
    aget-byte v2, p0, p1

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    .line 65
    add-long/2addr v0, v2

    return-wide v0
.end method

.method static getShort([BI)S
    .registers 4
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .prologue
    .line 49
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 50
    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x8

    .line 49
    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method static putBoolean([BIZ)V
    .registers 4
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # Z

    .prologue
    .line 85
    if-eqz p2, :cond_7

    const/4 v0, 0x1

    :goto_3
    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 86
    return-void

    .line 85
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static putChar([BIC)V
    .registers 5
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # C

    .prologue
    .line 89
    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 90
    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 91
    return-void
.end method

.method static putDouble([BID)V
    .registers 6
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # D

    .prologue
    .line 121
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/io/Bits;->putLong([BIJ)V

    .line 122
    return-void
.end method

.method static putFloat([BIF)V
    .registers 4
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # F

    .prologue
    .line 106
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/io/Bits;->putInt([BII)V

    .line 107
    return-void
.end method

.method static putInt([BII)V
    .registers 5
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # I

    .prologue
    .line 99
    add-int/lit8 v0, p1, 0x3

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 100
    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 101
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 102
    ushr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 103
    return-void
.end method

.method static putLong([BIJ)V
    .registers 8
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # J

    .prologue
    .line 110
    add-int/lit8 v0, p1, 0x7

    long-to-int v1, p2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 111
    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x8

    ushr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 112
    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x10

    ushr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 113
    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x18

    ushr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 114
    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x20

    ushr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 115
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x28

    ushr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 116
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x30

    ushr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 117
    const/16 v0, 0x38

    ushr-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 118
    return-void
.end method

.method static putShort([BIS)V
    .registers 5
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "val"    # S

    .prologue
    .line 94
    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 95
    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 96
    return-void
.end method
