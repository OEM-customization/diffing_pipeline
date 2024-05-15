.class public Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "AuthorityKeyIdentifier.java"


# instance fields
.field certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

.field certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 69
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 39
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 40
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 72
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 74
    .local v0, "e":Ljava/util/Enumeration;
    :goto_f
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 76
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 78
    .local v1, "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_44

    .line 90
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "illegal tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :pswitch_2d
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    goto :goto_f

    .line 84
    :pswitch_34
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_f

    .line 87
    :pswitch_3b
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_f

    .line 93
    .end local v1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_42
    return-void

    .line 78
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_34
        :pswitch_3b
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 154
    const/4 v0, 0x0

    check-cast v0, [B

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 7
    .param p1, "spki"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 108
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 39
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 40
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 112
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    .line 114
    .local v1, "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    .line 116
    .local v2, "resBuf":[B
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    .line 117
    .local v0, "bytes":[B
    array-length v3, v0

    invoke-interface {v1, v0, v4, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 118
    invoke-interface {v1, v2, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 119
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .registers 9
    .param p1, "spki"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p2, "name"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .param p3, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 127
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 39
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 40
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 133
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v1

    .line 135
    .local v1, "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    .line 137
    .local v2, "resBuf":[B
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    .line 138
    .local v0, "bytes":[B
    array-length v3, v0

    invoke-interface {v1, v0, v4, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 139
    invoke-interface {v1, v2, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 141
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 142
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 143
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v3, p3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 144
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "keyIdentifier"    # [B

    .prologue
    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, p1, v0, v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    .line 164
    return-void
.end method

.method public constructor <init>([BLcom/android/org/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .registers 6
    .param p1, "keyIdentifier"    # [B
    .param p2, "name"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .param p3, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 39
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 40
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 175
    if-eqz p1, :cond_1f

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    :goto_11
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 176
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 177
    if-eqz p3, :cond_1c

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, p3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    :cond_1c
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 178
    return-void

    :cond_1f
    move-object v0, v1

    .line 175
    goto :goto_11
.end method

.method public static fromExtensions(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .registers 2
    .param p0, "extensions"    # Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    .prologue
    .line 66
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .registers 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 52
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    if-eqz v0, :cond_8

    .line 54
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 56
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    if-eqz p0, :cond_14

    .line 58
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 61
    :cond_14
    return-object v1
.end method


# virtual methods
.method public getAuthorityCertIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getAuthorityCertSerialNumber()Ljava/math/BigInteger;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_c

    .line 199
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 202
    :cond_c
    return-object v1
.end method

.method public getKeyIdentifier()[B
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_c

    .line 184
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0

    .line 187
    :cond_c
    return-object v1
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 210
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 212
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_14

    .line 214
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 217
    :cond_14
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_23

    .line 219
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    const/4 v3, 0x1

    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 222
    :cond_23
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_32

    .line 224
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const/4 v3, 0x2

    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 228
    :cond_32
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AuthorityKeyIdentifier: KeyID("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
