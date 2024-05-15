.class public Lcom/android/org/bouncycastle/asn1/DERSequence;
.super Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
.source "DERSequence.java"


# instance fields
.field private blacklist bodyLength:I


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    .line 29
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "element"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    .line 38
    return-void
.end method

.method public constructor greylist <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 3
    .param p1, "elementVector"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    .line 48
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "elements"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    .line 57
    return-void
.end method

.method constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Z)V
    .registers 4
    .param p1, "elements"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .param p2, "clone"    # Z

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Z)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    .line 62
    return-void
.end method

.method public static blacklist convert(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/org/bouncycastle/asn1/DERSequence;
    .registers 2
    .param p0, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 18
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    return-object v0
.end method

.method private blacklist getBodyLength()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    if-gez v0, :cond_21

    .line 68
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 69
    .local v0, "count":I
    const/4 v1, 0x0

    .line 71
    .local v1, "totalLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_1f

    .line 73
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 74
    .local v3, "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v4

    add-int/2addr v1, v4

    .line 71
    .end local v3    # "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 77
    .end local v2    # "i":I
    :cond_1f
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    .line 80
    .end local v0    # "count":I
    .end local v1    # "totalLength":I
    :cond_21
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

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

    .line 100
    if-eqz p2, :cond_7

    .line 102
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 105
    :cond_7
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getDERSubStream()Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    move-result-object v0

    .line 107
    .local v0, "derOut":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v1, v1

    .line 108
    .local v1, "count":I
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    const/4 v3, 0x1

    if-gez v2, :cond_44

    const/16 v2, 0x10

    if-le v1, v2, :cond_18

    goto :goto_44

    .line 120
    :cond_18
    const/4 v2, 0x0

    .line 122
    .local v2, "totalLength":I
    new-array v4, v1, [Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 123
    .local v4, "derObjects":[Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1c
    if-ge v5, v1, :cond_34

    .line 125
    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v5

    invoke-interface {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 126
    .local v6, "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    aput-object v6, v4, v5

    .line 127
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v7

    add-int/2addr v2, v7

    .line 123
    .end local v6    # "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 130
    .end local v5    # "i":I
    :cond_34
    iput v2, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    .line 131
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 133
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3a
    if-ge v5, v1, :cond_60

    .line 135
    aget-object v6, v4, v5

    invoke-virtual {v6, v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 133
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 110
    .end local v2    # "totalLength":I
    .end local v4    # "derObjects":[Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v5    # "i":I
    :cond_44
    :goto_44
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getBodyLength()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 112
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4c
    if-ge v2, v1, :cond_60

    .line 114
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    .line 115
    .local v4, "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v4, v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 112
    .end local v4    # "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 138
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

    .line 85
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getBodyLength()I

    move-result v0

    .line 87
    .local v0, "length":I
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 142
    return-object p0
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 147
    return-object p0
.end method
