.class public Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "EncryptedData.java"


# instance fields
.field blacklist data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 7
    .param p1, "contentType"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "encryptionAlgorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "content"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 74
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

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p3}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 81
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 82
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 59
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 62
    .local v0, "version":I
    if-nez v0, :cond_20

    .line 67
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 68
    return-void

    .line 64
    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "sequence not version 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 44
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    if-eqz v0, :cond_8

    .line 46
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    return-object v0

    .line 49
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
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getContent()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 98
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

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
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->data:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

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
