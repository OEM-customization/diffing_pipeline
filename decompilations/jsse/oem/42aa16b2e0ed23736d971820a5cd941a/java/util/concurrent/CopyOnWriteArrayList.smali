.class public Ljava/util/concurrent/CopyOnWriteArrayList;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;,
        Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;,
        Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o LOCK:J

.field private static final greylist-max-o U:Lsun/misc/Unsafe;

.field private static final whitelist serialVersionUID:J = 0x785d9fd546ab90c3L


# instance fields
.field private volatile transient blacklist array:[Ljava/lang/Object;

.field final transient greylist-max-o lock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1545
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/CopyOnWriteArrayList;->U:Lsun/misc/Unsafe;

    .line 1549
    :try_start_6
    const-class v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v2, "lock"

    .line 1550
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/CopyOnWriteArrayList;->LOCK:J
    :try_end_14
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_14} :catch_16

    .line 1553
    nop

    .line 1554
    return-void

    .line 1551
    :catch_16
    move-exception v0

    .line 1552
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 119
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    .line 120
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 131
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-ne v0, v1, :cond_1a

    .line 134
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .local v0, "elements":[Ljava/lang/Object;
    goto :goto_2d

    .line 136
    .end local v0    # "elements":[Ljava/lang/Object;
    :cond_1a
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 139
    .restart local v0    # "elements":[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, [Ljava/lang/Object;

    if-eq v1, v2, :cond_2d

    .line 140
    array-length v1, v0

    const-class v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 142
    :cond_2d
    :goto_2d
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 152
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "toCopyIn":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    .line 153
    array-length v0, p1

    const-class v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method private greylist-max-o addIfAbsent(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 11
    .param p2, "snapshot"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 594
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 596
    .local v1, "current":[Ljava/lang/Object;
    array-length v2, v1

    .line 597
    .local v2, "len":I
    if-eq p2, v1, :cond_2e

    .line 599
    array-length v3, p2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 600
    .local v3, "common":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    const/4 v5, 0x0

    if-ge v4, v3, :cond_26

    .line 601
    aget-object v6, v1, v4

    aget-object v7, p2, v4

    if-eq v6, v7, :cond_23

    aget-object v6, v1, v4

    .line 602
    invoke-static {p1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 603
    monitor-exit v0

    return v5

    .line 600
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 604
    .end local v4    # "i":I
    :cond_26
    invoke-static {p1, v1, v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v4

    if-ltz v4, :cond_2e

    .line 605
    monitor-exit v0

    return v5

    .line 607
    .end local v3    # "common":I
    :cond_2e
    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 608
    .local v3, "newElements":[Ljava/lang/Object;
    aput-object p1, v3, v2

    .line 609
    invoke-virtual {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 610
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 611
    .end local v1    # "current":[Ljava/lang/Object;
    .end local v2    # "len":I
    .end local v3    # "newElements":[Ljava/lang/Object;
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private greylist-max-o get([Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .line 380
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    aget-object v0, p1, p2

    return-object v0
.end method

.method private static greylist-max-o indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .registers 6
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "elements"    # [Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "fence"    # I

    .line 185
    if-nez p0, :cond_e

    .line 186
    move v0, p2

    .local v0, "i":I
    :goto_3
    if-ge v0, p3, :cond_d

    .line 187
    aget-object v1, p1, v0

    if-nez v1, :cond_a

    .line 188
    return v0

    .line 186
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    :cond_d
    goto :goto_1d

    .line 190
    :cond_e
    move v0, p2

    .restart local v0    # "i":I
    :goto_f
    if-ge v0, p3, :cond_1d

    .line 191
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 192
    return v0

    .line 190
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 194
    .end local v0    # "i":I
    :cond_1d
    :goto_1d
    const/4 v0, -0x1

    return v0
.end method

.method private static greylist-max-o lastIndexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I
    .registers 5
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "elements"    # [Ljava/lang/Object;
    .param p2, "index"    # I

    .line 205
    if-nez p0, :cond_e

    .line 206
    move v0, p2

    .local v0, "i":I
    :goto_3
    if-ltz v0, :cond_d

    .line 207
    aget-object v1, p1, v0

    if-nez v1, :cond_a

    .line 208
    return v0

    .line 206
    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .end local v0    # "i":I
    :cond_d
    goto :goto_1d

    .line 210
    :cond_e
    move v0, p2

    .restart local v0    # "i":I
    :goto_f
    if-ltz v0, :cond_1d

    .line 211
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 212
    return v0

    .line 210
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 214
    .end local v0    # "i":I
    :cond_1d
    :goto_1d
    const/4 v0, -0x1

    return v0
.end method

.method static greylist-max-o outOfBounds(II)Ljava/lang/String;
    .registers 4
    .param p0, "index"    # I
    .param p1, "size"    # I

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 920
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 923
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->resetLock()V

    .line 926
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 927
    .local v0, "len":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 930
    .local v1, "elements":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_18

    .line 931
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 930
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 932
    .end local v2    # "i":I
    :cond_18
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 933
    return-void
.end method

.method private greylist-max-o remove(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .registers 12
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "snapshot"    # [Ljava/lang/Object;
    .param p3, "index"    # I

    .line 514
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 516
    .local v1, "current":[Ljava/lang/Object;
    array-length v2, v1

    .line 517
    .local v2, "len":I
    const/4 v3, 0x0

    if-eq p2, v1, :cond_37

    .line 518
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 519
    .local v4, "prefix":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_10
    if-ge v5, v4, :cond_25

    .line 520
    aget-object v6, v1, v5

    aget-object v7, p2, v5

    if-eq v6, v7, :cond_22

    aget-object v6, v1, v5

    .line 521
    invoke-static {p1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 522
    move p3, v5

    .line 523
    goto :goto_37

    .line 519
    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 526
    .end local v5    # "i":I
    :cond_25
    if-lt p3, v2, :cond_29

    .line 527
    monitor-exit v0

    return v3

    .line 528
    :cond_29
    aget-object v5, v1, p3

    if-ne v5, p1, :cond_2e

    .line 529
    goto :goto_37

    .line 530
    :cond_2e
    invoke-static {p1, v1, p3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v5

    move p3, v5

    .line 531
    if-gez p3, :cond_37

    .line 532
    monitor-exit v0

    return v3

    .line 534
    .end local v4    # "prefix":I
    :cond_37
    :goto_37
    add-int/lit8 v4, v2, -0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 535
    .local v4, "newElements":[Ljava/lang/Object;
    invoke-static {v1, v3, v4, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    add-int/lit8 v3, p3, 0x1

    sub-int v5, v2, p3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-static {v1, v3, v4, p3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    invoke-virtual {p0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 540
    monitor-exit v0

    return v6

    .line 541
    .end local v1    # "current":[Ljava/lang/Object;
    .end local v2    # "len":I
    .end local v4    # "newElements":[Ljava/lang/Object;
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method private greylist-max-o resetLock()V
    .registers 5

    .line 1543
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    sget-object v0, Ljava/util/concurrent/CopyOnWriteArrayList;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/CopyOnWriteArrayList;->LOCK:J

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1544
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 899
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 901
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 903
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 906
    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    .line 907
    .local v3, "element":Ljava/lang/Object;
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 906
    .end local v3    # "element":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 908
    :cond_17
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api add(ILjava/lang/Object;)V
    .registers 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 445
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 447
    .local v1, "elements":[Ljava/lang/Object;
    array-length v2, v1

    .line 448
    .local v2, "len":I
    if-gt p1, v2, :cond_2b

    if-ltz p1, :cond_2b

    .line 451
    sub-int v3, v2, p1

    .line 452
    .local v3, "numMoved":I
    if-nez v3, :cond_17

    .line 453
    add-int/lit8 v4, v2, 0x1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    .local v4, "newElements":[Ljava/lang/Object;
    goto :goto_24

    .line 455
    .end local v4    # "newElements":[Ljava/lang/Object;
    :cond_17
    add-int/lit8 v4, v2, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 456
    .restart local v4    # "newElements":[Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-static {v1, v5, v4, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    add-int/lit8 v5, p1, 0x1

    invoke-static {v1, p1, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    :goto_24
    aput-object p2, v4, p1

    .line 461
    invoke-virtual {p0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 462
    .end local v1    # "elements":[Ljava/lang/Object;
    .end local v2    # "len":I
    .end local v3    # "numMoved":I
    .end local v4    # "newElements":[Ljava/lang/Object;
    monitor-exit v0

    .line 463
    return-void

    .line 449
    .restart local v1    # "elements":[Ljava/lang/Object;
    .restart local v2    # "len":I
    :cond_2b
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->outOfBounds(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .end local p1    # "index":I
    .end local p2    # "element":Ljava/lang/Object;, "TE;"
    throw v3

    .line 462
    .end local v1    # "elements":[Ljava/lang/Object;
    .end local v2    # "len":I
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .restart local p1    # "index":I
    .restart local p2    # "element":Ljava/lang/Object;, "TE;"
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public whitelist core-platform-api test-api add(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 427
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 428
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 429
    .local v1, "elements":[Ljava/lang/Object;
    array-length v2, v1

    .line 430
    .local v2, "len":I
    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 431
    .local v3, "newElements":[Ljava/lang/Object;
    aput-object p1, v3, v2

    .line 432
    invoke-virtual {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 433
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 434
    .end local v1    # "elements":[Ljava/lang/Object;
    .end local v2    # "len":I
    .end local v3    # "newElements":[Ljava/lang/Object;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist core-platform-api test-api addAll(ILjava/util/Collection;)Z
    .registers 11
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 803
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 804
    .local v0, "cs":[Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 805
    :try_start_7
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v2

    .line 806
    .local v2, "elements":[Ljava/lang/Object;
    array-length v3, v2

    .line 807
    .local v3, "len":I
    if-gt p1, v3, :cond_37

    if-ltz p1, :cond_37

    .line 809
    array-length v4, v0

    const/4 v5, 0x0

    if-nez v4, :cond_16

    .line 810
    monitor-exit v1

    return v5

    .line 811
    :cond_16
    sub-int v4, v3, p1

    .line 813
    .local v4, "numMoved":I
    if-nez v4, :cond_21

    .line 814
    array-length v6, v0

    add-int/2addr v6, v3

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    .local v6, "newElements":[Ljava/lang/Object;
    goto :goto_2d

    .line 816
    .end local v6    # "newElements":[Ljava/lang/Object;
    :cond_21
    array-length v6, v0

    add-int/2addr v6, v3

    new-array v6, v6, [Ljava/lang/Object;

    .line 817
    .restart local v6    # "newElements":[Ljava/lang/Object;
    invoke-static {v2, v5, v6, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 818
    array-length v7, v0

    add-int/2addr v7, p1

    invoke-static {v2, p1, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 822
    :goto_2d
    array-length v7, v0

    invoke-static {v0, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 823
    invoke-virtual {p0, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 824
    const/4 v5, 0x1

    monitor-exit v1

    return v5

    .line 808
    .end local v4    # "numMoved":I
    .end local v6    # "newElements":[Ljava/lang/Object;
    :cond_37
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->outOfBounds(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .end local v0    # "cs":[Ljava/lang/Object;
    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .end local p1    # "index":I
    .end local p2    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    throw v4

    .line 825
    .end local v2    # "elements":[Ljava/lang/Object;
    .end local v3    # "len":I
    .restart local v0    # "cs":[Ljava/lang/Object;
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .restart local p1    # "index":I
    .restart local p2    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_41

    throw v2
.end method

.method public whitelist core-platform-api test-api addAll(Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 768
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-ne v0, v1, :cond_10

    .line 769
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    :cond_10
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 770
    .local v0, "cs":[Ljava/lang/Object;
    :goto_14
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_19

    .line 771
    return v2

    .line 772
    :cond_19
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 773
    :try_start_1c
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v3

    .line 774
    .local v3, "elements":[Ljava/lang/Object;
    array-length v4, v3

    .line 775
    .local v4, "len":I
    if-nez v4, :cond_2f

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, [Ljava/lang/Object;

    if-ne v5, v6, :cond_2f

    .line 776
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    goto :goto_3c

    .line 778
    :cond_2f
    array-length v5, v0

    add-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .line 779
    .local v5, "newElements":[Ljava/lang/Object;
    array-length v6, v0

    invoke-static {v0, v2, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 780
    invoke-virtual {p0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 782
    .end local v5    # "newElements":[Ljava/lang/Object;
    :goto_3c
    const/4 v2, 0x1

    monitor-exit v1

    return v2

    .line 783
    .end local v3    # "elements":[Ljava/lang/Object;
    .end local v4    # "len":I
    :catchall_3f
    move-exception v2

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_1c .. :try_end_41} :catchall_3f

    throw v2
.end method

.method public whitelist core-platform-api test-api addAllAbsent(Ljava/util/Collection;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)I"
        }
    .end annotation

    .line 724
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 725
    .local v0, "cs":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_9

    .line 726
    return v2

    .line 727
    :cond_9
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 728
    :try_start_c
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v3

    .line 729
    .local v3, "elements":[Ljava/lang/Object;
    array-length v4, v3

    .line 730
    .local v4, "len":I
    const/4 v5, 0x0

    .line 732
    .local v5, "added":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_13
    array-length v7, v0

    if-ge v6, v7, :cond_2c

    .line 733
    aget-object v7, v0, v6

    .line 734
    .local v7, "e":Ljava/lang/Object;
    invoke-static {v7, v3, v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v8

    if-gez v8, :cond_29

    .line 735
    invoke-static {v7, v0, v2, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v8

    if-gez v8, :cond_29

    .line 736
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "added":I
    .local v8, "added":I
    aput-object v7, v0, v5

    move v5, v8

    .line 732
    .end local v7    # "e":Ljava/lang/Object;
    .end local v8    # "added":I
    .restart local v5    # "added":I
    :cond_29
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 738
    .end local v6    # "i":I
    :cond_2c
    if-lez v5, :cond_3a

    .line 739
    add-int v6, v4, v5

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    .line 740
    .local v6, "newElements":[Ljava/lang/Object;
    invoke-static {v0, v2, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 741
    invoke-virtual {p0, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 743
    .end local v6    # "newElements":[Ljava/lang/Object;
    :cond_3a
    monitor-exit v1

    return v5

    .line 744
    .end local v3    # "elements":[Ljava/lang/Object;
    .end local v4    # "len":I
    .end local v5    # "added":I
    :catchall_3c
    move-exception v2

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_c .. :try_end_3e} :catchall_3c

    throw v2
.end method

.method public whitelist core-platform-api test-api addIfAbsent(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 584
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 585
    .local v0, "snapshot":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

    if-ltz v1, :cond_d

    goto :goto_11

    .line 586
    :cond_d
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    .line 585
    :goto_11
    return v2
.end method

.method public whitelist core-platform-api test-api clear()V
    .registers 3

    .line 752
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 753
    const/4 v1, 0x0

    :try_start_4
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 754
    monitor-exit v0

    .line 755
    return-void

    .line 754
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 3

    .line 296
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    nop

    .line 297
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 298
    .local v0, "clone":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->resetLock()V
    :try_end_a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_a} :catch_b

    .line 299
    return-object v0

    .line 300
    .end local v0    # "clone":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    :catch_b
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public whitelist core-platform-api test-api contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 226
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 227
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

    if-ltz v1, :cond_d

    const/4 v2, 0x1

    :cond_d
    return v2
.end method

.method public whitelist core-platform-api test-api containsAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 625
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 626
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    .line 627
    .local v1, "len":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 628
    .local v3, "e":Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v5

    if-gez v5, :cond_1b

    .line 629
    return v4

    .line 630
    .end local v3    # "e":Ljava/lang/Object;
    :cond_1b
    goto :goto_9

    .line 631
    :cond_1c
    const/4 v2, 0x1

    return v2
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;

    .line 965
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 966
    return v0

    .line 967
    :cond_4
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 968
    return v2

    .line 970
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 971
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 972
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v4

    .line 973
    .local v4, "elements":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v4

    .local v6, "len":I
    :goto_17
    if-ge v5, v6, :cond_30

    .line 974
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2f

    aget-object v7, v4, v5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2c

    goto :goto_2f

    .line 973
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 975
    :cond_2f
    :goto_2f
    return v2

    .line 976
    .end local v5    # "i":I
    .end local v6    # "len":I
    :cond_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 977
    return v2

    .line 978
    :cond_37
    return v0
.end method

.method public whitelist core-platform-api test-api forEach(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 829
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_14

    .line 830
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 831
    .local v3, "x":Ljava/lang/Object;
    move-object v4, v3

    .line 832
    .local v4, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 830
    .end local v3    # "x":Ljava/lang/Object;
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 834
    :cond_13
    return-void

    .line 829
    :cond_14
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 393
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o getArray()[Ljava/lang/Object;
    .registers 2

    .line 106
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 9

    .line 989
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    const/4 v0, 0x1

    .line 990
    .local v0, "hashCode":I
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_8
    if-ge v4, v2, :cond_1b

    aget-object v5, v1, v4

    .line 991
    .local v5, "x":Ljava/lang/Object;
    mul-int/lit8 v6, v0, 0x1f

    if-nez v5, :cond_12

    move v7, v3

    goto :goto_16

    :cond_12
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_16
    add-int v0, v6, v7

    .line 990
    .end local v5    # "x":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 992
    :cond_1b
    return v0
.end method

.method public whitelist core-platform-api test-api indexOf(Ljava/lang/Object;)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 234
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 235
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

    return v1
.end method

.method public whitelist core-platform-api test-api indexOf(Ljava/lang/Object;I)I
    .registers 5
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 254
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 255
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    invoke-static {p1, v0, p2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

    return v1
.end method

.method public whitelist core-platform-api test-api isEmpty()Z
    .registers 2

    .line 171
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist core-platform-api test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1006
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 262
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 263
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v1

    return v1
.end method

.method public whitelist core-platform-api test-api lastIndexOf(Ljava/lang/Object;I)I
    .registers 5
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 283
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 284
    .local v0, "elements":[Ljava/lang/Object;
    invoke-static {p1, v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v1

    return v1
.end method

.method public whitelist core-platform-api test-api listIterator()Ljava/util/ListIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1018
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api listIterator(I)Ljava/util/ListIterator;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1032
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1033
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    .line 1034
    .local v1, "len":I
    if-ltz p1, :cond_f

    if-gt p1, v1, :cond_f

    .line 1037
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;

    invoke-direct {v2, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;-><init>([Ljava/lang/Object;I)V

    return-object v2

    .line 1035
    :cond_f
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->outOfBounds(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist core-platform-api test-api remove(I)Ljava/lang/Object;
    .registers 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 473
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 475
    .local v1, "elements":[Ljava/lang/Object;
    array-length v2, v1

    .line 476
    .local v2, "len":I
    invoke-direct {p0, v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 477
    .local v3, "oldValue":Ljava/lang/Object;, "TE;"
    sub-int v4, v2, p1

    add-int/lit8 v4, v4, -0x1

    .line 478
    .local v4, "numMoved":I
    if-nez v4, :cond_1c

    .line 479
    add-int/lit8 v5, v2, -0x1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    goto :goto_2c

    .line 481
    :cond_1c
    add-int/lit8 v5, v2, -0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 482
    .local v5, "newElements":[Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-static {v1, v6, v5, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    add-int/lit8 v6, p1, 0x1

    invoke-static {v1, v6, v5, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    invoke-virtual {p0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 487
    .end local v5    # "newElements":[Ljava/lang/Object;
    :goto_2c
    monitor-exit v0

    return-object v3

    .line 488
    .end local v1    # "elements":[Ljava/lang/Object;
    .end local v2    # "len":I
    .end local v3    # "oldValue":Ljava/lang/Object;, "TE;"
    .end local v4    # "numMoved":I
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public whitelist core-platform-api test-api remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 504
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 505
    .local v0, "snapshot":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

    .line 506
    .local v1, "index":I
    if-gez v1, :cond_d

    goto :goto_11

    :cond_d
    invoke-direct {p0, p1, v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v2

    :goto_11
    return v2
.end method

.method public whitelist core-platform-api test-api removeAll(Ljava/util/Collection;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 651
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p1, :cond_34

    .line 652
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 653
    :try_start_5
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 654
    .local v1, "elements":[Ljava/lang/Object;
    array-length v2, v1

    .line 655
    .local v2, "len":I
    if-eqz v2, :cond_2e

    .line 657
    const/4 v3, 0x0

    .line 658
    .local v3, "newlen":I
    new-array v4, v2, [Ljava/lang/Object;

    .line 659
    .local v4, "temp":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_10
    if-ge v5, v2, :cond_22

    .line 660
    aget-object v6, v1, v5

    .line 661
    .local v6, "element":Ljava/lang/Object;
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    .line 662
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "newlen":I
    .local v7, "newlen":I
    aput-object v6, v4, v3

    move v3, v7

    .line 659
    .end local v6    # "element":Ljava/lang/Object;
    .end local v7    # "newlen":I
    .restart local v3    # "newlen":I
    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 664
    .end local v5    # "i":I
    :cond_22
    if-eq v3, v2, :cond_2e

    .line 665
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 666
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 669
    .end local v3    # "newlen":I
    .end local v4    # "temp":[Ljava/lang/Object;
    :cond_2e
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 670
    .end local v1    # "elements":[Ljava/lang/Object;
    .end local v2    # "len":I
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_31

    throw v1

    .line 651
    :cond_34
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 837
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    if-eqz p1, :cond_49

    .line 838
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 839
    :try_start_5
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 840
    .local v1, "elements":[Ljava/lang/Object;
    array-length v2, v1

    .line 842
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    const/4 v4, 0x0

    if-ge v3, v2, :cond_44

    .line 843
    aget-object v5, v1, v3

    .line 844
    .local v5, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 845
    move v6, v3

    .line 846
    .local v6, "newlen":I
    add-int/lit8 v7, v2, -0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 847
    .local v7, "newElements":[Ljava/lang/Object;
    invoke-static {v1, v4, v7, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 848
    const/4 v4, 0x1

    add-int/2addr v3, v4

    :goto_20
    if-ge v3, v2, :cond_32

    .line 849
    aget-object v8, v1, v3

    .line 850
    .local v8, "x":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2f

    .line 851
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "newlen":I
    .local v9, "newlen":I
    aput-object v8, v7, v6

    move v6, v9

    .line 848
    .end local v8    # "x":Ljava/lang/Object;, "TE;"
    .end local v9    # "newlen":I
    .restart local v6    # "newlen":I
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 853
    :cond_32
    add-int/lit8 v8, v2, -0x1

    if-ne v6, v8, :cond_38

    .line 854
    move-object v8, v7

    goto :goto_3c

    .line 855
    :cond_38
    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    .line 853
    :goto_3c
    invoke-virtual {p0, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 856
    monitor-exit v0

    return v4

    .line 842
    .end local v5    # "e":Ljava/lang/Object;, "TE;"
    .end local v6    # "newlen":I
    .end local v7    # "newElements":[Ljava/lang/Object;
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 859
    :cond_44
    monitor-exit v0

    return v4

    .line 860
    .end local v1    # "elements":[Ljava/lang/Object;
    .end local v2    # "len":I
    .end local v3    # "i":I
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_46

    throw v1

    .line 837
    :cond_49
    const/4 v0, 0x0

    throw v0
.end method

.method greylist-max-o removeRange(II)V
    .registers 10
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 557
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 559
    .local v1, "elements":[Ljava/lang/Object;
    array-length v2, v1

    .line 561
    .local v2, "len":I
    if-ltz p1, :cond_2c

    if-gt p2, v2, :cond_2c

    if-lt p2, p1, :cond_2c

    .line 563
    sub-int v3, p2, p1

    sub-int v3, v2, v3

    .line 564
    .local v3, "newlen":I
    sub-int v4, v2, p2

    .line 565
    .local v4, "numMoved":I
    if-nez v4, :cond_1e

    .line 566
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    goto :goto_2a

    .line 568
    :cond_1e
    new-array v5, v3, [Ljava/lang/Object;

    .line 569
    .local v5, "newElements":[Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-static {v1, v6, v5, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    invoke-static {v1, p2, v5, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 572
    invoke-virtual {p0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 574
    .end local v1    # "elements":[Ljava/lang/Object;
    .end local v2    # "len":I
    .end local v3    # "newlen":I
    .end local v4    # "numMoved":I
    .end local v5    # "newElements":[Ljava/lang/Object;
    :goto_2a
    monitor-exit v0

    .line 575
    return-void

    .line 562
    .restart local v1    # "elements":[Ljava/lang/Object;
    .restart local v2    # "len":I
    :cond_2c
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    throw v3

    .line 574
    .end local v1    # "elements":[Ljava/lang/Object;
    .end local v2    # "len":I
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .restart local p1    # "fromIndex":I
    .restart local p2    # "toIndex":I
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public whitelist core-platform-api test-api replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 864
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    if-eqz p1, :cond_24

    .line 865
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 866
    :try_start_5
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 867
    .local v1, "elements":[Ljava/lang/Object;
    array-length v2, v1

    .line 868
    .local v2, "len":I
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 869
    .local v3, "newElements":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v2, :cond_1c

    .line 870
    aget-object v5, v1, v4

    .line 871
    .local v5, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v5}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v4

    .line 869
    .end local v5    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 873
    .end local v4    # "i":I
    :cond_1c
    invoke-virtual {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 874
    .end local v1    # "elements":[Ljava/lang/Object;
    .end local v2    # "len":I
    .end local v3    # "newElements":[Ljava/lang/Object;
    monitor-exit v0

    .line 875
    return-void

    .line 874
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw v1

    .line 864
    :cond_24
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api retainAll(Ljava/util/Collection;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 690
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p1, :cond_34

    .line 691
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 692
    :try_start_5
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 693
    .local v1, "elements":[Ljava/lang/Object;
    array-length v2, v1

    .line 694
    .local v2, "len":I
    if-eqz v2, :cond_2e

    .line 696
    const/4 v3, 0x0

    .line 697
    .local v3, "newlen":I
    new-array v4, v2, [Ljava/lang/Object;

    .line 698
    .local v4, "temp":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_10
    if-ge v5, v2, :cond_22

    .line 699
    aget-object v6, v1, v5

    .line 700
    .local v6, "element":Ljava/lang/Object;
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 701
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "newlen":I
    .local v7, "newlen":I
    aput-object v6, v4, v3

    move v3, v7

    .line 698
    .end local v6    # "element":Ljava/lang/Object;
    .end local v7    # "newlen":I
    .restart local v3    # "newlen":I
    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 703
    .end local v5    # "i":I
    :cond_22
    if-eq v3, v2, :cond_2e

    .line 704
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 705
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 708
    .end local v3    # "newlen":I
    .end local v4    # "temp":[Ljava/lang/Object;
    :cond_2e
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 709
    .end local v1    # "elements":[Ljava/lang/Object;
    .end local v2    # "len":I
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_31

    throw v1

    .line 690
    :cond_34
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 403
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 405
    .local v1, "elements":[Ljava/lang/Object;
    invoke-direct {p0, v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 407
    .local v2, "oldValue":Ljava/lang/Object;, "TE;"
    if-eq v2, p2, :cond_18

    .line 408
    array-length v3, v1

    .line 409
    .local v3, "len":I
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    .line 410
    .local v4, "newElements":[Ljava/lang/Object;
    aput-object p2, v4, p1

    .line 411
    invoke-virtual {p0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 412
    .end local v3    # "len":I
    .end local v4    # "newElements":[Ljava/lang/Object;
    goto :goto_1b

    .line 414
    :cond_18
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 416
    :goto_1b
    monitor-exit v0

    return-object v2

    .line 417
    .end local v1    # "elements":[Ljava/lang/Object;
    .end local v2    # "oldValue":Ljava/lang/Object;, "TE;"
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method final greylist-max-o setArray([Ljava/lang/Object;)V
    .registers 2
    .param p1, "a"    # [Ljava/lang/Object;

    .line 113
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iput-object p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->array:[Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public whitelist core-platform-api test-api size()I
    .registers 2

    .line 162
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public whitelist core-platform-api test-api sort(Ljava/util/Comparator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 878
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 879
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 880
    .local v1, "elements":[Ljava/lang/Object;
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 881
    .local v2, "newElements":[Ljava/lang/Object;
    move-object v3, v2

    .line 882
    .local v3, "es":[Ljava/lang/Object;, "[TE;"
    invoke-static {v3, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 883
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 884
    .end local v1    # "elements":[Ljava/lang/Object;
    .end local v2    # "newElements":[Ljava/lang/Object;
    .end local v3    # "es":[Ljava/lang/Object;, "[TE;"
    monitor-exit v0

    .line 885
    return-void

    .line 884
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist core-platform-api test-api spliterator()Ljava/util/Spliterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1055
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    nop

    .line 1056
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x410

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    .line 1055
    return-object v0
.end method

.method public whitelist core-platform-api test-api subList(II)Ljava/util/List;
    .registers 7
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1155
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1156
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 1157
    .local v1, "elements":[Ljava/lang/Object;
    array-length v2, v1

    .line 1158
    .local v2, "len":I
    if-ltz p1, :cond_15

    if-gt p2, v2, :cond_15

    if-gt p1, p2, :cond_15

    .line 1160
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;

    invoke-direct {v3, p0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;II)V

    monitor-exit v0

    return-object v3

    .line 1159
    :cond_15
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    throw v3

    .line 1161
    .end local v1    # "elements":[Ljava/lang/Object;
    .end local v2    # "len":I
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .restart local p1    # "fromIndex":I
    .restart local p2    # "toIndex":I
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist core-platform-api test-api toArray()[Ljava/lang/Object;
    .registers 3

    .line 320
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 321
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public whitelist core-platform-api test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 364
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 365
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    .line 366
    .local v1, "len":I
    array-length v2, p1

    if-ge v2, v1, :cond_11

    .line 367
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 369
    :cond_11
    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    array-length v2, p1

    if-le v2, v1, :cond_1b

    .line 371
    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 372
    :cond_1b
    return-object p1
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 2

    .line 946
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
