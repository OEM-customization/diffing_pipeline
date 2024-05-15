.class public Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "BasicConstraints.java"


# instance fields
.field blacklist cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

.field blacklist pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 5
    .param p1, "pathLenConstraint"    # I

    .line 109
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 110
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    .line 111
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 112
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 57
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    .line 22
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 58
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-nez v2, :cond_18

    .line 60
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    .line 61
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_55

    .line 65
    :cond_18
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz v2, :cond_2b

    .line 67
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_37

    .line 71
    :cond_2b
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    .line 72
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 74
    :goto_37
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_55

    .line 76
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_4d

    .line 78
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_55

    .line 82
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong sequence in constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_55
    :goto_55
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 4
    .param p1, "cA"    # Z

    .line 90
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 91
    if-eqz p1, :cond_17

    .line 93
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_19

    .line 97
    :cond_17
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    .line 99
    :goto_19
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 100
    return-void
.end method

.method public static blacklist fromExtensions(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    .registers 2
    .param p0, "extensions"    # Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    .line 52
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/org/bouncycastle/asn1/x509/Extensions;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    .registers 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 28
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 34
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    if-eqz v0, :cond_8

    .line 36
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    return-object v0

    .line 38
    :cond_8
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    if-eqz v0, :cond_18

    .line 40
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->convertValueToObject(Lcom/android/org/bouncycastle/asn1/x509/X509Extension;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v0

    return-object v0

    .line 42
    :cond_18
    if-eqz p0, :cond_24

    .line 44
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 47
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getPathLenConstraint()Ljava/math/BigInteger;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_9

    .line 123
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 126
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isCA()Z
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 140
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 142
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->cA:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz v1, :cond_d

    .line 144
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 147
    :cond_d
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_14

    .line 149
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 152
    :cond_14
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-string v1, "BasicConstraints: isCa("

    if-nez v0, :cond_1f

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 161
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), pathLenConstraint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
