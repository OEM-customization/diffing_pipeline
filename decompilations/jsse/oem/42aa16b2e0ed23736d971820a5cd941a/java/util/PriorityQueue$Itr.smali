.class final Ljava/util/PriorityQueue$Itr;
.super Ljava/lang/Object;
.source "PriorityQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/PriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o cursor:I

.field private greylist-max-o expectedModCount:I

.field private greylist-max-o forgetMeNot:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TE;>;"
        }
    .end annotation
.end field

.field private greylist-max-o lastRet:I

.field private greylist-max-o lastRetElt:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/PriorityQueue;


# direct methods
.method private constructor blacklist <init>(Ljava/util/PriorityQueue;)V
    .registers 2

    .line 487
    .local p0, "this":Ljava/util/PriorityQueue$Itr;, "Ljava/util/PriorityQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    const/4 p1, -0x1

    iput p1, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    .line 525
    iget-object p1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget p1, p1, Ljava/util/PriorityQueue;->modCount:I

    iput p1, p0, Ljava/util/PriorityQueue$Itr;->expectedModCount:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/PriorityQueue;Ljava/util/PriorityQueue$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/PriorityQueue;
    .param p2, "x1"    # Ljava/util/PriorityQueue$1;

    .line 487
    .local p0, "this":Ljava/util/PriorityQueue$Itr;, "Ljava/util/PriorityQueue<TE;>.Itr;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue$Itr;-><init>(Ljava/util/PriorityQueue;)V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api hasNext()Z
    .registers 3

    .line 528
    .local p0, "this":Ljava/util/PriorityQueue$Itr;, "Ljava/util/PriorityQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v1, v1, Ljava/util/PriorityQueue;->size:I

    if-lt v0, v1, :cond_15

    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_13

    .line 529
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 528
    :goto_16
    return v0
.end method

.method public whitelist core-platform-api test-api next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 534
    .local p0, "this":Ljava/util/PriorityQueue$Itr;, "Ljava/util/PriorityQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/PriorityQueue$Itr;->expectedModCount:I

    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v1, v1, Ljava/util/PriorityQueue;->modCount:I

    if-ne v0, v1, :cond_35

    .line 536
    iget v0, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v1, v1, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_1f

    .line 537
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget-object v0, v0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    iput v1, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    aget-object v0, v0, v1

    return-object v0

    .line 538
    :cond_1f
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_2f

    .line 539
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    .line 540
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    .line 541
    if-eqz v0, :cond_2f

    .line 542
    return-object v0

    .line 544
    :cond_2f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 535
    :cond_35
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api remove()V
    .registers 4

    .line 548
    .local p0, "this":Ljava/util/PriorityQueue$Itr;, "Ljava/util/PriorityQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/PriorityQueue$Itr;->expectedModCount:I

    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v1, v1, Ljava/util/PriorityQueue;->modCount:I

    if-ne v0, v1, :cond_48

    .line 550
    iget v0, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2f

    .line 551
    iget-object v2, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v0}, Ljava/util/PriorityQueue;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 552
    .local v0, "moved":Ljava/lang/Object;, "TE;"
    iput v1, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    .line 553
    if-nez v0, :cond_1e

    .line 554
    iget v1, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    goto :goto_2e

    .line 556
    :cond_1e
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    if-nez v1, :cond_29

    .line 557
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    .line 558
    :cond_29
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 560
    .end local v0    # "moved":Ljava/lang/Object;, "TE;"
    :goto_2e
    goto :goto_3b

    :cond_2f
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    if-eqz v0, :cond_42

    .line 561
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->removeEq(Ljava/lang/Object;)Z

    .line 562
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    .line 566
    :goto_3b
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v0, v0, Ljava/util/PriorityQueue;->modCount:I

    iput v0, p0, Ljava/util/PriorityQueue$Itr;->expectedModCount:I

    .line 567
    return-void

    .line 564
    :cond_42
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 549
    :cond_48
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
