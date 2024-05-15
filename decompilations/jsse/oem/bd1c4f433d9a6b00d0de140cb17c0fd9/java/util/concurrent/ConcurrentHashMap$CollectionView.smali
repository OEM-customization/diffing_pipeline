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
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final OOME_MSG:Ljava/lang/String; = "Required array size too large"

.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field final map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4437
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 4450
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public abstract contains(Ljava/lang/Object;)Z
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 4550
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eq p1, p0, :cond_1c

    .line 4551
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4552
    .local v0, "e":Ljava/lang/Object;
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 4553
    :cond_1a
    const/4 v2, 0x0

    return v2

    .line 4556
    .end local v0    # "e":Ljava/lang/Object;
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_1c
    const/4 v2, 0x1

    return v2
.end method

.method public getMap()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4444
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 4452
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)Z
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 4560
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p1, :cond_8

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 4561
    :cond_8
    const/4 v1, 0x0

    .line 4562
    .local v1, "modified":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 4563
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4564
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 4565
    const/4 v1, 0x1

    goto :goto_d

    .line 4568
    :cond_22
    return v1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 4572
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p1, :cond_8

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 4573
    :cond_8
    const/4 v1, 0x0

    .line 4574
    .local v1, "modified":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 4575
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 4576
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 4577
    const/4 v1, 0x1

    goto :goto_d

    .line 4580
    :cond_22
    return v1
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 4451
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 11

    .prologue
    .line 4471
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->mappingCount()J

    move-result-wide v6

    .line 4472
    .local v6, "sz":J
    const-wide/32 v8, 0x7ffffff7

    cmp-long v8, v6, v8

    if-lez v8, :cond_16

    .line 4473
    new-instance v8, Ljava/lang/OutOfMemoryError;

    const-string/jumbo v9, "Required array size too large"

    invoke-direct {v8, v9}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4474
    :cond_16
    long-to-int v4, v6

    .line 4475
    .local v4, "n":I
    new-array v5, v4, [Ljava/lang/Object;

    .line 4476
    .local v5, "r":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 4477
    .local v2, "i":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4478
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-ne v2, v4, :cond_44

    .line 4479
    const v8, 0x7ffffff7

    if-lt v4, v8, :cond_38

    .line 4480
    new-instance v8, Ljava/lang/OutOfMemoryError;

    const-string/jumbo v9, "Required array size too large"

    invoke-direct {v8, v9}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4481
    :cond_38
    const v8, 0x3ffffffb    # 1.9999994f

    if-lt v4, v8, :cond_4a

    .line 4482
    const v4, 0x7ffffff7

    .line 4485
    :goto_40
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .line 4487
    :cond_44
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aput-object v0, v5, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1e

    .line 4484
    :cond_4a
    ushr-int/lit8 v8, v4, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v4, v8

    goto :goto_40

    .line 4489
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_50
    if-ne v2, v4, :cond_53

    .end local v5    # "r":[Ljava/lang/Object;
    :goto_52
    return-object v5

    .restart local v5    # "r":[Ljava/lang/Object;
    :cond_53
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    goto :goto_52
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 4494
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->mappingCount()J

    move-result-wide v8

    .line 4495
    .local v8, "sz":J
    const-wide/32 v10, 0x7ffffff7

    cmp-long v7, v8, v10

    if-lez v7, :cond_16

    .line 4496
    new-instance v7, Ljava/lang/OutOfMemoryError;

    const-string/jumbo v10, "Required array size too large"

    invoke-direct {v7, v10}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4497
    :cond_16
    long-to-int v4, v8

    .line 4498
    .local v4, "m":I
    array-length v7, p1

    if-lt v7, v4, :cond_3b

    move-object v6, p1

    .line 4501
    .local v6, "r":[Ljava/lang/Object;, "[TT;"
    :goto_1b
    array-length v5, v6

    .line 4502
    .local v5, "n":I
    const/4 v2, 0x0

    .line 4503
    .local v2, "i":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4504
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-ne v2, v5, :cond_56

    .line 4505
    const v7, 0x7ffffff7

    if-lt v5, v7, :cond_4a

    .line 4506
    new-instance v7, Ljava/lang/OutOfMemoryError;

    const-string/jumbo v10, "Required array size too large"

    invoke-direct {v7, v10}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4500
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v2    # "i":I
    .end local v5    # "n":I
    .end local v6    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_3b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    .line 4499
    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .restart local v6    # "r":[Ljava/lang/Object;, "[TT;"
    goto :goto_1b

    .line 4507
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    .restart local v2    # "i":I
    .restart local v5    # "n":I
    :cond_4a
    const v7, 0x3ffffffb    # 1.9999994f

    if-lt v5, v7, :cond_5c

    .line 4508
    const v5, 0x7ffffff7

    .line 4511
    :goto_52
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    .line 4513
    :cond_56
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aput-object v0, v6, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_21

    .line 4510
    :cond_5c
    ushr-int/lit8 v7, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v5, v7

    goto :goto_52

    .line 4515
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_62
    if-ne p1, v6, :cond_6a

    if-ge v2, v5, :cond_6a

    .line 4516
    const/4 v7, 0x0

    aput-object v7, v6, v2

    .line 4517
    return-object v6

    .line 4519
    :cond_6a
    if-ne v2, v5, :cond_6d

    .end local v6    # "r":[Ljava/lang/Object;, "[TT;"
    :goto_6c
    return-object v6

    .restart local v6    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_6d
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    goto :goto_6c
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 4534
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CollectionView;, "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<TK;TV;TE;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4535
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4536
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4537
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 4539
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4540
    .local v0, "e":Ljava/lang/Object;
    if-ne v0, p0, :cond_1d

    const-string/jumbo v0, "(this Collection)"

    .end local v0    # "e":Ljava/lang/Object;
    :cond_1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4541
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_31

    .line 4546
    :cond_26
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4543
    :cond_31
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14
.end method
