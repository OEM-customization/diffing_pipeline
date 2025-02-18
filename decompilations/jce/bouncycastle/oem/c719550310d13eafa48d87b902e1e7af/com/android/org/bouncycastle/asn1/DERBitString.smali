.class public Lcom/android/org/bouncycastle/asn1/DERBitString;
.super Lcom/android/org/bouncycastle/asn1/ASN1BitString;
.source "DERBitString.java"


# direct methods
.method protected constructor <init>(BI)V
    .registers 4
    .param p1, "data"    # B
    .param p2, "padBits"    # I

    .prologue
    .line 74
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->toByteArray(B)[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    .line 75
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 106
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string/jumbo v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 114
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "data"    # [B

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    .line 101
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "padBits"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 95
    return-void
.end method

.method static fromOctetString([B)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 6
    .param p0, "bytes"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 141
    array-length v2, p0

    if-ge v2, v4, :cond_e

    .line 143
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "truncated BIT STRING detected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_e
    aget-byte v1, p0, v3

    .line 147
    .local v1, "padBits":I
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    new-array v0, v2, [B

    .line 149
    .local v0, "data":[B
    array-length v2, v0

    if-eqz v2, :cond_1e

    .line 151
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v4, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 154
    :cond_1e
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v2
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 4
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 60
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_a

    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_f

    .line 62
    :cond_a
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    return-object v1

    .line 66
    :cond_f
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .end local v0    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 21
    if-eqz p0, :cond_6

    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_9

    .line 23
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 25
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_9
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/DLBitString;

    if-eqz v1, :cond_1c

    .line 27
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-object v1, p0

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DLBitString;

    iget-object v1, v1, Lcom/android/org/bouncycastle/asn1/DLBitString;->data:[B

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DLBitString;

    .end local p0    # "obj":Ljava/lang/Object;
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/DLBitString;->padBits:I

    invoke-direct {v2, v1, v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v2

    .line 29
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1c
    instance-of v1, p0, [B

    if-eqz v1, :cond_48

    .line 33
    :try_start_20
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERBitString;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_28} :catch_29

    return-object v1

    .line 36
    :catch_29
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "encoding error in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "illegal object in getInstance: "

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

.method private static toByteArray(B)[B
    .registers 3
    .param p0, "data"    # B

    .prologue
    .line 79
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 81
    .local v0, "rv":[B
    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 83
    return-object v0
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .registers 7
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 130
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->data:[B

    iget v3, p0, Lcom/android/org/bouncycastle/asn1/DERBitString;->padBits:I

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->derForm([BI)[B

    move-result-object v1

    .line 131
    .local v1, "string":[B
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [B

    .line 133
    .local v0, "bytes":[B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    .line 134
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v4, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 136
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    .line 137
    return-void
.end method

.method encodedLength()I
    .registers 3

    .prologue
    .line 123
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

.method isConstructed()Z
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method
