.class public interface abstract Ljava/util/stream/LongStream;
.super Ljava/lang/Object;
.source "LongStream.java"

# interfaces
.implements Ljava/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/LongStream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/BaseStream<",
        "Ljava/lang/Long;",
        "Ljava/util/stream/LongStream;",
        ">;"
    }
.end annotation


# direct methods
.method public static whitelist test-api builder()Ljava/util/stream/LongStream$Builder;
    .registers 1

    .line 686
    new-instance v0, Ljava/util/stream/Streams$LongStreamBuilderImpl;

    invoke-direct {v0}, Ljava/util/stream/Streams$LongStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static whitelist test-api concat(Ljava/util/stream/LongStream;Ljava/util/stream/LongStream;)Ljava/util/stream/LongStream;
    .registers 5
    .param p0, "a"    # Ljava/util/stream/LongStream;
    .param p1, "b"    # Ljava/util/stream/LongStream;

    .line 855
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    new-instance v0, Ljava/util/stream/Streams$ConcatSpliterator$OfLong;

    .line 859
    invoke-interface {p0}, Ljava/util/stream/LongStream;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/stream/LongStream;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Streams$ConcatSpliterator$OfLong;-><init>(Ljava/util/Spliterator$OfLong;Ljava/util/Spliterator$OfLong;)V

    .line 860
    .local v0, "split":Ljava/util/Spliterator$OfLong;
    invoke-interface {p0}, Ljava/util/stream/LongStream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-interface {p1}, Ljava/util/stream/LongStream;->isParallel()Z

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
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v1

    .line 861
    .local v1, "stream":Ljava/util/stream/LongStream;
    invoke-static {p0, p1}, Ljava/util/stream/Streams;->composedClose(Ljava/util/stream/BaseStream;Ljava/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/LongStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljava/util/stream/LongStream;

    return-object v2
.end method

.method public static whitelist test-api empty()Ljava/util/stream/LongStream;
    .registers 2

    .line 695
    invoke-static {}, Ljava/util/Spliterators;->emptyLongSpliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api generate(Ljava/util/function/LongSupplier;)Ljava/util/stream/LongStream;
    .registers 4
    .param p0, "s"    # Ljava/util/function/LongSupplier;

    .line 765
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    new-instance v0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;-><init>(JLjava/util/function/LongSupplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api iterate(JLjava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;
    .registers 6
    .param p0, "seed"    # J
    .param p2, "f"    # Ljava/util/function/LongUnaryOperator;

    .line 735
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    new-instance v0, Ljava/util/stream/LongStream$1;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/LongStream$1;-><init>(JLjava/util/function/LongUnaryOperator;)V

    .line 751
    .local v0, "iterator":Ljava/util/PrimitiveIterator$OfLong;
    const/16 v1, 0x510

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfLong;I)Ljava/util/Spliterator$OfLong;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api of(J)Ljava/util/stream/LongStream;
    .registers 4
    .param p0, "t"    # J

    .line 705
    new-instance v0, Ljava/util/stream/Streams$LongStreamBuilderImpl;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Streams$LongStreamBuilderImpl;-><init>(J)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api of([J)Ljava/util/stream/LongStream;
    .registers 2
    .param p0, "values"    # [J

    .line 715
    invoke-static {p0}, Ljava/util/Arrays;->stream([J)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api range(JJ)Ljava/util/stream/LongStream;
    .registers 13
    .param p0, "startInclusive"    # J
    .param p2, "endExclusive"    # J

    .line 788
    cmp-long v0, p0, p2

    if-ltz v0, :cond_9

    .line 789
    invoke-static {}, Ljava/util/stream/LongStream;->empty()Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 790
    :cond_9
    sub-long v0, p2, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2a

    .line 795
    sub-long v0, p2, p0

    const-wide/16 v2, 0x2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->divideUnsigned(JJ)J

    move-result-wide v0

    add-long/2addr v0, p0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 796
    .local v0, "m":J
    invoke-static {p0, p1, v0, v1}, Ljava/util/stream/LongStream;->range(JJ)Ljava/util/stream/LongStream;

    move-result-object v2

    invoke-static {v0, v1, p2, p3}, Ljava/util/stream/LongStream;->range(JJ)Ljava/util/stream/LongStream;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/stream/LongStream;->concat(Ljava/util/stream/LongStream;Ljava/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object v2

    return-object v2

    .line 798
    .end local v0    # "m":J
    :cond_2a
    new-instance v0, Ljava/util/stream/Streams$RangeLongSpliterator;

    const/4 v8, 0x0

    move-object v3, v0

    move-wide v4, p0

    move-wide v6, p2

    invoke-direct/range {v3 .. v8}, Ljava/util/stream/Streams$RangeLongSpliterator;-><init>(JJZ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api rangeClosed(JJ)Ljava/util/stream/LongStream;
    .registers 13
    .param p0, "startInclusive"    # J
    .param p2, "endInclusive"    # J

    .line 821
    cmp-long v0, p0, p2

    if-lez v0, :cond_9

    .line 822
    invoke-static {}, Ljava/util/stream/LongStream;->empty()Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 823
    :cond_9
    sub-long v0, p2, p0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_2b

    .line 829
    sub-long v0, p2, p0

    const-wide/16 v4, 0x2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Long;->divideUnsigned(JJ)J

    move-result-wide v0

    add-long/2addr v0, p0

    add-long/2addr v0, v2

    .line 830
    .local v0, "m":J
    invoke-static {p0, p1, v0, v1}, Ljava/util/stream/LongStream;->range(JJ)Ljava/util/stream/LongStream;

    move-result-object v2

    invoke-static {v0, v1, p2, p3}, Ljava/util/stream/LongStream;->rangeClosed(JJ)Ljava/util/stream/LongStream;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/stream/LongStream;->concat(Ljava/util/stream/LongStream;Ljava/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object v2

    return-object v2

    .line 832
    .end local v0    # "m":J
    :cond_2b
    new-instance v0, Ljava/util/stream/Streams$RangeLongSpliterator;

    const/4 v8, 0x1

    move-object v3, v0

    move-wide v4, p0

    move-wide v6, p2

    invoke-direct/range {v3 .. v8}, Ljava/util/stream/Streams$RangeLongSpliterator;-><init>(JJZ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api allMatch(Ljava/util/function/LongPredicate;)Z
.end method

.method public abstract whitelist test-api anyMatch(Ljava/util/function/LongPredicate;)Z
.end method

.method public abstract whitelist test-api asDoubleStream()Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist test-api average()Ljava/util/OptionalDouble;
.end method

.method public abstract whitelist test-api boxed()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/ObjLongConsumer<",
            "TR;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api count()J
.end method

.method public abstract whitelist test-api distinct()Ljava/util/stream/LongStream;
.end method

.method public abstract whitelist test-api filter(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;
.end method

.method public abstract whitelist test-api findAny()Ljava/util/OptionalLong;
.end method

.method public abstract whitelist test-api findFirst()Ljava/util/OptionalLong;
.end method

.method public abstract whitelist test-api flatMap(Ljava/util/function/LongFunction;)Ljava/util/stream/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/LongFunction<",
            "+",
            "Ljava/util/stream/LongStream;",
            ">;)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api forEach(Ljava/util/function/LongConsumer;)V
.end method

.method public abstract whitelist test-api forEachOrdered(Ljava/util/function/LongConsumer;)V
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2

    .line 78
    invoke-interface {p0}, Ljava/util/stream/LongStream;->iterator()Ljava/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api iterator()Ljava/util/PrimitiveIterator$OfLong;
.end method

.method public abstract whitelist test-api limit(J)Ljava/util/stream/LongStream;
.end method

.method public abstract whitelist test-api map(Ljava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;
.end method

.method public abstract whitelist test-api mapToDouble(Ljava/util/function/LongToDoubleFunction;)Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist test-api mapToInt(Ljava/util/function/LongToIntFunction;)Ljava/util/stream/IntStream;
.end method

.method public abstract whitelist test-api mapToObj(Ljava/util/function/LongFunction;)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/LongFunction<",
            "+TU;>;)",
            "Ljava/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api max()Ljava/util/OptionalLong;
.end method

.method public abstract whitelist test-api min()Ljava/util/OptionalLong;
.end method

.method public abstract whitelist test-api noneMatch(Ljava/util/function/LongPredicate;)Z
.end method

.method public bridge synthetic whitelist test-api parallel()Ljava/util/stream/BaseStream;
    .registers 2

    .line 78
    invoke-interface {p0}, Ljava/util/stream/LongStream;->parallel()Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api parallel()Ljava/util/stream/LongStream;
.end method

.method public abstract whitelist test-api peek(Ljava/util/function/LongConsumer;)Ljava/util/stream/LongStream;
.end method

.method public abstract whitelist test-api reduce(JLjava/util/function/LongBinaryOperator;)J
.end method

.method public abstract whitelist test-api reduce(Ljava/util/function/LongBinaryOperator;)Ljava/util/OptionalLong;
.end method

.method public bridge synthetic whitelist test-api sequential()Ljava/util/stream/BaseStream;
    .registers 2

    .line 78
    invoke-interface {p0}, Ljava/util/stream/LongStream;->sequential()Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api sequential()Ljava/util/stream/LongStream;
.end method

.method public abstract whitelist test-api skip(J)Ljava/util/stream/LongStream;
.end method

.method public abstract whitelist test-api sorted()Ljava/util/stream/LongStream;
.end method

.method public abstract whitelist test-api spliterator()Ljava/util/Spliterator$OfLong;
.end method

.method public bridge synthetic whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 78
    invoke-interface {p0}, Ljava/util/stream/LongStream;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api sum()J
.end method

.method public abstract whitelist test-api summaryStatistics()Ljava/util/LongSummaryStatistics;
.end method

.method public abstract whitelist test-api toArray()[J
.end method
