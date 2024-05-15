.class public Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field public static final GNB:I = 0x1

.field public static final PPB:I = 0x3

.field public static final TPB:I = 0x2


# instance fields
.field private ks:[I

.field private m:I

.field private representation:I

.field private x:Lcom/android/org/bouncycastle/math/ec/LongArray;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;)V
    .registers 11
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "x"    # Ljava/math/BigInteger;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 554
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    .line 561
    if-eqz p5, :cond_f

    invoke-virtual {p5}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_18

    .line 563
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x value invalid in F2m field element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_18
    invoke-virtual {p5}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p1, :cond_f

    .line 566
    if-nez p3, :cond_34

    if-nez p4, :cond_34

    .line 568
    iput v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 569
    new-array v0, v2, [I

    aput p2, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 587
    :goto_2a
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 588
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v0, p5}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    .line 589
    return-void

    .line 573
    :cond_34
    if-lt p3, p4, :cond_3f

    .line 575
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 576
    const-string/jumbo v1, "k2 must be smaller than k3"

    .line 575
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_3f
    if-gtz p3, :cond_4a

    .line 580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 581
    const-string/jumbo v1, "k2 must be larger than 0"

    .line 580
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_4a
    iput v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 584
    new-array v0, v4, [I

    aput p2, v0, v1

    aput p3, v0, v2

    aput p4, v0, v3

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    goto :goto_2a
.end method

.method public constructor <init>(IILjava/math/BigInteger;)V
    .registers 10
    .param p1, "m"    # I
    .param p2, "k"    # I
    .param p3, "x"    # Ljava/math/BigInteger;

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    .line 604
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    .line 605
    return-void
.end method

.method private constructor <init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V
    .registers 6
    .param p1, "m"    # I
    .param p2, "ks"    # [I
    .param p3, "x"    # Lcom/android/org/bouncycastle/math/ec/LongArray;

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    .line 609
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 610
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    const/4 v0, 0x2

    :goto_a
    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 611
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 612
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    .line 613
    return-void

    .line 610
    :cond_11
    const/4 v0, 0x3

    goto :goto_a
.end method

.method public static checkFieldElements(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 6
    .param p0, "a"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 665
    instance-of v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    if-eqz v2, :cond_a

    instance-of v2, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_13

    .line 667
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Field elements are not both instances of ECFieldElement.F2m"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    move-object v0, p0

    .line 671
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .local v0, "aF2m":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    move-object v1, p1

    .line 672
    check-cast v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 674
    .local v1, "bF2m":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-eq v2, v3, :cond_28

    .line 677
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "One of the F2m field elements has incorrect representation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 680
    :cond_28
    iget v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v2, v3, :cond_3a

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_43

    .line 682
    :cond_3a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Field elements are not elements of the same field F2m"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 684
    :cond_43
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 7
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 691
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/LongArray;

    .local v1, "iarrClone":Lcom/android/org/bouncycastle/math/ec/LongArray;
    move-object v0, p1

    .line 692
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 693
    .local v0, "bF2m":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/org/bouncycastle/math/ec/LongArray;I)V

    .line 694
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v2, v3, v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    return-object v2
.end method

.method public addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5

    .prologue
    .line 699
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addOne()Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public bitLength()I
    .registers 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v0

    return v0
.end method

.method public divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 746
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 747
    .local v0, "bInv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "anObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 858
    if-ne p1, p0, :cond_5

    .line 860
    const/4 v1, 0x1

    return v1

    .line 863
    :cond_5
    instance-of v2, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    if-nez v2, :cond_a

    .line 865
    return v1

    :cond_a
    move-object v0, p1

    .line 868
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 870
    .local v0, "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v3, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v2, v3, :cond_2b

    .line 871
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v3, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-ne v2, v3, :cond_2b

    .line 872
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result v2

    .line 870
    if-eqz v2, :cond_2b

    .line 873
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 870
    :cond_2b
    return v1
.end method

.method public getFieldName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 642
    const-string/jumbo v0, "F2m"

    return-object v0
.end method

.method public getFieldSize()I
    .registers 2

    .prologue
    .line 647
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public getK1()I
    .registers 3

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getK2()I
    .registers 3

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getK3()I
    .registers 3

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getM()I
    .registers 2

    .prologue
    .line 818
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public getRepresentation()I
    .registers 2

    .prologue
    .line 809
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 7

    .prologue
    .line 791
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->modInverse(I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public isOne()Z
    .registers 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->isOne()Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .registers 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->isZero()Z

    move-result v0

    return v0
.end method

.method public multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 9
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 717
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/org/bouncycastle/math/ec/LongArray;->modMultiply(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public multiplyMinusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 722
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 13
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 727
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    .local v1, "ax":Lcom/android/org/bouncycastle/math/ec/LongArray;
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    .local v2, "bx":Lcom/android/org/bouncycastle/math/ec/LongArray;
    check-cast p2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .end local p2    # "x":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, p2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    .local v3, "xx":Lcom/android/org/bouncycastle/math/ec/LongArray;
    check-cast p3, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .end local p3    # "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, p3, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    .line 729
    .local v5, "yx":Lcom/android/org/bouncycastle/math/ec/LongArray;
    iget v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v1, v2, v6, v7}, Lcom/android/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object v0

    .line 730
    .local v0, "ab":Lcom/android/org/bouncycastle/math/ec/LongArray;
    iget v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object v4

    .line 732
    .local v4, "xy":Lcom/android/org/bouncycastle/math/ec/LongArray;
    if-eq v0, v1, :cond_22

    if-ne v0, v2, :cond_28

    .line 734
    :cond_22
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ab":Lcom/android/org/bouncycastle/math/ec/LongArray;
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    .line 737
    .restart local v0    # "ab":Lcom/android/org/bouncycastle/math/ec/LongArray;
    :cond_28
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/org/bouncycastle/math/ec/LongArray;I)V

    .line 738
    iget v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, v6, v7}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduce(I[I)V

    .line 740
    new-instance v6, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v7, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v8, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v6, v7, v8, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    return-object v6
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 1

    .prologue
    .line 753
    return-object p0
.end method

.method public sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->isZero()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->isOne()Z

    move-result v0

    if-eqz v0, :cond_11

    .end local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    :cond_10
    :goto_10
    return-object p0

    .restart local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    :cond_11
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    goto :goto_10
.end method

.method public square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 7

    .prologue
    .line 758
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->modSquare(I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public squareMinusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 763
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 11
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 768
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    .local v1, "ax":Lcom/android/org/bouncycastle/math/ec/LongArray;
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .end local p1    # "x":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    .local v2, "xx":Lcom/android/org/bouncycastle/math/ec/LongArray;
    check-cast p2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .end local p2    # "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, p2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    .line 770
    .local v4, "yx":Lcom/android/org/bouncycastle/math/ec/LongArray;
    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v1, v5, v6}, Lcom/android/org/bouncycastle/math/ec/LongArray;->square(I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object v0

    .line 771
    .local v0, "aa":Lcom/android/org/bouncycastle/math/ec/LongArray;
    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    .line 773
    .local v3, "xy":Lcom/android/org/bouncycastle/math/ec/LongArray;
    if-ne v0, v1, :cond_22

    .line 775
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "aa":Lcom/android/org/bouncycastle/math/ec/LongArray;
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    .line 778
    .restart local v0    # "aa":Lcom/android/org/bouncycastle/math/ec/LongArray;
    :cond_22
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/org/bouncycastle/math/ec/LongArray;I)V

    .line 779
    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, v5, v6}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduce(I[I)V

    .line 781
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v5, v6, v7, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    return-object v5
.end method

.method public squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 8
    .param p1, "pow"    # I

    .prologue
    .line 786
    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    .end local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    :goto_3
    return-object p0

    .restart local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    :cond_4
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->modSquareN(II[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    move-object p0, v0

    goto :goto_3
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 705
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public testBitZero()Z
    .registers 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->testBitZero()Z

    move-result v0

    return v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
