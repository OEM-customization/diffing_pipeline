.class public Lcom/android/org/bouncycastle/asn1/x509/Extensions;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "Extensions.java"


# instance fields
.field private extensions:Ljava/util/Hashtable;

.field private ordering:Ljava/util/Vector;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 19
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    .line 20
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    .line 53
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 55
    .local v0, "e":Ljava/util/Enumeration;
    :goto_15
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 57
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 59
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_15

    .line 62
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    :cond_36
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/Extension;)V
    .registers 4
    .param p1, "extension"    # Lcom/android/org/bouncycastle/asn1/x509/Extension;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    .line 72
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/x509/Extension;)V
    .registers 6
    .param p1, "extensions"    # [Lcom/android/org/bouncycastle/asn1/x509/Extension;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 19
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    .line 20
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    .line 84
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    array-length v2, p1

    if-eq v1, v2, :cond_2c

    .line 86
    aget-object v0, p1, v1

    .line 88
    .local v0, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 89
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 91
    .end local v0    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    :cond_2c
    return-void
.end method

.method private getExtensionOIDs(Z)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 6
    .param p1, "isCritical"    # Z

    .prologue
    .line 197
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 199
    .local v2, "oidVec":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v0, v3, :cond_28

    .line 201
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 203
    .local v1, "oid":Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/x509/Extension;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v3

    if-ne v3, p1, :cond_25

    .line 205
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 199
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 209
    .end local v1    # "oid":Ljava/lang/Object;
    :cond_28
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->toOidArray(Ljava/util/Vector;)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    return-object v3
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    .registers 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 32
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_8

    .line 34
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 36
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    if-eqz p0, :cond_14

    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 41
    :cond_14
    return-object v1
.end method

.method private toOidArray(Ljava/util/Vector;)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 5
    .param p1, "oidVec"    # Ljava/util/Vector;

    .prologue
    .line 214
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 216
    .local v1, "oids":[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v2, v1

    if-eq v0, v2, :cond_15

    .line 218
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v1, v0

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 220
    :cond_15
    return-object v1
.end method


# virtual methods
.method public equivalent(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)Z
    .registers 7
    .param p1, "other"    # Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    .prologue
    const/4 v4, 0x0

    .line 160
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    iget-object v3, p1, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-eq v2, v3, :cond_10

    .line 162
    return v4

    .line 165
    :cond_10
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 167
    .local v0, "e1":Ljava/util/Enumeration;
    :cond_16
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 169
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 171
    .local v1, "key":Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 173
    return v4

    .line 177
    .end local v1    # "key":Ljava/lang/Object;
    :cond_33
    const/4 v2, 0x1

    return v2
.end method

.method public getCriticalExtensionOIDs()[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .prologue
    .line 192
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtensionOIDs(Z)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .registers 3
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;

    return-object v0
.end method

.method public getExtensionOIDs()[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->toOidArray(Ljava/util/Vector;)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionParsedValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    .line 123
    .local v0, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v0, :cond_c

    .line 125
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    return-object v1

    .line 128
    :cond_c
    return-object v1
.end method

.method public getNonCriticalExtensionOIDs()[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtensionOIDs(Z)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public oids()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .prologue
    .line 143
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 144
    .local v3, "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 146
    .local v0, "e":Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 148
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 149
    .local v2, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/x509/Extension;

    .line 151
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_b

    .line 154
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v2    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_23
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v4
.end method
