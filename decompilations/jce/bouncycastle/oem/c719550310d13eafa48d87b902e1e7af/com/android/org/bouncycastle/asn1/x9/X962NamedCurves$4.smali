.class final Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves$4;
.super Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "X962NamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 9

    .prologue
    const/16 v7, 0x10

    .line 88
    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v1, "7fffffffffffffffffffffff7fffff9e5e9a9f5d9071fbd1522688909d0b"

    invoke-direct {v4, v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 89
    .local v4, "n":Ljava/math/BigInteger;
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 91
    .local v5, "h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    .line 92
    new-instance v1, Ljava/math/BigInteger;

    const-string/jumbo v2, "883423532389192164791648750360308885314476597252960362792450860609699839"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 93
    new-instance v2, Ljava/math/BigInteger;

    const-string/jumbo v3, "7fffffffffffffffffffffff7fffffffffff8000000000007ffffffffffc"

    invoke-direct {v2, v3, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 94
    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v6, "6b016c3bdcf18941d0d654921475ca71a9db2fb27d1d37796185c2942c0a"

    invoke-direct {v3, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 91
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 97
    .local v0, "cFp239v1":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    .line 99
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    .line 100
    const-string/jumbo v2, "020ffa963cdca8816ccc33b8642bedf905c3d358573d3f27fbbd3b3cb9aaaf"

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 99
    invoke-direct {v3, v0, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V

    .line 102
    const-string/jumbo v2, "e43bb460f0b80cc0c0b075798e948060f8321b7d"

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v6

    move-object v2, v0

    .line 97
    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method
