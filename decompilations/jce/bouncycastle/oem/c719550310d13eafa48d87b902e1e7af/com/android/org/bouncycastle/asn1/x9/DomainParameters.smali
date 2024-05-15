.class public Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "DomainParameters.java"


# instance fields
.field private final g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private final j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private final p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private final q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private final validationParams:Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v4, 0x0

    .line 105
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 107
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_12

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_30

    .line 109
    :cond_12
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad sequence size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_30
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 113
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 114
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 115
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 117
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 119
    .local v1, "next":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v1, :cond_73

    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_73

    .line 121
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 122
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 129
    :goto_66
    if-eqz v1, :cond_76

    .line 131
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    .line 137
    :goto_72
    return-void

    .line 126
    :cond_73
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_66

    .line 135
    :cond_76
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    goto :goto_72
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;)V
    .registers 8
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "j"    # Ljava/math/BigInteger;
    .param p5, "validationParams"    # Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 77
    if-nez p1, :cond_f

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'p\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_f
    if-nez p2, :cond_1a

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'g\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1a
    if-nez p3, :cond_25

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'q\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_25
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 91
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 92
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 94
    if-eqz p4, :cond_46

    .line 96
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 102
    :goto_43
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    .line 103
    return-void

    .line 100
    :cond_46
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_43
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;
    .registers 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 53
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;

    if-eqz v0, :cond_8

    .line 55
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 57
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    if-eqz p0, :cond_14

    .line 59
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 62
    :cond_14
    return-object v1
.end method

.method private static getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2
    .param p0, "e"    # Ljava/util/Enumeration;

    .prologue
    .line 141
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getJ()Ljava/math/BigInteger;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-nez v0, :cond_6

    .line 183
    return-object v1

    .line 186
    :cond_6
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getValidationParams()Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .prologue
    .line 206
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 207
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->p:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 208
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->g:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 209
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->q:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 211
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1d

    .line 213
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->j:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 216
    :cond_1d
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    if-eqz v1, :cond_26

    .line 218
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->validationParams:Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 221
    :cond_26
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
