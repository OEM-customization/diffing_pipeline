.class public Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X962Parameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private blacklist params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Null;)V
    .registers 3
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Null;

    .line 72
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 73
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 3
    .param p1, "namedCurve"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 66
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 67
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 3
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 81
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 82
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 83
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;)V
    .registers 3
    .param p1, "ecParameters"    # Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    .line 60
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 61
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 62
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    .registers 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 55
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 26
    if-eqz p0, :cond_49

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    if-eqz v0, :cond_7

    goto :goto_49

    .line 31
    :cond_7
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v0, :cond_14

    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    move-object v1, p0

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    return-object v0

    .line 36
    :cond_14
    instance-of v0, p0, [B

    if-eqz v0, :cond_41

    .line 40
    :try_start_18
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    move-object v1, p0

    check-cast v1, [B

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_24} :catch_25

    return-object v0

    .line 42
    :catch_25
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to parse encoded data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_49
    :goto_49
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    return-object v0
.end method


# virtual methods
.method public blacklist getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public blacklist isImplicitlyCA()Z
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1Null;

    return v0
.end method

.method public blacklist isNamedCurve()Z
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->params:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method