.class public Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
.super Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field private static final F2M_DEFAULT_COORDS:I = 0x6


# instance fields
.field private infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

.field private k1:I

.field private k2:I

.field private k3:I

.field private m:I


# direct methods
.method protected constructor <init>(IIIILcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 11
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "a"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p6, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p7, "order"    # Ljava/math/BigInteger;
    .param p8, "cofactor"    # Ljava/math/BigInteger;

    .prologue
    const/4 v1, 0x0

    .line 1050
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    .line 1052
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    .line 1053
    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    .line 1054
    iput p3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    .line 1055
    iput p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    .line 1056
    iput-object p7, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    .line 1057
    iput-object p8, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    .line 1059
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, v1, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .line 1060
    iput-object p5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1061
    iput-object p6, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1062
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->coord:I

    .line 1063
    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 16
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "a"    # Ljava/math/BigInteger;
    .param p6, "b"    # Ljava/math/BigInteger;

    .prologue
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v8, v7

    .line 997
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 998
    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 11
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "a"    # Ljava/math/BigInteger;
    .param p6, "b"    # Ljava/math/BigInteger;
    .param p7, "order"    # Ljava/math/BigInteger;
    .param p8, "cofactor"    # Ljava/math/BigInteger;

    .prologue
    const/4 v1, 0x0

    .line 1033
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    .line 1035
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    .line 1036
    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    .line 1037
    iput p3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    .line 1038
    iput p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    .line 1039
    iput-object p7, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    .line 1040
    iput-object p8, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    .line 1042
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, v1, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .line 1043
    invoke-virtual {p0, p5}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1044
    invoke-virtual {p0, p6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1045
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->coord:I

    .line 1046
    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 14
    .param p1, "m"    # I
    .param p2, "k"    # I
    .param p3, "a"    # Ljava/math/BigInteger;
    .param p4, "b"    # Ljava/math/BigInteger;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    move-object v6, p4

    move-object v8, v7

    .line 938
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 939
    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 16
    .param p1, "m"    # I
    .param p2, "k"    # I
    .param p3, "a"    # Ljava/math/BigInteger;
    .param p4, "b"    # Ljava/math/BigInteger;
    .param p5, "order"    # Ljava/math/BigInteger;
    .param p6, "cofactor"    # Ljava/math/BigInteger;

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 966
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 967
    return-void
.end method


# virtual methods
.method protected cloneCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 10

    .prologue
    .line 1067
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    iget-object v8, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method protected createDefaultMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    .registers 2

    .prologue
    .line 1085
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1087
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;-><init>()V

    return-object v0

    .line 1090
    :cond_c
    invoke-super {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->createDefaultMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object v0

    return-object v0
.end method

.method protected createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "withCompression"    # Z

    .prologue
    .line 1105
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method protected createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 11
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "withCompression"    # Z

    .prologue
    .line 1110
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 8
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 1100
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-object v0
.end method

.method public getFieldSize()I
    .registers 2

    .prologue
    .line 1095
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method public getH()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    return-object v0
.end method

.method public getK1()I
    .registers 2

    .prologue
    .line 1135
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    return v0
.end method

.method public getK2()I
    .registers 2

    .prologue
    .line 1140
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    return v0
.end method

.method public getK3()I
    .registers 2

    .prologue
    .line 1145
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    return v0
.end method

.method public getM()I
    .registers 2

    .prologue
    .line 1120
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method public getN()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    return-object v0
.end method

.method public isTrinomial()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1130
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    if-nez v1, :cond_a

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public supportsCoordinateSystem(I)Z
    .registers 3
    .param p1, "coord"    # I

    .prologue
    .line 1072
    sparse-switch p1, :sswitch_data_8

    .line 1079
    const/4 v0, 0x0

    return v0

    .line 1077
    :sswitch_5
    const/4 v0, 0x1

    return v0

    .line 1072
    nop

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_5
        0x6 -> :sswitch_5
    .end sparse-switch
.end method
