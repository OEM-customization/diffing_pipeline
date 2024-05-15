.class public Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "NameConstraints.java"


# instance fields
.field private excluded:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

.field private permitted:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 35
    .local v0, "e":Ljava/util/Enumeration;
    :goto_8
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 37
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 38
    .local v1, "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_52

    .line 47
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown tag encountered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    :pswitch_3b
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->createArray(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    goto :goto_8

    .line 44
    :pswitch_46
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->createArray(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    goto :goto_8

    .line 50
    .end local v1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_51
    return-void

    .line 38
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_46
    .end packed-switch
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .registers 4
    .param p1, "permitted"    # [Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .param p2, "excluded"    # [Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 67
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->cloneSubtree([Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 68
    invoke-static {p2}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->cloneSubtree([Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 69
    return-void
.end method

.method private static cloneSubtree([Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .registers 4
    .param p0, "subtrees"    # [Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 116
    if-eqz p0, :cond_c

    .line 118
    array-length v1, p0

    new-array v0, v1, [Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 120
    .local v0, "rv":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    return-object v0

    .line 125
    .end local v0    # "rv":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    :cond_c
    return-object v1
.end method

.method private createArray(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .registers 5
    .param p1, "subtree"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v0, v2, [Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    .line 75
    .local v0, "ar":[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-eq v1, v2, :cond_17

    .line 77
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v2

    aput-object v2, v0, v1

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 80
    :cond_17
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 20
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;

    if-eqz v0, :cond_8

    .line 22
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 24
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    if-eqz p0, :cond_14

    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 29
    :cond_14
    return-object v1
.end method


# virtual methods
.method public getExcludedSubtrees()[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->cloneSubtree([Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    return-object v0
.end method

.method public getPermittedSubtrees()[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->cloneSubtree([Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 99
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 101
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    if-eqz v1, :cond_19

    .line 103
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 106
    :cond_19
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    if-eqz v1, :cond_2d

    .line 108
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v3, 0x1

    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 111
    :cond_2d
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
