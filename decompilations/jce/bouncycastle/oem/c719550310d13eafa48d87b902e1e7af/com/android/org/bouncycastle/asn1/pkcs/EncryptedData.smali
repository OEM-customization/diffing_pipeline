.class public Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "EncryptedData.java"


# instance fields
.field bagId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field bagValue:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

.field data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 7
    .param p1, "contentType"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "encryptionAlgorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "content"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 75
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 77
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 78
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 79
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    invoke-direct {v1, v2, v2, p3}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 81
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 82
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 60
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 62
    .local v0, "version":I
    if-eqz v0, :cond_1d

    .line 64
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sequence not version 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_1d
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 68
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 44
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    if-eqz v0, :cond_8

    .line 46
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 49
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    if-eqz p0, :cond_14

    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 54
    :cond_14
    return-object v1
.end method


# virtual methods
.method public getContent()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .registers 4

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1a

    .line 98
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    .line 100
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    return-object v1

    .line 103
    .end local v0    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_1a
    const/4 v1, 0x0

    return-object v1
.end method

.method public getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .prologue
    .line 108
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 110
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 111
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 113
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
