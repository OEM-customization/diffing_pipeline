.class final Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;
.super Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/function/LongConsumer;",
        "Ljava/util/Spliterator$OfLong;",
        ">;",
        "Ljava/util/Spliterator$OfLong;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/Spliterator$OfLong;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator$OfLong;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;-><init>(Ljava/util/function/Supplier;)V

    .line 592
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 2

    .prologue
    .line 571
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 3

    .prologue
    .line 566
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfLong;
    .registers 2

    .prologue
    .line 518
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfLong;

    return-object v0
.end method
