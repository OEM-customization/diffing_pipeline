.class public Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "PolicyConstraints.java"


# instance fields
.field private inhibitPolicyMapping:Ljava/math/BigInteger;

.field private requireExplicitPolicyMapping:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v4, 0x0

    .line 38
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_41

    .line 42
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 44
    .local v1, "to":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    if-nez v2, :cond_26

    .line 46
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->requireExplicitPolicyMapping:Ljava/math/BigInteger;

    .line 40
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 48
    :cond_26
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_38

    .line 50
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    goto :goto_23

    .line 54
    :cond_38
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unknown tag encountered."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    .end local v1    # "to":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_41
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 3
    .param p1, "requireExplicitPolicyMapping"    # Ljava/math/BigInteger;
    .param p2, "inhibitPolicyMapping"    # Ljava/math/BigInteger;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->requireExplicitPolicyMapping:Ljava/math/BigInteger;

    .line 35
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    .line 36
    return-void
.end method

.method public static fromExtensions(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;
    .registers 2
    .param p0, "extensions"    # Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    .prologue
    .line 77
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 62
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;

    if-eqz v0, :cond_8

    .line 64
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 67
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    if-eqz p0, :cond_14

    .line 69
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 72
    :cond_14
    return-object v1
.end method


# virtual methods
.method public getInhibitPolicyMapping()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getRequireExplicitPolicyMapping()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->requireExplicitPolicyMapping:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 92
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 94
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->requireExplicitPolicyMapping:Ljava/math/BigInteger;

    if-eqz v1, :cond_19

    .line 96
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->requireExplicitPolicyMapping:Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 99
    :cond_19
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    if-eqz v1, :cond_2d

    .line 101
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    const/4 v3, 0x1

    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 104
    :cond_2d
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
