.class Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves$7;
.super Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "X962NamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 159
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 12

    .line 162
    const-string v0, "ffffffff00000000ffffffffffffffffbce6faada7179e84f3b9cac2fc632551"

    # invokes: Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    .line 163
    .local v0, "n":Ljava/math/BigInteger;
    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    .line 165
    .local v7, "h":Ljava/math/BigInteger;
    new-instance v8, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    new-instance v2, Ljava/math/BigInteger;

    const-string v1, "115792089210356248762697446949407573530086143415290314195533631308867097853951"

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 167
    const-string v1, "ffffffff00000001000000000000000000000000fffffffffffffffffffffffc"

    # invokes: Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    .line 168
    const-string v1, "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b"

    # invokes: Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    move-object v1, v8

    move-object v5, v0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 165
    # invokes: Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->configureCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->access$100(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v8

    .line 171
    .local v8, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string v1, "036b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    # invokes: Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->configureBasepoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    invoke-static {v8, v1}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->access$200(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v9

    .line 174
    .local v9, "G":Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    const-string v1, "c49d360886e704936a6678e1139d26b7819f7e90"

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v6

    move-object v1, v10

    move-object v2, v8

    move-object v3, v9

    move-object v4, v0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v10
.end method
