.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1External;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1External.java"


# instance fields
.field protected blacklist dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

.field protected blacklist directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field protected blacklist encoding:I

.field protected blacklist externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

.field protected blacklist indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 6
    .param p1, "vector"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 32
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 33
    const/4 v0, 0x0

    .line 35
    .local v0, "offset":I
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1External;->getObjFromVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 36
    .local v1, "enc":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_17

    .line 38
    move-object v2, v1

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1External;->getObjFromVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 42
    :cond_17
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_26

    .line 44
    move-object v2, v1

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1External;->getObjFromVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 48
    :cond_26
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v2, :cond_32

    .line 50
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1External;->getObjFromVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 55
    :cond_32
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    if-ne v2, v3, :cond_57

    .line 60
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_4f

    .line 64
    move-object v2, v1

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 65
    .local v2, "obj":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1External;->setEncoding(I)V

    .line 66
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 67
    return-void

    .line 62
    .end local v2    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_4f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "input vector too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 7
    .param p1, "directReference"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "indirectReference"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .param p3, "dataValueDescriptor"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .param p4, "encoding"    # I
    .param p5, "externalData"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 102
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 103
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1External;->setDirectReference(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 104
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1External;->setIndirectReference(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    .line 105
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/asn1/ASN1External;->setDataValueDescriptor(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    .line 106
    invoke-direct {p0, p4}, Lcom/android/org/bouncycastle/asn1/ASN1External;->setEncoding(I)V

    .line 107
    invoke-virtual {p5}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1External;->setExternalContent(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    .line 108
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Primitive;Lcom/android/org/bouncycastle/asn1/DERTaggedObject;)V
    .registers 11
    .param p1, "directReference"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "indirectReference"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .param p3, "dataValueDescriptor"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .param p4, "externalData"    # Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 89
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v4

    invoke-virtual {p4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/ASN1External;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    .line 90
    return-void
.end method

.method private blacklist getObjFromVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .param p2, "index"    # I

    .line 71
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-le v0, p2, :cond_f

    .line 76
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 73
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too few objects in input vector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setDataValueDescriptor(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 2
    .param p1, "dataValueDescriptor"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 247
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 248
    return-void
.end method

.method private blacklist setDirectReference(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 2
    .param p1, "directReferemce"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 256
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 257
    return-void
.end method

.method private blacklist setEncoding(I)V
    .registers 5
    .param p1, "encoding"    # I

    .line 270
    if-ltz p1, :cond_8

    const/4 v0, 0x2

    if-gt p1, v0, :cond_8

    .line 274
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->encoding:I

    .line 275
    return-void

    .line 272
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid encoding value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setExternalContent(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 2
    .param p1, "externalContent"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 283
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 284
    return-void
.end method

.method private blacklist setIndirectReference(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V
    .registers 2
    .param p1, "indirectReference"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 292
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 293
    return-void
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 6
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 158
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1External;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 160
    return v1

    .line 162
    :cond_6
    if-ne p0, p1, :cond_a

    .line 164
    const/4 v0, 0x1

    return v0

    .line 166
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1External;

    .line 167
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/ASN1External;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_1c

    .line 169
    iget-object v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v3, :cond_1b

    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 171
    :cond_1b
    return v1

    .line 174
    :cond_1c
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_2b

    .line 176
    iget-object v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v3, :cond_2a

    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 178
    :cond_2a
    return v1

    .line 181
    :cond_2b
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v2, :cond_3a

    .line 183
    iget-object v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v3, :cond_39

    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 185
    :cond_39
    return v1

    .line 188
    :cond_3a
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    return v1
.end method

.method blacklist encodedLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1External;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public blacklist getDataValueDescriptor()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public blacklist getDirectReference()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist getEncoding()I
    .registers 2

    .line 220
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->encoding:I

    return v0
.end method

.method public blacklist getExternalContent()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public blacklist getIndirectReference()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_9

    .line 128
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v0

    .line 130
    :cond_9
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_12

    .line 132
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 134
    :cond_12
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v1, :cond_1b

    .line 136
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 138
    :cond_1b
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 139
    return v0
.end method

.method blacklist isConstructed()Z
    .registers 2

    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 8

    .line 112
    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERExternal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    iget v4, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->encoding:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/DERExternal;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    return-object v6
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 8

    .line 117
    new-instance v6, Lcom/android/org/bouncycastle/asn1/DLExternal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    iget v4, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->encoding:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/DLExternal;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    return-object v6
.end method
