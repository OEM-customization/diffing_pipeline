.class public Lcom/android/org/bouncycastle/asn1/DLBitString;
.super Lcom/android/org/bouncycastle/asn1/ASN1BitString;
.source "DLBitString.java"


# direct methods
.method protected constructor blacklist <init>(BI)V
    .registers 4
    .param p1, "data"    # B
    .param p2, "padBits"    # I

    .line 76
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DLBitString;->toByteArray(B)[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/asn1/DLBitString;-><init>([BI)V

    .line 77
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "value"    # I

    .line 108
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DLBitString;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DLBitString;->getPadBits(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 109
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

    .line 115
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 116
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "data"    # [B

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/DLBitString;-><init>([BI)V

    .line 103
    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "padBits"    # I

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 97
    return-void
.end method

.method static blacklist fromOctetString([B)Lcom/android/org/bouncycastle/asn1/DLBitString;
    .registers 6
    .param p0, "bytes"    # [B

    .line 143
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_19

    .line 148
    const/4 v0, 0x0

    aget-byte v2, p0, v0

    .line 149
    .local v2, "padBits":I
    array-length v3, p0

    sub-int/2addr v3, v1

    new-array v3, v3, [B

    .line 151
    .local v3, "data":[B
    array-length v4, v3

    if-eqz v4, :cond_13

    .line 153
    array-length v4, p0

    sub-int/2addr v4, v1

    invoke-static {p0, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    :cond_13
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLBitString;

    invoke-direct {v0, v3, v2}, Lcom/android/org/bouncycastle/asn1/DLBitString;-><init>([BI)V

    return-object v0

    .line 145
    .end local v2    # "padBits":I
    .end local v3    # "data":[B
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "truncated BIT STRING detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .registers 4
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 60
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 62
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_17

    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/DLBitString;

    if-eqz v1, :cond_b

    goto :goto_17

    .line 68
    :cond_b
    move-object v1, v0

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DLBitString;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/DLBitString;

    move-result-object v1

    return-object v1

    .line 64
    :cond_17
    :goto_17
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DLBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 23
    if-eqz p0, :cond_58

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DLBitString;

    if-eqz v0, :cond_7

    goto :goto_58

    .line 27
    :cond_7
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    if-eqz v0, :cond_f

    .line 29
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0

    .line 31
    :cond_f
    instance-of v0, p0, [B

    if-eqz v0, :cond_39

    .line 35
    :try_start_13
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DLBitString;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_1d

    return-object v0

    .line 37
    :catch_1d
    move-exception v0

    .line 39
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

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_39
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

    .line 25
    :cond_58
    :goto_58
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DLBitString;

    return-object v0
.end method

.method private static blacklist toByteArray(B)[B
    .registers 3
    .param p0, "data"    # B

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 83
    .local v0, "rv":[B
    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 85
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

    .line 132
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DLBitString;->data:[B

    .line 133
    .local v0, "string":[B
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 135
    .local v1, "bytes":[B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DLBitString;->getPadBits()I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    .line 136
    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    .line 139
    return-void
.end method

.method blacklist encodedLength()I
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DLBitString;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DLBitString;->data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method blacklist isConstructed()Z
    .registers 2

    .line 120
    const/4 v0, 0x0

    return v0
.end method
