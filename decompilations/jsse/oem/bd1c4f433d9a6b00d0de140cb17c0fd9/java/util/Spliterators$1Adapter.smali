.class Ljava/util/Spliterators$1Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;",
        "Ljava/util/function/Consumer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field nextElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic val$spliterator:Ljava/util/Spliterator;

.field valueReady:Z


# direct methods
.method constructor <init>(Ljava/util/Spliterator;)V
    .registers 3

    .prologue
    .line 668
    iput-object p1, p0, Ljava/util/Spliterators$1Adapter;->val$spliterator:Ljava/util/Spliterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Spliterators$1Adapter;->valueReady:Z

    .line 668
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 674
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Spliterators$1Adapter;->valueReady:Z

    .line 675
    iput-object p1, p0, Ljava/util/Spliterators$1Adapter;->nextElement:Ljava/lang/Object;

    .line 676
    return-void
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 680
    iget-boolean v0, p0, Ljava/util/Spliterators$1Adapter;->valueReady:Z

    if-nez v0, :cond_9

    .line 681
    iget-object v0, p0, Ljava/util/Spliterators$1Adapter;->val$spliterator:Ljava/util/Spliterator;

    invoke-interface {v0, p0}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 682
    :cond_9
    iget-boolean v0, p0, Ljava/util/Spliterators$1Adapter;->valueReady:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 687
    iget-boolean v0, p0, Ljava/util/Spliterators$1Adapter;->valueReady:Z

    if-nez v0, :cond_12

    invoke-virtual {p0}, Ljava/util/Spliterators$1Adapter;->hasNext()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    .line 688
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 690
    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Spliterators$1Adapter;->valueReady:Z

    .line 691
    iget-object v0, p0, Ljava/util/Spliterators$1Adapter;->nextElement:Ljava/lang/Object;

    return-object v0
.end method