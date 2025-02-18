.class public Ljava/util/stream/SpinedBuffer$OfLong;
.super Ljava/util/stream/SpinedBuffer$OfPrimitive;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SpinedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/SpinedBuffer$OfPrimitive",
        "<",
        "Ljava/lang/Long;",
        "[J",
        "Ljava/util/function/LongConsumer;",
        ">;",
        "Ljava/util/function/LongConsumer;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 842
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "initialCapacity"    # I

    .prologue
    .line 845
    invoke-direct {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;-><init>(I)V

    .line 846
    return-void
.end method


# virtual methods
.method public accept(J)V
    .registers 6
    .param p1, "i"    # J

    .prologue
    .line 885
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->preAccept()V

    .line 886
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfLong;->curChunk:Ljava/lang/Object;

    check-cast v0, [J

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfLong;->elementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/SpinedBuffer$OfLong;->elementIndex:I

    aput-wide p1, v0, v1

    .line 887
    return-void
.end method

.method protected bridge synthetic arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 5

    .prologue
    .line 875
    check-cast p1, [J

    check-cast p4, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/stream/SpinedBuffer$OfLong;->arrayForEach([JIILjava/util/function/LongConsumer;)V

    return-void
.end method

.method protected arrayForEach([JIILjava/util/function/LongConsumer;)V
    .registers 9
    .param p1, "array"    # [J
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "consumer"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 879
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_b

    .line 880
    aget-wide v2, p1, v0

    invoke-interface {p4, v2, v3}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 879
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 881
    :cond_b
    return-void
.end method

.method protected bridge synthetic arrayLength(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 870
    check-cast p1, [J

    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfLong;->arrayLength([J)I

    move-result v0

    return v0
.end method

.method protected arrayLength([J)I
    .registers 3
    .param p1, "array"    # [J

    .prologue
    .line 872
    array-length v0, p1

    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 850
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_a

    .line 851
    check-cast p1, Ljava/util/function/LongConsumer;

    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfLong;->forEach(Ljava/lang/Object;)V

    .line 858
    :goto_9
    return-void

    .line 854
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    :cond_a
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_18

    .line 855
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "{0} calling SpinedBuffer.OfLong.forEach(Consumer)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 856
    :cond_18
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_9
.end method

.method public get(J)J
    .registers 8
    .param p1, "index"    # J

    .prologue
    .line 892
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfLong;->chunkFor(J)I

    move-result v0

    .line 893
    .local v0, "ch":I
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfLong;->spineIndex:I

    if-nez v1, :cond_12

    if-nez v0, :cond_12

    .line 894
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfLong;->curChunk:Ljava/lang/Object;

    check-cast v1, [J

    long-to-int v2, p1

    aget-wide v2, v1, v2

    return-wide v2

    .line 896
    :cond_12
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfLong;->spine:[Ljava/lang/Object;

    check-cast v1, [[J

    aget-object v1, v1, v0

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfLong;->priorElementCount:[J

    aget-wide v2, v2, v0

    sub-long v2, p1, v2

    long-to-int v2, v2

    aget-wide v2, v1, v2

    return-wide v2
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 899
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->iterator()Ljava/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/PrimitiveIterator$OfLong;
    .registers 2

    .prologue
    .line 901
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 865
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfLong;->newArray(I)[J

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[J
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 867
    new-array v0, p1, [J

    return-object v0
.end method

.method protected bridge synthetic newArrayArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 860
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfLong;->newArrayArray(I)[[J

    move-result-object v0

    return-object v0
.end method

.method protected newArrayArray(I)[[J
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 862
    new-array v0, p1, [[J

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator$OfLong;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 931
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;

    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfLong;->spineIndex:I

    iget v5, p0, Ljava/util/stream/SpinedBuffer$OfLong;->elementIndex:I

    move-object v1, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer$OfLong;IIII)V

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 905
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v4, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 936
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 937
    .local v0, "array":[J
    array-length v2, v0

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_39

    .line 938
    const-string/jumbo v2, "%s[length=%d, chunks=%d]%s"

    new-array v3, v4, [Ljava/lang/Object;

    .line 939
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 940
    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfLong;->spineIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 938
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 943
    :cond_39
    const/16 v2, 0xc8

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 944
    .local v1, "array2":[J
    const-string/jumbo v2, "%s[length=%d, chunks=%d]%s..."

    new-array v3, v4, [Ljava/lang/Object;

    .line 945
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 946
    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfLong;->spineIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 944
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
