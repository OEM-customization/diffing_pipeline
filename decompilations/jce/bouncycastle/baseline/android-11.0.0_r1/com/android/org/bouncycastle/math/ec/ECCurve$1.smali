.class Lcom/android/org/bouncycastle/math/ec/ECCurve$1;
.super Ljava/lang/Object;
.source "ECCurve.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/ECLookupTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/math/ec/ECCurve;->createCacheSafeLookupTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/org/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field final synthetic blacklist val$FE_BYTES:I

.field final synthetic blacklist val$len:I

.field final synthetic blacklist val$table:[B


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;II[B)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 501
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->val$len:I

    iput p3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getSize()I
    .registers 2

    .line 504
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->val$len:I

    return v0
.end method

.method public blacklist lookup(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 12
    .param p1, "index"    # I

    .line 509
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v1, v0, [B

    .local v1, "x":[B
    new-array v0, v0, [B

    .line 510
    .local v0, "y":[B
    const/4 v2, 0x0

    .line 512
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->val$len:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_38

    .line 514
    xor-int v4, v3, p1

    sub-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x1f

    .line 516
    .local v4, "MASK":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_13
    iget v6, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    if-ge v5, v6, :cond_32

    .line 518
    aget-byte v7, v1, v5

    iget-object v8, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    add-int v9, v2, v5

    aget-byte v9, v8, v9

    and-int/2addr v9, v4

    xor-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, v1, v5

    .line 519
    aget-byte v7, v0, v5

    add-int/2addr v6, v2

    add-int/2addr v6, v5

    aget-byte v6, v8, v6

    and-int/2addr v6, v4

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 516
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 522
    .end local v5    # "j":I
    :cond_32
    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    .line 512
    .end local v4    # "MASK":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 525
    .end local v3    # "i":I
    :cond_38
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method
