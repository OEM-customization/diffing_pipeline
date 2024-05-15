.class public Ljava/util/Vector;
.super Ljava/util/AbstractList;
.source "Vector.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Vector$VectorSpliterator;,
        Ljava/util/Vector$ListItr;,
        Ljava/util/Vector$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final whitelist serialVersionUID:J = -0x266882a47fc450ffL


# instance fields
.field protected whitelist test-api capacityIncrement:I

.field protected whitelist test-api elementCount:I

.field protected whitelist test-api elementData:[Ljava/lang/Object;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 157
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ljava/util/Vector;-><init>(I)V

    .line 158
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 148
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/Vector;-><init>(II)V

    .line 149
    return-void
.end method

.method public constructor whitelist test-api <init>(II)V
    .registers 6
    .param p1, "initialCapacity"    # I
    .param p2, "capacityIncrement"    # I

    .line 131
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 132
    if-ltz p1, :cond_c

    .line 135
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 136
    iput p2, p0, Ljava/util/Vector;->capacityIncrement:I

    .line 137
    return-void

    .line 133
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 170
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 171
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 172
    array-length v1, v0

    iput v1, p0, Ljava/util/Vector;->elementCount:I

    .line 174
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [Ljava/lang/Object;

    if-eq v0, v1, :cond_20

    .line 175
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    const-class v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 176
    :cond_20
    return-void
.end method

.method private greylist-max-o ensureCapacityHelper(I)V
    .registers 3
    .param p1, "minCapacity"    # I

    .line 245
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    sub-int v0, p1, v0

    if-lez v0, :cond_a

    .line 246
    invoke-direct {p0, p1}, Ljava/util/Vector;->grow(I)V

    .line 247
    :cond_a
    return-void
.end method

.method private greylist-max-o grow(I)V
    .registers 5
    .param p1, "minCapacity"    # I

    .line 259
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    .line 260
    .local v0, "oldCapacity":I
    iget v1, p0, Ljava/util/Vector;->capacityIncrement:I

    if-lez v1, :cond_8

    .line 261
    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    add-int/2addr v1, v0

    .line 262
    .local v1, "newCapacity":I
    sub-int v2, v1, p1

    if-gez v2, :cond_f

    .line 263
    move v1, p1

    .line 264
    :cond_f
    const v2, 0x7ffffff7

    sub-int v2, v1, v2

    if-lez v2, :cond_1a

    .line 265
    invoke-static {p1}, Ljava/util/Vector;->hugeCapacity(I)I

    move-result v1

    .line 266
    :cond_1a
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 267
    return-void
.end method

.method private static greylist-max-o hugeCapacity(I)I
    .registers 2
    .param p0, "minCapacity"    # I

    .line 270
    if-ltz p0, :cond_d

    .line 272
    const v0, 0x7ffffff7

    if-le p0, v0, :cond_b

    .line 273
    const v0, 0x7fffffff

    goto :goto_c

    .line 274
    :cond_b
    nop

    .line 272
    :goto_c
    return v0

    .line 271
    :cond_d
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1069
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1071
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    monitor-enter p0

    .line 1072
    :try_start_5
    const-string v1, "capacityIncrement"

    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1073
    const-string v1, "elementCount"

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1074
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 1075
    .local v1, "data":[Ljava/lang/Object;
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_25

    .line 1076
    const-string v2, "elementData"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1077
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1078
    return-void

    .line 1075
    .end local v1    # "data":[Ljava/lang/Object;
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method


# virtual methods
.method public whitelist test-api add(ILjava/lang/Object;)V
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 814
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 815
    return-void
.end method

.method public declared-synchronized whitelist test-api add(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 781
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 782
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    .line 783
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/Vector;->elementCount:I

    aput-object p1, v0, v2
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 784
    monitor-exit p0

    return v1

    .line 780
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "e":Ljava/lang/Object;, "TE;"
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    monitor-enter p0

    .line 954
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 955
    if-ltz p1, :cond_35

    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-gt p1, v0, :cond_35

    .line 958
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 959
    .local v0, "a":[Ljava/lang/Object;
    array-length v2, v0

    .line 960
    .local v2, "numNew":I
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    add-int/2addr v3, v2

    invoke-direct {p0, v3}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    .line 962
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    sub-int/2addr v3, p1

    .line 963
    .local v3, "numMoved":I
    if-lez v3, :cond_24

    .line 964
    iget-object v4, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int v5, p1, v2

    invoke-static {v4, p1, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 967
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_24
    iget-object v4, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v5, v4, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 968
    iget v4, p0, Ljava/util/Vector;->elementCount:I

    add-int/2addr v4, v2

    iput v4, p0, Ljava/util/Vector;->elementCount:I
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_3b

    .line 969
    if-eqz v2, :cond_32

    goto :goto_33

    :cond_32
    move v1, v5

    :goto_33
    monitor-exit p0

    return v1

    .line 956
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "numNew":I
    .end local v3    # "numMoved":I
    :cond_35
    :try_start_35
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_3b

    .line 953
    .end local p1    # "index":I
    .end local p2    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    monitor-enter p0

    .line 883
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 884
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 885
    .local v0, "a":[Ljava/lang/Object;
    array-length v2, v0

    .line 886
    .local v2, "numNew":I
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    add-int/2addr v3, v2

    invoke-direct {p0, v3}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    .line 887
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/Vector;->elementCount:I

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 888
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    add-int/2addr v3, v2

    iput v3, p0, Ljava/util/Vector;->elementCount:I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_25

    .line 889
    if-eqz v2, :cond_22

    goto :goto_23

    :cond_22
    move v1, v5

    :goto_23
    monitor-exit p0

    return v1

    .line 882
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "numNew":I
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api addElement(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 619
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 620
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    .line 621
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Vector;->elementCount:I

    aput-object p1, v0, v1
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 622
    monitor-exit p0

    return-void

    .line 618
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "obj":Ljava/lang/Object;, "TE;"
    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api capacity()I
    .registers 2

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 306
    :try_start_1
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return v0

    .line 306
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api clear()V
    .registers 1

    .line 850
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    .line 851
    return-void
.end method

.method public declared-synchronized whitelist test-api clone()Ljava/lang/Object;
    .registers 4

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 674
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 675
    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 676
    const/4 v1, 0x0

    iput v1, v0, Ljava/util/Vector;->modCount:I
    :try_end_14
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_14} :catch_18
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 677
    monitor-exit p0

    return-object v0

    .line 673
    .end local v0    # "v":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catchall_16
    move-exception v0

    goto :goto_1f

    .line 678
    :catch_18
    move-exception v0

    .line 680
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_19
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_16

    .line 673
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_1f
    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 367
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    if-ltz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public declared-synchronized whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    .line 866
    :try_start_1
    invoke-super {p0, p1}, Ljava/util/AbstractList;->containsAll(Ljava/util/Collection;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 866
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api copyInto([Ljava/lang/Object;)V
    .registers 5
    .param p1, "anArray"    # [Ljava/lang/Object;

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 193
    monitor-exit p0

    return-void

    .line 191
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "anArray":[Ljava/lang/Object;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api elementAt(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 473
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v0, :cond_b

    .line 477
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_27

    monitor-exit p0

    return-object v0

    .line 474
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_27

    .line 472
    .end local p1    # "index":I
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method greylist-max-r elementData(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 734
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist test-api elements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TE;>;"
        }
    .end annotation

    .line 339
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    new-instance v0, Ljava/util/Vector$1;

    invoke-direct {v0, p0}, Ljava/util/Vector$1;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method public declared-synchronized whitelist test-api ensureCapacity(I)V
    .registers 3
    .param p1, "minCapacity"    # I

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 229
    if-lez p1, :cond_10

    .line 230
    :try_start_3
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 231
    invoke-direct {p0, p1}, Ljava/util/Vector;->ensureCapacityHelper(I)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    goto :goto_10

    .line 228
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "minCapacity":I
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1

    .line 233
    .restart local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .restart local p1    # "minCapacity":I
    :cond_10
    :goto_10
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 985
    :try_start_1
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 985
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "o":Ljava/lang/Object;
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api firstElement()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 488
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-eqz v0, :cond_c

    .line 491
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    monitor-exit p0

    return-object v0

    .line 489
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_c
    :try_start_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_12

    .line 487
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    monitor-enter p0

    .line 1261
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    iget v0, p0, Ljava/util/Vector;->modCount:I

    .line 1264
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 1265
    .local v1, "elementData":[Ljava/lang/Object;, "[TE;"
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    .line 1266
    .local v2, "elementCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    iget v4, p0, Ljava/util/Vector;->modCount:I

    if-ne v4, v0, :cond_19

    if-ge v3, v2, :cond_19

    .line 1267
    aget-object v4, v1, v3

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1266
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1269
    .end local v3    # "i":I
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_19
    iget v3, p0, Ljava/util/Vector;->modCount:I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_25

    if-ne v3, v0, :cond_1f

    .line 1272
    monitor-exit p0

    return-void

    .line 1270
    .restart local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_1f
    :try_start_1f
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_25

    .line 1260
    .end local v0    # "expectedModCount":I
    .end local v1    # "elementData":[Ljava/lang/Object;, "[TE;"
    .end local v2    # "elementCount":I
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 747
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v0, :cond_b

    .line 750
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_11

    monitor-exit p0

    return-object v0

    .line 748
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_11

    .line 746
    .end local p1    # "index":I
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api hashCode()I
    .registers 2

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 992
    :try_start_1
    invoke-super {p0}, Ljava/util/AbstractList;->hashCode()I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 992
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 382
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized whitelist test-api indexOf(Ljava/lang/Object;I)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 402
    if-nez p1, :cond_14

    .line 403
    move v0, p2

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_13

    .line 404
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_2b

    if-nez v1, :cond_10

    .line 405
    monitor-exit p0

    return v0

    .line 403
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v0    # "i":I
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_13
    goto :goto_28

    .line 407
    :cond_14
    move v0, p2

    .restart local v0    # "i":I
    :goto_15
    :try_start_15
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_28

    .line 408
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_2b

    if-eqz v1, :cond_25

    .line 409
    monitor-exit p0

    return v0

    .line 407
    .restart local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 411
    .end local v0    # "i":I
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_28
    :goto_28
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 401
    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "index":I
    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api insertElementAt(Ljava/lang/Object;I)V
    .registers 6
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 596
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 597
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-gt p2, v0, :cond_26

    .line 601
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    .line 602
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v1, p2, 0x1

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aput-object p1, v0, p2

    .line 604
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_42

    .line 605
    monitor-exit p0

    return-void

    .line 598
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_26
    :try_start_26
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_42
    .catchall {:try_start_26 .. :try_end_42} :catchall_42

    .line 595
    .end local p1    # "obj":Ljava/lang/Object;, "TE;"
    .end local p2    # "index":I
    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api isEmpty()Z
    .registers 2

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 326
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    .line 326
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 1118
    :try_start_1
    new-instance v0, Ljava/util/Vector$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Vector$Itr;-><init>(Ljava/util/Vector;Ljava/util/Vector$1;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 1118
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api lastElement()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 502
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-eqz v0, :cond_d

    .line 505
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    monitor-exit p0

    return-object v0

    .line 503
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_d
    :try_start_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_13

    .line 501
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 426
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->lastIndexOf(Ljava/lang/Object;I)I

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    .line 426
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "o":Ljava/lang/Object;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api lastIndexOf(Ljava/lang/Object;I)I
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 446
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-ge p2, v0, :cond_2b

    .line 449
    if-nez p1, :cond_16

    .line 450
    move v0, p2

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_15

    .line 451
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_47

    if-nez v1, :cond_12

    .line 452
    monitor-exit p0

    return v0

    .line 450
    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .end local v0    # "i":I
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_15
    goto :goto_28

    .line 454
    :cond_16
    move v0, p2

    .restart local v0    # "i":I
    :goto_17
    if-ltz v0, :cond_28

    .line 455
    :try_start_19
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_47

    if-eqz v1, :cond_25

    .line 456
    monitor-exit p0

    return v0

    .line 454
    .restart local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 458
    .end local v0    # "i":I
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_28
    :goto_28
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 447
    .restart local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_2b
    :try_start_2b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_47
    .catchall {:try_start_2b .. :try_end_47} :catchall_47

    .line 445
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "index":I
    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api listIterator()Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 1107
    :try_start_1
    new-instance v0, Ljava/util/Vector$ListItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Vector$ListItr;-><init>(Ljava/util/Vector;I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 1107
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 1093
    if-ltz p1, :cond_e

    :try_start_3
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-gt p1, v0, :cond_e

    .line 1095
    new-instance v0, Ljava/util/Vector$ListItr;

    invoke-direct {v0, p0, p1}, Ljava/util/Vector$ListItr;-><init>(Ljava/util/Vector;I)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_25

    monitor-exit p0

    return-object v0

    .line 1094
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_e
    :try_start_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_25

    .line 1092
    .end local p1    # "index":I
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api remove(I)Ljava/lang/Object;
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 829
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 830
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v0, :cond_2a

    .line 832
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    move-result-object v0

    .line 834
    .local v0, "oldValue":Ljava/lang/Object;, "TE;"
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 835
    .local v1, "numMoved":I
    if-lez v1, :cond_1d

    .line 836
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, v2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 838
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_1d
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/Vector;->elementCount:I

    const/4 v4, 0x0

    aput-object v4, v2, v3
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_30

    .line 840
    monitor-exit p0

    return-object v0

    .line 831
    .end local v0    # "oldValue":Ljava/lang/Object;, "TE;"
    .end local v1    # "numMoved":I
    :cond_2a
    :try_start_2a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_30

    .line 828
    .end local p1    # "index":I
    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 799
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    .line 910
    :try_start_1
    invoke-super {p0, p1}, Ljava/util/AbstractList;->removeAll(Ljava/util/Collection;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 910
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api removeAllElements()V
    .registers 4

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 656
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 658
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_14

    .line 659
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 661
    .end local v0    # "i":I
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_14
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 662
    monitor-exit p0

    return-void

    .line 655
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api removeElement(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 640
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 641
    invoke-virtual {p0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 642
    .local v0, "i":I
    if-ltz v0, :cond_12

    .line 643
    invoke-virtual {p0, v0}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_15

    .line 644
    monitor-exit p0

    return v1

    .line 646
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_12
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 639
    .end local v0    # "i":I
    .end local p1    # "obj":Ljava/lang/Object;
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api removeElementAt(I)V
    .registers 6
    .param p1, "index"    # I

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 556
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 557
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v0, :cond_2c

    .line 561
    if-ltz p1, :cond_26

    .line 564
    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 565
    .local v0, "j":I
    if-lez v0, :cond_19

    .line 566
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 568
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_19
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/Vector;->elementCount:I

    .line 569
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_48

    .line 570
    monitor-exit p0

    return-void

    .line 562
    .end local v0    # "j":I
    :cond_26
    :try_start_26
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 558
    :cond_2c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_48
    .catchall {:try_start_26 .. :try_end_48} :catchall_48

    .line 555
    .end local p1    # "index":I
    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    monitor-enter p0

    .line 1277
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    const/4 v0, 0x0

    .line 1282
    .local v0, "removeCount":I
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    .line 1283
    .local v1, "size":I
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 1284
    .local v2, "removeSet":Ljava/util/BitSet;
    iget v3, p0, Ljava/util/Vector;->modCount:I

    .line 1285
    .local v3, "expectedModCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    iget v5, p0, Ljava/util/Vector;->modCount:I

    if-ne v5, v3, :cond_27

    if-ge v4, v1, :cond_27

    .line 1287
    iget-object v5, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v5, v5, v4

    .line 1288
    .local v5, "element":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1289
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 1290
    add-int/lit8 v0, v0, 0x1

    .line 1285
    .end local v5    # "element":Ljava/lang/Object;, "TE;"
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1293
    .end local v4    # "i":I
    :cond_27
    iget v4, p0, Ljava/util/Vector;->modCount:I

    if-ne v4, v3, :cond_6a

    .line 1298
    const/4 v4, 0x1

    if-lez v0, :cond_30

    move v5, v4

    goto :goto_31

    :cond_30
    const/4 v5, 0x0

    .line 1299
    .local v5, "anyToRemove":Z
    :goto_31
    if-eqz v5, :cond_68

    .line 1300
    sub-int v6, v1, v0

    .line 1301
    .local v6, "newSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_37
    if-ge v7, v1, :cond_4b

    if-ge v8, v6, :cond_4b

    .line 1302
    invoke-virtual {v2, v7}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v9

    move v7, v9

    .line 1303
    iget-object v9, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v10, v9, v7

    aput-object v10, v9, v8

    .line 1301
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    .line 1305
    .end local v7    # "i":I
    .end local v8    # "j":I
    :cond_4b
    move v7, v6

    .local v7, "k":I
    :goto_4c
    if-ge v7, v1, :cond_56

    .line 1306
    iget-object v8, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v9, v8, v7

    .line 1305
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    .line 1308
    .end local v7    # "k":I
    :cond_56
    iput v6, p0, Ljava/util/Vector;->elementCount:I

    .line 1309
    iget v7, p0, Ljava/util/Vector;->modCount:I

    if-ne v7, v3, :cond_62

    .line 1312
    iget v7, p0, Ljava/util/Vector;->modCount:I

    add-int/2addr v7, v4

    iput v7, p0, Ljava/util/Vector;->modCount:I

    goto :goto_68

    .line 1310
    :cond_62
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4
    :try_end_68
    .catchall {:try_start_1 .. :try_end_68} :catchall_70

    .line 1315
    .end local v6    # "newSize":I
    :cond_68
    :goto_68
    monitor-exit p0

    return v5

    .line 1294
    .end local v5    # "anyToRemove":Z
    .restart local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_6a
    :try_start_6a
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_70

    .line 1276
    .end local v0    # "removeCount":I
    .end local v1    # "size":I
    .end local v2    # "removeSet":Ljava/util/BitSet;
    .end local v3    # "expectedModCount":I
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    :catchall_70
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized whitelist test-api removeRange(II)V
    .registers 8
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 1050
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 1051
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    sub-int/2addr v0, p2

    .line 1052
    .local v0, "numMoved":I
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-static {v1, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1056
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    sub-int v2, p2, p1

    sub-int/2addr v1, v2

    .line 1057
    .local v1, "newElementCount":I
    :goto_14
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    if-eq v2, v1, :cond_22

    .line 1058
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/Vector;->elementCount:I

    const/4 v4, 0x0

    aput-object v4, v3, v2
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_24

    goto :goto_14

    .line 1059
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_22
    monitor-exit p0

    return-void

    .line 1049
    .end local v0    # "numMoved":I
    .end local v1    # "newElementCount":I
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    monitor-enter p0

    .line 1321
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    iget v0, p0, Ljava/util/Vector;->modCount:I

    .line 1323
    .local v0, "expectedModCount":I
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    .line 1324
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget v3, p0, Ljava/util/Vector;->modCount:I

    if-ne v3, v0, :cond_1c

    if-ge v2, v1, :cond_1c

    .line 1325
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v4, v3, v2

    invoke-interface {p1, v4}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    .line 1324
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1327
    .end local v2    # "i":I
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_1c
    iget v2, p0, Ljava/util/Vector;->modCount:I

    if-ne v2, v0, :cond_28

    .line 1330
    iget v2, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/Vector;->modCount:I
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_2e

    .line 1331
    monitor-exit p0

    return-void

    .line 1328
    :cond_28
    :try_start_28
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2e

    .line 1320
    .end local v0    # "expectedModCount":I
    .end local v1    # "size":I
    .end local p1    # "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    .line 933
    :try_start_1
    invoke-super {p0, p1}, Ljava/util/AbstractList;->retainAll(Ljava/util/Collection;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 933
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 765
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v0, :cond_f

    .line 768
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    move-result-object v0

    .line 769
    .local v0, "oldValue":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aput-object p2, v1, p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_15

    .line 770
    monitor-exit p0

    return-object v0

    .line 766
    .end local v0    # "oldValue":Ljava/lang/Object;, "TE;"
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_15

    .line 764
    .end local p1    # "index":I
    .end local p2    # "element":Ljava/lang/Object;, "TE;"
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api setElementAt(Ljava/lang/Object;I)V
    .registers 6
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 529
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-ge p2, v0, :cond_b

    .line 533
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aput-object p1, v0, p2
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_27

    .line 534
    monitor-exit p0

    return-void

    .line 530
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_27

    .line 528
    .end local p1    # "obj":Ljava/lang/Object;, "TE;"
    .end local p2    # "index":I
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api setSize(I)V
    .registers 5
    .param p1, "newSize"    # I

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 287
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 288
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-le p1, v0, :cond_f

    .line 289
    invoke-direct {p0, p1}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    goto :goto_1c

    .line 291
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_f
    move v0, p1

    .local v0, "i":I
    :goto_10
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_1c

    .line 292
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 295
    .end local v0    # "i":I
    :cond_1c
    :goto_1c
    iput p1, p0, Ljava/util/Vector;->elementCount:I
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 296
    monitor-exit p0

    return-void

    .line 286
    .end local p1    # "newSize":I
    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api size()I
    .registers 2

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 315
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 315
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api sort(Ljava/util/Comparator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    monitor-enter p0

    .line 1336
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    .line 1337
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v1, v2, v3, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 1338
    iget v1, p0, Ljava/util/Vector;->modCount:I

    if-ne v1, v0, :cond_17

    .line 1341
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1d

    .line 1342
    monitor-exit p0

    return-void

    .line 1339
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_17
    :try_start_17
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_1d

    .line 1335
    .end local v0    # "expectedModCount":I
    .end local p1    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1359
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    new-instance v6, Ljava/util/Vector$VectorSpliterator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/Vector$VectorSpliterator;-><init>(Ljava/util/Vector;[Ljava/lang/Object;III)V

    return-object v6
.end method

.method public declared-synchronized whitelist test-api subList(II)Ljava/util/List;
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 1038
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 1038
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api toArray()[Ljava/lang/Object;
    .registers 3

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 691
    :try_start_1
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 691
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    monitor-enter p0

    .line 719
    :try_start_1
    array-length v0, p1

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_12

    .line 720
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_22

    monitor-exit p0

    return-object v0

    .line 722
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_12
    :try_start_12
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 724
    array-length v0, p1

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-le v0, v1, :cond_20

    .line 725
    const/4 v0, 0x0

    aput-object v0, p1, v1
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_22

    .line 727
    :cond_20
    monitor-exit p0

    return-object p1

    .line 718
    .end local p1    # "a":[Ljava/lang/Object;, "[TT;"
    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 1000
    :try_start_1
    invoke-super {p0}, Ljava/util/AbstractList;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    .line 1000
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api trimToSize()V
    .registers 4

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 204
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 205
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v1, v0

    .line 206
    .local v1, "oldCapacity":I
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    if-ge v2, v1, :cond_14

    .line 207
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 209
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_14
    monitor-exit p0

    return-void

    .line 203
    .end local v1    # "oldCapacity":I
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
