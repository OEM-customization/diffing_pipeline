.class public Lcom/android/org/bouncycastle/asn1/DERExternal;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "DERExternal.java"


# instance fields
.field private dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

.field private directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private encoding:I

.field private externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

.field private indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 7
    .param p1, "vector"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 20
    const/4 v2, 0x0

    .line 22
    .local v2, "offset":I
    invoke-direct {p0, p1, v2}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getObjFromVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 23
    .local v0, "enc":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v3, :cond_15

    .line 25
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .end local v0    # "enc":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-direct {p0, p1, v2}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getObjFromVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 29
    .restart local v0    # "enc":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_15
    instance-of v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v3, :cond_23

    .line 31
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .end local v0    # "enc":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    invoke-direct {p0, p1, v2}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getObjFromVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 35
    .restart local v0    # "enc":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_23
    instance-of v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v3, :cond_2f

    .line 37
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    invoke-direct {p0, p1, v2}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getObjFromVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 42
    :cond_2f
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    if-eq v3, v4, :cond_40

    .line 44
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "input vector too large"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 47
    :cond_40
    instance-of v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v3, :cond_4d

    .line 49
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4d
    move-object v1, v0

    .line 51
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 52
    .local v1, "obj":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setEncoding(I)V

    .line 53
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 7
    .param p1, "directReference"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "indirectReference"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .param p3, "dataValueDescriptor"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .param p4, "encoding"    # I
    .param p5, "externalData"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 89
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setDirectReference(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 90
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setIndirectReference(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    .line 91
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setDataValueDescriptor(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    .line 92
    invoke-direct {p0, p4}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setEncoding(I)V

    .line 93
    invoke-virtual {p5}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setExternalContent(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Primitive;Lcom/android/org/bouncycastle/asn1/DERTaggedObject;)V
    .registers 11
    .param p1, "directReference"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "indirectReference"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .param p3, "dataValueDescriptor"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .param p4, "externalData"    # Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .prologue
    .line 75
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v4

    invoke-virtual {p4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/DERExternal;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    .line 76
    return-void
.end method

.method private getObjFromVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .param p2, "index"    # I

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-gt v0, p2, :cond_f

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "too few objects in input vector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_f
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method private setDataValueDescriptor(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 2
    .param p1, "dataValueDescriptor"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 248
    return-void
.end method

.method private setDirectReference(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 2
    .param p1, "directReferemce"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 257
    return-void
.end method

.method private setEncoding(I)V
    .registers 5
    .param p1, "encoding"    # I

    .prologue
    .line 270
    if-ltz p1, :cond_5

    const/4 v0, 0x2

    if-le p1, v0, :cond_1f

    .line 272
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid encoding value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_1f
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->encoding:I

    .line 275
    return-void
.end method

.method private setExternalContent(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 2
    .param p1, "externalContent"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 284
    return-void
.end method

.method private setIndirectReference(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V
    .registers 2
    .param p1, "indirectReference"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 293
    return-void
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 6
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .prologue
    const/4 v3, 0x0

    .line 158
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/DERExternal;

    if-nez v1, :cond_6

    .line 160
    return v3

    .line 162
    :cond_6
    if-ne p0, p1, :cond_a

    .line 164
    const/4 v1, 0x1

    return v1

    :cond_a
    move-object v0, p1

    .line 166
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERExternal;

    .line 167
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/DERExternal;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_22

    .line 169
    iget-object v1, v0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_21

    iget-object v1, v0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_22

    .line 171
    :cond_21
    return v3

    .line 174
    :cond_22
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_37

    .line 176
    iget-object v1, v0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_36

    iget-object v1, v0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_37

    .line 178
    :cond_36
    return v3

    .line 181
    :cond_37
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v1, :cond_4c

    .line 183
    iget-object v1, v0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v1, :cond_4b

    iget-object v1, v0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4c

    .line 185
    :cond_4b
    return v3

    .line 188
    :cond_4c
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .registers 7
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_15

    .line 138
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v3, "DER"

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 140
    :cond_15
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_25

    .line 142
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-string/jumbo v3, "DER"

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 144
    :cond_25
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v2, :cond_35

    .line 146
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    const-string/jumbo v3, "DER"

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 148
    :cond_35
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->encoding:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 149
    .local v1, "obj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    const-string/jumbo v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 150
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/16 v3, 0x20

    const/16 v4, 0x8

    invoke-virtual {p1, v3, v4, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    .line 151
    return-void
.end method

.method encodedLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getDataValueDescriptor()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public getDirectReference()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getEncoding()I
    .registers 2

    .prologue
    .line 220
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->encoding:I

    return v0
.end method

.method public getExternalContent()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public getIndirectReference()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_b

    .line 104
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v0

    .line 106
    :cond_b
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_16

    .line 108
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 110
    :cond_16
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v1, :cond_21

    .line 112
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 114
    :cond_21
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 115
    return v0
.end method

.method isConstructed()Z
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method
