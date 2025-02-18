.class public Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "KeyUsage.java"


# static fields
.field public static final cRLSign:I = 0x2

.field public static final dataEncipherment:I = 0x10

.field public static final decipherOnly:I = 0x8000

.field public static final digitalSignature:I = 0x80

.field public static final encipherOnly:I = 0x1

.field public static final keyAgreement:I = 0x8

.field public static final keyCertSign:I = 0x4

.field public static final keyEncipherment:I = 0x20

.field public static final nonRepudiation:I = 0x40


# instance fields
.field private bitString:Lcom/android/org/bouncycastle/asn1/DERBitString;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "usage"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 68
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>(I)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 69
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/DERBitString;)V
    .registers 2
    .param p1, "bitString"    # Lcom/android/org/bouncycastle/asn1/DERBitString;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 75
    return-void
.end method

.method public static fromExtensions(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;
    .registers 2
    .param p0, "extensions"    # Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    .prologue
    .line 55
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 41
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;

    if-eqz v0, :cond_8

    .line 43
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 45
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    if-eqz p0, :cond_14

    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;-><init>(Lcom/android/org/bouncycastle/asn1/DERBitString;)V

    return-object v0

    .line 50
    :cond_14
    return-object v1
.end method


# virtual methods
.method public getBytes()[B
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getPadBits()I
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v0

    return v0
.end method

.method public hasUsages(I)Z
    .registers 3
    .param p1, "usages"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->intValue()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyUsage;->bitString:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    .line 102
    .local v0, "data":[B
    array-length v1, v0

    if-ne v1, v4, :cond_28

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KeyUsage: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 106
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KeyUsage: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
