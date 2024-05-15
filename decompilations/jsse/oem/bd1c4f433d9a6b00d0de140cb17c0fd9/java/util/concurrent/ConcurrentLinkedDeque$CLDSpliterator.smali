.class final Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;
.super Ljava/lang/Object;
.source "ConcurrentLinkedDeque.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentLinkedDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CLDSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field batch:I

.field current:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field exhausted:Z

.field final queue:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentLinkedDeque;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1446
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator<TE;>;"
    .local p1, "queue":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1447
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->queue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 1448
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .prologue
    .line 1524
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator<TE;>;"
    const/16 v0, 0x1110

    return v0
.end method

.method public estimateSize()J
    .registers 3

    .prologue
    .line 1521
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator<TE;>;"
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1484
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_8

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1485
    :cond_8
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->queue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 1486
    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    iget-boolean v4, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->exhausted:Z

    if-nez v4, :cond_2c

    .line 1487
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v1, :cond_18

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 1488
    :cond_18
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->exhausted:Z

    .line 1490
    :cond_1b
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    .line 1491
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne v1, v2, :cond_2d

    .line 1492
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    .line 1493
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_25
    if-eqz v0, :cond_2a

    .line 1494
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1495
    :cond_2a
    if-nez v1, :cond_1b

    .line 1497
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2c
    return-void

    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    .restart local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2d
    move-object v1, v2

    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_25
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v5, 0x1

    .line 1501
    if-nez p1, :cond_9

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1502
    :cond_9
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->queue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 1503
    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    iget-boolean v4, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->exhausted:Z

    if-nez v4, :cond_33

    .line 1504
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v1, :cond_19

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 1507
    :cond_19
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    .line 1508
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne v1, v2, :cond_35

    .line 1509
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    .line 1510
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_23
    if-nez v0, :cond_27

    if-nez v1, :cond_19

    .line 1511
    :cond_27
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v1, :cond_2d

    .line 1512
    iput-boolean v5, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->exhausted:Z

    .line 1513
    :cond_2d
    if-eqz v0, :cond_33

    .line 1514
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1515
    return v5

    .line 1518
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_33
    const/4 v4, 0x0

    return v4

    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    .restart local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_35
    move-object v1, v2

    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_23
.end method

.method public trySplit()Ljava/util/Spliterator;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator<TE;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1452
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->queue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 1453
    .local v6, "q":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    iget v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->batch:I

    .line 1454
    .local v1, "b":I
    if-gtz v1, :cond_54

    const/4 v3, 0x1

    .line 1455
    .local v3, "n":I
    :goto_9
    iget-boolean v7, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->exhausted:Z

    if-nez v7, :cond_60

    .line 1456
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v4, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v4, :cond_17

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v4

    if-eqz v4, :cond_60

    .line 1457
    :cond_17
    iget-object v7, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-nez v7, :cond_25

    iget-object v5, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .end local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v5, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne v4, v5, :cond_5e

    .line 1458
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v4

    .end local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iput-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 1459
    :cond_25
    :goto_25
    if-eqz v4, :cond_60

    iget-object v7, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v7, :cond_60

    .line 1460
    new-array v0, v3, [Ljava/lang/Object;

    .line 1461
    .local v0, "a":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1463
    .local v2, "i":I
    :cond_2e
    iget-object v7, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    aput-object v7, v0, v2

    if-eqz v7, :cond_36

    .line 1464
    add-int/lit8 v2, v2, 0x1

    .line 1465
    :cond_36
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .end local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne v4, v5, :cond_61

    .line 1466
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v4

    .line 1467
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_3e
    if-eqz v4, :cond_42

    if-lt v2, v3, :cond_2e

    .line 1468
    :cond_42
    iput-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v4, :cond_49

    .line 1469
    const/4 v7, 0x1

    iput-boolean v7, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->exhausted:Z

    .line 1470
    :cond_49
    if-lez v2, :cond_60

    .line 1471
    iput v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$CLDSpliterator;->batch:I

    .line 1473
    const/16 v7, 0x1110

    .line 1472
    invoke-static {v0, v9, v2, v7}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v7

    return-object v7

    .line 1454
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_54
    const/high16 v7, 0x2000000

    if-lt v1, v7, :cond_5b

    const/high16 v3, 0x2000000

    .restart local v3    # "n":I
    goto :goto_9

    .end local v3    # "n":I
    :cond_5b
    add-int/lit8 v3, v1, 0x1

    .restart local v3    # "n":I
    goto :goto_9

    .restart local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_5e
    move-object v4, v5

    .line 1458
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_25

    .line 1479
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_60
    return-object v8

    .restart local v0    # "a":[Ljava/lang/Object;
    .restart local v2    # "i":I
    .restart local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_61
    move-object v4, v5

    .end local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_3e
.end method
