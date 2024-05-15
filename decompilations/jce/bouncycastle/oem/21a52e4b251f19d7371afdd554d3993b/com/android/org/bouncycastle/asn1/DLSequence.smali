.class public Lcom/android/org/bouncycastle/asn1/DLSequence;
.super Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
.source "DLSequence.java"


# instance fields
.field private blacklist bodyLength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DLSequence;->bodyLength:I

    .line 21
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 30
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DLSequence;->bodyLength:I

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 3
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DLSequence;->bodyLength:I

    .line 41
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "array"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DLSequence;->bodyLength:I

    .line 51
    return-void
.end method

.method private blacklist getBodyLength()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DLSequence;->bodyLength:I

    if-gez v0, :cond_26

    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DLSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 62
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 64
    .local v2, "obj":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v3

    add-int/2addr v0, v3

    .line 65
    .end local v2    # "obj":Ljava/lang/Object;
    goto :goto_9

    .line 67
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_24
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DLSequence;->bodyLength:I

    .line 70
    .end local v0    # "length":I
    :cond_26
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DLSequence;->bodyLength:I

    return v0
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .registers 7
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getDLSubStream()Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    move-result-object v0

    .line 94
    .local v0, "dOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DLSequence;->getBodyLength()I

    move-result v1

    .line 96
    .local v1, "length":I
    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 97
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DLSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "e":Ljava/util/Enumeration;
    :goto_14
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 101
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 103
    .local v3, "obj":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 104
    .end local v3    # "obj":Ljava/lang/Object;
    goto :goto_14

    .line 105
    .end local v2    # "e":Ljava/util/Enumeration;
    :cond_25
    return-void
.end method

.method blacklist encodedLength()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DLSequence;->getBodyLength()I

    move-result v0

    .line 78
    .local v0, "length":I
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method
