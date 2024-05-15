.class Ljava/util/stream/DoubleStream$1;
.super Ljava/lang/Object;
.source "DoubleStream.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoubleStream;->iterate(DLjava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist t:D

.field final synthetic blacklist val$f:Ljava/util/function/DoubleUnaryOperator;

.field final synthetic blacklist val$seed:D


# direct methods
.method constructor blacklist <init>(DLjava/util/function/DoubleUnaryOperator;)V
    .registers 4

    .line 777
    iput-wide p1, p0, Ljava/util/stream/DoubleStream$1;->val$seed:D

    iput-object p3, p0, Ljava/util/stream/DoubleStream$1;->val$f:Ljava/util/function/DoubleUnaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 778
    iget-wide p1, p0, Ljava/util/stream/DoubleStream$1;->val$seed:D

    iput-wide p1, p0, Ljava/util/stream/DoubleStream$1;->t:D

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api hasNext()Z
    .registers 2

    .line 782
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist core-platform-api test-api nextDouble()D
    .registers 6

    .line 787
    iget-wide v0, p0, Ljava/util/stream/DoubleStream$1;->t:D

    .line 788
    .local v0, "v":D
    iget-object v2, p0, Ljava/util/stream/DoubleStream$1;->val$f:Ljava/util/function/DoubleUnaryOperator;

    iget-wide v3, p0, Ljava/util/stream/DoubleStream$1;->t:D

    invoke-interface {v2, v3, v4}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/stream/DoubleStream$1;->t:D

    .line 789
    return-wide v0
.end method
