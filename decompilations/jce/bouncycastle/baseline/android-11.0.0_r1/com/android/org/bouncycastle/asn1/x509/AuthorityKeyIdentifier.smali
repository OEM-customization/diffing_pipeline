.class public Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "AuthorityKeyIdentifier.java"


# instance fields
.field blacklist certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

.field blacklist certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field blacklist keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 74
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 42
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 43
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 75
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 77
    .local v0, "e":Ljava/util/Enumeration;
    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 79
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 81
    .local v1, "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3f

    const/4 v4, 0x1

    if-eq v2, v4, :cond_38

    const/4 v4, 0x2

    if-ne v2, v4, :cond_30

    .line 90
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 91
    goto :goto_46

    .line 93
    :cond_30
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "illegal tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_38
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 88
    goto :goto_46

    .line 84
    :cond_3f
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 85
    nop

    .line 95
    .end local v1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :goto_46
    goto :goto_e

    .line 96
    :cond_47
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    .line 157
    const/4 v0, 0x0

    check-cast v0, [B

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    .line 158
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 7
    .param p1, "spki"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 113
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 42
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 43
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 116
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 117
    .local v0, "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 119
    .local v1, "resBuf":[B
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v2

    .line 120
    .local v2, "bytes":[B
    array-length v3, v2

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 121
    invoke-interface {v0, v1, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 122
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 123
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .registers 9
    .param p1, "spki"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p2, "name"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .param p3, "serialNumber"    # Ljava/math/BigInteger;

    .line 134
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 42
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 43
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 137
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 138
    .local v0, "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 140
    .local v1, "resBuf":[B
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v2

    .line 141
    .local v2, "bytes":[B
    array-length v3, v2

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 142
    invoke-interface {v0, v1, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 144
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 145
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 146
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v3, p3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 147
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "keyIdentifier"    # [B

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    .line 167
    return-void
.end method

.method public constructor blacklist <init>([BLcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .registers 6
    .param p1, "keyIdentifier"    # [B
    .param p2, "name"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .param p3, "serialNumber"    # Ljava/math/BigInteger;

    .line 177
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 42
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 43
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 178
    if-eqz p1, :cond_12

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_13

    :cond_12
    move-object v1, v0

    :goto_13
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 179
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 180
    if-eqz p3, :cond_1e

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    :cond_1e
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 181
    return-void
.end method

.method public static blacklist fromExtensions(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .registers 2
    .param p0, "extensions"    # Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    .line 69
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .registers 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 49
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 55
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    if-eqz v0, :cond_8

    .line 57
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    return-object v0

    .line 59
    :cond_8
    if-eqz p0, :cond_14

    .line 61
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 64
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getAuthorityCertIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public blacklist getAuthorityCertSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_9

    .line 202
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 205
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeyIdentifier()[B
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_9

    .line 187
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0

    .line 190
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 213
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 215
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 217
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 220
    :cond_14
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_23

    .line 222
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 225
    :cond_23
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_32

    .line 227
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 231
    :cond_32
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorityKeyIdentifier: KeyID("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_17
    const-string v1, "null"

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
