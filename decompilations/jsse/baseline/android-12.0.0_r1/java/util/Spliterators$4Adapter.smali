.class Ljava/util/Spliterators$4Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfDouble;
.implements Ljava/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/PrimitiveIterator$OfDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field blacklist nextElement:D

.field final synthetic blacklist val$spliterator:Ljava/util/Spliterator$OfDouble;

.field blacklist valueReady:Z


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator$OfDouble;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 803
    iput-object p1, p0, Ljava/util/Spliterators$4Adapter;->val$spliterator:Ljava/util/Spliterator$OfDouble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 4
    .param p1, "t"    # D

    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    .line 810
    iput-wide p1, p0, Ljava/util/Spliterators$4Adapter;->nextElement:D

    .line 811
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 815
    iget-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    if-nez v0, :cond_9

    .line 816
    iget-object v0, p0, Ljava/util/Spliterators$4Adapter;->val$spliterator:Ljava/util/Spliterator$OfDouble;

    invoke-interface {v0, p0}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    .line 817
    :cond_9
    iget-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    return v0
.end method

.method public whitelist test-api nextDouble()D
    .registers 3

    .line 822
    iget-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Ljava/util/Spliterators$4Adapter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    .line 823
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 825
    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    .line 826
    iget-wide v0, p0, Ljava/util/Spliterators$4Adapter;->nextElement:D

    return-wide v0
.end method
