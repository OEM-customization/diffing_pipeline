.class public Lsun/security/util/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"


# static fields
.field private static final greylist-max-o BITS_PER_UNIT:I = 0x8

.field private static final greylist-max-o BYTES_PER_LINE:I = 0x8

.field private static final greylist-max-o NYBBLE:[[B


# instance fields
.field private greylist-max-o length:I

.field private greylist-max-o repn:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 219
    const/16 v0, 0x10

    new-array v0, v0, [[B

    const/4 v1, 0x4

    new-array v2, v1, [B

    fill-array-data v2, :array_90

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_96

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_9c

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_a2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_a8

    aput-object v2, v0, v1

    new-array v2, v1, [B

    fill-array-data v2, :array_ae

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_b4

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_ba

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_c0

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_c6

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_cc

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_d2

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_d8

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_de

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_e4

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_ea

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lsun/security/util/BitArray;->NYBBLE:[[B

    return-void

    nop

    :array_90
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x30t
    .end array-data

    :array_96
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x31t
    .end array-data

    :array_9c
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x30t
    .end array-data

    :array_a2
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x31t
    .end array-data

    :array_a8
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x30t
    .end array-data

    :array_ae
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x31t
    .end array-data

    :array_b4
    .array-data 1
        0x30t
        0x31t
        0x31t
        0x30t
    .end array-data

    :array_ba
    .array-data 1
        0x30t
        0x31t
        0x31t
        0x31t
    .end array-data

    :array_c0
    .array-data 1
        0x31t
        0x30t
        0x30t
        0x30t
    .end array-data

    :array_c6
    .array-data 1
        0x31t
        0x30t
        0x30t
        0x31t
    .end array-data

    :array_cc
    .array-data 1
        0x31t
        0x30t
        0x31t
        0x30t
    .end array-data

    :array_d2
    .array-data 1
        0x31t
        0x30t
        0x31t
        0x31t
    .end array-data

    :array_d8
    .array-data 1
        0x31t
        0x31t
        0x30t
        0x30t
    .end array-data

    :array_de
    .array-data 1
        0x31t
        0x31t
        0x30t
        0x31t
    .end array-data

    :array_e4
    .array-data 1
        0x31t
        0x31t
        0x31t
        0x30t
    .end array-data

    :array_ea
    .array-data 1
        0x31t
        0x31t
        0x31t
        0x31t
    .end array-data
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-ltz p1, :cond_12

    .line 61
    iput p1, p0, Lsun/security/util/BitArray;->length:I

    .line 63
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/security/util/BitArray;->repn:[B

    .line 64
    return-void

    .line 58
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative length for BitArray"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist <init>(I[B)V
    .registers 9
    .param p1, "length"    # I
    .param p2, "a"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-ltz p1, :cond_36

    .line 79
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    if-lt v0, p1, :cond_2e

    .line 84
    iput p1, p0, Lsun/security/util/BitArray;->length:I

    .line 86
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    .line 87
    .local v0, "repLength":I
    mul-int/lit8 v1, v0, 0x8

    sub-int/2addr v1, p1

    .line 88
    .local v1, "unusedBits":I
    const/16 v2, 0xff

    shl-int/2addr v2, v1

    int-to-byte v2, v2

    .line 95
    .local v2, "bitMask":B
    new-array v3, v0, [B

    iput-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    .line 96
    const/4 v4, 0x0

    invoke-static {p2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    if-lez v0, :cond_2d

    .line 98
    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    add-int/lit8 v4, v0, -0x1

    aget-byte v5, v3, v4

    and-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 100
    :cond_2d
    return-void

    .line 80
    .end local v0    # "repLength":I
    .end local v1    # "unusedBits":I
    .end local v2    # "bitMask":B
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Byte array too short to represent bit array of given length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative length for BitArray"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Lsun/security/util/BitArray;)V
    .registers 3
    .param p1, "ba"    # Lsun/security/util/BitArray;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iget v0, p1, Lsun/security/util/BitArray;->length:I

    iput v0, p0, Lsun/security/util/BitArray;->length:I

    .line 121
    iget-object v0, p1, Lsun/security/util/BitArray;->repn:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/util/BitArray;->repn:[B

    .line 122
    return-void
.end method

.method public constructor blacklist <init>([Z)V
    .registers 4
    .param p1, "bits"    # [Z

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    array-length v0, p1

    iput v0, p0, Lsun/security/util/BitArray;->length:I

    .line 108
    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/security/util/BitArray;->repn:[B

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget v1, p0, Lsun/security/util/BitArray;->length:I

    if-ge v0, v1, :cond_1b

    .line 111
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v0, v1}, Lsun/security/util/BitArray;->set(IZ)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 113
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method private static greylist-max-o position(I)I
    .registers 3
    .param p0, "idx"    # I

    .line 50
    rem-int/lit8 v0, p0, 0x8

    rsub-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.method private static greylist-max-o subscript(I)I
    .registers 2
    .param p0, "idx"    # I

    .line 46
    div-int/lit8 v0, p0, 0x8

    return v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 215
    new-instance v0, Lsun/security/util/BitArray;

    invoke-direct {v0, p0}, Lsun/security/util/BitArray;-><init>(Lsun/security/util/BitArray;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 174
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 175
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    instance-of v2, p1, Lsun/security/util/BitArray;

    if-nez v2, :cond_c

    goto :goto_29

    .line 177
    :cond_c
    move-object v2, p1

    check-cast v2, Lsun/security/util/BitArray;

    .line 179
    .local v2, "ba":Lsun/security/util/BitArray;
    iget v3, v2, Lsun/security/util/BitArray;->length:I

    iget v4, p0, Lsun/security/util/BitArray;->length:I

    if-eq v3, v4, :cond_16

    return v1

    .line 181
    :cond_16
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    iget-object v4, p0, Lsun/security/util/BitArray;->repn:[B

    array-length v5, v4

    if-ge v3, v5, :cond_28

    .line 182
    aget-byte v4, v4, v3

    iget-object v5, v2, Lsun/security/util/BitArray;->repn:[B

    aget-byte v5, v5, v3

    if-eq v4, v5, :cond_25

    return v1

    .line 181
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 184
    .end local v3    # "i":I
    :cond_28
    return v0

    .line 175
    .end local v2    # "ba":Lsun/security/util/BitArray;
    :cond_29
    :goto_29
    return v1
.end method

.method public blacklist get(I)Z
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 128
    if-ltz p1, :cond_19

    iget v0, p0, Lsun/security/util/BitArray;->length:I

    if-ge p1, v0, :cond_19

    .line 132
    iget-object v0, p0, Lsun/security/util/BitArray;->repn:[B

    invoke-static {p1}, Lsun/security/util/BitArray;->subscript(I)I

    move-result v1

    aget-byte v0, v0, v1

    invoke-static {p1}, Lsun/security/util/BitArray;->position(I)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0

    .line 129
    :cond_19
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    array-length v3, v2

    if-ge v1, v3, :cond_10

    .line 208
    mul-int/lit8 v3, v0, 0x1f

    aget-byte v2, v2, v1

    add-int v0, v3, v2

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 210
    .end local v1    # "i":I
    :cond_10
    iget v1, p0, Lsun/security/util/BitArray;->length:I

    xor-int/2addr v1, v0

    return v1
.end method

.method public blacklist length()I
    .registers 2

    .line 157
    iget v0, p0, Lsun/security/util/BitArray;->length:I

    return v0
.end method

.method public blacklist set(IZ)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 140
    if-ltz p1, :cond_23

    iget v0, p0, Lsun/security/util/BitArray;->length:I

    if-ge p1, v0, :cond_23

    .line 143
    invoke-static {p1}, Lsun/security/util/BitArray;->subscript(I)I

    move-result v0

    .line 144
    .local v0, "idx":I
    invoke-static {p1}, Lsun/security/util/BitArray;->position(I)I

    move-result v1

    .line 146
    .local v1, "bit":I
    if-eqz p2, :cond_19

    .line 147
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v3, v2, v0

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    goto :goto_22

    .line 149
    :cond_19
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v3, v2, v0

    not-int v4, v1

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 151
    :goto_22
    return-void

    .line 141
    .end local v0    # "idx":I
    .end local v1    # "bit":I
    :cond_23
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist toBooleanArray()[Z
    .registers 4

    .line 191
    iget v0, p0, Lsun/security/util/BitArray;->length:I

    new-array v0, v0, [Z

    .line 193
    .local v0, "bits":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget v2, p0, Lsun/security/util/BitArray;->length:I

    if-ge v1, v2, :cond_12

    .line 194
    invoke-virtual {p0, v1}, Lsun/security/util/BitArray;->get(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 196
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method public greylist toByteArray()[B
    .registers 2

    .line 170
    iget-object v0, p0, Lsun/security/util/BitArray;->repn:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 244
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 246
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_39

    .line 247
    sget-object v3, Lsun/security/util/BitArray;->NYBBLE:[[B

    aget-byte v2, v2, v1

    const/4 v4, 0x4

    shr-int/2addr v2, v4

    and-int/lit8 v2, v2, 0xf

    aget-object v2, v3, v2

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 248
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v2, v2, v1

    and-int/lit8 v2, v2, 0xf

    aget-object v2, v3, v2

    invoke-virtual {v0, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 250
    rem-int/lit8 v2, v1, 0x8

    const/4 v3, 0x7

    if-ne v2, v3, :cond_31

    .line 251
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_36

    .line 253
    :cond_31
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 246
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 258
    .end local v1    # "i":I
    :cond_39
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x8

    .restart local v1    # "i":I
    :goto_3e
    iget v2, p0, Lsun/security/util/BitArray;->length:I

    if-ge v1, v2, :cond_53

    .line 259
    invoke-virtual {p0, v1}, Lsun/security/util/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4b

    const/16 v2, 0x31

    goto :goto_4d

    :cond_4b
    const/16 v2, 0x30

    :goto_4d
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 262
    .end local v1    # "i":I
    :cond_53
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public blacklist truncate()Lsun/security/util/BitArray;
    .registers 6

    .line 267
    iget v0, p0, Lsun/security/util/BitArray;->length:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_21

    .line 268
    invoke-virtual {p0, v0}, Lsun/security/util/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 269
    new-instance v1, Lsun/security/util/BitArray;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    add-int/lit8 v4, v0, 0x8

    div-int/lit8 v4, v4, 0x8

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsun/security/util/BitArray;-><init>(I[B)V

    return-object v1

    .line 267
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 272
    .end local v0    # "i":I
    :cond_21
    new-instance v0, Lsun/security/util/BitArray;

    invoke-direct {v0, v1}, Lsun/security/util/BitArray;-><init>(I)V

    return-object v0
.end method
