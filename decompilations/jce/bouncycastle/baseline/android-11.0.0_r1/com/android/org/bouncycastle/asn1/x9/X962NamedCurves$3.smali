.class Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves$3;
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

    .line 65
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 13

    .line 68
    new-instance v4, Ljava/math/BigInteger;

    const-string v0, "ffffffffffffffffffffffff7a62d031c83f4294f640ec13"

    const/16 v1, 0x10

    invoke-direct {v4, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 69
    .local v4, "n":Ljava/math/BigInteger;
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    .line 71
    .local v11, "h":Ljava/math/BigInteger;
    new-instance v6, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    new-instance v2, Ljava/math/BigInteger;

    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF"

    invoke-direct {v2, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v0, "fffffffffffffffffffffffffffffffefffffffffffffffc"

    invoke-direct {v3, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v0, "22123dc2395a05caa7423daeccc94760a7d462256bd56916"

    invoke-direct {v5, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v0, v6

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 77
    .local v0, "cFp192v3":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    new-instance v7, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    .line 80
    const-string v2, "027d29778100c65a1da1783716588dce2b8b4aee8e228f1896"

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v7, v0, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V

    .line 82
    const-string v2, "c469684435deb378c4b65ca9591e2a5763059a2e"

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v10

    move-object v5, v1

    move-object v8, v4

    move-object v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 77
    return-object v1
.end method