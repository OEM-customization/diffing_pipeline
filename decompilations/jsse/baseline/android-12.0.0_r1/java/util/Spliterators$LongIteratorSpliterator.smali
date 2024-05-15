.class final Ljava/util/Spliterators$LongIteratorSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongIteratorSpliterator"
.end annotation


# static fields
.field static final greylist-max-o BATCH_UNIT:I = 0x400

.field static final greylist-max-o MAX_BATCH:I = 0x2000000


# instance fields
.field private greylist-max-o batch:I

.field private final greylist-max-o characteristics:I

.field private greylist-max-o est:J

.field private greylist-max-o it:Ljava/util/PrimitiveIterator$OfLong;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/util/PrimitiveIterator$OfLong;I)V
    .registers 5
    .param p1, "iterator"    # Ljava/util/PrimitiveIterator$OfLong;
    .param p2, "characteristics"    # I

    .line 1972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1973
    iput-object p1, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfLong;

    .line 1974
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->est:J

    .line 1975
    and-int/lit16 v0, p2, -0x4041

    iput v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    .line 1976
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/PrimitiveIterator$OfLong;JI)V
    .registers 6
    .param p1, "iterator"    # Ljava/util/PrimitiveIterator$OfLong;
    .param p2, "size"    # J
    .param p4, "characteristics"    # I

    .line 1955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1956
    iput-object p1, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfLong;

    .line 1957
    iput-wide p2, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->est:J

    .line 1958
    and-int/lit16 v0, p4, 0x1000

    if-nez v0, :cond_10

    .line 1959
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    goto :goto_11

    .line 1960
    :cond_10
    move v0, p4

    :goto_11
    iput v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    .line 1961
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 2021
    iget v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 2017
    iget-wide v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .line 1937
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$LongIteratorSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 3
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 2001
    if-eqz p1, :cond_8

    .line 2002
    iget-object v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfLong;

    invoke-interface {v0, p1}, Ljava/util/PrimitiveIterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    .line 2003
    return-void

    .line 2001
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2025
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$LongIteratorSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2026
    const/4 v0, 0x0

    return-object v0

    .line 2027
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    .line 1937
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$LongIteratorSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 4
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 2007
    if-eqz p1, :cond_17

    .line 2008
    iget-object v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfLong;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2009
    iget-object v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfLong;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 2010
    const/4 v0, 0x1

    return v0

    .line 2012
    :cond_15
    const/4 v0, 0x0

    return v0

    .line 2007
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfLong;
    .registers 11

    .line 1980
    iget-object v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfLong;

    .line 1981
    .local v0, "i":Ljava/util/PrimitiveIterator$OfLong;
    iget-wide v1, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->est:J

    .line 1982
    .local v1, "s":J
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_4d

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1983
    iget v3, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    .line 1984
    .local v3, "n":I
    int-to-long v4, v3

    cmp-long v4, v4, v1

    if-lez v4, :cond_1a

    .line 1985
    long-to-int v3, v1

    .line 1986
    :cond_1a
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_20

    .line 1987
    const/high16 v3, 0x2000000

    .line 1988
    :cond_20
    new-array v4, v3, [J

    .line 1989
    .local v4, "a":[J
    const/4 v5, 0x0

    .line 1990
    .local v5, "j":I
    :cond_23
    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_33

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v6

    if-nez v6, :cond_23

    .line 1991
    :cond_33
    iput v5, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->batch:I

    .line 1992
    iget-wide v6, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v6, v8

    if-eqz v8, :cond_44

    .line 1993
    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->est:J

    .line 1994
    :cond_44
    new-instance v6, Ljava/util/Spliterators$LongArraySpliterator;

    const/4 v7, 0x0

    iget v8, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    invoke-direct {v6, v4, v7, v5, v8}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    return-object v6

    .line 1996
    .end local v3    # "n":I
    .end local v4    # "a":[J
    .end local v5    # "j":I
    :cond_4d
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1937
    invoke-virtual {p0}, Ljava/util/Spliterators$LongIteratorSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1937
    invoke-virtual {p0}, Ljava/util/Spliterators$LongIteratorSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
