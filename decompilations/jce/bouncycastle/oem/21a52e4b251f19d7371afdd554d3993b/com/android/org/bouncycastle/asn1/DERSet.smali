.class public Lcom/android/org/bouncycastle/asn1/DERSet;
.super Lcom/android/org/bouncycastle/asn1/ASN1Set;
.source "DERSet.java"


# instance fields
.field private blacklist bodyLength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    .line 28
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    .line 38
    return-void
.end method

.method public constructor greylist <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 3
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    .line 49
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V
    .registers 4
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .param p2, "doSort"    # Z

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    .line 66
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "a"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Z)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    .line 59
    return-void
.end method

.method private blacklist getBodyLength()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    if-gez v0, :cond_26

    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERSet;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 77
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 79
    .local v2, "obj":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v3

    add-int/2addr v0, v3

    .line 80
    .end local v2    # "obj":Ljava/lang/Object;
    goto :goto_9

    .line 82
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_24
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    .line 85
    .end local v0    # "length":I
    :cond_26
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

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

    .line 108
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getDERSubStream()Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    move-result-object v0

    .line 109
    .local v0, "dOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERSet;->getBodyLength()I

    move-result v1

    .line 111
    .local v1, "length":I
    const/16 v2, 0x31

    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 112
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERSet;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "e":Ljava/util/Enumeration;
    :goto_14
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 116
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 118
    .local v3, "obj":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 119
    .end local v3    # "obj":Ljava/lang/Object;
    goto :goto_14

    .line 120
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

    .line 91
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERSet;->getBodyLength()I

    move-result v0

    .line 93
    .local v0, "length":I
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method
