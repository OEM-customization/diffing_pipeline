.class public Ljava/util/stream/SpinedBuffer$OfDouble;
.super Ljava/util/stream/SpinedBuffer$OfPrimitive;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SpinedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/SpinedBuffer$OfPrimitive",
        "<",
        "Ljava/lang/Double;",
        "[D",
        "Ljava/util/function/DoubleConsumer;",
        ">;",
        "Ljava/util/function/DoubleConsumer;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 958
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "initialCapacity"    # I

    .prologue
    .line 961
    invoke-direct {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;-><init>(I)V

    .line 962
    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 6
    .param p1, "i"    # D

    .prologue
    .line 1001
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfDouble;->preAccept()V

    .line 1002
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->curChunk:Ljava/lang/Object;

    check-cast v0, [D

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->elementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->elementIndex:I

    aput-wide p1, v0, v1

    .line 1003
    return-void
.end method

.method protected bridge synthetic arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 5

    .prologue
    .line 991
    check-cast p1, [D

    check-cast p4, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/stream/SpinedBuffer$OfDouble;->arrayForEach([DIILjava/util/function/DoubleConsumer;)V

    return-void
.end method

.method protected arrayForEach([DIILjava/util/function/DoubleConsumer;)V
    .registers 9
    .param p1, "array"    # [D
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "consumer"    # Ljava/util/function/DoubleConsumer;

    .prologue
    .line 995
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_b

    .line 996
    aget-wide v2, p1, v0

    invoke-interface {p4, v2, v3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 995
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 997
    :cond_b
    return-void
.end method

.method protected bridge synthetic arrayLength(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 986
    check-cast p1, [D

    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfDouble;->arrayLength([D)I

    move-result v0

    return v0
.end method

.method protected arrayLength([D)I
    .registers 3
    .param p1, "array"    # [D

    .prologue
    .line 988
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
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 966
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_a

    .line 967
    check-cast p1, Ljava/util/function/DoubleConsumer;

    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfDouble;->forEach(Ljava/lang/Object;)V

    .line 974
    :goto_9
    return-void

    .line 970
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    :cond_a
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_18

    .line 971
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfDouble;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 972
    :cond_18
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_9
.end method

.method public get(J)D
    .registers 8
    .param p1, "index"    # J

    .prologue
    .line 1008
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfDouble;->chunkFor(J)I

    move-result v0

    .line 1009
    .local v0, "ch":I
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->spineIndex:I

    if-nez v1, :cond_12

    if-nez v0, :cond_12

    .line 1010
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->curChunk:Ljava/lang/Object;

    check-cast v1, [D

    long-to-int v2, p1

    aget-wide v2, v1, v2

    return-wide v2

    .line 1012
    :cond_12
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->spine:[Ljava/lang/Object;

    check-cast v1, [[D

    aget-object v1, v1, v0

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->priorElementCount:[J

    aget-wide v2, v2, v0

    sub-long v2, p1, v2

    long-to-int v2, v2

    aget-wide v2, v1, v2

    return-wide v2
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 1015
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfDouble;->iterator()Ljava/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/PrimitiveIterator$OfDouble;
    .registers 2

    .prologue
    .line 1017
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 981
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfDouble;->newArray(I)[D

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[D
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 983
    new-array v0, p1, [D

    return-object v0
.end method

.method protected bridge synthetic newArrayArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 976
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfDouble;->newArrayArray(I)[[D

    move-result-object v0

    return-object v0
.end method

.method protected newArrayArray(I)[[D
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 978
    new-array v0, p1, [[D

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator$OfDouble;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 1046
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;

    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->spineIndex:I

    iget v5, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->elementIndex:I

    move-object v1, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer$OfDouble;IIII)V

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 1020
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;

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

    .line 1051
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 1052
    .local v0, "array":[D
    array-length v2, v0

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_39

    .line 1053
    const-string/jumbo v2, "%s[length=%d, chunks=%d]%s"

    new-array v3, v4, [Ljava/lang/Object;

    .line 1054
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfDouble;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 1055
    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->spineIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 1053
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1058
    :cond_39
    const/16 v2, 0xc8

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    .line 1059
    .local v1, "array2":[D
    const-string/jumbo v2, "%s[length=%d, chunks=%d]%s..."

    new-array v3, v4, [Ljava/lang/Object;

    .line 1060
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfDouble;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 1061
    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->spineIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 1059
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
