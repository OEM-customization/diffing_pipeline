.class public Lcom/android/org/bouncycastle/asn1/DERBitString;
.super Lcom/android/org/bouncycastle/asn1/ASN1BitString;
.source "DERBitString.java"


# direct methods
.method protected constructor blacklist <init>(BI)V
    .registers 4
    .param p1, "data"    # B
    .param p2, "padBits"    # I

    .line 77
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->toByteArray(B)[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "value"    # I

    .line 111
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 112
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 119
    return-void
.end method

.method public constructor greylist core-platform-api <init>([B)V
    .registers 3
    .param p1, "data"    # [B

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    .line 106
    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "padBits"    # I

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 98
    return-void
.end method

.method static blacklist fromOctetString([B)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 6
    .param p0, "bytes"    # [B

    .line 146
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_19

    .line 151
    const/4 v0, 0x0

    aget-byte v2, p0, v0

    .line 152
    .local v2, "padBits":I
    array-length v3, p0

    sub-int/2addr v3, v1

    new-array v3, v3, [B

    .line 154
    .local v3, "data":[B
    array-length v4, v3

    if-eqz v4, :cond_13

    .line 156
    array-length v4, p0

    sub-int/2addr v4, v1

    invoke-static {p0, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    :cond_13
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v0

    .line 148
    .end local v2    # "padBits":I
    .end local v3    # "data":[B
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "truncated BIT STRING detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 4
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 61
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 63
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_17

    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_b

    goto :goto_17

    .line 69
    :cond_b
    move-object v1, v0

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    return-object v1

    .line 65
    :cond_17
    :goto_17
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 24
    if-eqz p0, :cond_64

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    if-eqz v0, :cond_7

    goto :goto_64

    .line 28
    :cond_7
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DLBitString;

    if-eqz v0, :cond_1b

    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-object v1, p0

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DLBitString;

    iget-object v1, v1, Lcom/android/org/bouncycastle/asn1/DLBitString;->data:[B

    move-object v2, p0

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DLBitString;

    iget v2, v2, Lcom/android/org/bouncycastle/asn1/DLBitString;->padBits:I

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v0

    .line 32
    :cond_1b
    instance-of v0, p0, [B

    if-eqz v0, :cond_45

    .line 36
    :try_start_1f
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERBitString;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_28} :catch_29

    return-object v0

    .line 38
    :catch_29
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding error in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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

    .line 26
    :cond_64
    :goto_64
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method private static blacklist toByteArray(B)[B
    .registers 3
    .param p0, "data"    # B

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 84
    .local v0, "rv":[B
    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 86
    return-object v0
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .registers 7
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->padBits:I

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->derForm([BI)[B

    move-result-object v0

    .line 136
    .local v0, "string":[B
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 138
    .local v1, "bytes":[B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    .line 139
    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    .line 142
    return-void
.end method

.method blacklist encodedLength()I
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method blacklist isConstructed()Z
    .registers 2

    .line 123
    const/4 v0, 0x0

    return v0
.end method
