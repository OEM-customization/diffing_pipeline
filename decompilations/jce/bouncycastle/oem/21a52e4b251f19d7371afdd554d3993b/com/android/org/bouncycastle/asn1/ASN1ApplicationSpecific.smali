.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1ApplicationSpecific.java"


# instance fields
.field protected final blacklist isConstructed:Z

.field protected final blacklist octets:[B

.field protected final blacklist tag:I


# direct methods
.method constructor blacklist <init>(ZI[B)V
    .registers 5
    .param p1, "isConstructed"    # Z
    .param p2, "tag"    # I
    .param p3, "octets"    # [B

    .line 24
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 25
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    .line 26
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    .line 27
    invoke-static {p3}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    .line 28
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 38
    if-eqz p0, :cond_52

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;

    if-eqz v0, :cond_7

    goto :goto_52

    .line 42
    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_33

    .line 46
    :try_start_b
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;

    move-result-object v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_17

    return-object v0

    .line 48
    :catch_17
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to construct object from byte[]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    .end local v0    # "e":Ljava/io/IOException;
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_52
    :goto_52
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;

    return-object v0
.end method

.method protected static blacklist getLengthOfHeader([B)I
    .registers 6
    .param p0, "data"    # [B

    .line 59
    const/4 v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 61
    .local v0, "length":I
    const/4 v1, 0x2

    const/16 v2, 0x80

    if-ne v0, v2, :cond_b

    .line 63
    return v1

    .line 66
    :cond_b
    const/16 v2, 0x7f

    if-le v0, v2, :cond_2e

    .line 68
    and-int/lit8 v1, v0, 0x7f

    .line 71
    .local v1, "size":I
    const/4 v2, 0x4

    if-gt v1, v2, :cond_17

    .line 76
    add-int/lit8 v2, v1, 0x2

    return v2

    .line 73
    :cond_17
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DER length more than 4 bytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    .end local v1    # "size":I
    :cond_2e
    return v1
.end method

.method private blacklist replaceTagNumber(I[B)[B
    .registers 9
    .param p1, "newTag"    # I
    .param p2, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    aget-byte v1, p2, v0

    const/16 v2, 0x1f

    and-int/2addr v1, v2

    .line 194
    .local v1, "tagNo":I
    const/4 v3, 0x1

    .line 198
    .local v3, "index":I
    if-ne v1, v2, :cond_29

    .line 200
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .local v2, "index":I
    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    .line 204
    .local v3, "b":I
    and-int/lit8 v4, v3, 0x7f

    if-eqz v4, :cond_21

    .line 209
    :goto_13
    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_1f

    .line 211
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "index":I
    .local v4, "index":I
    aget-byte v2, p2, v2

    and-int/lit16 v3, v2, 0xff

    move v2, v4

    goto :goto_13

    .line 209
    .end local v4    # "index":I
    .restart local v2    # "index":I
    :cond_1f
    move v3, v2

    goto :goto_29

    .line 206
    :cond_21
    new-instance v0, Ljava/io/IOException;

    const-string v4, "corrupted stream - invalid high tag number found"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    .end local v2    # "index":I
    .local v3, "index":I
    :cond_29
    :goto_29
    array-length v2, p2

    sub-int/2addr v2, v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    new-array v2, v2, [B

    .line 217
    .local v2, "tmp":[B
    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-static {p2, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    int-to-byte v4, p1

    aput-byte v4, v2, v0

    .line 221
    return-object v2
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 6
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 173
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 175
    return v1

    .line 178
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;

    .line 180
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    iget-boolean v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    if-ne v2, v3, :cond_21

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    iget v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    if-ne v2, v3, :cond_21

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    iget-object v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    .line 182
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    nop

    .line 180
    :goto_22
    return v1
.end method

.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .registers 5
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    const/16 v0, 0x40

    .line 162
    .local v0, "classBits":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    if-eqz v1, :cond_8

    .line 164
    or-int/lit8 v0, v0, 0x20

    .line 167
    :cond_8
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    .line 168
    return-void
.end method

.method blacklist encodedLength()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    array-length v1, v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getApplicationTag()I
    .registers 2

    .line 109
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    return v0
.end method

.method public blacklist getContents()[B
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getContents()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getObject(I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6
    .param p1, "derTagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    const/16 v0, 0x1f

    if-ge p1, v0, :cond_1f

    .line 139
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getEncoded()[B

    move-result-object v0

    .line 140
    .local v0, "orig":[B
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->replaceTagNumber(I[B)[B

    move-result-object v1

    .line 142
    .local v1, "tmp":[B
    const/4 v2, 0x0

    aget-byte v3, v0, v2

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1a

    .line 144
    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x20

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 147
    :cond_1a
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    return-object v2

    .line 136
    .end local v0    # "orig":[B
    .end local v1    # "tmp":[B
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unsupported tag number"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

    .line 187
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist isConstructed()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 226
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 227
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 230
    const-string v1, "CONSTRUCTED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    :cond_15
    const-string v1, "APPLICATION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    if-eqz v1, :cond_3d

    .line 238
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_42

    .line 243
    :cond_3d
    const-string v1, " #null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    :goto_42
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
