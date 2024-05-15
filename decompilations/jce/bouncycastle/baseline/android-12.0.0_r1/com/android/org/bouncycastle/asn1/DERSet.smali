.class public Lcom/android/org/bouncycastle/asn1/DERSet;
.super Lcom/android/org/bouncycastle/asn1/ASN1Set;
.source "DERSet.java"


# instance fields
.field private blacklist bodyLength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    .line 32
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "element"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    .line 41
    return-void
.end method

.method public constructor greylist-max-r <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 3
    .param p1, "elementVector"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 50
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    .line 51
    return-void
.end method

.method constructor blacklist <init>(Z[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "isSorted"    # Z
    .param p2, "elements"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 64
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERSet;->checkSorted(Z)Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Z[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    .line 65
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "elements"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Z)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    .line 60
    return-void
.end method

.method private static blacklist checkSorted(Z)Z
    .registers 3
    .param p0, "isSorted"    # Z

    .line 155
    if-eqz p0, :cond_3

    .line 159
    return p0

    .line 157
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DERSet elements should always be in sorted order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist convert(Lcom/android/org/bouncycastle/asn1/ASN1Set;)Lcom/android/org/bouncycastle/asn1/DERSet;
    .registers 2
    .param p0, "set"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 22
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    return-object v0
.end method

.method private blacklist getBodyLength()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    if-gez v0, :cond_21

    .line 71
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 72
    .local v0, "count":I
    const/4 v1, 0x0

    .line 74
    .local v1, "totalLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_1f

    .line 76
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 77
    .local v3, "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v4

    add-int/2addr v1, v4

    .line 74
    .end local v3    # "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 80
    .end local v2    # "i":I
    :cond_1f
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    .line 83
    .end local v0    # "count":I
    .end local v1    # "totalLength":I
    :cond_21
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    return v0
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 11
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    if-eqz p2, :cond_7

    .line 105
    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 108
    :cond_7
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getDERSubStream()Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    move-result-object v0

    .line 110
    .local v0, "derOut":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v1, v1

    .line 111
    .local v1, "count":I
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    const/4 v3, 0x1

    if-gez v2, :cond_44

    const/16 v2, 0x10

    if-le v1, v2, :cond_18

    goto :goto_44

    .line 123
    :cond_18
    const/4 v2, 0x0

    .line 125
    .local v2, "totalLength":I
    new-array v4, v1, [Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 126
    .local v4, "derObjects":[Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1c
    if-ge v5, v1, :cond_34

    .line 128
    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v5

    invoke-interface {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 129
    .local v6, "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    aput-object v6, v4, v5

    .line 130
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v7

    add-int/2addr v2, v7

    .line 126
    .end local v6    # "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 133
    .end local v5    # "i":I
    :cond_34
    iput v2, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->bodyLength:I

    .line 134
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 136
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3a
    if-ge v5, v1, :cond_60

    .line 138
    aget-object v6, v4, v5

    invoke-virtual {v6, v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 136
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 113
    .end local v2    # "totalLength":I
    .end local v4    # "derObjects":[Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v5    # "i":I
    :cond_44
    :goto_44
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERSet;->getBodyLength()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 115
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4c
    if-ge v2, v1, :cond_60

    .line 117
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    .line 118
    .local v4, "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v4, v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 115
    .end local v4    # "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 141
    .end local v2    # "i":I
    :cond_60
    return-void
.end method

.method blacklist encodedLength()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERSet;->getBodyLength()I

    move-result v0

    .line 90
    .local v0, "length":I
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 145
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/DERSet;->isSorted:Z

    if-eqz v0, :cond_6

    move-object v0, p0

    goto :goto_a

    :cond_6
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 150
    return-object p0
.end method
