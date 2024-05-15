.class Lcom/android/org/bouncycastle/math/ec/ECPoint$1;
.super Ljava/lang/Object;
.source "ECPoint.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/math/ec/ECPoint;->implIsValid(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field final synthetic blacklist val$checkOrder:Z

.field final synthetic blacklist val$decompressed:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;ZZ)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 299
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$1;->this$0:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    iput-boolean p2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$1;->val$decompressed:Z

    iput-boolean p3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$1;->val$checkOrder:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist precompute(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .registers 4
    .param p1, "existing"    # Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    .line 302
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 303
    .local v0, "info":Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;
    :goto_9
    if-nez v0, :cond_11

    .line 305
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;-><init>()V

    move-object v0, v1

    .line 308
    :cond_11
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->hasFailed()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 310
    return-object v0

    .line 312
    :cond_18
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->hasCurveEquationPassed()Z

    move-result v1

    if-nez v1, :cond_31

    .line 314
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$1;->val$decompressed:Z

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$1;->this$0:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->satisfiesCurveEquation()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 316
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->reportFailed()V

    .line 317
    return-object v0

    .line 319
    :cond_2e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->reportCurveEquationPassed()V

    .line 321
    :cond_31
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$1;->val$checkOrder:Z

    if-eqz v1, :cond_4a

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->hasOrderPassed()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 323
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$1;->this$0:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->satisfiesOrder()Z

    move-result v1

    if-nez v1, :cond_47

    .line 325
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->reportFailed()V

    .line 326
    return-object v0

    .line 328
    :cond_47
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->reportOrderPassed()V

    .line 330
    :cond_4a
    return-object v0
.end method
