.class public Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "AttCertIssuer.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field choiceObj:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

.field obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V
    .registers 3
    .param p1, "names"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 62
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->choiceObj:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/V2Form;)V
    .registers 5
    .param p1, "v2Form"    # Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 69
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v2, v2, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->choiceObj:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 70
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;
    .registers 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 21
    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    if-eqz v0, :cond_9

    .line 23
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 25
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_9
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    if-eqz v0, :cond_17

    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;-><init>(Lcom/android/org/bouncycastle/asn1/x509/V2Form;)V

    return-object v0

    .line 29
    :cond_17
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_23

    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    return-object v0

    .line 33
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_23
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_34

    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0    # "obj":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;-><init>(Lcom/android/org/bouncycastle/asn1/x509/V2Form;)V

    return-object v0

    .line 37
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_34
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_42

    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    return-object v0

    .line 42
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getIssuer()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->choiceObj:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method
