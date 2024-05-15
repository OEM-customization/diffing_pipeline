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
.field private static final INITIAL_CAPACITY:I = 0x10


# instance fields
.field private size:I

.field private table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

.field private threshold:I


# direct methods
.method static synthetic -wrap0(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .registers 3
    .param p0, "-this"    # Ljava/lang/ThreadLocal$ThreadLocalMap;
    .param p1, "key"    # Ljava/lang/ThreadLocal;

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->getEntry(Ljava/lang/ThreadLocal;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;)V
    .registers 2
    .param p0, "-this"    # Ljava/lang/ThreadLocal$ThreadLocalMap;
    .param p1, "key"    # Ljava/lang/ThreadLocal;

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->remove(Ljava/lang/ThreadLocal;)V

    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .registers 3
    .param p0, "-this"    # Ljava/lang/ThreadLocal$ThreadLocalMap;
    .param p1, "key"    # Ljava/lang/ThreadLocal;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/ThreadLocal$ThreadLocalMap;)V
    .registers 12
    .param p1, "parentMap"    # Ljava/lang/ThreadLocal$ThreadLocalMap;

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const/4 v8, 0x0

    iput v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 380
    iget-object v6, p1, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 381
    .local v6, "parentTable":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v5, v6

    .line 382
    .local v5, "len":I
    invoke-direct {p0, v5}, Ljava/lang/ThreadLocal$ThreadLocalMap;->setThreshold(I)V

    .line 383
    new-array v8, v5, [Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    iput-object v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 385
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_11
    if-ge v3, v5, :cond_4a

    .line 386
    aget-object v1, v6, v3

    .line 387
    .local v1, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v1, :cond_47

    .line 389
    invoke-virtual {v1}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ThreadLocal;

    .line 390
    .local v4, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/lang/Object;>;"
    if-eqz v4, :cond_47

    .line 391
    iget-object v8, v1, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v4, v8}, Ljava/lang/ThreadLocal;->childValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 392
    .local v7, "value":Ljava/lang/Object;
    new-instance v0, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    invoke-direct {v0, v4, v7}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    .line 393
    .local v0, "c":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    invoke-static {v4}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    move-result v8

    add-int/lit8 v9, v5, -0x1

    and-int v2, v8, v9

    .line 394
    .local v2, "h":I
    :goto_32
    iget-object v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    aget-object v8, v8, v2

    if-eqz v8, :cond_3d

    .line 395
    invoke-static {v2, v5}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v2

    goto :goto_32

    .line 396
    :cond_3d
    iget-object v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    aput-object v0, v8, v2

    .line 397
    iget v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 385
    .end local v0    # "c":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .end local v2    # "h":I
    .end local v4    # "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/lang/Object;>;"
    .end local v7    # "value":Ljava/lang/Object;
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 401
    .end local v1    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :cond_4a
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal$ThreadLocalMap;)V
    .registers 3
    .param p1, "parentMap"    # Ljava/lang/ThreadLocal$ThreadLocalMap;
    .param p2, "-this1"    # Ljava/lang/ThreadLocal$ThreadLocalMap;

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;-><init>(Ljava/lang/ThreadLocal$ThreadLocalMap;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .registers 7
    .param p2, "firstValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "firstKey":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    const/16 v3, 0x10

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const/4 v1, 0x0

    iput v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 366
    new-array v1, v3, [Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    iput-object v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 367
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    move-result v1

    and-int/lit8 v0, v1, 0xf

    .line 368
    .local v0, "i":I
    iget-object v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    new-instance v2, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    invoke-direct {v2, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    .line 369
    const/4 v1, 0x1

    iput v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 370
    invoke-direct {p0, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->setThreshold(I)V

    .line 371
    return-void
.end method

.method private cleanSomeSlots(II)Z
    .registers 8
    .param p1, "i"    # I
    .param p2, "n"    # I

    .prologue
    .line 650
    const/4 v2, 0x0

    .line 651
    .local v2, "removed":Z
    iget-object v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 652
    .local v3, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v1, v3

    .line 654
    .local v1, "len":I
    :cond_4
    invoke-static {p1, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result p1

    .line 655
    aget-object v0, v3, p1

    .line 656
    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_18

    .line 657
    move p2, v1

    .line 658
    const/4 v2, 0x1

    .line 659
    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    move-result p1

    .line 661
    :cond_18
    ushr-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_4

    .line 662
    return v2
.end method

.method private expungeStaleEntries()V
    .registers 6

    .prologue
    .line 713
    iget-object v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 714
    .local v3, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v2, v3

    .line 715
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_4
    if-ge v1, v2, :cond_16

    .line 716
    aget-object v0, v3, v1

    .line 717
    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_13

    .line 718
    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    .line 715
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 720
    .end local v0    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :cond_16
    return-void
.end method

.method private expungeStaleEntry(I)I
    .registers 11
    .param p1, "staleSlot"    # I

    .prologue
    const/4 v8, 0x0

    .line 590
    iget-object v5, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 591
    .local v5, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v4, v5

    .line 594
    .local v4, "len":I
    aget-object v6, v5, p1

    iput-object v8, v6, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 595
    aput-object v8, v5, p1

    .line 596
    iget v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 601
    invoke-static {p1, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v2

    .line 602
    .local v2, "i":I
    :goto_14
    aget-object v0, v5, v2

    .line 601
    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v0, :cond_47

    .line 604
    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ThreadLocal;

    .line 605
    .local v3, "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    if-nez v3, :cond_2f

    .line 606
    iput-object v8, v0, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 607
    aput-object v8, v5, v2

    .line 608
    iget v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 603
    :cond_2a
    :goto_2a
    invoke-static {v2, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v2

    goto :goto_14

    .line 610
    :cond_2f
    invoke-static {v3}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    move-result v6

    add-int/lit8 v7, v4, -0x1

    and-int v1, v6, v7

    .line 611
    .local v1, "h":I
    if-eq v1, v2, :cond_2a

    .line 612
    aput-object v8, v5, v2

    .line 616
    :goto_3b
    aget-object v6, v5, v1

    if-eqz v6, :cond_44

    .line 617
    invoke-static {v1, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v1

    goto :goto_3b

    .line 618
    :cond_44
    aput-object v0, v5, v1

    goto :goto_2a

    .line 622
    .end local v1    # "h":I
    .end local v3    # "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    :cond_47
    return v2
.end method

.method private getEntry(Ljava/lang/ThreadLocal;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;)",
            "Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    move-result v2

    iget-object v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int v1, v2, v3

    .line 415
    .local v1, "i":I
    iget-object v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    aget-object v0, v2, v1

    .line 416
    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_18

    .line 417
    return-object v0

    .line 419
    :cond_18
    invoke-direct {p0, p1, v1, v0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->getEntryAfterMiss(Ljava/lang/ThreadLocal;ILjava/lang/ThreadLocal$ThreadLocalMap$Entry;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    move-result-object v2

    return-object v2
.end method

.method private getEntryAfterMiss(Ljava/lang/ThreadLocal;ILjava/lang/ThreadLocal$ThreadLocalMap$Entry;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .registers 8
    .param p2, "i"    # I
    .param p3, "e"    # Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;I",
            "Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;",
            ")",
            "Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;"
        }
    .end annotation

    .prologue
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    const/4 v3, 0x0

    .line 432
    iget-object v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 433
    .local v2, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v1, v2

    .line 435
    .local v1, "len":I
    :goto_4
    if-eqz p3, :cond_1c

    .line 436
    invoke-virtual {p3}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    .line 437
    .local v0, "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    if-ne v0, p1, :cond_f

    .line 438
    return-object p3

    .line 439
    :cond_f
    if-nez v0, :cond_17

    .line 440
    invoke-direct {p0, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    .line 443
    :goto_14
    aget-object p3, v2, p2

    goto :goto_4

    .line 442
    :cond_17
    invoke-static {p2, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result p2

    goto :goto_14

    .line 445
    .end local v0    # "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    :cond_1c
    return-object v3
.end method

.method private static nextIndex(II)I
    .registers 3
    .param p0, "i"    # I
    .param p1, "len"    # I

    .prologue
    .line 350
    add-int/lit8 v0, p0, 0x1

    if-ge v0, p1, :cond_7

    add-int/lit8 v0, p0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static prevIndex(II)I
    .registers 3
    .param p0, "i"    # I
    .param p1, "len"    # I

    .prologue
    .line 357
    add-int/lit8 v0, p0, -0x1

    if-ltz v0, :cond_7

    add-int/lit8 v0, p0, -0x1

    :goto_6
    return v0

    :cond_7
    add-int/lit8 v0, p1, -0x1

    goto :goto_6
.end method

.method private rehash()V
    .registers 4

    .prologue
    .line 671
    invoke-direct {p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntries()V

    .line 674
    iget v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    iget v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    iget v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_11

    .line 675
    invoke-direct {p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->resize()V

    .line 676
    :cond_11
    return-void
.end method

.method private remove(Ljava/lang/ThreadLocal;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 491
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    iget-object v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 492
    .local v3, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v2, v3

    .line 493
    .local v2, "len":I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    move-result v4

    add-int/lit8 v5, v2, -0x1

    and-int v1, v4, v5

    .line 494
    .local v1, "i":I
    aget-object v0, v3, v1

    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :goto_d
    if-eqz v0, :cond_23

    .line 497
    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_1c

    .line 498
    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->clear()V

    .line 499
    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    .line 500
    return-void

    .line 496
    :cond_1c
    invoke-static {v1, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v1

    aget-object v0, v3, v1

    goto :goto_d

    .line 503
    :cond_23
    return-void
.end method

.method private replaceStaleEntry(Ljava/lang/ThreadLocal;Ljava/lang/Object;I)V
    .registers 12
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "staleSlot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    const/4 v7, 0x0

    .line 522
    iget-object v5, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 523
    .local v5, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v3, v5

    .line 530
    .local v3, "len":I
    move v4, p3

    .line 531
    .local v4, "slotToExpunge":I
    invoke-static {p3, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->prevIndex(II)I

    move-result v1

    .line 532
    .local v1, "i":I
    :goto_9
    aget-object v0, v5, v1

    .line 531
    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v0, :cond_19

    .line 534
    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_14

    .line 535
    move v4, v1

    .line 533
    :cond_14
    invoke-static {v1, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->prevIndex(II)I

    move-result v1

    goto :goto_9

    .line 539
    :cond_19
    invoke-static {p3, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v1

    .line 540
    :goto_1d
    aget-object v0, v5, v1

    .line 539
    if-eqz v0, :cond_46

    .line 542
    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ThreadLocal;

    .line 549
    .local v2, "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    if-ne v2, p1, :cond_3c

    .line 550
    iput-object p2, v0, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 552
    aget-object v6, v5, p3

    aput-object v6, v5, v1

    .line 553
    aput-object v0, v5, p3

    .line 556
    if-ne v4, p3, :cond_34

    .line 557
    move v4, v1

    .line 558
    :cond_34
    invoke-direct {p0, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    move-result v6

    invoke-direct {p0, v6, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->cleanSomeSlots(II)Z

    .line 559
    return-void

    .line 565
    :cond_3c
    if-nez v2, :cond_41

    if-ne v4, p3, :cond_41

    .line 566
    move v4, v1

    .line 541
    :cond_41
    invoke-static {v1, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v1

    goto :goto_1d

    .line 570
    .end local v2    # "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    :cond_46
    aget-object v6, v5, p3

    iput-object v7, v6, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 571
    new-instance v6, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    invoke-direct {v6, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    aput-object v6, v5, p3

    .line 574
    if-eq v4, p3, :cond_5a

    .line 575
    invoke-direct {p0, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    move-result v6

    invoke-direct {p0, v6, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->cleanSomeSlots(II)Z

    .line 576
    :cond_5a
    return-void
.end method

.method private resize()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 682
    iget-object v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 683
    .local v8, "oldTab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v7, v8

    .line 684
    .local v7, "oldLen":I
    mul-int/lit8 v5, v7, 0x2

    .line 685
    .local v5, "newLen":I
    new-array v6, v5, [Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 686
    .local v6, "newTab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    const/4 v0, 0x0

    .line 688
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_a
    if-ge v3, v7, :cond_33

    .line 689
    aget-object v1, v8, v3

    .line 690
    .local v1, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v1, :cond_1a

    .line 691
    invoke-virtual {v1}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ThreadLocal;

    .line 692
    .local v4, "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    if-nez v4, :cond_1d

    .line 693
    iput-object v11, v1, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 688
    .end local v4    # "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    :cond_1a
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 695
    .restart local v4    # "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    :cond_1d
    invoke-static {v4}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    move-result v9

    add-int/lit8 v10, v5, -0x1

    and-int v2, v9, v10

    .line 696
    .local v2, "h":I
    :goto_25
    aget-object v9, v6, v2

    if-eqz v9, :cond_2e

    .line 697
    invoke-static {v2, v5}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v2

    goto :goto_25

    .line 698
    :cond_2e
    aput-object v1, v6, v2

    .line 699
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 704
    .end local v1    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .end local v2    # "h":I
    .end local v4    # "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    :cond_33
    invoke-direct {p0, v5}, Ljava/lang/ThreadLocal$ThreadLocalMap;->setThreshold(I)V

    .line 705
    iput v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 706
    iput-object v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 707
    return-void
.end method

.method private set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .registers 11
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    iget-object v5, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 462
    .local v5, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v3, v5

    .line 463
    .local v3, "len":I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    move-result v6

    add-int/lit8 v7, v3, -0x1

    and-int v1, v6, v7

    .line 465
    .local v1, "i":I
    aget-object v0, v5, v1

    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :goto_d
    if-eqz v0, :cond_27

    .line 468
    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ThreadLocal;

    .line 470
    .local v2, "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    if-ne v2, p1, :cond_1a

    .line 471
    iput-object p2, v0, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 472
    return-void

    .line 475
    :cond_1a
    if-nez v2, :cond_20

    .line 476
    invoke-direct {p0, p1, p2, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->replaceStaleEntry(Ljava/lang/ThreadLocal;Ljava/lang/Object;I)V

    .line 477
    return-void

    .line 467
    :cond_20
    invoke-static {v1, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v1

    aget-object v0, v5, v1

    goto :goto_d

    .line 481
    .end local v2    # "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    :cond_27
    new-instance v6, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    invoke-direct {v6, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    aput-object v6, v5, v1

    .line 482
    iget v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    add-int/lit8 v4, v6, 0x1

    iput v4, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 483
    .local v4, "sz":I
    invoke-direct {p0, v1, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->cleanSomeSlots(II)Z

    move-result v6

    if-nez v6, :cond_41

    iget v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    if-lt v4, v6, :cond_41

    .line 484
    invoke-direct {p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->rehash()V

    .line 485
    :cond_41
    return-void
.end method

.method private setThreshold(I)V
    .registers 3
    .param p1, "len"    # I

    .prologue
    .line 343
    mul-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    .line 344
    return-void
.end method
