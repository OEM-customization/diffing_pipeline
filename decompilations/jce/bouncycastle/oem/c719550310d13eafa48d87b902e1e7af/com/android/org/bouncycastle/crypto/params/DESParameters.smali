.class public Lcom/android/org/bouncycastle/crypto/params/DESParameters;
.super Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
.source "DESParameters.java"


# static fields
.field public static final DES_KEY_LENGTH:I = 0x8

.field private static DES_weak_keys:[B = null

.field private static final N_DES_WEAK_KEYS:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    .line 27
    sput-object v0, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->DES_weak_keys:[B

    .line 3
    return-void

    .line 28
    :array_a
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1ft
        0x1ft
        0x1ft
        0x1ft
        0xet
        0xet
        0xet
        0xet
        -0x20t
        -0x20t
        -0x20t
        -0x20t
        -0xft
        -0xft
        -0xft
        -0xft
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1ft
        -0x20t
        0x1ft
        -0x20t
        0xet
        -0xft
        0xet
        -0xft
        0x1t
        -0x20t
        0x1t
        -0x20t
        0x1t
        -0xft
        0x1t
        -0xft
        0x1ft
        -0x2t
        0x1ft
        -0x2t
        0xet
        -0x2t
        0xet
        -0x2t
        0x1t
        0x1ft
        0x1t
        0x1ft
        0x1t
        0xet
        0x1t
        0xet
        -0x20t
        -0x2t
        -0x20t
        -0x2t
        -0xft
        -0x2t
        -0xft
        -0x2t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x20t
        0x1ft
        -0x20t
        0x1ft
        -0xft
        0xet
        -0xft
        0xet
        -0x20t
        0x1t
        -0x20t
        0x1t
        -0xft
        0x1t
        -0xft
        0x1t
        -0x2t
        0x1ft
        -0x2t
        0x1ft
        -0x2t
        0xet
        -0x2t
        0xet
        0x1ft
        0x1t
        0x1ft
        0x1t
        0xet
        0x1t
        0xet
        0x1t
        -0x2t
        -0x20t
        -0x2t
        -0x20t
        -0x2t
        -0xft
        -0x2t
        -0xft
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 4
    .param p1, "key"    # [B

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 11
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "attempt to create weak DES key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_13
    return-void
.end method

.method public static isWeakKey([BI)Z
    .registers 8
    .param p0, "key"    # [B
    .param p1, "offset"    # I

    .prologue
    const/16 v5, 0x8

    .line 65
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v5, :cond_f

    .line 67
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "key material too short."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    const/16 v2, 0x10

    if-ge v0, v2, :cond_2c

    .line 72
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_15
    if-ge v1, v5, :cond_2a

    .line 74
    add-int v2, v1, p1

    aget-byte v2, p0, v2

    sget-object v3, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->DES_weak_keys:[B

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v1

    aget-byte v3, v3, v4

    if-eq v2, v3, :cond_27

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 72
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 80
    :cond_2a
    const/4 v2, 0x1

    return v2

    .line 82
    .end local v1    # "j":I
    :cond_2c
    const/4 v2, 0x0

    return v2
.end method

.method public static setOddParity([B)V
    .registers 6
    .param p0, "bytes"    # [B

    .prologue
    .line 94
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_27

    .line 96
    aget-byte v0, p0, v1

    .line 97
    .local v0, "b":I
    and-int/lit16 v2, v0, 0xfe

    .line 98
    shr-int/lit8 v3, v0, 0x1

    .line 99
    shr-int/lit8 v4, v0, 0x2

    .line 98
    xor-int/2addr v3, v4

    .line 100
    shr-int/lit8 v4, v0, 0x3

    .line 98
    xor-int/2addr v3, v4

    .line 101
    shr-int/lit8 v4, v0, 0x4

    .line 98
    xor-int/2addr v3, v4

    .line 102
    shr-int/lit8 v4, v0, 0x5

    .line 98
    xor-int/2addr v3, v4

    .line 103
    shr-int/lit8 v4, v0, 0x6

    .line 98
    xor-int/2addr v3, v4

    .line 104
    shr-int/lit8 v4, v0, 0x7

    .line 98
    xor-int/2addr v3, v4

    xor-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0x1

    .line 97
    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    .end local v0    # "b":I
    :cond_27
    return-void
.end method
