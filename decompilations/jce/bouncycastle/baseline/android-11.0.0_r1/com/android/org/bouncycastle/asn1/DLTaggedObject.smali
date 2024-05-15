.class public Lcom/android/org/bouncycastle/asn1/DLTaggedObject;
.super Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
.source "DLTaggedObject.java"


# static fields
.field private static final blacklist ZERO_BYTES:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->ZERO_BYTES:[B

    return-void
.end method

.method public constructor blacklist <init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "explicit"    # Z
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 28
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

    .line 80
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->empty:Z

    const/16 v1, 0xa0

    if-nez v0, :cond_38

    .line 82
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 84
    .local v0, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->explicit:Z

    if-eqz v2, :cond_24

    .line 86
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-virtual {p1, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(II)V

    .line 87
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 88
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_37

    .line 96
    :cond_24
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 98
    const/16 v1, 0xa0

    .local v1, "flags":I
    goto :goto_2f

    .line 102
    .end local v1    # "flags":I
    :cond_2d
    const/16 v1, 0x80

    .line 105
    .restart local v1    # "flags":I
    :goto_2f
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-virtual {p1, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(II)V

    .line 106
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeImplicitObject(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    .line 108
    .end local v0    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v1    # "flags":I
    :goto_37
    goto :goto_3f

    .line 111
    :cond_38
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    sget-object v2, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->ZERO_BYTES:[B

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    .line 113
    :goto_3f
    return-void
.end method

.method blacklist encodedLength()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->empty:Z

    if-nez v0, :cond_2d

    .line 56
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v0

    .line 58
    .local v0, "length":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->explicit:Z

    if-eqz v1, :cond_23

    .line 60
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v1

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1

    .line 65
    :cond_23
    add-int/lit8 v0, v0, -0x1

    .line 67
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 72
    .end local v0    # "length":I
    :cond_2d
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method blacklist isConstructed()Z
    .registers 3

    .line 32
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->empty:Z

    const/4 v1, 0x1

    if-nez v0, :cond_19

    .line 34
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->explicit:Z

    if-eqz v0, :cond_a

    .line 36
    return v1

    .line 40
    :cond_a
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 42
    .local v0, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    move-result v1

    return v1

    .line 47
    .end local v0    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_19
    return v1
.end method
