.class Ljava/util/stream/IntStream$1;
.super Ljava/lang/Object;
.source "IntStream.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntStream;->iterate(ILjava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist t:I

.field final synthetic blacklist val$f:Ljava/util/function/IntUnaryOperator;

.field final synthetic blacklist val$seed:I


# direct methods
.method constructor blacklist <init>(ILjava/util/function/IntUnaryOperator;)V
    .registers 3

    .line 743
    iput p1, p0, Ljava/util/stream/IntStream$1;->val$seed:I

    iput-object p2, p0, Ljava/util/stream/IntStream$1;->val$f:Ljava/util/function/IntUnaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iget p1, p0, Ljava/util/stream/IntStream$1;->val$seed:I

    iput p1, p0, Ljava/util/stream/IntStream$1;->t:I

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api hasNext()Z
    .registers 2

    .line 748
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist core-platform-api test-api nextInt()I
    .registers 4

    .line 753
    iget v0, p0, Ljava/util/stream/IntStream$1;->t:I

    .line 754
    .local v0, "v":I
    iget-object v1, p0, Ljava/util/stream/IntStream$1;->val$f:Ljava/util/function/IntUnaryOperator;

    iget v2, p0, Ljava/util/stream/IntStream$1;->t:I

    invoke-interface {v1, v2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    iput v1, p0, Ljava/util/stream/IntStream$1;->t:I

    .line 755
    return v0
.end method
