.class public Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
.super Ljava/lang/Object;
.source "WNafPreCompInfo.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field protected preCompNeg:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field protected twice:Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 19
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 25
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->twice:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 7
    return-void
.end method


# virtual methods
.method public getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getTwice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->twice:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2
    .param p1, "preComp"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 35
    return-void
.end method

.method public setPreCompNeg([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2
    .param p1, "preCompNeg"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 45
    return-void
.end method

.method public setTwice(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2
    .param p1, "twice"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->twice:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 55
    return-void
.end method
