.class public Lcom/android/org/bouncycastle/util/encoders/HexEncoder;
.super Ljava/lang/Object;
.source "HexEncoder.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final blacklist decodingTable:[B

.field protected final blacklist encodingTable:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    .line 23
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    .line 47
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->initialiseDecodingTable()V

    .line 48
    return-void

    :array_16
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method private static blacklist ignore(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 90
    const/16 v0, 0xa

    if-eq p0, v0, :cond_13

    const/16 v0, 0xd

    if-eq p0, v0, :cond_13

    const/16 v0, 0x9

    if-eq p0, v0, :cond_13

    const/16 v0, 0x20

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method


# virtual methods
.method public blacklist decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 12
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "length":I
    const/16 v1, 0x24

    new-array v1, v1, [B

    .line 177
    .local v1, "buf":[B
    const/4 v2, 0x0

    .line 179
    .local v2, "bufOff":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 181
    .local v3, "end":I
    :goto_a
    if-lez v3, :cond_1c

    .line 183
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v4

    if-nez v4, :cond_19

    .line 185
    goto :goto_1c

    .line 188
    :cond_19
    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    .line 191
    :cond_1c
    :goto_1c
    const/4 v4, 0x0

    .line 192
    .local v4, "i":I
    :goto_1d
    if-ge v4, v3, :cond_72

    .line 194
    :goto_1f
    if-ge v4, v3, :cond_2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 196
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 199
    :cond_2e
    iget-object v5, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "i":I
    .local v6, "i":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v4, v5, v4

    .line 201
    .local v4, "b1":B
    :goto_38
    if-ge v6, v3, :cond_47

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 203
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 206
    :cond_47
    iget-object v5, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget-byte v5, v5, v6

    .line 208
    .local v5, "b2":B
    or-int v6, v4, v5

    if-ltz v6, :cond_6a

    .line 213
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "bufOff":I
    .local v6, "bufOff":I
    shl-int/lit8 v8, v4, 0x4

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    .line 215
    array-length v2, v1

    if-ne v6, v2, :cond_65

    .line 217
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 218
    const/4 v2, 0x0

    .end local v6    # "bufOff":I
    .restart local v2    # "bufOff":I
    goto :goto_66

    .line 215
    .end local v2    # "bufOff":I
    .restart local v6    # "bufOff":I
    :cond_65
    move v2, v6

    .line 221
    .end local v6    # "bufOff":I
    .restart local v2    # "bufOff":I
    :goto_66
    add-int/lit8 v0, v0, 0x1

    move v4, v7

    goto :goto_1d

    .line 210
    :cond_6a
    new-instance v6, Ljava/io/IOException;

    const-string v8, "invalid characters encountered in Hex string"

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 224
    .end local v5    # "b2":B
    .end local v7    # "i":I
    .local v4, "i":I
    :cond_72
    if-lez v2, :cond_78

    .line 226
    const/4 v5, 0x0

    invoke-virtual {p2, v1, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 229
    :cond_78
    return v0
.end method

.method public blacklist decode([BIILjava/io/OutputStream;)I
    .registers 14
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "outLen":I
    const/16 v1, 0x24

    new-array v1, v1, [B

    .line 109
    .local v1, "buf":[B
    const/4 v2, 0x0

    .line 111
    .local v2, "bufOff":I
    add-int v3, p2, p3

    .line 113
    .local v3, "end":I
    :goto_8
    if-le v3, p2, :cond_19

    .line 115
    add-int/lit8 v4, v3, -0x1

    aget-byte v4, p1, v4

    int-to-char v4, v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v4

    if-nez v4, :cond_16

    .line 117
    goto :goto_19

    .line 120
    :cond_16
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 123
    :cond_19
    :goto_19
    move v4, p2

    .line 124
    .local v4, "i":I
    :goto_1a
    if-ge v4, v3, :cond_69

    .line 126
    :goto_1c
    if-ge v4, v3, :cond_2a

    aget-byte v5, p1, v4

    int-to-char v5, v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 128
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 131
    :cond_2a
    iget-object v5, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "i":I
    .local v6, "i":I
    aget-byte v4, p1, v4

    aget-byte v4, v5, v4

    .line 133
    .local v4, "b1":B
    :goto_32
    if-ge v6, v3, :cond_40

    aget-byte v5, p1, v6

    int-to-char v5, v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 135
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 138
    :cond_40
    iget-object v5, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget-byte v6, p1, v6

    aget-byte v5, v5, v6

    .line 140
    .local v5, "b2":B
    or-int v6, v4, v5

    if-ltz v6, :cond_61

    .line 145
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "bufOff":I
    .local v6, "bufOff":I
    shl-int/lit8 v8, v4, 0x4

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    .line 147
    array-length v2, v1

    if-ne v6, v2, :cond_5c

    .line 149
    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 150
    const/4 v2, 0x0

    .end local v6    # "bufOff":I
    .restart local v2    # "bufOff":I
    goto :goto_5d

    .line 147
    .end local v2    # "bufOff":I
    .restart local v6    # "bufOff":I
    :cond_5c
    move v2, v6

    .line 152
    .end local v6    # "bufOff":I
    .restart local v2    # "bufOff":I
    :goto_5d
    add-int/lit8 v0, v0, 0x1

    move v4, v7

    goto :goto_1a

    .line 142
    :cond_61
    new-instance v6, Ljava/io/IOException;

    const-string v8, "invalid characters encountered in Hex data"

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 155
    .end local v5    # "b2":B
    .end local v7    # "i":I
    .local v4, "i":I
    :cond_69
    if-lez v2, :cond_6f

    .line 157
    const/4 v5, 0x0

    invoke-virtual {p4, v1, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 160
    :cond_6f
    return v0
.end method

.method blacklist decodeStrict(Ljava/lang/String;II)[B
    .registers 13
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    if-eqz p1, :cond_52

    .line 238
    if-ltz p2, :cond_4a

    if-ltz p3, :cond_4a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_4a

    .line 242
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_42

    .line 247
    ushr-int/lit8 v0, p3, 0x1

    .line 248
    .local v0, "resultLen":I
    new-array v1, v0, [B

    .line 250
    .local v1, "result":[B
    move v2, p2

    .line 251
    .local v2, "strPos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v0, :cond_41

    .line 253
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "strPos":I
    .local v5, "strPos":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v2, v4, v2

    .line 254
    .local v2, "b1":B
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "strPos":I
    .local v6, "strPos":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v4, v4, v5

    .line 256
    .local v4, "b2":B
    shl-int/lit8 v5, v2, 0x4

    or-int/2addr v5, v4

    .line 257
    .local v5, "n":I
    if-ltz v5, :cond_39

    .line 262
    int-to-byte v7, v5

    aput-byte v7, v1, v3

    .line 251
    .end local v2    # "b1":B
    .end local v4    # "b2":B
    .end local v5    # "n":I
    add-int/lit8 v3, v3, 0x1

    move v2, v6

    goto :goto_17

    .line 259
    .restart local v2    # "b1":B
    .restart local v4    # "b2":B
    .restart local v5    # "n":I
    :cond_39
    new-instance v7, Ljava/io/IOException;

    const-string v8, "invalid characters encountered in Hex string"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 264
    .end local v3    # "i":I
    .end local v4    # "b2":B
    .end local v5    # "n":I
    .end local v6    # "strPos":I
    .local v2, "strPos":I
    :cond_41
    return-object v1

    .line 244
    .end local v0    # "resultLen":I
    .end local v1    # "result":[B
    .end local v2    # "strPos":I
    :cond_42
    new-instance v0, Ljava/io/IOException;

    const-string v1, "a hexadecimal encoding must have an even number of characters"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_4a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "invalid offset and/or length specified"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'str\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist encode([BIILjava/io/OutputStream;)I
    .registers 13
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    const/16 v0, 0x48

    new-array v0, v0, [B

    .line 76
    .local v0, "tmp":[B
    :goto_4
    if-lez p3, :cond_1d

    .line 78
    const/16 v1, 0x24

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 79
    .local v7, "inLen":I
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, v7

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encode([BII[BI)I

    move-result v1

    .line 80
    .local v1, "outLen":I
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 81
    add-int/2addr p2, v7

    .line 82
    sub-int/2addr p3, v7

    .line 83
    .end local v1    # "outLen":I
    .end local v7    # "inLen":I
    goto :goto_4

    .line 84
    :cond_1d
    mul-int/lit8 v1, p3, 0x2

    return v1
.end method

.method public blacklist encode([BII[BI)I
    .registers 13
    .param p1, "inBuf"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "outBuf"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    move v0, p2

    .line 53
    .local v0, "inPos":I
    add-int v1, p2, p3

    .line 54
    .local v1, "inEnd":I
    move v2, p5

    .line 56
    .local v2, "outPos":I
    :goto_4
    if-ge v0, v1, :cond_20

    .line 58
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "inPos":I
    .local v3, "inPos":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 60
    .local v0, "b":I
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "outPos":I
    .local v4, "outPos":I
    iget-object v5, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    ushr-int/lit8 v6, v0, 0x4

    aget-byte v6, v5, v6

    aput-byte v6, p4, v2

    .line 61
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "outPos":I
    .restart local v2    # "outPos":I
    and-int/lit8 v6, v0, 0xf

    aget-byte v5, v5, v6

    aput-byte v5, p4, v4

    .line 62
    .end local v0    # "b":I
    move v0, v3

    goto :goto_4

    .line 64
    .end local v3    # "inPos":I
    .local v0, "inPos":I
    :cond_20
    sub-int v3, v2, p5

    return v3
.end method

.method protected blacklist initialiseDecodingTable()V
    .registers 5

    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    array-length v2, v1

    if-ge v0, v2, :cond_c

    .line 29
    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 32
    .end local v0    # "i":I
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_d
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1c

    .line 34
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    aget-byte v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 37
    .end local v0    # "i":I
    :cond_1c
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v1, 0x41

    const/16 v2, 0x61

    aget-byte v2, v0, v2

    aput-byte v2, v0, v1

    .line 38
    const/16 v1, 0x42

    const/16 v2, 0x62

    aget-byte v2, v0, v2

    aput-byte v2, v0, v1

    .line 39
    const/16 v1, 0x43

    const/16 v2, 0x63

    aget-byte v2, v0, v2

    aput-byte v2, v0, v1

    .line 40
    const/16 v1, 0x44

    const/16 v2, 0x64

    aget-byte v2, v0, v2

    aput-byte v2, v0, v1

    .line 41
    const/16 v1, 0x45

    const/16 v2, 0x65

    aget-byte v2, v0, v2

    aput-byte v2, v0, v1

    .line 42
    const/16 v1, 0x46

    const/16 v2, 0x66

    aget-byte v2, v0, v2

    aput-byte v2, v0, v1

    .line 43
    return-void
.end method
