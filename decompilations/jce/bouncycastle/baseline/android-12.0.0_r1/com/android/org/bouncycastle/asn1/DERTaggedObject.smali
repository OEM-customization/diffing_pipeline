.class public Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
.super Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
.source "DERTaggedObject.java"


# direct methods
.method public constructor blacklist <init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "tagNo"    # I
    .param p2, "encodable"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "explicit"    # Z
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 26
    return-void
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 7
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 61
    .local v0, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    const/16 v1, 0x80

    .line 62
    .local v1, "flags":I
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->explicit:Z

    if-nez v2, :cond_16

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 64
    :cond_16
    or-int/lit8 v1, v1, 0x20

    .line 67
    :cond_18
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    invoke-virtual {p1, p2, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(ZII)V

    .line 69
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->explicit:Z

    if-eqz v2, :cond_28

    .line 71
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 74
    :cond_28
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getDERSubStream()Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->explicit:Z

    invoke-virtual {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 75
    return-void
.end method

.method blacklist encodedLength()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 42
    .local v0, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v1

    .line 44
    .local v1, "length":I
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->explicit:Z

    if-eqz v2, :cond_1f

    .line 46
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v2

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    return v2

    .line 51
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    .line 53
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method blacklist isConstructed()Z
    .registers 2

    .line 35
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->explicit:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 79
    return-object p0
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 84
    return-object p0
.end method
