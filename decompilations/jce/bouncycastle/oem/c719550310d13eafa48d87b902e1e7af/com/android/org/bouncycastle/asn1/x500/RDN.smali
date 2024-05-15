.class public Lcom/android/org/bouncycastle/asn1/x500/RDN;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "RDN.java"


# instance fields
.field private values:Lcom/android/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 49
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 50
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 52
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 53
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .registers 2
    .param p1, "values"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V
    .registers 3
    .param p1, "attrTAndV"    # Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 58
    return-void
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V
    .registers 3
    .param p1, "aAndVs"    # [Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 68
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 27
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    if-eqz v0, :cond_8

    .line 29
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 31
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    if-eqz p0, :cond_14

    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    return-object v0

    .line 36
    :cond_14
    return-object v1
.end method


# virtual methods
.method public getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_b
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    return-object v0
.end method

.method public getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .registers 4

    .prologue
    .line 97
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    new-array v1, v2, [Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    .line 99
    .local v1, "tmp":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    array-length v2, v1

    if-eq v0, v2, :cond_1b

    .line 101
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v2

    aput-object v2, v1, v0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 104
    :cond_1b
    return-object v1
.end method

.method public isMultiValued()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 72
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-le v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public size()I
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method
