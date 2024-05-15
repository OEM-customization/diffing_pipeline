.class Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$18;
.super Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "SECNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 520
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 20

    .line 523
    const/16 v9, 0x83

    .line 524
    .local v9, "m":I
    const/4 v10, 0x2

    .line 525
    .local v10, "k1":I
    const/4 v11, 0x3

    .line 526
    .local v11, "k2":I
    const/16 v12, 0x8

    .line 528
    .local v12, "k3":I
    const-string v0, "07A11B09A76B562144418FF3FF8C2570B8"

    # invokes: Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v13

    .line 529
    .local v13, "a":Ljava/math/BigInteger;
    const-string v0, "0217C05610884B63B9C6C7291678F9D341"

    # invokes: Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v14

    .line 530
    .local v14, "b":Ljava/math/BigInteger;
    const-string v0, "4D696E676875615175985BD3ADBADA21B43A97E2"

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v15

    .line 531
    .local v15, "S":[B
    const-string v0, "0400000000000000023123953A9464B54D"

    # invokes: Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v16

    .line 532
    .local v16, "n":Ljava/math/BigInteger;
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v17

    .line 534
    .local v17, "h":Ljava/math/BigInteger;
    new-instance v18, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    move-object/from16 v0, v18

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    # invokes: Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->configureCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-static/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->access$100(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 536
    .local v0, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string v1, "040081BAF91FDF9833C40F9C181343638399078C6E7EA38C001F73C8134B1B4EF9E150"

    # invokes: Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->configureBasepoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->access$200(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v7

    .line 539
    .local v7, "G":Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v8, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-object v1, v8

    move-object v2, v0

    move-object v3, v7

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v8
.end method
