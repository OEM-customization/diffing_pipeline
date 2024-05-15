.class public Lcom/android/org/bouncycastle/asn1/DLSet;
.super Lcom/android/org/bouncycastle/asn1/ASN1Set;
.source "DLSet.java"


# instance fields
.field private blacklist bodyLength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->bodyLength:I

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 74
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->bodyLength:I

    .line 75
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 3
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->bodyLength:I

    .line 84
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "a"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Z)V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->bodyLength:I

    .line 93
    return-void
.end method

.method private blacklist getBodyLength()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->bodyLength:I

    if-gez v0, :cond_26

    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DLSet;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 104
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 106
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

    .line 107
    .end local v2    # "obj":Ljava/lang/Object;
    goto :goto_9

    .line 109
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_24
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->bodyLength:I

    .line 112
    .end local v0    # "length":I
    :cond_26
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DLSet;->bodyLength:I

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

    .line 135
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getDLSubStream()Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    move-result-object v0

    .line 136
    .local v0, "dOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DLSet;->getBodyLength()I

    move-result v1

    .line 138
    .local v1, "length":I
    const/16 v2, 0x31

    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 139
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 141
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DLSet;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "e":Ljava/util/Enumeration;
    :goto_14
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 143
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 145
    .local v3, "obj":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 146
    .end local v3    # "obj":Ljava/lang/Object;
    goto :goto_14

    .line 147
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

    .line 118
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DLSet;->getBodyLength()I

    move-result v0

    .line 120
    .local v0, "length":I
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method
