.class public Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "PrivateKeyInfo.java"


# instance fields
.field private algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private privKey:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 79
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    .line 80
    .local v1, "version":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-eqz v2, :cond_21

    .line 82
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "wrong version for private key info"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_21
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 86
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privKey:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 88
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 90
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 92
    :cond_47
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "algId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "privateKey"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .registers 7
    .param p1, "algId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "privateKey"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .param p3, "attributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 65
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-interface {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    const-string/jumbo v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privKey:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 66
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 67
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 68
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .registers 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 39
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    if-eqz v0, :cond_8

    .line 41
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 43
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    if-eqz p0, :cond_14

    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 48
    :cond_14
    return-object v1
.end method


# virtual methods
.method public getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getPrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .prologue
    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    .line 122
    :catch_9
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "unable to parse private key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privKey:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 151
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 153
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 154
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 155
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privKey:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 157
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_28

    .line 159
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 162
    :cond_28
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
