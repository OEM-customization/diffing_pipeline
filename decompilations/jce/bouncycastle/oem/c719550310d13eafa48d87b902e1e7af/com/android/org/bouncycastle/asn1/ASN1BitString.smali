.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1BitString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1BitString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1String;


# static fields
.field private static final table:[C


# instance fields
.field protected final data:[B

.field protected final padBits:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->table:[C

    .line 14
    return-void

    .line 18
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

.method public constructor <init>([BI)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "padBits"    # I

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 112
    if-nez p1, :cond_e

    .line 114
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "data cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_e
    array-length v0, p1

    if-nez v0, :cond_1c

    if-eqz p2, :cond_1c

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "zero length data with non-zero pad bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1c
    const/4 v0, 0x7

    if-gt p2, v0, :cond_21

    if-gez p2, :cond_2a

    .line 122
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_2a
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    .line 126
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    .line 127
    return-void
.end method

.method protected static derForm([BI)[B
    .registers 6
    .param p0, "data"    # [B
    .param p1, "padBits"    # I

    .prologue
    .line 234
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    .line 236
    .local v0, "rv":[B
    if-lez p1, :cond_12

    .line 238
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-byte v2, v0, v1

    const/16 v3, 0xff

    shl-int/2addr v3, p1

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 241
    :cond_12
    return-object v0
.end method

.method static fromInputStream(ILjava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .registers 7
    .param p0, "length"    # I
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v2, 0x1

    if-ge p0, v2, :cond_c

    .line 249
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "truncated BIT STRING detected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    :cond_c
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 253
    .local v1, "padBits":I
    add-int/lit8 v2, p0, -0x1

    new-array v0, v2, [B

    .line 255
    .local v0, "data":[B
    array-length v2, v0

    if-eqz v2, :cond_44

    .line 257
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v2

    array-length v3, v0

    if-eq v2, v3, :cond_27

    .line 259
    new-instance v2, Ljava/io/EOFException;

    const-string/jumbo v3, "EOF encountered in middle of BIT STRING"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 262
    :cond_27
    if-lez v1, :cond_44

    const/16 v2, 0x8

    if-ge v1, v2, :cond_44

    .line 264
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v0, v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v0, v3

    const/16 v4, 0xff

    shl-int/2addr v4, v1

    and-int/2addr v3, v4

    int-to-byte v3, v3

    if-eq v2, v3, :cond_44

    .line 266
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DLBitString;

    invoke-direct {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/DLBitString;-><init>([BI)V

    return-object v2

    .line 271
    :cond_44
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v2
.end method

.method protected static getBytes(I)[B
    .registers 6
    .param p0, "bitString"    # I

    .prologue
    const/4 v3, 0x0

    .line 78
    if-nez p0, :cond_6

    .line 80
    new-array v3, v3, [B

    return-object v3

    .line 83
    :cond_6
    const/4 v0, 0x4

    .line 84
    .local v0, "bytes":I
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_8
    const/4 v3, 0x1

    if-lt v1, v3, :cond_14

    .line 86
    mul-int/lit8 v3, v1, 0x8

    const/16 v4, 0xff

    shl-int v3, v4, v3

    and-int/2addr v3, p0

    if-eqz v3, :cond_25

    .line 93
    :cond_14
    new-array v2, v0, [B

    .line 94
    .local v2, "result":[B
    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_2a

    .line 96
    mul-int/lit8 v3, v1, 0x8

    shr-int v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 90
    .end local v2    # "result":[B
    :cond_25
    add-int/lit8 v0, v0, -0x1

    .line 84
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 99
    .restart local v2    # "result":[B
    :cond_2a
    return-object v2
.end method

.method protected static getPadBits(I)I
    .registers 6
    .param p0, "bitString"    # I

    .prologue
    const/4 v4, 0x0

    .line 31
    const/4 v2, 0x0

    .line 32
    .local v2, "val":I
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_13

    .line 38
    if-eqz v1, :cond_16

    .line 40
    mul-int/lit8 v3, v1, 0x8

    shr-int v3, p0, v3

    if-eqz v3, :cond_1b

    .line 42
    mul-int/lit8 v3, v1, 0x8

    shr-int v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    .line 56
    :cond_13
    :goto_13
    if-nez v2, :cond_1e

    .line 58
    return v4

    .line 48
    :cond_16
    if-eqz p0, :cond_1b

    .line 50
    and-int/lit16 v2, p0, 0xff

    .line 51
    goto :goto_13

    .line 32
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 61
    :cond_1e
    const/4 v0, 0x1

    .line 63
    .local v0, "bits":I
    :goto_1f
    shl-int/lit8 v2, v2, 0x1

    and-int/lit16 v3, v2, 0xff

    if-eqz v3, :cond_28

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 68
    :cond_28
    rsub-int/lit8 v3, v0, 0x8

    return v3
.end method


# virtual methods
.method protected asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 6
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .prologue
    const/4 v1, 0x0

    .line 221
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    if-nez v2, :cond_6

    .line 223
    return v1

    :cond_6
    move-object v0, p1

    .line 226
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    .line 228
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    iget v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    if-ne v2, v3, :cond_1b

    .line 229
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    .line 228
    :cond_1b
    return v1
.end method

.method abstract encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getBytes()[B
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->derForm([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getOctets()[B
    .registers 3

    .prologue
    .line 190
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    if-eqz v0, :cond_d

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "attempt to get non-octet aligned data from BIT STRING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_d
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPadBits()I
    .registers 2

    .prologue
    .line 205
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 10

    .prologue
    .line 136
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v6, "#"

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 137
    .local v2, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 142
    .local v0, "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    :try_start_12
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_38

    .line 149
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 151
    .local v5, "string":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    array-length v6, v5

    if-eq v4, v6, :cond_57

    .line 153
    sget-object v6, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->table:[C

    aget-byte v7, v5, v4

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 154
    sget-object v6, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->table:[C

    aget-byte v7, v5, v4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 151
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 145
    .end local v4    # "i":I
    .end local v5    # "string":[B
    :catch_38
    move-exception v3

    .line 146
    .local v3, "e":Ljava/io/IOException;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Internal error encoding BitString: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 157
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "i":I
    .restart local v5    # "string":[B
    :cond_57
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 215
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public intValue()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    .line 165
    const/4 v2, 0x0

    .line 166
    .local v2, "value":I
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    .line 168
    .local v1, "string":[B
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    if-lez v3, :cond_15

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    array-length v3, v3

    if-gt v3, v5, :cond_15

    .line 170
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    iget v4, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->derForm([BI)[B

    move-result-object v1

    .line 173
    :cond_15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    array-length v3, v1

    if-eq v0, v3, :cond_26

    if-eq v0, v5, :cond_26

    .line 175
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v0, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 178
    :cond_26
    return v2
.end method

.method toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .prologue
    .line 281
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v0
.end method

.method toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .prologue
    .line 286
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLBitString;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->data:[B

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->padBits:I

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/DLBitString;-><init>([BI)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
