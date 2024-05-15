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
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field cursor:I

.field expectedModCount:I

.field lastRet:I

.field final synthetic this$0:Ljava/util/AbstractList;


# direct methods
.method private constructor <init>(Ljava/util/AbstractList;)V
    .registers 3

    .prologue
    .line 330
    .local p0, "this":Ljava/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    .local p1, "this$0":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    iput-object p1, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/AbstractList$Itr;->cursor:I

    .line 341
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    .line 348
    iget-object v0, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/AbstractList$Itr;->expectedModCount:I

    .line 330
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/AbstractList;Ljava/util/AbstractList$Itr;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/AbstractList;
    .param p2, "-this1"    # Ljava/util/AbstractList$Itr;

    .prologue
    .local p0, "this":Ljava/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    invoke-direct {p0, p1}, Ljava/util/AbstractList$Itr;-><init>(Ljava/util/AbstractList;)V

    return-void
.end method


# virtual methods
.method final checkForComodification()V
    .registers 3

    .prologue
    .line 385
    .local p0, "this":Ljava/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iget v1, p0, Ljava/util/AbstractList$Itr;->expectedModCount:I

    if-eq v0, v1, :cond_e

    .line 386
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 387
    :cond_e
    return-void
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 351
    .local p0, "this":Ljava/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    iget v0, p0, Ljava/util/AbstractList$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    invoke-virtual {v1}, Ljava/util/AbstractList;->size()I

    move-result v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Ljava/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    invoke-virtual {p0}, Ljava/util/AbstractList$Itr;->checkForComodification()V

    .line 357
    :try_start_3
    iget v1, p0, Ljava/util/AbstractList$Itr;->cursor:I

    .line 358
    .local v1, "i":I
    iget-object v3, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    invoke-virtual {v3, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 359
    .local v2, "next":Ljava/lang/Object;, "TE;"
    iput v1, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    .line 360
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava/util/AbstractList$Itr;->cursor:I
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_11} :catch_12

    .line 361
    return-object v2

    .line 362
    .end local v1    # "i":I
    .end local v2    # "next":Ljava/lang/Object;, "TE;"
    :catch_12
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0}, Ljava/util/AbstractList$Itr;->checkForComodification()V

    .line 364
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3
.end method

.method public remove()V
    .registers 4

    .prologue
    .line 369
    .local p0, "this":Ljava/util/AbstractList$Itr;, "Ljava/util/AbstractList<TE;>.Itr;"
    iget v1, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    if-gez v1, :cond_a

    .line 370
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 371
    :cond_a
    invoke-virtual {p0}, Ljava/util/AbstractList$Itr;->checkForComodification()V

    .line 374
    :try_start_d
    iget-object v1, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    .line 375
    iget v1, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    iget v2, p0, Ljava/util/AbstractList$Itr;->cursor:I

    if-ge v1, v2, :cond_20

    .line 376
    iget v1, p0, Ljava/util/AbstractList$Itr;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/AbstractList$Itr;->cursor:I

    .line 377
    :cond_20
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    .line 378
    iget-object v1, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/AbstractList$Itr;->expectedModCount:I
    :try_end_29
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_29} :catch_2a

    .line 382
    return-void

    .line 379
    :catch_2a
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method
