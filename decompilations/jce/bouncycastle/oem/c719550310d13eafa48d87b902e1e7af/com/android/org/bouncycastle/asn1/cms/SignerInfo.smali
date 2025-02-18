.class public Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "SignerInfo.java"


# instance fields
.field private authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private digAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private digEncryptionAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private encryptedDigest:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

.field private sid:Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

.field private unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 186
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 189
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 191
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 192
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->sid:Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    .line 193
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 195
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 197
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_5c

    .line 199
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 201
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 209
    :goto_3f
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 211
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 213
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 219
    :goto_5b
    return-void

    .line 205
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_5c
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 206
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_3f

    .line 217
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_65
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    goto :goto_5b
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .registers 11
    .param p1, "sid"    # Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;
    .param p2, "digAlgorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "authenticatedAttributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .param p4, "digEncryptionAlgorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p5, "encryptedDigest"    # Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .param p6, "unauthenticatedAttributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 132
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 134
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x3

    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 141
    :goto_12
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->sid:Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    .line 142
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 143
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 144
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 145
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 146
    iput-object p6, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 147
    return-void

    .line 138
    :cond_1f
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_12
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/cms/Attributes;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/org/bouncycastle/asn1/cms/Attributes;)V
    .registers 11
    .param p1, "sid"    # Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;
    .param p2, "digAlgorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "authenticatedAttributes"    # Lcom/android/org/bouncycastle/asn1/cms/Attributes;
    .param p4, "digEncryptionAlgorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p5, "encryptedDigest"    # Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .param p6, "unauthenticatedAttributes"    # Lcom/android/org/bouncycastle/asn1/cms/Attributes;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 166
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 168
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x3

    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 175
    :goto_12
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->sid:Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    .line 176
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 177
    invoke-static {p3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 178
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 179
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 180
    invoke-static {p6}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 181
    return-void

    .line 172
    :cond_27
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_12
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 103
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;

    if-eqz v0, :cond_8

    .line 105
    check-cast p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;

    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    .line 107
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_8
    if-eqz p0, :cond_14

    .line 109
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 112
    :cond_14
    return-object v1
.end method


# virtual methods
.method public getAuthenticatedAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getDigestAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getDigestEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncryptedDigest()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getSID()Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->sid:Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    return-object v0
.end method

.method public getUnauthenticatedAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 261
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 263
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 264
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->sid:Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 265
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 267
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_23

    .line 269
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 272
    :cond_23
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 273
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 275
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_3c

    .line 277
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    const/4 v3, 0x1

    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 280
    :cond_3c
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
