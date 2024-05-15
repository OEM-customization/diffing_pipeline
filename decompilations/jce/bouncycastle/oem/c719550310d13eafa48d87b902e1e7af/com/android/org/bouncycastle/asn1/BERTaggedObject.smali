.class public Lcom/android/org/bouncycastle/asn1/BERTaggedObject;
.super Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
.source "BERTaggedObject.java"


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "tagNo"    # I

    .prologue
    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 46
    return-void
.end method

.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "tagNo"    # I
    .param p2, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 23
    return-void
.end method

.method public constructor <init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "explicit"    # Z
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 36
    return-void
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .registers 8
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 99
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->tagNo:I

    const/16 v4, 0xa0

    invoke-virtual {p1, v4, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(II)V

    .line 100
    const/16 v3, 0x80

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 102
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->empty:Z

    if-nez v3, :cond_92

    .line 104
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->explicit:Z

    if-nez v3, :cond_8d

    .line 107
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v3, :cond_4b

    .line 109
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    if-eqz v3, :cond_39

    .line 111
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v3, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 133
    .local v1, "e":Ljava/util/Enumeration;
    :goto_29
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_92

    .line 135
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_29

    .line 115
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_39
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 116
    .local v2, "octs":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    .line 117
    .local v0, "berO":Lcom/android/org/bouncycastle/asn1/BEROctetString;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .restart local v1    # "e":Ljava/util/Enumeration;
    goto :goto_29

    .line 120
    .end local v0    # "berO":Lcom/android/org/bouncycastle/asn1/BEROctetString;
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v2    # "octs":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :cond_4b
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_5a

    .line 122
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .restart local v1    # "e":Ljava/util/Enumeration;
    goto :goto_29

    .line 124
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_5a
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v3, :cond_69

    .line 126
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .restart local v1    # "e":Ljava/util/Enumeration;
    goto :goto_29

    .line 130
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_69
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not implemented: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 140
    :cond_8d
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 144
    :cond_92
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 145
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 146
    return-void
.end method

.method encodedLength()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->empty:Z

    if-nez v2, :cond_29

    .line 74
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 75
    .local v1, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v0

    .line 77
    .local v0, "length":I
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->explicit:Z

    if-eqz v2, :cond_1f

    .line 79
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v2

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    return v2

    .line 84
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    .line 86
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v2

    add-int/2addr v2, v0

    return v2

    .line 91
    .end local v0    # "length":I
    .end local v1    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_29
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method isConstructed()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 50
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->empty:Z

    if-nez v1, :cond_19

    .line 52
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->explicit:Z

    if-eqz v1, :cond_a

    .line 54
    return v2

    .line 58
    :cond_a
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 60
    .local v0, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    move-result v1

    return v1

    .line 65
    .end local v0    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_19
    return v2
.end method
