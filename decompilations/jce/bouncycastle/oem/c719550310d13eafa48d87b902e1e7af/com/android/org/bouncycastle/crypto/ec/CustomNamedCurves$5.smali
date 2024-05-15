.class final Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$5;
.super Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "CustomNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 12

    .prologue
    const/4 v6, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/16 v9, 0x10

    .line 267
    const/4 v8, 0x0

    .line 268
    .local v8, "S":[B
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    .line 269
    new-instance v1, Ljava/math/BigInteger;

    const-string/jumbo v4, "7ae96a2b657c07106e64479eac3434e99cf0497512f58995c1396c28719501ee"

    invoke-direct {v1, v4, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 270
    new-instance v2, Ljava/math/BigInteger;

    const-string/jumbo v4, "5363ad4cc05c30e0a5261c028812645a122e22ea20816678df02967c1b23bd72"

    invoke-direct {v2, v4, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 271
    new-array v3, v6, [Ljava/math/BigInteger;

    .line 272
    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v5, "3086d221a7d46bcde86c90e49284eb15"

    invoke-direct {v4, v5, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v7

    .line 273
    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v5, "-e4437ed6010e88286f547fa90abfe4c3"

    invoke-direct {v4, v5, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v10

    .line 274
    new-array v4, v6, [Ljava/math/BigInteger;

    .line 275
    new-instance v5, Ljava/math/BigInteger;

    const-string/jumbo v6, "114ca50f7a8e2f3f657c1108d9d44cfd8"

    invoke-direct {v5, v6, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v5, v4, v7

    .line 276
    new-instance v5, Ljava/math/BigInteger;

    const-string/jumbo v6, "3086d221a7d46bcde86c90e49284eb15"

    invoke-direct {v5, v6, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v5, v4, v10

    .line 277
    new-instance v5, Ljava/math/BigInteger;

    const-string/jumbo v6, "3086d221a7d46bcde86c90e49284eb153dab"

    invoke-direct {v5, v6, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 278
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "e4437ed6010e88286f547fa90abfe4c42212"

    invoke-direct {v6, v7, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 279
    const/16 v7, 0x110

    .line 268
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 280
    .local v0, "glv":Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;-><init>()V

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->-wrap0(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 281
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    const-string/jumbo v1, "0479BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8"

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V

    .line 284
    .local v3, "G":Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v5

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method
