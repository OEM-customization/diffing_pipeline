.class public Lcom/android/org/bouncycastle/asn1/BERApplicationSpecific;
.super Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;
.source "BERApplicationSpecific.java"


# direct methods
.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "tag"    # I
    .param p2, "object"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecific;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 32
    return-void
.end method

.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 5
    .param p1, "tagNo"    # I
    .param p2, "vec"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .prologue
    .line 76
    invoke-static {p2}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecific;->getEncodedVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;-><init>(ZI[B)V

    .line 77
    return-void
.end method

.method public constructor <init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6
    .param p1, "constructed"    # Z
    .param p2, "tag"    # I
    .param p3, "object"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    if-nez p1, :cond_12

    invoke-interface {p3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    move-result v0

    :goto_a
    invoke-static {p1, p3}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecific;->getEncoding(ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;-><init>(ZI[B)V

    .line 48
    return-void

    .line 47
    :cond_12
    const/4 v0, 0x1

    goto :goto_a
.end method

.method constructor <init>(ZI[B)V
    .registers 4
    .param p1, "isConstructed"    # Z
    .param p2, "tag"    # I
    .param p3, "octets"    # [B

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;-><init>(ZI[B)V

    .line 18
    return-void
.end method

.method private static getEncodedVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)[B
    .registers 7
    .param p0, "vec"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .prologue
    .line 81
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    if-eq v2, v3, :cond_3a

    .line 87
    :try_start_c
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Object;

    const-string/jumbo v4, "BER"

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1c} :catch_1f

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 90
    :catch_1f
    move-exception v1

    .line 91
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "malformed object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 94
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private static getEncoding(ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    .registers 7
    .param p0, "explicit"    # Z
    .param p1, "object"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    const-string/jumbo v4, "BER"

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 55
    .local v0, "data":[B
    if-eqz p0, :cond_e

    .line 57
    return-object v0

    .line 61
    :cond_e
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecific;->getLengthOfHeader([B)I

    move-result v1

    .line 62
    .local v1, "lenBytes":I
    array-length v3, v0

    sub-int/2addr v3, v1

    new-array v2, v3, [B

    .line 63
    .local v2, "tmp":[B
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 64
    return-object v2
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .registers 5
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 102
    const/16 v0, 0x40

    .line 103
    .local v0, "classBits":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecific;->isConstructed:Z

    if-eqz v1, :cond_9

    .line 105
    const/16 v0, 0x60

    .line 108
    :cond_9
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecific;->tag:I

    invoke-virtual {p1, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(II)V

    .line 109
    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 110
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecific;->octets:[B

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write([B)V

    .line 111
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 112
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 113
    return-void
.end method
