.class public Lcom/android/org/bouncycastle/asn1/cms/Attributes;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "Attributes.java"


# instance fields
.field private attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 3
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSet;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DLSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 37
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .registers 2
    .param p1, "set"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 32
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/Attributes;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 54
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;

    if-eqz v0, :cond_8

    .line 56
    check-cast p0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 58
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    if-eqz p0, :cond_14

    .line 60
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/cms/Attributes;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    return-object v0

    .line 63
    :cond_14
    return-object v1
.end method


# virtual methods
.method public getAttributes()[Lcom/android/org/bouncycastle/asn1/cms/Attribute;
    .registers 4

    .prologue
    .line 68
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    new-array v1, v2, [Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    .line 70
    .local v1, "rv":[Lcom/android/org/bouncycastle/asn1/cms/Attribute;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    array-length v2, v1

    if-eq v0, v2, :cond_1b

    .line 72
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    move-result-object v2

    aput-object v2, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 75
    :cond_1b
    return-object v1
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method
