.class public Lcom/android/org/bouncycastle/asn1/DERSet;
.super Lcom/android/org/bouncycastle/asn1/ASN1Set;
.source "DERSet.java"


# instance fields
.field private bodyLength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 3
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V
    .registers 4
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .param p2, "doSort"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    .line 56
    return-void
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "a"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Z)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    .line 49
    return-void
.end method

.method private getBodyLength()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    if-gez v3, :cond_25

    .line 63
    const/4 v1, 0x0

    .line 65
    .local v1, "length":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERSet;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 67
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 69
    .local v2, "obj":Ljava/lang/Object;
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_9

    .line 72
    :cond_23
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    .line 75
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "length":I
    :cond_25
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    return v3
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
    .line 98
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getDERSubStream()Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    move-result-object v0

    .line 99
    .local v0, "dOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERSet;->getBodyLength()I

    move-result v2

    .line 101
    .local v2, "length":I
    const/16 v4, 0x31

    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 102
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERSet;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :goto_14
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 106
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 108
    .local v3, "obj":Ljava/lang/Object;
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_14

    .line 110
    :cond_24
    return-void
.end method

.method encodedLength()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERSet;->getBodyLength()I

    move-result v0

    .line 83
    .local v0, "length":I
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method
