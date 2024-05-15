.class public interface abstract Ljava/util/stream/IntStream;
.super Ljava/lang/Object;
.source "IntStream.java"

# interfaces
.implements Ljava/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/IntStream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/BaseStream<",
        "Ljava/lang/Integer;",
        "Ljava/util/stream/IntStream;",
        ">;"
    }
.end annotation


# direct methods
.method public static whitelist core-platform-api test-api builder()Ljava/util/stream/IntStream$Builder;
    .registers 1

    .line 693
    new-instance v0, Ljava/util/stream/Streams$IntStreamBuilderImpl;

    invoke-direct {v0}, Ljava/util/stream/Streams$IntStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;
    .registers 5
    .param p0, "a"    # Ljava/util/stream/IntStream;
    .param p1, "b"    # Ljava/util/stream/IntStream;

    .line 847
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    new-instance v0, Ljava/util/stream/Streams$ConcatSpliterator$OfInt;

    .line 851
    invoke-interface {p0}, Ljava/util/stream/IntStream;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Streams$ConcatSpliterator$OfInt;-><init>(Ljava/util/Spliterator$OfInt;Ljava/util/Spliterator$OfInt;)V

    .line 852
    .local v0, "split":Ljava/util/Spliterator$OfInt;
    invoke-interface {p0}, Ljava/util/stream/IntStream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-interface {p1}, Ljava/util/stream/IntStream;->isParallel()Z

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
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 853
    .local v1, "stream":Ljava/util/stream/IntStream;
    invoke-static {p0, p1}, Ljava/util/stream/Streams;->composedClose(Ljava/util/stream/BaseStream;Ljava/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljava/util/stream/IntStream;

    return-object v2
.end method

.method public static whitelist core-platform-api test-api empty()Ljava/util/stream/IntStream;
    .registers 2

    .line 702
    invoke-static {}, Ljava/util/Spliterators;->emptyIntSpliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api generate(Ljava/util/function/IntSupplier;)Ljava/util/stream/IntStream;
    .registers 4
    .param p0, "s"    # Ljava/util/function/IntSupplier;

    .line 772
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    new-instance v0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;-><init>(JLjava/util/function/IntSupplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api iterate(ILjava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
    .registers 5
    .param p0, "seed"    # I
    .param p1, "f"    # Ljava/util/function/IntUnaryOperator;

    .line 742
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    new-instance v0, Ljava/util/stream/IntStream$1;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/IntStream$1;-><init>(ILjava/util/function/IntUnaryOperator;)V

    .line 758
    .local v0, "iterator":Ljava/util/PrimitiveIterator$OfInt;
    const/16 v1, 0x510

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfInt;I)Ljava/util/Spliterator$OfInt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist core-platform-api test-api of(I)Ljava/util/stream/IntStream;
    .registers 3
    .param p0, "t"    # I

    .line 712
    new-instance v0, Ljava/util/stream/Streams$IntStreamBuilderImpl;

    invoke-direct {v0, p0}, Ljava/util/stream/Streams$IntStreamBuilderImpl;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist core-platform-api test-api of([I)Ljava/util/stream/IntStream;
    .registers 2
    .param p0, "values"    # [I

    .line 722
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api range(II)Ljava/util/stream/IntStream;
    .registers 4
    .param p0, "startInclusive"    # I
    .param p1, "endExclusive"    # I

    .line 795
    if-lt p0, p1, :cond_7

    .line 796
    invoke-static {}, Ljava/util/stream/IntStream;->empty()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 798
    :cond_7
    new-instance v0, Ljava/util/stream/Streams$RangeIntSpliterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/util/stream/Streams$RangeIntSpliterator;-><init>(IIZ)V

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api rangeClosed(II)Ljava/util/stream/IntStream;
    .registers 4
    .param p0, "startInclusive"    # I
    .param p1, "endInclusive"    # I

    .line 821
    if-le p0, p1, :cond_7

    .line 822
    invoke-static {}, Ljava/util/stream/IntStream;->empty()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 824
    :cond_7
    new-instance v0, Ljava/util/stream/Streams$RangeIntSpliterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ljava/util/stream/Streams$RangeIntSpliterator;-><init>(IIZ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist core-platform-api test-api allMatch(Ljava/util/function/IntPredicate;)Z
.end method

.method public abstract whitelist core-platform-api test-api anyMatch(Ljava/util/function/IntPredicate;)Z
.end method

.method public abstract whitelist core-platform-api test-api asDoubleStream()Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist core-platform-api test-api asLongStream()Ljava/util/stream/LongStream;
.end method

.method public abstract whitelist core-platform-api test-api average()Ljava/util/OptionalDouble;
.end method

.method public abstract whitelist core-platform-api test-api boxed()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/ObjIntConsumer<",
            "TR;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api count()J
.end method

.method public abstract whitelist core-platform-api test-api distinct()Ljava/util/stream/IntStream;
.end method

.method public abstract whitelist core-platform-api test-api filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;
.end method

.method public abstract whitelist core-platform-api test-api findAny()Ljava/util/OptionalInt;
.end method

.method public abstract whitelist core-platform-api test-api findFirst()Ljava/util/OptionalInt;
.end method

.method public abstract whitelist core-platform-api test-api flatMap(Ljava/util/function/IntFunction;)Ljava/util/stream/IntStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction<",
            "+",
            "Ljava/util/stream/IntStream;",
            ">;)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api forEach(Ljava/util/function/IntConsumer;)V
.end method

.method public abstract whitelist core-platform-api test-api forEachOrdered(Ljava/util/function/IntConsumer;)V
.end method

.method public bridge synthetic whitelist core-platform-api test-api iterator()Ljava/util/Iterator;
    .registers 2

    .line 73
    invoke-interface {p0}, Ljava/util/stream/IntStream;->iterator()Ljava/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api iterator()Ljava/util/PrimitiveIterator$OfInt;
.end method

.method public abstract whitelist core-platform-api test-api limit(J)Ljava/util/stream/IntStream;
.end method

.method public abstract whitelist core-platform-api test-api map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
.end method

.method public abstract whitelist core-platform-api test-api mapToDouble(Ljava/util/function/IntToDoubleFunction;)Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist core-platform-api test-api mapToLong(Ljava/util/function/IntToLongFunction;)Ljava/util/stream/LongStream;
.end method

.method public abstract whitelist core-platform-api test-api mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "+TU;>;)",
            "Ljava/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api max()Ljava/util/OptionalInt;
.end method

.method public abstract whitelist core-platform-api test-api min()Ljava/util/OptionalInt;
.end method

.method public abstract whitelist core-platform-api test-api noneMatch(Ljava/util/function/IntPredicate;)Z
.end method

.method public bridge synthetic whitelist core-platform-api test-api parallel()Ljava/util/stream/BaseStream;
    .registers 2

    .line 73
    invoke-interface {p0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api parallel()Ljava/util/stream/IntStream;
.end method

.method public abstract whitelist core-platform-api test-api peek(Ljava/util/function/IntConsumer;)Ljava/util/stream/IntStream;
.end method

.method public abstract whitelist core-platform-api test-api reduce(ILjava/util/function/IntBinaryOperator;)I
.end method

.method public abstract whitelist core-platform-api test-api reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;
.end method

.method public bridge synthetic whitelist core-platform-api test-api sequential()Ljava/util/stream/BaseStream;
    .registers 2

    .line 73
    invoke-interface {p0}, Ljava/util/stream/IntStream;->sequential()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api sequential()Ljava/util/stream/IntStream;
.end method

.method public abstract whitelist core-platform-api test-api skip(J)Ljava/util/stream/IntStream;
.end method

.method public abstract whitelist core-platform-api test-api sorted()Ljava/util/stream/IntStream;
.end method

.method public abstract whitelist core-platform-api test-api spliterator()Ljava/util/Spliterator$OfInt;
.end method

.method public bridge synthetic whitelist core-platform-api test-api spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 73
    invoke-interface {p0}, Ljava/util/stream/IntStream;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api sum()I
.end method

.method public abstract whitelist core-platform-api test-api summaryStatistics()Ljava/util/IntSummaryStatistics;
.end method

.method public abstract whitelist core-platform-api test-api toArray()[I
.end method
