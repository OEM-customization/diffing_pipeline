.class final Ljava/util/stream/IntStream$1;
.super Ljava/lang/Object;
.source "IntStream.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntStream;->iterate(ILjava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field t:I

.field final synthetic val$f:Ljava/util/function/IntUnaryOperator;

.field final synthetic val$seed:I


# direct methods
.method constructor <init>(ILjava/util/function/IntUnaryOperator;)V
    .registers 4

    .prologue
    .line 1
    iput p1, p0, Ljava/util/stream/IntStream$1;->val$seed:I

    iput-object p2, p0, Ljava/util/stream/IntStream$1;->val$f:Ljava/util/function/IntUnaryOperator;

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iget v0, p0, Ljava/util/stream/IntStream$1;->val$seed:I

    iput v0, p0, Ljava/util/stream/IntStream$1;->t:I

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 96
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 748
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 118
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public nextInt()I
    .registers 4

    .prologue
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
