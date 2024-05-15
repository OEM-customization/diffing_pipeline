.class Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve$1;
.super Ljava/lang/Object;
.source "SecP192R1Curve.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/ECLookupTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve;->createCacheSafeLookupTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/org/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve;

.field final synthetic blacklist val$len:I

.field final synthetic blacklist val$table:[I


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve;I[I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve;

    .line 103
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve$1;->this$0:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve;

    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve$1;->val$len:I

    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve$1;->val$table:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getSize()I
    .registers 2

    .line 106
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve$1;->val$len:I

    return v0
.end method

.method public blacklist lookup(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 11
    .param p1, "index"    # I

    .line 111
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    .local v0, "x":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v1

    .line 112
    .local v1, "y":[I
    const/4 v2, 0x0

    .line 114
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve$1;->val$len:I

    if-ge v3, v4, :cond_38

    .line 116
    xor-int v4, v3, p1

    add-int/lit8 v4, v4, -0x1

    shr-int/lit8 v4, v4, 0x1f

    .line 118
    .local v4, "MASK":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_15
    const/4 v6, 0x6

    if-ge v5, v6, :cond_32

    .line 120
    aget v6, v0, v5

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve$1;->val$table:[I

    add-int v8, v2, v5

    aget v8, v7, v8

    and-int/2addr v8, v4

    xor-int/2addr v6, v8

    aput v6, v0, v5

    .line 121
    aget v6, v1, v5

    add-int/lit8 v8, v2, 0x6

    add-int/2addr v8, v5

    aget v7, v7, v8

    and-int/2addr v7, v4

    xor-int/2addr v6, v7

    aput v6, v1, v5

    .line 118
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 124
    .end local v5    # "j":I
    :cond_32
    nop

    .end local v4    # "MASK":I
    add-int/lit8 v2, v2, 0xc

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 127
    .end local v3    # "i":I
    :cond_38
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve$1;->this$0:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve;

    new-instance v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    new-instance v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v5, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method
