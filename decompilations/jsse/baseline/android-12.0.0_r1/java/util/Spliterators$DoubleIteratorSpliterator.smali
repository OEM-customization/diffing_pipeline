.class final Ljava/util/Spliterators$DoubleIteratorSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleIteratorSpliterator"
.end annotation


# static fields
.field static final greylist-max-o BATCH_UNIT:I = 0x400

.field static final greylist-max-o MAX_BATCH:I = 0x2000000


# instance fields
.field private greylist-max-o batch:I

.field private final greylist-max-o characteristics:I

.field private greylist-max-o est:J

.field private greylist-max-o it:Ljava/util/PrimitiveIterator$OfDouble;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/util/PrimitiveIterator$OfDouble;I)V
    .registers 5
    .param p1, "iterator"    # Ljava/util/PrimitiveIterator$OfDouble;
    .param p2, "characteristics"    # I

    .line 2066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2067
    iput-object p1, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfDouble;

    .line 2068
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->est:J

    .line 2069
    and-int/lit16 v0, p2, -0x4041

    iput v0, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->characteristics:I

    .line 2070
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/PrimitiveIterator$OfDouble;JI)V
    .registers 6
    .param p1, "iterator"    # Ljava/util/PrimitiveIterator$OfDouble;
    .param p2, "size"    # J
    .param p4, "characteristics"    # I

    .line 2049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2050
    iput-object p1, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfDouble;

    .line 2051
    iput-wide p2, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->est:J

    .line 2052
    and-int/lit16 v0, p4, 0x1000

    if-nez v0, :cond_10

    .line 2053
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    goto :goto_11

    .line 2054
    :cond_10
    move v0, p4

    :goto_11
    iput v0, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->characteristics:I

    .line 2055
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 2115
    iget v0, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->characteristics:I

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 2111
    iget-wide v0, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .line 2031
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$DoubleIteratorSpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 3
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 2095
    if-eqz p1, :cond_8

    .line 2096
    iget-object v0, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfDouble;

    invoke-interface {v0, p1}, Ljava/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    .line 2097
    return-void

    .line 2095
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2119
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$DoubleIteratorSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2120
    const/4 v0, 0x0

    return-object v0

    .line 2121
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    .line 2031
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$DoubleIteratorSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 4
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 2101
    if-eqz p1, :cond_17

    .line 2102
    iget-object v0, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfDouble;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2103
    iget-object v0, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfDouble;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 2104
    const/4 v0, 0x1

    return v0

    .line 2106
    :cond_15
    const/4 v0, 0x0

    return v0

    .line 2101
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfDouble;
    .registers 11

    .line 2074
    iget-object v0, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfDouble;

    .line 2075
    .local v0, "i":Ljava/util/PrimitiveIterator$OfDouble;
    iget-wide v1, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->est:J

    .line 2076
    .local v1, "s":J
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_4d

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 2077
    iget v3, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    .line 2078
    .local v3, "n":I
    int-to-long v4, v3

    cmp-long v4, v4, v1

    if-lez v4, :cond_1a

    .line 2079
    long-to-int v3, v1

    .line 2080
    :cond_1a
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_20

    .line 2081
    const/high16 v3, 0x2000000

    .line 2082
    :cond_20
    new-array v4, v3, [D

    .line 2083
    .local v4, "a":[D
    const/4 v5, 0x0

    .line 2084
    .local v5, "j":I
    :cond_23
    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_33

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v6

    if-nez v6, :cond_23

    .line 2085
    :cond_33
    iput v5, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->batch:I

    .line 2086
    iget-wide v6, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v6, v8

    if-eqz v8, :cond_44

    .line 2087
    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->est:J

    .line 2088
    :cond_44
    new-instance v6, Ljava/util/Spliterators$DoubleArraySpliterator;

    const/4 v7, 0x0

    iget v8, p0, Ljava/util/Spliterators$DoubleIteratorSpliterator;->characteristics:I

    invoke-direct {v6, v4, v7, v5, v8}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    return-object v6

    .line 2090
    .end local v3    # "n":I
    .end local v4    # "a":[D
    .end local v5    # "j":I
    :cond_4d
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 2031
    invoke-virtual {p0}, Ljava/util/Spliterators$DoubleIteratorSpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 2031
    invoke-virtual {p0}, Ljava/util/Spliterators$DoubleIteratorSpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
