.class Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves$14;
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

    .line 308
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 11

    .line 311
    const-string v0, "155555555555555555555555610C0B196812BFB6288A3EA3"

    # invokes: Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    .line 312
    .local v0, "n":Ljava/math/BigInteger;
    const-wide/16 v1, 0x6

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .line 314
    .local v8, "h":Ljava/math/BigInteger;
    new-instance v9, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 317
    const-string v1, "6C01074756099122221056911C77D77E77A777E7E7E77FCB"

    # invokes: Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    .line 318
    const-string v1, "71FE1AF926CF847989EFEF8DB459F66394D90F32AD3F15E8"

    # invokes: Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    const/16 v2, 0xbf

    const/16 v3, 0x9

    move-object v1, v9

    move-object v6, v0

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 314
    # invokes: Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->configureCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->access$100(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 321
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string v2, "03375D4CE24FDE434489DE8746E71786015009E66E38A926DD"

    # invokes: Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->configureBasepoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;->access$200(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v2

    .line 324
    .local v2, "G":Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    invoke-direct {v3, v1, v2, v0, v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v3
.end method
