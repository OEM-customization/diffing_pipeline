.class public Lcom/android/org/bouncycastle/asn1/DLExternal;
.super Lcom/android/org/bouncycastle/asn1/ASN1External;
.source "DLExternal.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 2
    .param p1, "vector"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 28
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1External;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 29
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 6
    .param p1, "directReference"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "indirectReference"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .param p3, "dataValueDescriptor"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .param p4, "encoding"    # I
    .param p5, "externalData"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 55
    invoke-direct/range {p0 .. p5}, Lcom/android/org/bouncycastle/asn1/ASN1External;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Primitive;Lcom/android/org/bouncycastle/asn1/DERTaggedObject;)V
    .registers 11
    .param p1, "directReference"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "indirectReference"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .param p3, "dataValueDescriptor"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .param p4, "externalData"    # Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 41
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v4

    invoke-virtual {p4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/DLExternal;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    .line 42
    return-void
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 9
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DLExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DL"

    if-eqz v1, :cond_14

    .line 77
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DLExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 79
    :cond_14
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DLExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_21

    .line 81
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DLExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 83
    :cond_21
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DLExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v1, :cond_2e

    .line 85
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DLExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 87
    :cond_2e
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/org/bouncycastle/asn1/DLExternal;->encoding:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/DLExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    invoke-direct {v1, v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 88
    .local v1, "obj":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 90
    const/16 v2, 0x20

    const/16 v3, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p1, p2, v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZII[B)V

    .line 91
    return-void
.end method

.method blacklist encodedLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DLExternal;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 60
    return-object p0
.end method
