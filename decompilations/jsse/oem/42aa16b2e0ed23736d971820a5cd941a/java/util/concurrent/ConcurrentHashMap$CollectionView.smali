.class abstract Ljava/util/concurrent/ConcurrentHashMap$CollectionView;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CollectionView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o OOME_MSG:Ljava/lang/String; = "Required array size too large"

.field private static final whitelist serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field final greylist-max-o map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 4439
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api clear()V
    .registers 2

    .line 4452
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public abstract whitelist core-platform-api test-api contains(Ljava/lang/Object;)Z
.end method

.method public final whitelist core-platform-api test-api containsAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 4552
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eq p1, p0, :cond_1c

    .line 4553
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4554
    .local v1, "e":Ljava/lang/Object;
    if-eqz v1, :cond_1a

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_1a

    .line 4556
    .end local v1    # "e":Ljava/lang/Object;
    :cond_19
    goto :goto_6

    .line 4555
    .restart local v1    # "e":Ljava/lang/Object;
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return v0

    .line 4558
    .end local v1    # "e":Ljava/lang/Object;
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getMap()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4446
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api isEmpty()Z
    .registers 2

    .line 4454
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract whitelist core-platform-api test-api iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api remove(Ljava/lang/Object;)Z
.end method

.method public final whitelist core-platform-api test-api removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 4562
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p1, :cond_1d

    .line 4563
    const/4 v0, 0x0

    .line 4564
    .local v0, "modified":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4565
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4566
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4567
    const/4 v0, 0x1

    goto :goto_7

    .line 4570
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_1c
    return v0

    .line 4562
    .end local v0    # "modified":Z
    :cond_1d
    const/4 v0, 0x0

    throw v0
.end method

.method public final whitelist core-platform-api test-api retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 4574
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p1, :cond_1d

    .line 4575
    const/4 v0, 0x0

    .line 4576
    .local v0, "modified":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4577
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 4578
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4579
    const/4 v0, 0x1

    goto :goto_7

    .line 4582
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_1c
    return v0

    .line 4574
    .end local v0    # "modified":Z
    :cond_1d
    const/4 v0, 0x0

    throw v0
.end method

.method public final whitelist core-platform-api test-api size()I
    .registers 2

    .line 4453
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api toArray()[Ljava/lang/Object;
    .registers 10

    .line 4473
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->mappingCount()J

    move-result-wide v0

    .line 4474
    .local v0, "sz":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    const-string v3, "Required array size too large"

    if-gtz v2, :cond_50

    .line 4476
    long-to-int v2, v0

    .line 4477
    .local v2, "n":I
    new-array v4, v2, [Ljava/lang/Object;

    .line 4478
    .local v4, "r":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 4479
    .local v5, "i":I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 4480
    .local v7, "e":Ljava/lang/Object;, "TE;"
    if-ne v5, v2, :cond_41

    .line 4481
    const v8, 0x7ffffff7

    if-ge v2, v8, :cond_3b

    .line 4483
    const v8, 0x3ffffffb    # 1.9999994f

    if-lt v2, v8, :cond_31

    .line 4484
    const v2, 0x7ffffff7

    goto :goto_36

    .line 4486
    :cond_31
    ushr-int/lit8 v8, v2, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v2, v8

    .line 4487
    :goto_36
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_41

    .line 4482
    :cond_3b
    new-instance v6, Ljava/lang/OutOfMemoryError;

    invoke-direct {v6, v3}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4489
    :cond_41
    :goto_41
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .local v8, "i":I
    aput-object v7, v4, v5

    .line 4490
    .end local v7    # "e":Ljava/lang/Object;, "TE;"
    move v5, v8

    goto :goto_17

    .line 4491
    .end local v8    # "i":I
    .restart local v5    # "i":I
    :cond_47
    if-ne v5, v2, :cond_4b

    move-object v3, v4

    goto :goto_4f

    :cond_4b
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    :goto_4f
    return-object v3

    .line 4475
    .end local v2    # "n":I
    .end local v4    # "r":[Ljava/lang/Object;
    .end local v5    # "i":I
    :cond_50
    new-instance v2, Ljava/lang/OutOfMemoryError;

    invoke-direct {v2, v3}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final whitelist core-platform-api test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 4496
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->mappingCount()J

    move-result-wide v0

    .line 4497
    .local v0, "sz":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    const-string v3, "Required array size too large"

    if-gtz v2, :cond_6c

    .line 4499
    long-to-int v2, v0

    .line 4500
    .local v2, "m":I
    array-length v4, p1

    if-lt v4, v2, :cond_15

    move-object v4, p1

    goto :goto_24

    .line 4501
    :cond_15
    nop

    .line 4502
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    :goto_24
    nop

    .line 4503
    .local v4, "r":[Ljava/lang/Object;, "[TT;"
    array-length v5, v4

    .line 4504
    .local v5, "n":I
    const/4 v6, 0x0

    .line 4505
    .local v6, "i":I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 4506
    .local v8, "e":Ljava/lang/Object;, "TE;"
    if-ne v6, v5, :cond_55

    .line 4507
    const v9, 0x7ffffff7

    if-ge v5, v9, :cond_4f

    .line 4509
    const v9, 0x3ffffffb    # 1.9999994f

    if-lt v5, v9, :cond_45

    .line 4510
    const v5, 0x7ffffff7

    goto :goto_4a

    .line 4512
    :cond_45
    ushr-int/lit8 v9, v5, 0x1

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v5, v9

    .line 4513
    :goto_4a
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_55

    .line 4508
    :cond_4f
    new-instance v7, Ljava/lang/OutOfMemoryError;

    invoke-direct {v7, v3}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4515
    :cond_55
    :goto_55
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "i":I
    .local v9, "i":I
    aput-object v8, v4, v6

    .line 4516
    .end local v8    # "e":Ljava/lang/Object;, "TE;"
    move v6, v9

    goto :goto_2b

    .line 4517
    .end local v9    # "i":I
    .restart local v6    # "i":I
    :cond_5b
    if-ne p1, v4, :cond_63

    if-ge v6, v5, :cond_63

    .line 4518
    const/4 v3, 0x0

    aput-object v3, v4, v6

    .line 4519
    return-object v4

    .line 4521
    :cond_63
    if-ne v6, v5, :cond_67

    move-object v3, v4

    goto :goto_6b

    :cond_67
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    :goto_6b
    return-object v3

    .line 4498
    .end local v2    # "m":I
    .end local v4    # "r":[Ljava/lang/Object;, "[TT;"
    .end local v5    # "n":I
    .end local v6    # "i":I
    :cond_6c
    new-instance v2, Ljava/lang/OutOfMemoryError;

    invoke-direct {v2, v3}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 5

    .line 4536
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4537
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4538
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4539
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 4541
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4542
    .local v2, "e":Ljava/lang/Object;
    if-ne v2, p0, :cond_1d

    const-string v3, "(this Collection)"

    goto :goto_1e

    :cond_1d
    move-object v3, v2

    :goto_1e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4543
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_28

    .line 4544
    goto :goto_33

    .line 4545
    :cond_28
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4546
    .end local v2    # "e":Ljava/lang/Object;
    goto :goto_14

    .line 4548
    :cond_33
    :goto_33
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
