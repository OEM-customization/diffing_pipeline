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
.field blacklist nextElement:J

.field final synthetic blacklist val$spliterator:Ljava/util/Spliterator$OfLong;

.field blacklist valueReady:Z


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator$OfLong;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 758
    iput-object p1, p0, Ljava/util/Spliterators$3Adapter;->val$spliterator:Ljava/util/Spliterator$OfLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api accept(J)V
    .registers 4
    .param p1, "t"    # J

    .line 764
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    .line 765
    iput-wide p1, p0, Ljava/util/Spliterators$3Adapter;->nextElement:J

    .line 766
    return-void
.end method

.method public whitelist core-platform-api test-api hasNext()Z
    .registers 2

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

.method public whitelist core-platform-api test-api nextLong()J
    .registers 3

    .line 777
    iget-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Ljava/util/Spliterators$3Adapter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    .line 778
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 780
    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Spliterators$3Adapter;->valueReady:Z

    .line 781
    iget-wide v0, p0, Ljava/util/Spliterators$3Adapter;->nextElement:J

    return-wide v0
.end method
