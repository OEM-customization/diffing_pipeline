.class public interface abstract Ljava/util/stream/Node$OfLong;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/util/stream/Node$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/Node$OfPrimitive",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/function/LongConsumer;",
        "[J",
        "Ljava/util/Spliterator$OfLong;",
        "Ljava/util/stream/Node$OfLong;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic lambda$-java_util_stream_Node$OfLong_16640(J)V
    .registers 2
    .param p0, "e"    # J

    .prologue
    return-void
.end method


# virtual methods
.method public copyInto([Ljava/lang/Long;I)V
    .registers 9
    .param p1, "boxed"    # [Ljava/lang/Long;
    .param p2, "offset"    # I

    .prologue
    .line 419
    sget-boolean v2, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v2, :cond_e

    .line 420
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "{0} calling Node.OfInt.copyInto(Long[], int)"

    invoke-static {v2, v3}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 422
    :cond_e
    invoke-interface {p0}, Ljava/util/stream/Node$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 423
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    array-length v2, v0

    if-ge v1, v2, :cond_25

    .line 424
    add-int v2, p2, v1

    aget-wide v4, v0, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p1, v2

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 426
    :cond_25
    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .registers 3

    .prologue
    .line 409
    check-cast p1, [Ljava/lang/Long;

    invoke-interface {p0, p1, p2}, Ljava/util/stream/Node$OfLong;->copyInto([Ljava/lang/Long;I)V

    return-void
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
    .line 399
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_a

    .line 400
    check-cast p1, Ljava/util/function/LongConsumer;

    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfLong;->forEach(Ljava/lang/Object;)V

    .line 407
    :goto_9
    return-void

    .line 403
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    :cond_a
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_18

    .line 404
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "{0} calling Node.OfLong.forEachRemaining(Consumer)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 405
    :cond_18
    invoke-interface {p0}, Ljava/util/stream/Node$OfLong;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfLong;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_9
.end method

.method public getShape()Ljava/util/stream/StreamShape;
    .registers 2

    .prologue
    .line 453
    sget-object v0, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 442
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfLong;->newArray(I)[J

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[J
    .registers 3
    .param p1, "count"    # I

    .prologue
    .line 444
    new-array v0, p1, [J

    return-object v0
.end method

.method public truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfLong;
    .registers 15
    .param p1, "from"    # J
    .param p3, "to"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/function/IntFunction",
            "<[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Node$OfLong;"
        }
    .end annotation

    .prologue
    .line 430
    .local p5, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Long;>;"
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-nez v5, :cond_f

    invoke-interface {p0}, Ljava/util/stream/Node$OfLong;->count()J

    move-result-wide v6

    cmp-long v5, p3, v6

    if-nez v5, :cond_f

    .line 431
    return-object p0

    .line 432
    :cond_f
    sub-long v2, p3, p1

    .line 433
    .local v2, "size":J
    invoke-interface {p0}, Ljava/util/stream/Node$OfLong;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v4

    check-cast v4, Ljava/util/Spliterator$OfLong;

    .line 434
    .local v4, "spliterator":Ljava/util/Spliterator$OfLong;
    invoke-static {v2, v3}, Ljava/util/stream/Nodes;->longBuilder(J)Ljava/util/stream/Node$Builder$OfLong;

    move-result-object v1

    .line 435
    .local v1, "nodeBuilder":Ljava/util/stream/Node$Builder$OfLong;
    invoke-interface {v1, v2, v3}, Ljava/util/stream/Node$Builder$OfLong;->begin(J)V

    .line 436
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    int-to-long v6, v0

    cmp-long v5, v6, p1

    if-gez v5, :cond_2f

    sget-object v5, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$3;->$INST$0:Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$3;

    invoke-interface {v4, v5}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v5

    if-eqz v5, :cond_2f

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 437
    :cond_2f
    const/4 v0, 0x0

    :goto_30
    int-to-long v6, v0

    cmp-long v5, v6, v2

    if-gez v5, :cond_3e

    invoke-interface {v4, v1}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v5

    if-eqz v5, :cond_3e

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 438
    :cond_3e
    invoke-interface {v1}, Ljava/util/stream/Node$Builder$OfLong;->end()V

    .line 439
    invoke-interface {v1}, Ljava/util/stream/Node$Builder$OfLong;->build()Ljava/util/stream/Node$OfLong;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfPrimitive;
    .registers 7

    .prologue
    .line 428
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfLong;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 7

    .prologue
    .line 428
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfLong;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfLong;

    move-result-object v0

    return-object v0
.end method
