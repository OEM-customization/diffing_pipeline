.class final Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$22;
.super Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "SECNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 16

    .prologue
    .line 656
    const/16 v1, 0xa3

    .line 657
    .local v1, "m":I
    const/4 v2, 0x3

    .line 658
    .local v2, "k1":I
    const/4 v3, 0x6

    .line 659
    .local v3, "k2":I
    const/4 v4, 0x7

    .line 661
    .local v4, "k3":I
    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 662
    .local v5, "a":Ljava/math/BigInteger;
    const-string/jumbo v0, "020A601907B8C953CA1481EB10512F78744A3205FD"

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap0(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    .line 663
    .local v6, "b":Ljava/math/BigInteger;
    const-string/jumbo v0, "85E25BFE5C86226CDB12016F7553F9D0E693A268"

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v14

    .line 664
    .local v14, "S":[B
    const-string/jumbo v0, "040000000000000000000292FE77E70C12A4234C33"

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap0(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    .line 665
    .local v7, "n":Ljava/math/BigInteger;
    const-wide/16 v12, 0x2

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .line 667
    .local v8, "h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->-wrap2(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v10

    .line 670
    .local v10, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v11, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    const-string/jumbo v0, "0403F0EBA16286A2D57EA0991168D4994637E8343E3600D51FBC6C71A0094FA2CDD545B11C5C0C797324F1"

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v11, v10, v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V

    .line 674
    .local v11, "G":Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-object v12, v7

    move-object v13, v8

    invoke-direct/range {v9 .. v14}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v9
.end method
