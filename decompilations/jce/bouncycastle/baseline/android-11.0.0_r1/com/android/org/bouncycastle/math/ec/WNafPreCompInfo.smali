.class public Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
.super Ljava/lang/Object;
.source "WNafPreCompInfo.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected blacklist preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field protected blacklist preCompNeg:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field protected blacklist twice:Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 21
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 27
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->twice:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method


# virtual methods
.method public blacklist getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public blacklist getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public blacklist getTwice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->twice:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public blacklist setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2
    .param p1, "preComp"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 36
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 37
    return-void
.end method

.method public blacklist setPreCompNeg([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2
    .param p1, "preCompNeg"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 46
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 47
    return-void
.end method

.method public blacklist setTwice(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2
    .param p1, "twice"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 56
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->twice:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 57
    return-void
.end method
