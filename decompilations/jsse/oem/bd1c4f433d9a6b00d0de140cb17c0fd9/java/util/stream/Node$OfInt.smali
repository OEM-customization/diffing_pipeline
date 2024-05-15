.class public interface abstract Ljava/util/stream/Node$OfInt;
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
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/Node$OfPrimitive",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/util/function/IntConsumer;",
        "[I",
        "Ljava/util/Spliterator$OfInt;",
        "Ljava/util/stream/Node$OfInt;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic lambda$-java_util_stream_Node$OfInt_13922(I)V
    .registers 1
    .param p0, "e"    # I

    .prologue
    return-void
.end method


# virtual methods
.method public copyInto([Ljava/lang/Integer;I)V
    .registers 7
    .param p1, "boxed"    # [Ljava/lang/Integer;
    .param p2, "offset"    # I

    .prologue
    .line 346
    sget-boolean v2, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v2, :cond_e

    .line 347
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "{0} calling Node.OfInt.copyInto(Integer[], int)"

    invoke-static {v2, v3}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 349
    :cond_e
    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 350
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    array-length v2, v0

    if-ge v1, v2, :cond_25

    .line 351
    add-int v2, p2, v1

    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v2

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 353
    :cond_25
    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .registers 3

    .prologue
    .line 336
    check-cast p1, [Ljava/lang/Integer;

    invoke-interface {p0, p1, p2}, Ljava/util/stream/Node$OfInt;->copyInto([Ljava/lang/Integer;I)V

    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    instance-of v0, p1, Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_a

    .line 327
    check-cast p1, Ljava/util/function/IntConsumer;

    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfInt;->forEach(Ljava/lang/Object;)V

    .line 334
    :goto_9
    return-void

    .line 330
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    :cond_a
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_18

    .line 331
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "{0} calling Node.OfInt.forEachRemaining(Consumer)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 332
    :cond_18
    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfInt;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_9
.end method

.method public getShape()Ljava/util/stream/StreamShape;
    .registers 2

    .prologue
    .line 380
    sget-object v0, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 369
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfInt;->newArray(I)[I

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[I
    .registers 3
    .param p1, "count"    # I

    .prologue
    .line 371
    new-array v0, p1, [I

    return-object v0
.end method

.method public truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfInt;
    .registers 15
    .param p1, "from"    # J
    .param p3, "to"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/function/IntFunction",
            "<[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/stream/Node$OfInt;"
        }
    .end annotation

    .prologue
    .line 357
    .local p5, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Integer;>;"
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-nez v5, :cond_f

    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->count()J

    move-result-wide v6

    cmp-long v5, p3, v6

    if-nez v5, :cond_f

    .line 358
    return-object p0

    .line 359
    :cond_f
    sub-long v2, p3, p1

    .line 360
    .local v2, "size":J
    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v4

    check-cast v4, Ljava/util/Spliterator$OfInt;

    .line 361
    .local v4, "spliterator":Ljava/util/Spliterator$OfInt;
    invoke-static {v2, v3}, Ljava/util/stream/Nodes;->intBuilder(J)Ljava/util/stream/Node$Builder$OfInt;

    move-result-object v1

    .line 362
    .local v1, "nodeBuilder":Ljava/util/stream/Node$Builder$OfInt;
    invoke-interface {v1, v2, v3}, Ljava/util/stream/Node$Builder$OfInt;->begin(J)V

    .line 363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    int-to-long v6, v0

    cmp-long v5, v6, p1

    if-gez v5, :cond_2f

    sget-object v5, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$2;->$INST$0:Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$2;

    invoke-interface {v4, v5}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v5

    if-eqz v5, :cond_2f

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 364
    :cond_2f
    const/4 v0, 0x0

    :goto_30
    int-to-long v6, v0

    cmp-long v5, v6, v2

    if-gez v5, :cond_3e

    invoke-interface {v4, v1}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v5

    if-eqz v5, :cond_3e

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 365
    :cond_3e
    invoke-interface {v1}, Ljava/util/stream/Node$Builder$OfInt;->end()V

    .line 366
    invoke-interface {v1}, Ljava/util/stream/Node$Builder$OfInt;->build()Ljava/util/stream/Node$OfInt;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfPrimitive;
    .registers 7

    .prologue
    .line 355
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfInt;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 7

    .prologue
    .line 355
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfInt;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method
