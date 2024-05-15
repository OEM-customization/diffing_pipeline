.class public Lcom/android/org/bouncycastle/asn1/BERTaggedObject;
.super Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
.source "BERTaggedObject.java"


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "tagNo"    # I

    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "tagNo"    # I
    .param p2, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 24
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 25
    return-void
.end method

.method public constructor blacklist <init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "explicit"    # Z
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 38
    return-void
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .registers 5
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->tagNo:I

    const/16 v1, 0xa0

    invoke-virtual {p1, v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(II)V

    .line 102
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 104
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->empty:Z

    if-nez v0, :cond_8f

    .line 106
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->explicit:Z

    if-nez v0, :cond_8a

    .line 109
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_3b

    .line 111
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    if-eqz v0, :cond_29

    .line 113
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    goto :goto_58

    .line 117
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_29
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 118
    .local v0, "octs":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    .line 119
    .local v1, "berO":Lcom/android/org/bouncycastle/asn1/BEROctetString;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 120
    .end local v1    # "berO":Lcom/android/org/bouncycastle/asn1/BEROctetString;
    .local v0, "e":Ljava/util/Enumeration;
    goto :goto_58

    .line 122
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_3b
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_4a

    .line 124
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .restart local v0    # "e":Ljava/util/Enumeration;
    goto :goto_58

    .line 126
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_4a
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_69

    .line 128
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 135
    .restart local v0    # "e":Ljava/util/Enumeration;
    :goto_58
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 137
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_58

    .line 139
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_68
    goto :goto_8f

    .line 132
    :cond_69
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_8a
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 146
    :cond_8f
    :goto_8f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 147
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 148
    return-void
.end method

.method blacklist encodedLength()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->empty:Z

    if-nez v0, :cond_29

    .line 76
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 77
    .local v0, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v1

    .line 79
    .local v1, "length":I
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->explicit:Z

    if-eqz v2, :cond_1f

    .line 81
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v2

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    return v2

    .line 86
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    .line 88
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2

    .line 93
    .end local v0    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v1    # "length":I
    :cond_29
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method blacklist isConstructed()Z
    .registers 3

    .line 52
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->empty:Z

    const/4 v1, 0x1

    if-nez v0, :cond_19

    .line 54
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->explicit:Z

    if-eqz v0, :cond_a

    .line 56
    return v1

    .line 60
    :cond_a
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 62
    .local v0, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    move-result v1

    return v1

    .line 67
    .end local v0    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_19
    return v1
.end method
