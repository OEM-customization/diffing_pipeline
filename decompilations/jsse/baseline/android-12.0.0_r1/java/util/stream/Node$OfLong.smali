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
        "Ljava/util/stream/Node$OfPrimitive<",
        "Ljava/lang/Long;",
        "Ljava/util/function/LongConsumer;",
        "[J",
        "Ljava/util/Spliterator$OfLong;",
        "Ljava/util/stream/Node$OfLong;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic blacklist lambda$truncate$0(J)V
    .registers 2
    .param p0, "e"    # J

    .line 437
    return-void
.end method


# virtual methods
.method public greylist-max-o copyInto([Ljava/lang/Long;I)V
    .registers 8
    .param p1, "boxed"    # [Ljava/lang/Long;
    .param p2, "offset"    # I

    .line 420
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_d

    .line 421
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Node.OfInt.copyInto(Long[], int)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 423
    :cond_d
    invoke-interface {p0}, Ljava/util/stream/Node$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 424
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    array-length v2, v0

    if-ge v1, v2, :cond_24

    .line 425
    add-int v2, p2, v1

    aget-wide v3, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p1, v2

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 427
    .end local v1    # "i":I
    :cond_24
    return-void
.end method

.method public bridge synthetic blacklist copyInto([Ljava/lang/Object;I)V
    .registers 3

    .line 388
    check-cast p1, [Ljava/lang/Long;

    invoke-interface {p0, p1, p2}, Ljava/util/stream/Node$OfLong;->copyInto([Ljava/lang/Long;I)V

    return-void
.end method

.method public greylist-max-o forEach(Ljava/util/function/Consumer;)V
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

    .line 400
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_b

    .line 401
    move-object v0, p1

    check-cast v0, Ljava/util/function/LongConsumer;

    invoke-interface {p0, v0}, Ljava/util/stream/Node$OfLong;->forEach(Ljava/lang/Object;)V

    goto :goto_21

    .line 404
    :cond_b
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_18

    .line 405
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Node.OfLong.forEachRemaining(Consumer)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 406
    :cond_18
    invoke-interface {p0}, Ljava/util/stream/Node$OfLong;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfLong;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 408
    :goto_21
    return-void
.end method

.method public greylist-max-o getShape()Ljava/util/stream/StreamShape;
    .registers 2

    .line 454
    sget-object v0, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    return-object v0
.end method

.method public bridge synthetic blacklist newArray(I)Ljava/lang/Object;
    .registers 2

    .line 388
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfLong;->newArray(I)[J

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o newArray(I)[J
    .registers 3
    .param p1, "count"    # I

    .line 445
    new-array v0, p1, [J

    return-object v0
.end method

.method public greylist-max-o truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfLong;
    .registers 13
    .param p1, "from"    # J
    .param p3, "to"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Node$OfLong;"
        }
    .end annotation

    .line 431
    .local p5, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Long;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    invoke-interface {p0}, Ljava/util/stream/Node$OfLong;->count()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_f

    .line 432
    return-object p0

    .line 433
    :cond_f
    sub-long v0, p3, p1

    .line 434
    .local v0, "size":J
    invoke-interface {p0}, Ljava/util/stream/Node$OfLong;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v2

    check-cast v2, Ljava/util/Spliterator$OfLong;

    .line 435
    .local v2, "spliterator":Ljava/util/Spliterator$OfLong;
    invoke-static {v0, v1}, Ljava/util/stream/Nodes;->longBuilder(J)Ljava/util/stream/Node$Builder$OfLong;

    move-result-object v3

    .line 436
    .local v3, "nodeBuilder":Ljava/util/stream/Node$Builder$OfLong;
    invoke-interface {v3, v0, v1}, Ljava/util/stream/Node$Builder$OfLong;->begin(J)V

    .line 437
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1f
    int-to-long v5, v4

    cmp-long v5, v5, p1

    if-gez v5, :cond_2f

    sget-object v5, Ljava/util/stream/Node$OfLong$$ExternalSyntheticLambda0;->INSTANCE:Ljava/util/stream/Node$OfLong$$ExternalSyntheticLambda0;

    invoke-interface {v2, v5}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v5

    if-eqz v5, :cond_2f

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 438
    .end local v4    # "i":I
    :cond_2f
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_30
    int-to-long v5, v4

    cmp-long v5, v5, v0

    if-gez v5, :cond_3e

    invoke-interface {v2, v3}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v5

    if-eqz v5, :cond_3e

    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 439
    .end local v4    # "i":I
    :cond_3e
    invoke-interface {v3}, Ljava/util/stream/Node$Builder$OfLong;->end()V

    .line 440
    invoke-interface {v3}, Ljava/util/stream/Node$Builder$OfLong;->build()Ljava/util/stream/Node$OfLong;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic blacklist truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfPrimitive;
    .registers 6

    .line 388
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfLong;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 6

    .line 388
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfLong;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfLong;

    move-result-object p1

    return-object p1
.end method
