.class public Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "GCMParameters.java"


# instance fields
.field private icvLen:I

.field private nonce:[B


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->nonce:[B

    .line 61
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->icvLen:I

    .line 69
    :goto_2c
    return-void

    .line 67
    :cond_2d
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->icvLen:I

    goto :goto_2c
.end method

.method public constructor <init>([BI)V
    .registers 4
    .param p1, "nonce"    # [B
    .param p2, "icvLen"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 75
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->nonce:[B

    .line 76
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->icvLen:I

    .line 77
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 44
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    if-eqz v0, :cond_8

    .line 46
    check-cast p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 48
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    if-eqz p0, :cond_14

    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 53
    :cond_14
    return-object v1
.end method


# virtual methods
.method public getIcvLen()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->icvLen:I

    return v0
.end method

.method public getNonce()[B
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->nonce:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .prologue
    .line 91
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 93
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->nonce:[B

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 95
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->icvLen:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_20

    .line 97
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->icvLen:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 100
    :cond_20
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
