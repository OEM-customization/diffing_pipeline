.class final Lcom/android/org/bouncycastle/asn1/x9/X962NamedCurves$15;
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
    .line 336
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 11

    .prologue
    const/16 v4, 0x10

    .line 340
    new-instance v7, Ljava/math/BigInteger;

    const-string/jumbo v1, "0101BAF95C9723C57B6C21DA2EFF2D5ED588BDD5717E212F9D"

    invoke-direct {v7, v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 341
    .local v7, "c2m208w1n":Ljava/math/BigInteger;
    const-wide/32 v2, 0xfe48

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .line 343
    .local v8, "c2m208w1h":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 346
    new-instance v5, Ljava/math/BigInteger;

    const-string/jumbo v1, "0"

    invoke-direct {v5, v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 347
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v1, "00C8619ED45A62E6212E1160349E2BFA844439FAFC2A3FD1638F9E"

    invoke-direct {v6, v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 344
    const/16 v1, 0xd0

    .line 345
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x53

    .line 343
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 350
    .local v0, "c2m208w1":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    .line 352
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    .line 353
    const-string/jumbo v1, "0289FDFBE4ABE193DF9559ECF07AC0CE78554E2784EB8C1ED1A57A"

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 352
    invoke-direct {v6, v0, v1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V

    .line 355
    const/4 v9, 0x0

    move-object v5, v0

    .line 350
    invoke-direct/range {v4 .. v9}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v4
.end method
