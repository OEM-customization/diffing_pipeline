.class Ljava/lang/ThreadLocal$ThreadLocalMap;
.super Ljava/lang/Object;
.source "ThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ThreadLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThreadLocalMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    }
.end annotation


# static fields
.field private static final greylist-max-o INITIAL_CAPACITY:I = 0x10


# instance fields
.field private greylist-max-o size:I

.field private greylist-max-o table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

.field private greylist-max-o threshold:I


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/ThreadLocal$ThreadLocalMap;)V
    .registers 12
    .param p1, "parentMap"    # Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 380
    iget-object v0, p1, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 381
    .local v0, "parentTable":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v1, v0

    .line 382
    .local v1, "len":I
    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->setThreshold(I)V

    .line 383
    new-array v2, v1, [Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    iput-object v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 385
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_11
    if-ge v2, v1, :cond_47

    .line 386
    aget-object v3, v0, v2

    .line 387
    .local v3, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v3, :cond_44

    .line 389
    invoke-virtual {v3}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ThreadLocal;

    .line 390
    .local v4, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/lang/Object;>;"
    if-eqz v4, :cond_44

    .line 391
    iget-object v5, v3, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->childValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 392
    .local v5, "value":Ljava/lang/Object;
    new-instance v6, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    invoke-direct {v6, v4, v5}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    .line 393
    .local v6, "c":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    # getter for: Ljava/lang/ThreadLocal;->threadLocalHashCode:I
    invoke-static {v4}, Ljava/lang/ThreadLocal;->access$400(Ljava/lang/ThreadLocal;)I

    move-result v7

    add-int/lit8 v8, v1, -0x1

    and-int/2addr v7, v8

    .line 394
    .local v7, "h":I
    :goto_31
    iget-object v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    aget-object v9, v8, v7

    if-eqz v9, :cond_3c

    .line 395
    invoke-static {v7, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v7

    goto :goto_31

    .line 396
    :cond_3c
    aput-object v6, v8, v7

    .line 397
    iget v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 385
    .end local v3    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .end local v4    # "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/lang/Object;>;"
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "c":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .end local v7    # "h":I
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 401
    .end local v2    # "j":I
    :cond_47
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/ThreadLocal$ThreadLocalMap;
    .param p2, "x1"    # Ljava/lang/ThreadLocal$1;

    .line 298
    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;-><init>(Ljava/lang/ThreadLocal$ThreadLocalMap;)V

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .registers 7
    .param p2, "firstValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 365
    .local p1, "firstKey":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 366
    const/16 v0, 0x10

    new-array v1, v0, [Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    iput-object v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 367
    # getter for: Ljava/lang/ThreadLocal;->threadLocalHashCode:I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$400(Ljava/lang/ThreadLocal;)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    .line 368
    .local v1, "i":I
    iget-object v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    new-instance v3, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    invoke-direct {v3, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    aput-object v3, v2, v1

    .line 369
    const/4 v2, 0x1

    iput v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 370
    invoke-direct {p0, v0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->setThreshold(I)V

    .line 371
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .registers 3
    .param p0, "x0"    # Ljava/lang/ThreadLocal$ThreadLocalMap;
    .param p1, "x1"    # Ljava/lang/ThreadLocal;

    .line 298
    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->getEntry(Ljava/lang/ThreadLocal;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$100(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/ThreadLocal$ThreadLocalMap;
    .param p1, "x1"    # Ljava/lang/ThreadLocal;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 298
    invoke-direct {p0, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist access$200(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;)V
    .registers 2
    .param p0, "x0"    # Ljava/lang/ThreadLocal$ThreadLocalMap;
    .param p1, "x1"    # Ljava/lang/ThreadLocal;

    .line 298
    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->remove(Ljava/lang/ThreadLocal;)V

    return-void
.end method

.method private greylist-max-o cleanSomeSlots(II)Z
    .registers 8
    .param p1, "i"    # I
    .param p2, "n"    # I

    .line 651
    const/4 v0, 0x0

    .line 652
    .local v0, "removed":Z
    iget-object v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 653
    .local v1, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v2, v1

    .line 655
    .local v2, "len":I
    :goto_4
    invoke-static {p1, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result p1

    .line 656
    aget-object v3, v1, p1

    .line 657
    .local v3, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_18

    .line 658
    move p2, v2

    .line 659
    const/4 v0, 0x1

    .line 660
    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    move-result p1

    .line 662
    .end local v3    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :cond_18
    ushr-int/lit8 v3, p2, 0x1

    move p2, v3

    if-nez v3, :cond_1e

    .line 663
    return v0

    .line 662
    :cond_1e
    goto :goto_4
.end method

.method private greylist-max-o expungeStaleEntries()V
    .registers 6

    .line 714
    iget-object v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 715
    .local v0, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v1, v0

    .line 716
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_4
    if-ge v2, v1, :cond_16

    .line 717
    aget-object v3, v0, v2

    .line 718
    .local v3, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_13

    .line 719
    invoke-direct {p0, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    .line 716
    .end local v3    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 721
    .end local v2    # "j":I
    :cond_16
    return-void
.end method

.method private greylist-max-o expungeStaleEntry(I)I
    .registers 10
    .param p1, "staleSlot"    # I

    .line 591
    iget-object v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 592
    .local v0, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v1, v0

    .line 595
    .local v1, "len":I
    aget-object v2, v0, p1

    const/4 v3, 0x0

    iput-object v3, v2, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 596
    aput-object v3, v0, p1

    .line 597
    iget v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 602
    invoke-static {p1, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v2

    .line 603
    .local v2, "i":I
    :goto_14
    aget-object v4, v0, v2

    move-object v5, v4

    .local v5, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v4, :cond_47

    .line 605
    invoke-virtual {v5}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ThreadLocal;

    .line 606
    .local v4, "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    if-nez v4, :cond_2c

    .line 607
    iput-object v3, v5, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 608
    aput-object v3, v0, v2

    .line 609
    iget v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    goto :goto_42

    .line 611
    :cond_2c
    # getter for: Ljava/lang/ThreadLocal;->threadLocalHashCode:I
    invoke-static {v4}, Ljava/lang/ThreadLocal;->access$400(Ljava/lang/ThreadLocal;)I

    move-result v6

    add-int/lit8 v7, v1, -0x1

    and-int/2addr v6, v7

    .line 612
    .local v6, "h":I
    if-eq v6, v2, :cond_42

    .line 613
    aput-object v3, v0, v2

    .line 617
    :goto_37
    aget-object v7, v0, v6

    if-eqz v7, :cond_40

    .line 618
    invoke-static {v6, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v6

    goto :goto_37

    .line 619
    :cond_40
    aput-object v5, v0, v6

    .line 604
    .end local v4    # "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    .end local v6    # "h":I
    :cond_42
    :goto_42
    invoke-static {v2, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v2

    goto :goto_14

    .line 623
    :cond_47
    return v2
.end method

.method private greylist-max-o getEntry(Ljava/lang/ThreadLocal;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal<",
            "*>;)",
            "Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;"
        }
    .end annotation

    .line 414
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    # getter for: Ljava/lang/ThreadLocal;->threadLocalHashCode:I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$400(Ljava/lang/ThreadLocal;)I

    move-result v0

    iget-object v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    .line 415
    .local v0, "i":I
    aget-object v1, v1, v0

    .line 417
    .local v1, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v1, :cond_15

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->refersTo(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 418
    return-object v1

    .line 420
    :cond_15
    invoke-direct {p0, p1, v0, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->getEntryAfterMiss(Ljava/lang/ThreadLocal;ILjava/lang/ThreadLocal$ThreadLocalMap$Entry;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o getEntryAfterMiss(Ljava/lang/ThreadLocal;ILjava/lang/ThreadLocal$ThreadLocalMap$Entry;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .registers 8
    .param p2, "i"    # I
    .param p3, "e"    # Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal<",
            "*>;I",
            "Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;",
            ")",
            "Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;"
        }
    .end annotation

    .line 433
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    iget-object v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 434
    .local v0, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v1, v0

    .line 436
    .local v1, "len":I
    :goto_3
    const/4 v2, 0x0

    if-eqz p3, :cond_1e

    .line 438
    invoke-virtual {p3, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->refersTo(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 439
    return-object p3

    .line 440
    :cond_d
    invoke-virtual {p3, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->refersTo(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 441
    invoke-direct {p0, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    goto :goto_1b

    .line 443
    :cond_17
    invoke-static {p2, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result p2

    .line 444
    :goto_1b
    aget-object p3, v0, p2

    goto :goto_3

    .line 446
    :cond_1e
    return-object v2
.end method

.method private static greylist-max-o nextIndex(II)I
    .registers 3
    .param p0, "i"    # I
    .param p1, "len"    # I

    .line 350
    add-int/lit8 v0, p0, 0x1

    if-ge v0, p1, :cond_7

    add-int/lit8 v0, p0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static greylist-max-o prevIndex(II)I
    .registers 3
    .param p0, "i"    # I
    .param p1, "len"    # I

    .line 357
    add-int/lit8 v0, p0, -0x1

    if-ltz v0, :cond_7

    add-int/lit8 v0, p0, -0x1

    goto :goto_9

    :cond_7
    add-int/lit8 v0, p1, -0x1

    :goto_9
    return v0
.end method

.method private greylist-max-o rehash()V
    .registers 4

    .line 672
    invoke-direct {p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntries()V

    .line 675
    iget v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    iget v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    div-int/lit8 v2, v1, 0x4

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_f

    .line 676
    invoke-direct {p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->resize()V

    .line 677
    :cond_f
    return-void
.end method

.method private greylist-max-o remove(Ljava/lang/ThreadLocal;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal<",
            "*>;)V"
        }
    .end annotation

    .line 492
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    iget-object v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 493
    .local v0, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v1, v0

    .line 494
    .local v1, "len":I
    # getter for: Ljava/lang/ThreadLocal;->threadLocalHashCode:I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$400(Ljava/lang/ThreadLocal;)I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    and-int/2addr v2, v3

    .line 495
    .local v2, "i":I
    aget-object v3, v0, v2

    .line 496
    .local v3, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :goto_c
    if-eqz v3, :cond_23

    .line 498
    invoke-virtual {v3}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_1b

    .line 499
    invoke-virtual {v3}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->clear()V

    .line 500
    invoke-direct {p0, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    .line 501
    return-void

    .line 497
    :cond_1b
    invoke-static {v2, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v4

    move v2, v4

    aget-object v3, v0, v4

    goto :goto_c

    .line 504
    .end local v3    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :cond_23
    return-void
.end method

.method private greylist-max-o replaceStaleEntry(Ljava/lang/ThreadLocal;Ljava/lang/Object;I)V
    .registers 11
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "staleSlot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal<",
            "*>;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 523
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    iget-object v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 524
    .local v0, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v1, v0

    .line 531
    .local v1, "len":I
    move v2, p3

    .line 532
    .local v2, "slotToExpunge":I
    invoke-static {p3, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->prevIndex(II)I

    move-result v3

    .line 533
    .local v3, "i":I
    :goto_8
    aget-object v4, v0, v3

    move-object v5, v4

    .local v5, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v4, :cond_19

    .line 535
    invoke-virtual {v5}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_14

    .line 536
    move v2, v3

    .line 534
    :cond_14
    invoke-static {v3, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->prevIndex(II)I

    move-result v3

    goto :goto_8

    .line 540
    .end local v3    # "i":I
    :cond_19
    invoke-static {p3, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v3

    .line 541
    .restart local v3    # "i":I
    :goto_1d
    aget-object v4, v0, v3

    move-object v5, v4

    if-eqz v4, :cond_47

    .line 543
    invoke-virtual {v5}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ThreadLocal;

    .line 550
    .local v4, "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    if-ne v4, p1, :cond_3d

    .line 551
    iput-object p2, v5, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 553
    aget-object v6, v0, p3

    aput-object v6, v0, v3

    .line 554
    aput-object v5, v0, p3

    .line 557
    if-ne v2, p3, :cond_35

    .line 558
    move v2, v3

    .line 559
    :cond_35
    invoke-direct {p0, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    move-result v6

    invoke-direct {p0, v6, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->cleanSomeSlots(II)Z

    .line 560
    return-void

    .line 566
    :cond_3d
    if-nez v4, :cond_42

    if-ne v2, p3, :cond_42

    .line 567
    move v2, v3

    .line 542
    .end local v4    # "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    :cond_42
    invoke-static {v3, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v3

    goto :goto_1d

    .line 571
    .end local v3    # "i":I
    :cond_47
    aget-object v3, v0, p3

    const/4 v4, 0x0

    iput-object v4, v3, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 572
    new-instance v3, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    invoke-direct {v3, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    aput-object v3, v0, p3

    .line 575
    if-eq v2, p3, :cond_5c

    .line 576
    invoke-direct {p0, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    move-result v3

    invoke-direct {p0, v3, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->cleanSomeSlots(II)Z

    .line 577
    :cond_5c
    return-void
.end method

.method private greylist-max-o resize()V
    .registers 11

    .line 683
    iget-object v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 684
    .local v0, "oldTab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v1, v0

    .line 685
    .local v1, "oldLen":I
    mul-int/lit8 v2, v1, 0x2

    .line 686
    .local v2, "newLen":I
    new-array v3, v2, [Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 687
    .local v3, "newTab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    const/4 v4, 0x0

    .line 689
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_9
    if-ge v5, v1, :cond_32

    .line 690
    aget-object v6, v0, v5

    .line 691
    .local v6, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v6, :cond_2f

    .line 692
    invoke-virtual {v6}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ThreadLocal;

    .line 693
    .local v7, "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    if-nez v7, :cond_1b

    .line 694
    const/4 v8, 0x0

    iput-object v8, v6, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    goto :goto_2f

    .line 696
    :cond_1b
    # getter for: Ljava/lang/ThreadLocal;->threadLocalHashCode:I
    invoke-static {v7}, Ljava/lang/ThreadLocal;->access$400(Ljava/lang/ThreadLocal;)I

    move-result v8

    add-int/lit8 v9, v2, -0x1

    and-int/2addr v8, v9

    .line 697
    .local v8, "h":I
    :goto_22
    aget-object v9, v3, v8

    if-eqz v9, :cond_2b

    .line 698
    invoke-static {v8, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v8

    goto :goto_22

    .line 699
    :cond_2b
    aput-object v6, v3, v8

    .line 700
    add-int/lit8 v4, v4, 0x1

    .line 689
    .end local v6    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .end local v7    # "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    .end local v8    # "h":I
    :cond_2f
    :goto_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 705
    .end local v5    # "j":I
    :cond_32
    invoke-direct {p0, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->setThreshold(I)V

    .line 706
    iput v4, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 707
    iput-object v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 708
    return-void
.end method

.method private greylist-max-o set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .registers 8
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 462
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    iget-object v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 463
    .local v0, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v1, v0

    .line 464
    .local v1, "len":I
    # getter for: Ljava/lang/ThreadLocal;->threadLocalHashCode:I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$400(Ljava/lang/ThreadLocal;)I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    and-int/2addr v2, v3

    .line 466
    .local v2, "i":I
    aget-object v3, v0, v2

    .line 467
    .local v3, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :goto_c
    if-eqz v3, :cond_27

    .line 469
    invoke-virtual {v3}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ThreadLocal;

    .line 471
    .local v4, "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    if-ne v4, p1, :cond_19

    .line 472
    iput-object p2, v3, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 473
    return-void

    .line 476
    :cond_19
    if-nez v4, :cond_1f

    .line 477
    invoke-direct {p0, p1, p2, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->replaceStaleEntry(Ljava/lang/ThreadLocal;Ljava/lang/Object;I)V

    .line 478
    return-void

    .line 468
    .end local v4    # "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    :cond_1f
    invoke-static {v2, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v4

    move v2, v4

    aget-object v3, v0, v4

    goto :goto_c

    .line 482
    .end local v3    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :cond_27
    new-instance v3, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    invoke-direct {v3, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    aput-object v3, v0, v2

    .line 483
    iget v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 484
    .local v3, "sz":I
    invoke-direct {p0, v2, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->cleanSomeSlots(II)Z

    move-result v4

    if-nez v4, :cond_41

    iget v4, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    if-lt v3, v4, :cond_41

    .line 485
    invoke-direct {p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->rehash()V

    .line 486
    :cond_41
    return-void
.end method

.method private greylist-max-o setThreshold(I)V
    .registers 3
    .param p1, "len"    # I

    .line 343
    mul-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    .line 344
    return-void
.end method
