.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1BitString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1BitString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1String;


# static fields
.field private static final blacklist table:[C


# instance fields
.field protected final blacklist data:[B

.field protected final blacklist padBits:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->table:[C

    return-void

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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor blacklist <init>([BI)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "padBits"    # I

    .line 115
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 116
    if-eqz p1, :cond_29

    .line 120
    array-length v0, p1

    if-nez v0, :cond_13

    if-nez p2, :cond_b

    goto :goto_13

    .line 122
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "zero length data with non-zero pad bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_13
    :goto_13
    const/4 v0, 0x7

    if-gt p2, v0, :cond_21

    if-ltz p2, :cond_21

    .line 129
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    .line 130
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    .line 131
    return-void

    .line 126
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static blacklist derForm([BI)[B
    .registers 6
    .param p0, "data"    # [B
    .param p1, "padBits"    # I

    .line 239
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    .line 241
    .local v0, "rv":[B
    if-lez p1, :cond_12

    .line 243
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-byte v2, v0, v1

    const/16 v3, 0xff

    shl-int/2addr v3, p1

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 246
    :cond_12
    return-object v0
.end method

.method static blacklist fromInputStream(ILjava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .registers 7
    .param p0, "length"    # I
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    const/4 v0, 0x1

    if-lt p0, v0, :cond_3e

    .line 257
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 258
    .local v1, "padBits":I
    add-int/lit8 v2, p0, -0x1

    new-array v2, v2, [B

    .line 260
    .local v2, "data":[B
    array-length v3, v2

    if-eqz v3, :cond_38

    .line 262
    invoke-static {p1, v2}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v3

    array-length v4, v2

    if-ne v3, v4, :cond_30

    .line 267
    if-lez v1, :cond_38

    const/16 v3, 0x8

    if-ge v1, v3, :cond_38

    .line 269
    array-length v3, v2

    sub-int/2addr v3, v0

    aget-byte v3, v2, v3

    array-length v4, v2

    sub-int/2addr v4, v0

    aget-byte v0, v2, v4

    const/16 v4, 0xff

    shl-int/2addr v4, v1

    and-int/2addr v0, v4

    int-to-byte v0, v0

    if-eq v3, v0, :cond_38

    .line 271
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLBitString;

    invoke-direct {v0, v2, v1}, Lcom/android/org/bouncycastle/asn1/DLBitString;-><init>([BI)V

    return-object v0

    .line 264
    :cond_30
    new-instance v0, Ljava/io/EOFException;

    const-string v3, "EOF encountered in middle of BIT STRING"

    invoke-direct {v0, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_38
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, v2, v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v0

    .line 254
    .end local v1    # "padBits":I
    .end local v2    # "data":[B
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "truncated BIT STRING detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static blacklist getBytes(I)[B
    .registers 6
    .param p0, "bitString"    # I

    .line 82
    if-nez p0, :cond_6

    .line 84
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 87
    :cond_6
    const/4 v0, 0x4

    .line 88
    .local v0, "bytes":I
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_8
    const/16 v2, 0xff

    const/4 v3, 0x1

    if-lt v1, v3, :cond_1a

    .line 90
    mul-int/lit8 v3, v1, 0x8

    shl-int v3, v2, v3

    and-int/2addr v3, p0

    if-eqz v3, :cond_15

    .line 92
    goto :goto_1a

    .line 94
    :cond_15
    add-int/lit8 v0, v0, -0x1

    .line 88
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 97
    .end local v1    # "i":I
    :cond_1a
    :goto_1a
    new-array v1, v0, [B

    .line 98
    .local v1, "result":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    if-ge v3, v0, :cond_2a

    .line 100
    mul-int/lit8 v4, v3, 0x8

    shr-int v4, p0, v4

    and-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 103
    .end local v3    # "i":I
    :cond_2a
    return-object v1
.end method

.method protected static blacklist getPadBits(I)I
    .registers 4
    .param p0, "bitString"    # I

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "val":I
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_1b

    .line 41
    if-eqz v1, :cond_13

    .line 43
    mul-int/lit8 v2, v1, 0x8

    shr-int v2, p0, v2

    if-eqz v2, :cond_18

    .line 45
    mul-int/lit8 v2, v1, 0x8

    shr-int v2, p0, v2

    and-int/lit16 v0, v2, 0xff

    .line 46
    goto :goto_1b

    .line 51
    :cond_13
    if-eqz p0, :cond_18

    .line 53
    and-int/lit16 v0, p0, 0xff

    .line 54
    goto :goto_1b

    .line 35
    :cond_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 59
    .end local v1    # "i":I
    :cond_1b
    :goto_1b
    if-nez v0, :cond_1f

    .line 61
    const/4 v1, 0x0

    return v1

    .line 65
    :cond_1f
    const/4 v1, 0x1

    .line 67
    .local v1, "bits":I
    :goto_20
    shl-int/lit8 v2, v0, 0x1

    move v0, v2

    and-int/lit16 v2, v2, 0xff

    if-eqz v2, :cond_2a

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 72
    :cond_2a
    rsub-int/lit8 v2, v1, 0x8

    return v2
.end method


# virtual methods
.method protected blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 6
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 226
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 228
    return v1

    .line 231
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    .line 233
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    iget v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    if-ne v2, v3, :cond_1f

    .line 234
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 233
    :goto_20
    return v1
.end method

.method abstract blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public blacklist getBytes()[B
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->derForm([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 281
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOctets()[B
    .registers 3

    .line 194
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    if-nez v0, :cond_b

    .line 199
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 196
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to get non-octet aligned data from BIT STRING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getPadBits()I
    .registers 2

    .line 209
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    return v0
.end method

.method public blacklist getString()Ljava/lang/String;
    .registers 8

    .line 140
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 142
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 146
    .local v2, "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    :try_start_11
    invoke-virtual {v2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_3d

    .line 151
    nop

    .line 153
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 155
    .local v3, "string":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    array-length v5, v3

    if-eq v4, v5, :cond_38

    .line 157
    sget-object v5, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->table:[C

    aget-byte v6, v3, v4

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 158
    sget-object v5, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->table:[C

    aget-byte v6, v3, v4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 155
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 161
    .end local v4    # "i":I
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 148
    .end local v3    # "string":[B
    :catch_3d
    move-exception v3

    .line 150
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Internal error encoding BitString: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

    .line 220
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist intValue()I
    .registers 7

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    .line 172
    .local v1, "string":[B
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    const/4 v3, 0x4

    if-lez v2, :cond_11

    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    array-length v5, v4

    if-gt v5, v3, :cond_11

    .line 174
    invoke-static {v4, v2}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->derForm([BI)[B

    move-result-object v1

    .line 177
    :cond_11
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    array-length v4, v1

    if-eq v2, v4, :cond_22

    if-eq v2, v3, :cond_22

    .line 179
    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    mul-int/lit8 v5, v2, 0x8

    shl-int/2addr v4, v5

    or-int/2addr v0, v4

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 182
    .end local v2    # "i":I
    :cond_22
    return v0
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 286
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 291
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLBitString;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/DLBitString;-><init>([BI)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 2

    .line 214
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
