.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1ApplicationSpecific.java"


# instance fields
.field protected final isConstructed:Z

.field protected final octets:[B

.field protected final tag:I


# direct methods
.method constructor <init>(ZI[B)V
    .registers 5
    .param p1, "isConstructed"    # Z
    .param p2, "tag"    # I
    .param p3, "octets"    # [B

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 22
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    .line 23
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    .line 24
    invoke-static {p3}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    .line 25
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 35
    if-eqz p0, :cond_6

    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;

    if-eqz v1, :cond_9

    .line 37
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 39
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_9
    instance-of v1, p0, [B

    if-eqz v1, :cond_37

    .line 43
    :try_start_d
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_18

    move-result-object v1

    return-object v1

    .line 46
    :catch_18
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to construct object from byte[]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown object in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static getLengthOfHeader([B)I
    .registers 6
    .param p0, "data"    # [B

    .prologue
    const/4 v3, 0x2

    .line 56
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v0, v2, 0xff

    .line 58
    .local v0, "length":I
    const/16 v2, 0x80

    if-ne v0, v2, :cond_b

    .line 60
    return v3

    .line 63
    :cond_b
    const/16 v2, 0x7f

    if-le v0, v2, :cond_31

    .line 65
    and-int/lit8 v1, v0, 0x7f

    .line 68
    .local v1, "size":I
    const/4 v2, 0x4

    if-le v1, v2, :cond_2e

    .line 70
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DER length more than 4 bytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_2e
    add-int/lit8 v2, v1, 0x2

    return v2

    .line 76
    .end local v1    # "size":I
    :cond_31
    return v3
.end method

.method private replaceTagNumber(I[B)[B
    .registers 11
    .param p1, "newTag"    # I
    .param p2, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 190
    aget-byte v5, p2, v6

    and-int/lit8 v3, v5, 0x1f

    .line 191
    .local v3, "tagNo":I
    const/4 v1, 0x1

    .line 195
    .local v1, "index":I
    const/16 v5, 0x1f

    if-ne v3, v5, :cond_32

    .line 197
    const/4 v3, 0x0

    .line 199
    const/4 v1, 0x2

    aget-byte v5, p2, v7

    and-int/lit16 v0, v5, 0xff

    .line 203
    .local v0, "b":I
    and-int/lit8 v5, v0, 0x7f

    if-nez v5, :cond_42

    .line 205
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    const-string/jumbo v6, "corrupted stream - invalid high tag number found"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 208
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_1e
    if-ltz v0, :cond_31

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_31

    .line 210
    and-int/lit8 v5, v0, 0x7f

    or-int/2addr v3, v5

    .line 211
    shl-int/lit8 v3, v3, 0x7

    .line 212
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v0, v5, 0xff

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_1e

    :cond_31
    move v1, v2

    .line 218
    .end local v0    # "b":I
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_32
    array-length v5, p2

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [B

    .line 220
    .local v4, "tmp":[B
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    invoke-static {p2, v1, v4, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 222
    int-to-byte v5, p1

    aput-byte v5, v4, v6

    .line 224
    return-object v4

    .end local v4    # "tmp":[B
    .restart local v0    # "b":I
    :cond_42
    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_1e
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 6
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .prologue
    const/4 v1, 0x0

    .line 170
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;

    if-nez v2, :cond_6

    .line 172
    return v1

    :cond_6
    move-object v0, p1

    .line 175
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;

    .line 177
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    iget-boolean v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    if-ne v2, v3, :cond_1d

    .line 178
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    iget v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    if-ne v2, v3, :cond_1d

    .line 179
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    .line 177
    :cond_1d
    return v1
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .registers 5
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const/16 v0, 0x40

    .line 159
    .local v0, "classBits":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    if-eqz v1, :cond_8

    .line 161
    const/16 v0, 0x60

    .line 164
    :cond_8
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    .line 165
    return-void
.end method

.method encodedLength()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
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

.method public getApplicationTag()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    return v0
.end method

.method public getContents()[B
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getContents()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getObject(I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6
    .param p1, "derTagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 131
    const/16 v2, 0x1f

    if-lt p1, v2, :cond_e

    .line 133
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "unsupported tag number"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getEncoded()[B

    move-result-object v0

    .line 137
    .local v0, "orig":[B
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->replaceTagNumber(I[B)[B

    move-result-object v1

    .line 139
    .local v1, "tmp":[B
    aget-byte v2, v0, v3

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_23

    .line 141
    aget-byte v2, v1, v3

    or-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 144
    :cond_23
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    return-object v2
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_5
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isConstructed()Z
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    return v0
.end method
