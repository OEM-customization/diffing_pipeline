.class public Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
.super Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
.source "DERTaggedObject.java"


# static fields
.field private static final ZERO_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->ZERO_BYTES:[B

    .line 10
    return-void
.end method

.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "tagNo"    # I
    .param p2, "encodable"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 31
    return-void
.end method

.method public constructor <init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "explicit"    # Z
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 26
    return-void
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
    const/16 v4, 0xa0

    .line 84
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->empty:Z

    if-nez v2, :cond_38

    .line 86
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 88
    .local v1, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->explicit:Z

    if-eqz v2, :cond_24

    .line 90
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    invoke-virtual {p1, v4, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(II)V

    .line 91
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 92
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 117
    .end local v1    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :goto_23
    return-void

    .line 100
    .restart local v1    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_24
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 102
    const/16 v0, 0xa0

    .line 109
    .local v0, "flags":I
    :goto_2c
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    invoke-virtual {p1, v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(II)V

    .line 110
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeImplicitObject(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    goto :goto_23

    .line 106
    .end local v0    # "flags":I
    :cond_35
    const/16 v0, 0x80

    .restart local v0    # "flags":I
    goto :goto_2c

    .line 115
    .end local v0    # "flags":I
    .end local v1    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_38
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    sget-object v3, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->ZERO_BYTES:[B

    invoke-virtual {p1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    goto :goto_23
.end method

.method encodedLength()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->empty:Z

    if-nez v2, :cond_2d

    .line 59
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 60
    .local v1, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v0

    .line 62
    .local v0, "length":I
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->explicit:Z

    if-eqz v2, :cond_23

    .line 64
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v2

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    return v2

    .line 69
    :cond_23
    add-int/lit8 v0, v0, -0x1

    .line 71
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v2

    add-int/2addr v2, v0

    return v2

    .line 76
    .end local v0    # "length":I
    .end local v1    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_2d
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method isConstructed()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 35
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->empty:Z

    if-nez v1, :cond_19

    .line 37
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->explicit:Z

    if-eqz v1, :cond_a

    .line 39
    return v2

    .line 43
    :cond_a
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 45
    .local v0, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    move-result v1

    return v1

    .line 50
    .end local v0    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_19
    return v2
.end method
