.class Ljava/util/Spliterators$3Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfLong;
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field nextElement:J

.field final synthetic val$spliterator:Ljava/util/Spliterator$OfLong;

.field valueReady:Z


# direct methods
.method constructor <init>(Ljava/util/Spliterator$OfLong;)V
    .registers 3

    .prologue
    .line 758
    iput-object p1, p0, Ljava/util/Spliterators$3Adapter;->val$spliterator:Ljava/util/Spliterator$OfLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    .line 758
    return-void
.end method


# virtual methods
.method public accept(J)V
    .registers 4
    .param p1, "t"    # J

    .prologue
    .line 764
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    .line 765
    iput-wide p1, p0, Ljava/util/Spliterators$3Adapter;->nextElement:J

    .line 766
    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 170
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 770
    iget-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    if-nez v0, :cond_9

    .line 771
    iget-object v0, p0, Ljava/util/Spliterators$3Adapter;->val$spliterator:Ljava/util/Spliterator$OfLong;

    invoke-interface {v0, p0}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    .line 772
    :cond_9
    iget-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 192
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfLong;->next()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public nextLong()J
    .registers 3

    .prologue
    .line 777
    iget-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    if-nez v0, :cond_12

    invoke-virtual {p0}, Ljava/util/Spliterators$3Adapter;->hasNext()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    .line 778
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 780
    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    .line 781
    iget-wide v0, p0, Ljava/util/Spliterators$3Adapter;->nextElement:J

    return-wide v0
.end method
