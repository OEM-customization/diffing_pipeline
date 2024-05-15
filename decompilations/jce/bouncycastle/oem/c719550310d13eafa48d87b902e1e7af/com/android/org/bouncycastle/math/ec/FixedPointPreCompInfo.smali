.class public Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;
.super Ljava/lang/Object;
.source "FixedPointPreCompInfo.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected offset:Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field protected preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field protected width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->offset:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 14
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->width:I

    .line 6
    return-void
.end method


# virtual methods
.method public getOffset()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->offset:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->width:I

    return v0
.end method

.method public setOffset(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2
    .param p1, "offset"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->offset:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 31
    return-void
.end method

.method public setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2
    .param p1, "preComp"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 41
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->width:I

    .line 51
    return-void
.end method
