.class Ljava/util/AbstractList$Itr;
.super Ljava/lang/Object;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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
.field greylist-max-o cursor:I

.field greylist-max-o expectedModCount:I

.field greylist-max-o lastRet:I

.field final synthetic blacklist this$0:Ljava/util/AbstractList;


# direct methods
.method private constructor blacklist <init>(Ljava/util/AbstractList;)V
    .registers 3

    .line 343
    .local p0, "this":Ljava/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/AbstractList$Itr;->cursor:I

    .line 354
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    .line 361
    iget p1, p1, Ljava/util/AbstractList;->modCount:I

    iput p1, p0, Ljava/util/AbstractList$Itr;->expectedModCount:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/AbstractList;Ljava/util/AbstractList$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/AbstractList;
    .param p2, "x1"    # Ljava/util/AbstractList$1;

    .line 343
    .local p0, "this":Ljava/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    invoke-direct {p0, p1}, Ljava/util/AbstractList$Itr;-><init>(Ljava/util/AbstractList;)V

    return-void
.end method


# virtual methods
.method final greylist-max-o checkForComodification()V
    .registers 3

    .line 398
    .local p0, "this":Ljava/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iget v1, p0, Ljava/util/AbstractList$Itr;->expectedModCount:I

    if-ne v0, v1, :cond_9

    .line 400
    return-void

    .line 399
    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api hasNext()Z
    .registers 3

    .line 364
    .local p0, "this":Ljava/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    iget v0, p0, Ljava/util/AbstractList$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    invoke-virtual {v1}, Ljava/util/AbstractList;->size()I

    move-result v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 368
    .local p0, "this":Ljava/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    invoke-virtual {p0}, Ljava/util/AbstractList$Itr;->checkForComodification()V

    .line 370
    :try_start_3
    iget v0, p0, Ljava/util/AbstractList$Itr;->cursor:I

    .line 371
    .local v0, "i":I
    iget-object v1, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 372
    .local v1, "next":Ljava/lang/Object;, "TE;"
    iput v0, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    .line 373
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljava/util/AbstractList$Itr;->cursor:I
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_11} :catch_12

    .line 374
    return-object v1

    .line 375
    .end local v0    # "i":I
    .end local v1    # "next":Ljava/lang/Object;, "TE;"
    :catch_12
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0}, Ljava/util/AbstractList$Itr;->checkForComodification()V

    .line 377
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 382
    .local p0, "this":Ljava/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    iget v0, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    if-ltz v0, :cond_2a

    .line 384
    invoke-virtual {p0}, Ljava/util/AbstractList$Itr;->checkForComodification()V

    .line 387
    :try_start_7
    iget-object v0, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    .line 388
    iget v0, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    iget v1, p0, Ljava/util/AbstractList$Itr;->cursor:I

    if-ge v0, v1, :cond_18

    .line 389
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/AbstractList$Itr;->cursor:I

    .line 390
    :cond_18
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    .line 391
    iget-object v0, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/AbstractList$Itr;->expectedModCount:I
    :try_end_21
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_21} :catch_23

    .line 394
    nop

    .line 395
    return-void

    .line 392
    :catch_23
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 383
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
