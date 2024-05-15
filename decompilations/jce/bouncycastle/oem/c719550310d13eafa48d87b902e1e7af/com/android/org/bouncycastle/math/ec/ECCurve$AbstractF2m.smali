.class public abstract Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
.super Lcom/android/org/bouncycastle/math/ec/ECCurve;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractF2m"
.end annotation


# instance fields
.field private si:[Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>(IIII)V
    .registers 6
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I

    .prologue
    .line 703
    invoke-static {p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->buildField(IIII)Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;-><init>(Lcom/android/org/bouncycastle/math/field/FiniteField;)V

    .line 669
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->si:[Ljava/math/BigInteger;

    .line 704
    return-void
.end method

.method private static buildField(IIII)Lcom/android/org/bouncycastle/math/field/FiniteField;
    .registers 9
    .param p0, "m"    # I
    .param p1, "k1"    # I
    .param p2, "k2"    # I
    .param p3, "k3"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 673
    if-nez p1, :cond_f

    .line 675
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "k1 must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_f
    if-nez p2, :cond_29

    .line 680
    if-eqz p3, :cond_1c

    .line 682
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "k3 must be 0 if k2 == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_1c
    new-array v0, v4, [I

    aput v1, v0, v1

    aput p1, v0, v2

    aput p0, v0, v3

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/field/FiniteFields;->getBinaryExtensionField([I)Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;

    move-result-object v0

    return-object v0

    .line 688
    :cond_29
    if-gt p2, p1, :cond_34

    .line 690
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "k2 must be > k1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_34
    if-gt p3, p2, :cond_3f

    .line 695
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "k3 must be > k2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_3f
    const/4 v0, 0x5

    new-array v0, v0, [I

    aput v1, v0, v1

    aput p1, v0, v2

    aput p2, v0, v3

    aput p3, v0, v4

    const/4 v1, 0x4

    aput p0, v0, v1

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/field/FiniteFields;->getBinaryExtensionField([I)Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;

    move-result-object v0

    return-object v0
.end method

.method public static inverse(I[ILjava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .param p0, "m"    # I
    .param p1, "ks"    # [I
    .param p2, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 661
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, p0, p1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->modInverse(I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private solveQuadraticEquation(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 13
    .param p1, "beta"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 819
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 821
    return-object p1

    .line 824
    :cond_7
    sget-object v9, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 826
    .local v8, "zeroElement":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v2

    .line 827
    .local v2, "m":I
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 830
    .local v3, "rand":Ljava/util/Random;
    :cond_16
    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v2, v3}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {p0, v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 831
    .local v4, "t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v7, v8

    .line 832
    .local v7, "z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v5, p1

    .line 833
    .local v5, "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_22
    if-ge v1, v2, :cond_3b

    .line 835
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 836
    .local v6, "w2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v6, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 837
    invoke-virtual {v6, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 833
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 839
    .end local v6    # "w2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_3b
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v9

    if-nez v9, :cond_43

    .line 841
    const/4 v9, 0x0

    return-object v9

    .line 843
    :cond_43
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 845
    .local v0, "gamma":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v9

    if-nez v9, :cond_16

    .line 847
    return-object v7
.end method


# virtual methods
.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 9
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;
    .param p3, "withCompression"    # Z

    .prologue
    .line 713
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .local v0, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 715
    .local v1, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getCoordinateSystem()I

    move-result v2

    .line 717
    .local v2, "coord":I
    packed-switch v2, :pswitch_data_38

    .line 753
    :cond_f
    :goto_f
    invoke-virtual {p0, v0, v1, p3}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 722
    :pswitch_14
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 724
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 726
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 743
    :cond_2e
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    goto :goto_f

    .line 717
    nop

    :pswitch_data_38
    .packed-switch 0x5
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method protected decompressPoint(ILjava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 10
    .param p1, "yTilde"    # I
    .param p2, "X1"    # Ljava/math/BigInteger;

    .prologue
    const/4 v5, 0x1

    .line 767
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .local v1, "x":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v2, 0x0

    .line 768
    .local v2, "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 770
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 800
    .end local v2    # "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_14
    :goto_14
    if-nez v2, :cond_61

    .line 802
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Invalid point compression"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 774
    .restart local v2    # "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_1f
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 775
    .local v0, "beta":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->solveQuadraticEquation(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 776
    .local v3, "z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v3, :cond_14

    .line 778
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v6

    if-ne p1, v5, :cond_5a

    move v4, v5

    :goto_48
    if-eq v6, v4, :cond_4e

    .line 780
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 783
    :cond_4e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getCoordinateSystem()I

    move-result v4

    packed-switch v4, :pswitch_data_66

    .line 793
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .local v2, "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_14

    .line 778
    .local v2, "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_5a
    const/4 v4, 0x0

    goto :goto_48

    .line 788
    :pswitch_5c
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .local v2, "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_14

    .line 805
    .end local v0    # "beta":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v2    # "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_61
    invoke-virtual {p0, v1, v2, v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 783
    :pswitch_data_66
    .packed-switch 0x5
        :pswitch_5c
        :pswitch_5c
    .end packed-switch
.end method

.method declared-synchronized getSi()[Ljava/math/BigInteger;
    .registers 2

    .prologue
    monitor-enter p0

    .line 857
    :try_start_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->si:[Ljava/math/BigInteger;

    if-nez v0, :cond_b

    .line 859
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getSi(Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->si:[Ljava/math/BigInteger;

    .line 861
    :cond_b
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->si:[Ljava/math/BigInteger;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isKoblitz()Z
    .registers 2

    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->order:Ljava/math/BigInteger;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->cofactor:Ljava/math/BigInteger;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v0

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x1

    goto :goto_1e

    :cond_21
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public isValidFieldElement(Ljava/math/BigInteger;)Z
    .registers 5
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    const/4 v0, 0x0

    .line 708
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ltz v1, :cond_14

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v2

    if-gt v1, v2, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method
