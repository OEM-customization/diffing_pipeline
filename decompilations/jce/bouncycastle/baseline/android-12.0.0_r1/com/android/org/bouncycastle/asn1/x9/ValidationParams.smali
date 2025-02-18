.class public Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "ValidationParams.java"


# instance fields
.field private blacklist pgenCounter:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private blacklist seed:Lcom/android/org/bouncycastle/asn1/DERBitString;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 77
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->seed:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->pgenCounter:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 85
    return-void

    .line 80
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/DERBitString;Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V
    .registers 5
    .param p1, "seed"    # Lcom/android/org/bouncycastle/asn1/DERBitString;
    .param p2, "pgenCounter"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 62
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 63
    if-eqz p1, :cond_14

    .line 67
    if-eqz p2, :cond_c

    .line 72
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->seed:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 73
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->pgenCounter:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 74
    return-void

    .line 69
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'pgenCounter\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'seed\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>([BI)V
    .registers 6
    .param p1, "seed"    # [B
    .param p2, "pgenCounter"    # I

    .line 51
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 52
    if-eqz p1, :cond_15

    .line 57
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->seed:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 58
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->pgenCounter:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 59
    return-void

    .line 54
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'seed\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;
    .registers 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 33
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 38
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    if-eqz v0, :cond_8

    .line 40
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    return-object v0

    .line 42
    :cond_8
    if-eqz p0, :cond_14

    .line 44
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 47
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getPgenCounter()Ljava/math/BigInteger;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->pgenCounter:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSeed()[B
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->seed:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 99
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 100
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->seed:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 101
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->pgenCounter:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 102
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
