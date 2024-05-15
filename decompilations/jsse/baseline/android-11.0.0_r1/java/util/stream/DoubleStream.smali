.class public interface abstract Ljava/util/stream/DoubleStream;
.super Ljava/lang/Object;
.source "DoubleStream.java"

# interfaces
.implements Ljava/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/DoubleStream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/BaseStream<",
        "Ljava/lang/Double;",
        "Ljava/util/stream/DoubleStream;",
        ">;"
    }
.end annotation


# direct methods
.method public static whitelist core-platform-api test-api builder()Ljava/util/stream/DoubleStream$Builder;
    .registers 1

    .line 727
    new-instance v0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;

    invoke-direct {v0}, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api concat(Ljava/util/stream/DoubleStream;Ljava/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;
    .registers 5
    .param p0, "a"    # Ljava/util/stream/DoubleStream;
    .param p1, "b"    # Ljava/util/stream/DoubleStream;

    .line 829
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    new-instance v0, Ljava/util/stream/Streams$ConcatSpliterator$OfDouble;

    .line 833
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Streams$ConcatSpliterator$OfDouble;-><init>(Ljava/util/Spliterator$OfDouble;Ljava/util/Spliterator$OfDouble;)V

    .line 834
    .local v0, "split":Ljava/util/Spliterator$OfDouble;
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-interface {p1}, Ljava/util/stream/DoubleStream;->isParallel()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_22

    :cond_20
    const/4 v1, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 v1, 0x1

    :goto_23
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v1

    .line 835
    .local v1, "stream":Ljava/util/stream/DoubleStream;
    invoke-static {p0, p1}, Ljava/util/stream/Streams;->composedClose(Ljava/util/stream/BaseStream;Ljava/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljava/util/stream/DoubleStream;

    return-object v2
.end method

.method public static whitelist core-platform-api test-api empty()Ljava/util/stream/DoubleStream;
    .registers 2

    .line 736
    invoke-static {}, Ljava/util/Spliterators;->emptyDoubleSpliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api generate(Ljava/util/function/DoubleSupplier;)Ljava/util/stream/DoubleStream;
    .registers 4
    .param p0, "s"    # Ljava/util/function/DoubleSupplier;

    .line 806
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    new-instance v0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;-><init>(JLjava/util/function/DoubleSupplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api iterate(DLjava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;
    .registers 6
    .param p0, "seed"    # D
    .param p2, "f"    # Ljava/util/function/DoubleUnaryOperator;

    .line 776
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    new-instance v0, Ljava/util/stream/DoubleStream$1;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/DoubleStream$1;-><init>(DLjava/util/function/DoubleUnaryOperator;)V

    .line 792
    .local v0, "iterator":Ljava/util/PrimitiveIterator$OfDouble;
    const/16 v1, 0x510

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfDouble;I)Ljava/util/Spliterator$OfDouble;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist core-platform-api test-api of(D)Ljava/util/stream/DoubleStream;
    .registers 4
    .param p0, "t"    # D

    .line 746
    new-instance v0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;-><init>(D)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist core-platform-api test-api of([D)Ljava/util/stream/DoubleStream;
    .registers 2
    .param p0, "values"    # [D

    .line 756
    invoke-static {p0}, Ljava/util/Arrays;->stream([D)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist core-platform-api test-api allMatch(Ljava/util/function/DoublePredicate;)Z
.end method

.method public abstract whitelist core-platform-api test-api anyMatch(Ljava/util/function/DoublePredicate;)Z
.end method

.method public abstract whitelist core-platform-api test-api average()Ljava/util/OptionalDouble;
.end method

.method public abstract whitelist core-platform-api test-api boxed()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/ObjDoubleConsumer<",
            "TR;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api count()J
.end method

.method public abstract whitelist core-platform-api test-api distinct()Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist core-platform-api test-api filter(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist core-platform-api test-api findAny()Ljava/util/OptionalDouble;
.end method

.method public abstract whitelist core-platform-api test-api findFirst()Ljava/util/OptionalDouble;
.end method

.method public abstract whitelist core-platform-api test-api flatMap(Ljava/util/function/DoubleFunction;)Ljava/util/stream/DoubleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/DoubleFunction<",
            "+",
            "Ljava/util/stream/DoubleStream;",
            ">;)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api forEach(Ljava/util/function/DoubleConsumer;)V
.end method

.method public abstract whitelist core-platform-api test-api forEachOrdered(Ljava/util/function/DoubleConsumer;)V
.end method

.method public bridge synthetic whitelist core-platform-api test-api iterator()Ljava/util/Iterator;
    .registers 2

    .line 77
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->iterator()Ljava/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api iterator()Ljava/util/PrimitiveIterator$OfDouble;
.end method

.method public abstract whitelist core-platform-api test-api limit(J)Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist core-platform-api test-api map(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist core-platform-api test-api mapToInt(Ljava/util/function/DoubleToIntFunction;)Ljava/util/stream/IntStream;
.end method

.method public abstract whitelist core-platform-api test-api mapToLong(Ljava/util/function/DoubleToLongFunction;)Ljava/util/stream/LongStream;
.end method

.method public abstract whitelist core-platform-api test-api mapToObj(Ljava/util/function/DoubleFunction;)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/DoubleFunction<",
            "+TU;>;)",
            "Ljava/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api max()Ljava/util/OptionalDouble;
.end method

.method public abstract whitelist core-platform-api test-api min()Ljava/util/OptionalDouble;
.end method

.method public abstract whitelist core-platform-api test-api noneMatch(Ljava/util/function/DoublePredicate;)Z
.end method

.method public bridge synthetic whitelist core-platform-api test-api parallel()Ljava/util/stream/BaseStream;
    .registers 2

    .line 77
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->parallel()Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api parallel()Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist core-platform-api test-api peek(Ljava/util/function/DoubleConsumer;)Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist core-platform-api test-api reduce(DLjava/util/function/DoubleBinaryOperator;)D
.end method

.method public abstract whitelist core-platform-api test-api reduce(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/OptionalDouble;
.end method

.method public bridge synthetic whitelist core-platform-api test-api sequential()Ljava/util/stream/BaseStream;
    .registers 2

    .line 77
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->sequential()Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api sequential()Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist core-platform-api test-api skip(J)Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist core-platform-api test-api sorted()Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist core-platform-api test-api spliterator()Ljava/util/Spliterator$OfDouble;
.end method

.method public bridge synthetic whitelist core-platform-api test-api spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 77
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api sum()D
.end method

.method public abstract whitelist core-platform-api test-api summaryStatistics()Ljava/util/DoubleSummaryStatistics;
.end method

.method public abstract whitelist core-platform-api test-api toArray()[D
.end method
