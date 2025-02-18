.class Ljava/util/ArrayDeque$DeqIterator;
.super Ljava/lang/Object;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeqIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field private fence:I

.field private lastRet:I

.field final synthetic this$0:Ljava/util/ArrayDeque;


# direct methods
.method private constructor <init>(Ljava/util/ArrayDeque;)V
    .registers 3

    .prologue
    .line 595
    .local p0, "this":Ljava/util/ArrayDeque$DeqIterator;, "Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    .local p1, "this$0":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iput-object p1, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    iget v0, v0, Ljava/util/ArrayDeque;->head:I

    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    .line 605
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    iget v0, v0, Ljava/util/ArrayDeque;->tail:I

    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->fence:I

    .line 611
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    .line 595
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque$DeqIterator;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/ArrayDeque;
    .param p2, "-this1"    # Ljava/util/ArrayDeque$DeqIterator;

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque$DeqIterator;, "Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    invoke-direct {p0, p1}, Ljava/util/ArrayDeque$DeqIterator;-><init>(Ljava/util/ArrayDeque;)V

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 643
    .local p0, "this":Ljava/util/ArrayDeque$DeqIterator;, "Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    iget-object v5, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    iget-object v0, v5, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 645
    .local v0, "a":[Ljava/lang/Object;
    array-length v5, v0

    add-int/lit8 v4, v5, -0x1

    .local v4, "m":I
    iget v2, p0, Ljava/util/ArrayDeque$DeqIterator;->fence:I

    .local v2, "f":I
    iget v3, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    .line 646
    .local v3, "i":I
    iput v2, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    .line 647
    :goto_10
    if-eq v3, v2, :cond_24

    .line 648
    aget-object v1, v0, v3

    .line 649
    .local v1, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v5, v3, 0x1

    and-int v3, v5, v4

    .line 653
    if-nez v1, :cond_20

    .line 654
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 655
    :cond_20
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_10

    .line 657
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_24
    return-void
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 614
    .local p0, "this":Ljava/util/ArrayDeque$DeqIterator;, "Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    iget v0, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    iget v1, p0, Ljava/util/ArrayDeque$DeqIterator;->fence:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 618
    .local p0, "this":Ljava/util/ArrayDeque$DeqIterator;, "Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    iget v1, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    iget v2, p0, Ljava/util/ArrayDeque$DeqIterator;->fence:I

    if-ne v1, v2, :cond_c

    .line 619
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 621
    :cond_c
    iget-object v1, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    iget-object v1, v1, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    aget-object v0, v1, v2

    .line 624
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    iget v1, v1, Ljava/util/ArrayDeque;->tail:I

    iget v2, p0, Ljava/util/ArrayDeque$DeqIterator;->fence:I

    if-ne v1, v2, :cond_1e

    if-nez v0, :cond_24

    .line 625
    :cond_1e
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 626
    :cond_24
    iget v1, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    iput v1, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    .line 627
    iget v1, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    iget-object v2, v2, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    .line 628
    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 632
    .local p0, "this":Ljava/util/ArrayDeque$DeqIterator;, "Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    iget v0, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    if-gez v0, :cond_a

    .line 633
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 634
    :cond_a
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    iget v1, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->delete(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 635
    iget v0, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    iget-object v1, v1, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    .line 636
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    iget v0, v0, Ljava/util/ArrayDeque;->tail:I

    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->fence:I

    .line 638
    :cond_28
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    .line 639
    return-void
.end method
