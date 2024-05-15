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

    .line 76
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
    .registers 10
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, "length":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 153
    .local v1, "end":I
    :goto_5
    if-lez v1, :cond_17

    .line 155
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v2

    if-nez v2, :cond_14

    .line 157
    goto :goto_17

    .line 160
    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 163
    :cond_17
    :goto_17
    const/4 v2, 0x0

    .line 164
    .local v2, "i":I
    :goto_18
    if-ge v2, v1, :cond_62

    .line 166
    :goto_1a
    if-ge v2, v1, :cond_29

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 171
    :cond_29
    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v2, v3, v2

    .line 173
    .local v2, "b1":B
    :goto_33
    if-ge v4, v1, :cond_42

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 175
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 178
    :cond_42
    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v3, v3, v4

    .line 180
    .local v3, "b2":B
    or-int v4, v2, v3

    if-ltz v4, :cond_5a

    .line 185
    shl-int/lit8 v4, v2, 0x4

    or-int/2addr v4, v3

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    move v2, v5

    goto :goto_18

    .line 182
    :cond_5a
    new-instance v4, Ljava/io/IOException;

    const-string v6, "invalid characters encountered in Hex string"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 190
    .end local v3    # "b2":B
    .end local v5    # "i":I
    .local v2, "i":I
    :cond_62
    return v0
.end method

.method public blacklist decode([BIILjava/io/OutputStream;)I
    .registers 12
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, "outLen":I
    add-int v1, p2, p3

    .line 97
    .local v1, "end":I
    :goto_3
    if-le v1, p2, :cond_14

    .line 99
    add-int/lit8 v2, v1, -0x1

    aget-byte v2, p1, v2

    int-to-char v2, v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v2

    if-nez v2, :cond_11

    .line 101
    goto :goto_14

    .line 104
    :cond_11
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 107
    :cond_14
    :goto_14
    move v2, p2

    .line 108
    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_59

    .line 110
    :goto_17
    if-ge v2, v1, :cond_25

    aget-byte v3, p1, v2

    int-to-char v3, v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 115
    :cond_25
    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    aget-byte v2, p1, v2

    aget-byte v2, v3, v2

    .line 117
    .local v2, "b1":B
    :goto_2d
    if-ge v4, v1, :cond_3b

    aget-byte v3, p1, v4

    int-to-char v3, v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 119
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 122
    :cond_3b
    iget-object v3, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget-byte v4, p1, v4

    aget-byte v3, v3, v4

    .line 124
    .local v3, "b2":B
    or-int v4, v2, v3

    if-ltz v4, :cond_51

    .line 129
    shl-int/lit8 v4, v2, 0x4

    or-int/2addr v4, v3

    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write(I)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    move v2, v5

    goto :goto_15

    .line 126
    :cond_51
    new-instance v4, Ljava/io/IOException;

    const-string v6, "invalid characters encountered in Hex data"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    .end local v3    # "b2":B
    .end local v5    # "i":I
    .local v2, "i":I
    :cond_59
    return v0
.end method

.method public blacklist encode([BIILjava/io/OutputStream;)I
    .registers 9
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    move v0, p2

    .local v0, "i":I
    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1e

    .line 64
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 66
    .local v1, "v":I
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    ushr-int/lit8 v3, v1, 0x4

    aget-byte v2, v2, v3

    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    .line 67
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    and-int/lit8 v3, v1, 0xf

    aget-byte v2, v2, v3

    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    .line 62
    .end local v1    # "v":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    .end local v0    # "i":I
    :cond_1e
    mul-int/lit8 v0, p3, 0x2

    return v0
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
