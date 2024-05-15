.class public final Lcom/android/org/conscrypt/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/org/conscrypt/Hex;->DIGITS:[C

    .line 28
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 31
    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .registers 9
    .param p0, "bytes"    # [B

    .prologue
    .line 35
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [C

    .line 36
    .local v1, "buf":[C
    const/4 v2, 0x0

    .line 37
    .local v2, "c":I
    const/4 v4, 0x0

    array-length v5, p0

    move v3, v2

    .end local v2    # "c":I
    .local v3, "c":I
    :goto_9
    if-ge v4, v5, :cond_26

    aget-byte v0, p0, v4

    .line 38
    .local v0, "b":B
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "c":I
    .restart local v2    # "c":I
    sget-object v6, Lcom/android/org/conscrypt/Hex;->DIGITS:[C

    shr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 39
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "c":I
    .restart local v3    # "c":I
    sget-object v6, Lcom/android/org/conscrypt/Hex;->DIGITS:[C

    and-int/lit8 v7, v0, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v2

    .line 37
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 41
    .end local v0    # "b":B
    :cond_26
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method

.method public static intToHexString(II)Ljava/lang/String;
    .registers 7
    .param p0, "i"    # I
    .param p1, "minWidth"    # I

    .prologue
    .line 45
    const/16 v1, 0x8

    .line 46
    .local v1, "bufLen":I
    new-array v0, v1, [C

    .line 45
    .local v0, "buf":[C
    const/16 v2, 0x8

    .line 50
    .local v2, "cursor":I
    :cond_6
    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/android/org/conscrypt/Hex;->DIGITS:[C

    and-int/lit8 v4, p0, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 51
    ushr-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_6

    rsub-int/lit8 v3, v2, 0x8

    if-lt v3, p1, :cond_6

    .line 53
    new-instance v3, Ljava/lang/String;

    rsub-int/lit8 v4, v2, 0x8

    invoke-direct {v3, v0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method
