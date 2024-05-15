.class Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;
.super Ljava/lang/Object;
.source "ECCurve.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/ECLookupTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->createCacheSafeLookupTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/org/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

.field final synthetic blacklist val$FE_LONGS:I

.field final synthetic blacklist val$ks:[I

.field final synthetic blacklist val$len:I

.field final synthetic blacklist val$table:[J


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;II[J[I)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 1267
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$len:I

    iput p3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    iput-object p5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$ks:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getSize()I
    .registers 2

    .line 1270
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$len:I

    return v0
.end method

.method public blacklist lookup(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 15
    .param p1, "index"    # I

    .line 1275
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .local v0, "x":[J
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v1

    .line 1276
    .local v1, "y":[J
    const/4 v2, 0x0

    .line 1278
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$len:I

    if-ge v3, v4, :cond_3e

    .line 1280
    xor-int v4, v3, p1

    add-int/lit8 v4, v4, -0x1

    shr-int/lit8 v4, v4, 0x1f

    int-to-long v4, v4

    .line 1282
    .local v4, "MASK":J
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1a
    iget v7, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    if-ge v6, v7, :cond_38

    .line 1284
    aget-wide v8, v0, v6

    iget-object v10, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    add-int v11, v2, v6

    aget-wide v11, v10, v11

    and-long/2addr v11, v4

    xor-long/2addr v8, v11

    aput-wide v8, v0, v6

    .line 1285
    aget-wide v8, v1, v6

    add-int/2addr v7, v2

    add-int/2addr v7, v6

    aget-wide v10, v10, v7

    and-long/2addr v10, v4

    xor-long v7, v8, v10

    aput-wide v7, v1, v6

    .line 1282
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 1288
    .end local v6    # "j":I
    :cond_38
    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v2, v7

    .line 1278
    .end local v4    # "MASK":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1291
    .end local v3    # "i":I
    :cond_3e
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    new-instance v4, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    # getter for: Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I
    invoke-static {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->access$000(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;)I

    move-result v5

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$ks:[I

    new-instance v7, Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    invoke-direct {v4, v5, v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    new-instance v5, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    # getter for: Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I
    invoke-static {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->access$000(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;)I

    move-result v6

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$ks:[I

    new-instance v8, Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v8, v1}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    invoke-direct {v5, v6, v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method
