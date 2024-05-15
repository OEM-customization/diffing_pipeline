.class public Lcom/android/org/bouncycastle/x509/X509Attribute;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X509Attribute.java"


# instance fields
.field attr:Lcom/android/org/bouncycastle/asn1/x509/Attribute;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "at"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 41
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v2, p2}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 6
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v2, p2}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    .line 56
    return-void
.end method


# virtual methods
.method public getOID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->getAttrType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValues()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5

    .prologue
    .line 65
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->getAttrValues()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    .line 66
    .local v1, "s":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    new-array v2, v3, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 68
    .local v2, "values":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v0, v3, :cond_1c

    .line 70
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 73
    :cond_1c
    return-object v2
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
