.class Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier$1;
.super Ljava/lang/Object;
.source "WTauNafMultiplier.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;->multiplyFromWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$a:B

.field final synthetic blacklist val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;B)V
    .registers 3

    .line 81
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier$1;->val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    iput-byte p2, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier$1;->val$a:B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist precompute(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .registers 5
    .param p1, "existing"    # Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    .line 84
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    if-eqz v0, :cond_5

    .line 86
    return-object p1

    .line 89
    :cond_5
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;-><init>()V

    .line 90
    .local v0, "result":Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier$1;->val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    iget-byte v2, p0, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier$1;->val$a:B

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getPreComp(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;B)[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;)V

    .line 91
    return-object v0
.end method
