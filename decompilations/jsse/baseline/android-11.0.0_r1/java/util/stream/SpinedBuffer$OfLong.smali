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
        "Ljava/util/stream/SpinedBuffer$OfPrimitive<",
        "Ljava/lang/Long;",
        "[J",
        "Ljava/util/function/LongConsumer;",
        ">;",
        "Ljava/util/function/LongConsumer;"
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 849
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;-><init>()V

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "initialCapacity"    # I

    .line 853
    invoke-direct {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;-><init>(I)V

    .line 854
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api accept(J)V
    .registers 6
    .param p1, "i"    # J

    .line 893
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->preAccept()V

    .line 894
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfLong;->curChunk:Ljava/lang/Object;

    check-cast v0, [J

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfLong;->elementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/SpinedBuffer$OfLong;->elementIndex:I

    aput-wide p1, v0, v1

    .line 895
    return-void
.end method

.method protected bridge synthetic blacklist arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 5

    .line 846
    check-cast p1, [J

    check-cast p4, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/stream/SpinedBuffer$OfLong;->arrayForEach([JIILjava/util/function/LongConsumer;)V

    return-void
.end method

.method protected greylist-max-o arrayForEach([JIILjava/util/function/LongConsumer;)V
    .registers 8
    .param p1, "array"    # [J
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "consumer"    # Ljava/util/function/LongConsumer;

    .line 887
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_b

    .line 888
    aget-wide v1, p1, v0

    invoke-interface {p4, v1, v2}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 887
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 889
    .end local v0    # "i":I
    :cond_b
    return-void
.end method

.method protected bridge synthetic blacklist arrayLength(Ljava/lang/Object;)I
    .registers 2

    .line 846
    check-cast p1, [J

    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfLong;->arrayLength([J)I

    move-result p1

    return p1
.end method

.method protected greylist-max-o arrayLength([J)I
    .registers 3
    .param p1, "array"    # [J

    .line 880
    array-length v0, p1

    return v0
.end method

.method public bridge synthetic blacklist asPrimitiveArray()Ljava/lang/Object;
    .registers 2

    .line 846
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist clear()V
    .registers 1

    .line 846
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->clear()V

    return-void
.end method

.method public bridge synthetic blacklist copyInto(Ljava/lang/Object;I)V
    .registers 3

    .line 846
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic blacklist count()J
    .registers 3

    .line 846
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic blacklist forEach(Ljava/lang/Object;)V
    .registers 2

    .line 846
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->forEach(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist core-platform-api test-api forEach(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 858
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_b

    .line 859
    move-object v0, p1

    check-cast v0, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, v0}, Ljava/util/stream/SpinedBuffer$OfLong;->forEach(Ljava/lang/Object;)V

    goto :goto_1f

    .line 862
    :cond_b
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_18

    .line 863
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling SpinedBuffer.OfLong.forEach(Consumer)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 864
    :cond_18
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 866
    :goto_1f
    return-void
.end method

.method public greylist-max-o get(J)J
    .registers 7
    .param p1, "index"    # J

    .line 900
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfLong;->chunkFor(J)I

    move-result v0

    .line 901
    .local v0, "ch":I
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfLong;->spineIndex:I

    if-nez v1, :cond_12

    if-nez v0, :cond_12

    .line 902
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfLong;->curChunk:Ljava/lang/Object;

    check-cast v1, [J

    long-to-int v2, p1

    aget-wide v1, v1, v2

    return-wide v1

    .line 904
    :cond_12
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfLong;->spine:[Ljava/lang/Object;

    check-cast v1, [[J

    aget-object v1, v1, v0

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfLong;->priorElementCount:[J

    aget-wide v2, v2, v0

    sub-long v2, p1, v2

    long-to-int v2, v2

    aget-wide v1, v1, v2

    return-wide v1
.end method

.method public bridge synthetic blacklist isEmpty()Z
    .registers 2

    .line 846
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api iterator()Ljava/util/Iterator;
    .registers 2

    .line 846
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->iterator()Ljava/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public blacklist iterator()Ljava/util/PrimitiveIterator$OfLong;
    .registers 2

    .line 909
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist newArray(I)Ljava/lang/Object;
    .registers 2

    .line 846
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfLong;->newArray(I)[J

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o newArray(I)[J
    .registers 3
    .param p1, "size"    # I

    .line 875
    new-array v0, p1, [J

    return-object v0
.end method

.method protected bridge synthetic blacklist newArrayArray(I)[Ljava/lang/Object;
    .registers 2

    .line 846
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfLong;->newArrayArray(I)[[J

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o newArrayArray(I)[[J
    .registers 3
    .param p1, "size"    # I

    .line 870
    new-array v0, p1, [[J

    return-object v0
.end method

.method public blacklist spliterator()Ljava/util/Spliterator$OfLong;
    .registers 8

    .line 939
    new-instance v6, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;

    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfLong;->spineIndex:I

    iget v5, p0, Ljava/util/stream/SpinedBuffer$OfLong;->elementIndex:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer$OfLong;IIII)V

    return-object v6
.end method

.method public bridge synthetic whitelist core-platform-api test-api spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 846
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 9

    .line 944
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 945
    .local v0, "array":[J
    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/16 v7, 0xc8

    if-ge v1, v7, :cond_38

    .line 946
    new-array v1, v6, [Ljava/lang/Object;

    .line 947
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfLong;->spineIndex:I

    .line 948
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 946
    const-string v2, "%s[length=%d, chunks=%d]%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 951
    :cond_38
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 952
    .local v1, "array2":[J
    new-array v6, v6, [Ljava/lang/Object;

    .line 953
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfLong;->spineIndex:I

    .line 954
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 952
    const-string v2, "%s[length=%d, chunks=%d]%s..."

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
