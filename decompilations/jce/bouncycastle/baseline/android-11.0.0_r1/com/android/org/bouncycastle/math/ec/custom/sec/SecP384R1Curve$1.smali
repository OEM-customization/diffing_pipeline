.class Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;
.super Ljava/lang/Object;
.source "SecP384R1Curve.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/ECLookupTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->createCacheSafeLookupTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/org/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;

.field final synthetic blacklist val$len:I

.field final synthetic blacklist val$table:[I


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;I[I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;

    .line 103
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->this$0:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;

    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$len:I

    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$table:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getSize()I
    .registers 2

    .line 106
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$len:I

    return v0
.end method

.method public blacklist lookup(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 12
    .param p1, "index"    # I

    .line 111
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v1

    .local v1, "x":[I
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v2

    .line 112
    .local v2, "y":[I
    const/4 v3, 0x0

    .line 114
    .local v3, "pos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$len:I

    if-ge v4, v5, :cond_39

    .line 116
    xor-int v5, v4, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    .line 118
    .local v5, "MASK":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_17
    if-ge v6, v0, :cond_33

    .line 120
    aget v7, v1, v6

    iget-object v8, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$table:[I

    add-int v9, v3, v6

    aget v9, v8, v9

    and-int/2addr v9, v5

    xor-int/2addr v7, v9

    aput v7, v1, v6

    .line 121
    aget v7, v2, v6

    add-int/lit8 v9, v3, 0xc

    add-int/2addr v9, v6

    aget v8, v8, v9

    and-int/2addr v8, v5

    xor-int/2addr v7, v8

    aput v7, v2, v6

    .line 118
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 124
    .end local v6    # "j":I
    :cond_33
    nop

    .end local v5    # "MASK":I
    add-int/lit8 v3, v3, 0x18

    .line 114
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 127
    .end local v4    # "i":I
    :cond_39
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->this$0:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;

    new-instance v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v4, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    new-instance v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v5, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
