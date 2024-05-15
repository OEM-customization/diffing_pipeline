.class public Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;
.super Ljava/lang/Object;
.source "WTauNafPreCompInfo.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 7
    return-void
.end method


# virtual methods
.method public getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object v0
.end method

.method public setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;)V
    .registers 2
    .param p1, "preComp"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 23
    return-void
.end method
