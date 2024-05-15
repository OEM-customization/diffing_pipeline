.class public abstract Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractF2m"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 516
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist halfTrace()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 6

    .line 520
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->getFieldSize()I

    move-result v0

    .line 521
    .local v0, "m":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1a

    .line 526
    move-object v1, p0

    .line 527
    .local v1, "fe":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v2, v1

    .line 528
    .local v2, "ht":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_b
    if-ge v3, v0, :cond_19

    .line 530
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 531
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 528
    add-int/lit8 v3, v3, 0x2

    goto :goto_b

    .line 534
    .end local v3    # "i":I
    :cond_19
    return-object v2

    .line 523
    .end local v1    # "fe":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v2    # "ht":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Half-trace only defined for odd m"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist trace()I
    .registers 6

    .line 539
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->getFieldSize()I

    move-result v0

    .line 540
    .local v0, "m":I
    move-object v1, p0

    .line 541
    .local v1, "fe":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v2, v1

    .line 542
    .local v2, "tr":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_7
    if-ge v3, v0, :cond_14

    .line 544
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 545
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 542
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 547
    .end local v3    # "i":I
    :cond_14
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 549
    const/4 v3, 0x0

    return v3

    .line 551
    :cond_1c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 553
    const/4 v3, 0x1

    return v3

    .line 555
    :cond_24
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Internal error in trace calculation"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
