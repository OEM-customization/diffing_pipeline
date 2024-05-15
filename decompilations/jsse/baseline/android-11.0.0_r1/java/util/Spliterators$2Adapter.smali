.class Ljava/util/Spliterators$2Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfInt;
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfInt;)Ljava/util/PrimitiveIterator$OfInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field blacklist nextElement:I

.field final synthetic blacklist val$spliterator:Ljava/util/Spliterator$OfInt;

.field blacklist valueReady:Z


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator$OfInt;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 713
    iput-object p1, p0, Ljava/util/Spliterators$2Adapter;->val$spliterator:Ljava/util/Spliterator$OfInt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api accept(I)V
    .registers 3
    .param p1, "t"    # I

    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    .line 720
    iput p1, p0, Ljava/util/Spliterators$2Adapter;->nextElement:I

    .line 721
    return-void
.end method

.method public whitelist core-platform-api test-api hasNext()Z
    .registers 2

    .line 725
    iget-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    if-nez v0, :cond_9

    .line 726
    iget-object v0, p0, Ljava/util/Spliterators$2Adapter;->val$spliterator:Ljava/util/Spliterator$OfInt;

    invoke-interface {v0, p0}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    .line 727
    :cond_9
    iget-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    return v0
.end method

.method public whitelist core-platform-api test-api nextInt()I
    .registers 2

    .line 732
    iget-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Ljava/util/Spliterators$2Adapter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    .line 733
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 735
    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    .line 736
    iget v0, p0, Ljava/util/Spliterators$2Adapter;->nextElement:I

    return v0
.end method
