.class public Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X9ECPoint.java"


# instance fields
.field private blacklist c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field private final blacklist encoding:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

.field private blacklist p:Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 4
    .param p1, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "s"    # Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 50
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V
    .registers 5
    .param p1, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "encoding"    # [B

    .line 41
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 43
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-static {p2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 3
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Z)V

    .line 28
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Z)V
    .registers 5
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "compressed"    # Z

    .line 33
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 36
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist getPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    monitor-enter p0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    if-nez v0, :cond_17

    .line 62
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 65
    .end local p0    # "this":Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    :cond_17
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->p:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v0

    .line 59
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getPointEncoding()[B
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist isPointCompressed()Z
    .registers 5

    .line 70
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    .line 71
    .local v0, "octets":[B
    const/4 v1, 0x0

    if-eqz v0, :cond_17

    array-length v2, v0

    if-lez v2, :cond_17

    aget-byte v2, v0, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_16

    aget-byte v2, v0, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_17

    :cond_16
    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->encoding:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method
