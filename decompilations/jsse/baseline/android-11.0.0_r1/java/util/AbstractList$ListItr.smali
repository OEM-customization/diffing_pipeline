.class Ljava/util/AbstractList$ListItr;
.super Ljava/util/AbstractList$Itr;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "TE;>.Itr;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/AbstractList;


# direct methods
.method constructor blacklist <init>(Ljava/util/AbstractList;I)V
    .registers 4
    .param p2, "index"    # I

    .line 404
    .local p0, "this":Ljava/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    iput-object p1, p0, Ljava/util/AbstractList$ListItr;->this$0:Ljava/util/AbstractList;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/AbstractList$Itr;-><init>(Ljava/util/AbstractList;Ljava/util/AbstractList$1;)V

    .line 405
    iput p2, p0, Ljava/util/AbstractList$ListItr;->cursor:I

    .line 406
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 447
    .local p0, "this":Ljava/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/AbstractList$ListItr;->checkForComodification()V

    .line 450
    :try_start_3
    iget v0, p0, Ljava/util/AbstractList$ListItr;->cursor:I

    .line 451
    .local v0, "i":I
    iget-object v1, p0, Ljava/util/AbstractList$ListItr;->this$0:Ljava/util/AbstractList;

    invoke-virtual {v1, v0, p1}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 452
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/AbstractList$ListItr;->lastRet:I

    .line 453
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/AbstractList$ListItr;->cursor:I

    .line 454
    iget-object v1, p0, Ljava/util/AbstractList$ListItr;->this$0:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/AbstractList$ListItr;->expectedModCount:I
    :try_end_17
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_17} :catch_19

    .line 457
    .end local v0    # "i":I
    nop

    .line 458
    return-void

    .line 455
    :catch_19
    move-exception v0

    .line 456
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public whitelist core-platform-api test-api hasPrevious()Z
    .registers 2

    .line 409
    .local p0, "this":Ljava/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/AbstractList$ListItr;->cursor:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist core-platform-api test-api nextIndex()I
    .registers 2

    .line 426
    .local p0, "this":Ljava/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/AbstractList$ListItr;->cursor:I

    return v0
.end method

.method public whitelist core-platform-api test-api previous()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 413
    .local p0, "this":Ljava/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    invoke-virtual {p0}, Ljava/util/AbstractList$ListItr;->checkForComodification()V

    .line 415
    :try_start_3
    iget v0, p0, Ljava/util/AbstractList$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    .line 416
    .local v0, "i":I
    iget-object v1, p0, Ljava/util/AbstractList$ListItr;->this$0:Ljava/util/AbstractList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 417
    .local v1, "previous":Ljava/lang/Object;, "TE;"
    iput v0, p0, Ljava/util/AbstractList$ListItr;->cursor:I

    iput v0, p0, Ljava/util/AbstractList$ListItr;->lastRet:I
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_11} :catch_12

    .line 418
    return-object v1

    .line 419
    .end local v0    # "i":I
    .end local v1    # "previous":Ljava/lang/Object;, "TE;"
    :catch_12
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0}, Ljava/util/AbstractList$ListItr;->checkForComodification()V

    .line 421
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist core-platform-api test-api previousIndex()I
    .registers 2

    .line 430
    .local p0, "this":Ljava/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/AbstractList$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist core-platform-api test-api set(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 434
    .local p0, "this":Ljava/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/AbstractList$ListItr;->lastRet:I

    if-ltz v0, :cond_1d

    .line 436
    invoke-virtual {p0}, Ljava/util/AbstractList$ListItr;->checkForComodification()V

    .line 439
    :try_start_7
    iget-object v0, p0, Ljava/util/AbstractList$ListItr;->this$0:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/AbstractList$ListItr;->lastRet:I

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object v0, p0, Ljava/util/AbstractList$ListItr;->this$0:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/AbstractList$ListItr;->expectedModCount:I
    :try_end_14
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_14} :catch_16

    .line 443
    nop

    .line 444
    return-void

    .line 441
    :catch_16
    move-exception v0

    .line 442
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 435
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
