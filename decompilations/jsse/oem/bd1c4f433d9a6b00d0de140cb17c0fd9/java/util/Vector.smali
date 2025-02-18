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
        Ljava/util/Vector$Itr;,
        Ljava/util/Vector$ListItr;,
        Ljava/util/Vector$VectorSpliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final serialVersionUID:J = -0x266882a47fc450ffL


# instance fields
.field protected capacityIncrement:I

.field protected elementCount:I

.field protected elementData:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 157
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ljava/util/Vector;-><init>(I)V

    .line 158
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .prologue
    .line 148
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/Vector;-><init>(II)V

    .line 149
    return-void
.end method

.method public constructor <init>(II)V
    .registers 6
    .param p1, "initialCapacity"    # I
    .param p2, "capacityIncrement"    # I

    .prologue
    .line 131
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 132
    if-gez p1, :cond_1f

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1f
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 136
    iput p2, p0, Ljava/util/Vector;->capacityIncrement:I

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 171
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Ljava/util/Vector;->elementCount:I

    .line 174
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [Ljava/lang/Object;

    if-eq v0, v1, :cond_24

    .line 175
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    const-class v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 176
    :cond_24
    return-void
.end method

.method private ensureCapacityHelper(I)V
    .registers 3
    .param p1, "minCapacity"    # I

    .prologue
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

.method private grow(I)V
    .registers 5
    .param p1, "minCapacity"    # I

    .prologue
    .line 259
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v1, v2

    .line 260
    .local v1, "oldCapacity":I
    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    if-lez v2, :cond_24

    .line 261
    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    .line 260
    :goto_9
    add-int v0, v1, v2

    .line 262
    .local v0, "newCapacity":I
    sub-int v2, v0, p1

    if-gez v2, :cond_10

    .line 263
    move v0, p1

    .line 264
    :cond_10
    const v2, 0x7ffffff7

    sub-int v2, v0, v2

    if-lez v2, :cond_1b

    .line 265
    invoke-static {p1}, Ljava/util/Vector;->hugeCapacity(I)I

    move-result v0

    .line 266
    :cond_1b
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 267
    return-void

    .end local v0    # "newCapacity":I
    :cond_24
    move v2, v1

    .line 261
    goto :goto_9
.end method

.method private static hugeCapacity(I)I
    .registers 2
    .param p0, "minCapacity"    # I

    .prologue
    const v0, 0x7ffffff7

    .line 270
    if-gez p0, :cond_b

    .line 271
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 272
    :cond_b
    if-le p0, v0, :cond_10

    .line 273
    const v0, 0x7fffffff

    .line 272
    :cond_10
    return v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1069
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    .line 1071
    .local v1, "fields":Ljava/io/ObjectOutputStream$PutField;
    monitor-enter p0

    .line 1072
    :try_start_5
    const-string/jumbo v2, "capacityIncrement"

    iget v3, p0, Ljava/util/Vector;->capacityIncrement:I

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1073
    const-string/jumbo v2, "elementCount"

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1074
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_28

    .local v0, "data":[Ljava/lang/Object;
    monitor-exit p0

    .line 1076
    const-string/jumbo v2, "elementData"

    invoke-virtual {v1, v2, v0}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1077
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1078
    return-void

    .line 1071
    .end local v0    # "data":[Ljava/lang/Object;
    :catchall_28
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 814
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 815
    return-void
.end method

.method public declared-synchronized add(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 781
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 782
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    .line 783
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Vector;->elementCount:I

    aput-object p1, v0, v1
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    .line 784
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addAll(ILjava/util/Collection;)Z
    .registers 10
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v3, 0x0

    monitor-enter p0

    .line 954
    :try_start_2
    iget v4, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/Vector;->modCount:I

    .line 955
    if-ltz p1, :cond_e

    iget v4, p0, Ljava/util/Vector;->elementCount:I

    if-le p1, v4, :cond_17

    .line 956
    :cond_e
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v3

    monitor-exit p0

    throw v3

    .line 958
    :cond_17
    :try_start_17
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 959
    .local v0, "a":[Ljava/lang/Object;
    array-length v2, v0

    .line 960
    .local v2, "numNew":I
    iget v4, p0, Ljava/util/Vector;->elementCount:I

    add-int/2addr v4, v2

    invoke-direct {p0, v4}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    .line 962
    iget v4, p0, Ljava/util/Vector;->elementCount:I

    sub-int v1, v4, p1

    .line 963
    .local v1, "numMoved":I
    if-lez v1, :cond_31

    .line 964
    iget-object v4, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int v6, p1, v2

    invoke-static {v4, p1, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 967
    :cond_31
    iget-object v4, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v5, v4, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 968
    iget v4, p0, Ljava/util/Vector;->elementCount:I

    add-int/2addr v4, v2

    iput v4, p0, Ljava/util/Vector;->elementCount:I
    :try_end_3c
    .catchall {:try_start_17 .. :try_end_3c} :catchall_14

    .line 969
    if-eqz v2, :cond_3f

    const/4 v3, 0x1

    :cond_3f
    monitor-exit p0

    return v3
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v2, 0x0

    monitor-enter p0

    .line 883
    :try_start_2
    iget v3, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/Vector;->modCount:I

    .line 884
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 885
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    .line 886
    .local v1, "numNew":I
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    add-int/2addr v3, v1

    invoke-direct {p0, v3}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    .line 887
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/Vector;->elementCount:I

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 888
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    add-int/2addr v3, v1

    iput v3, p0, Ljava/util/Vector;->elementCount:I
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_25

    .line 889
    if-eqz v1, :cond_23

    const/4 v2, 0x1

    :cond_23
    monitor-exit p0

    return v2

    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "numNew":I
    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized addElement(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
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

    monitor-exit p0

    .line 622
    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized capacity()I
    .registers 2

    .prologue
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

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clear()V
    .registers 1

    .prologue
    .line 850
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    .line 851
    return-void
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 674
    :try_start_1
    invoke-super {p0}, Ljava/util/AbstractList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 675
    .local v1, "v":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 676
    const/4 v2, 0x0

    iput v2, v1, Ljava/util/Vector;->modCount:I
    :try_end_14
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_14} :catch_16
    .catchall {:try_start_1 .. :try_end_14} :catchall_1d

    monitor-exit p0

    .line 677
    return-object v1

    .line 678
    .end local v1    # "v":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catch_16
    move-exception v0

    .line 680
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_17
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_1d

    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :catchall_1d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v0, 0x0

    .line 367
    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    if-ltz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public declared-synchronized containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    .line 866
    :try_start_1
    invoke-super {p0, p1}, Ljava/util/AbstractList;->containsAll(Ljava/util/Collection;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized copyInto([Ljava/lang/Object;)V
    .registers 6
    .param p1, "anArray"    # [Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    .line 193
    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized elementAt(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 473
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-lt p1, v0, :cond_28

    .line 474
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0

    .line 477
    :cond_28
    :try_start_28
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_25

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method elementData(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 734
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    new-instance v0, Ljava/util/Vector$1;

    invoke-direct {v0, p0}, Ljava/util/Vector$1;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method public declared-synchronized ensureCapacity(I)V
    .registers 3
    .param p1, "minCapacity"    # I

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 229
    if-lez p1, :cond_c

    .line 230
    :try_start_3
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 231
    invoke-direct {p0, p1}, Ljava/util/Vector;->ensureCapacityHelper(I)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit p0

    .line 233
    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 985
    :try_start_1
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized firstElement()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 488
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-nez v0, :cond_e

    .line 489
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 491
    :cond_e
    const/4 v0, 0x0

    :try_start_f
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_b

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized forEach(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    monitor-enter p0

    .line 1253
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    iget v2, p0, Ljava/util/Vector;->modCount:I

    .line 1256
    .local v2, "expectedModCount":I
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 1257
    .local v1, "elementData":[Ljava/lang/Object;, "[TE;"
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    .line 1258
    .local v0, "elementCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    iget v4, p0, Ljava/util/Vector;->modCount:I

    if-ne v4, v2, :cond_19

    if-ge v3, v0, :cond_19

    .line 1259
    aget-object v4, v1, v3

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1258
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1261
    :cond_19
    iget v4, p0, Ljava/util/Vector;->modCount:I

    if-eq v4, v2, :cond_26

    .line 1262
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_23

    .end local v0    # "elementCount":I
    .end local v1    # "elementData":[Ljava/lang/Object;, "[TE;"
    .end local v2    # "expectedModCount":I
    .end local v3    # "i":I
    :catchall_23
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v0    # "elementCount":I
    .restart local v1    # "elementData":[Ljava/lang/Object;, "[TE;"
    .restart local v2    # "expectedModCount":I
    .restart local v3    # "i":I
    :cond_26
    monitor-exit p0

    .line 1264
    return-void
.end method

.method public declared-synchronized get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 747
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-lt p1, v0, :cond_e

    .line 748
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 750
    :cond_e
    :try_start_e
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_b

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .registers 2

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 992
    :try_start_1
    invoke-super {p0}, Ljava/util/AbstractList;->hashCode()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 382
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized indexOf(Ljava/lang/Object;I)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 402
    if-nez p1, :cond_13

    .line 403
    move v0, p2

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_27

    .line 404
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_2a

    if-nez v1, :cond_10

    monitor-exit p0

    .line 405
    return v0

    .line 403
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 407
    .end local v0    # "i":I
    :cond_13
    move v0, p2

    .restart local v0    # "i":I
    :goto_14
    :try_start_14
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_27

    .line 408
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_2a

    move-result v1

    if-eqz v1, :cond_24

    monitor-exit p0

    .line 409
    return v0

    .line 407
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 411
    :cond_27
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized insertElementAt(Ljava/lang/Object;I)V
    .registers 7
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
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

    if-le p2, v0, :cond_2e

    .line 598
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 599
    const-string/jumbo v2, " > "

    .line 598
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 599
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    .line 598
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 601
    :cond_2e
    :try_start_2e
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    .line 602
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v2, p2, 0x1

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    sub-int/2addr v3, p2

    invoke-static {v0, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aput-object p1, v0, p2

    .line 604
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_4b
    .catchall {:try_start_2e .. :try_end_4b} :catchall_2b

    monitor-exit p0

    .line 605
    return-void
.end method

.method public declared-synchronized isEmpty()Z
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v0, 0x0

    monitor-enter p0

    .line 326
    :try_start_2
    iget v1, p0, Ljava/util/Vector;->elementCount:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_9

    if-nez v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 1118
    :try_start_1
    new-instance v0, Ljava/util/Vector$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Vector$Itr;-><init>(Ljava/util/Vector;Ljava/util/Vector$Itr;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lastElement()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 502
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-nez v0, :cond_e

    .line 503
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 505
    :cond_e
    :try_start_e
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_b

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 426
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->lastIndexOf(Ljava/lang/Object;I)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lastIndexOf(Ljava/lang/Object;I)I
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 446
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-lt p2, v1, :cond_28

    .line 447
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1

    .line 449
    :cond_28
    if-nez p1, :cond_38

    .line 450
    move v0, p2

    .local v0, "i":I
    :goto_2b
    if-ltz v0, :cond_4a

    .line 451
    :try_start_2d
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_25

    if-nez v1, :cond_35

    monitor-exit p0

    .line 452
    return v0

    .line 450
    :cond_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    .line 454
    .end local v0    # "i":I
    :cond_38
    move v0, p2

    .restart local v0    # "i":I
    :goto_39
    if-ltz v0, :cond_4a

    .line 455
    :try_start_3b
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_25

    move-result v1

    if-eqz v1, :cond_47

    monitor-exit p0

    .line 456
    return v0

    .line 454
    :cond_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    .line 458
    :cond_4a
    const/4 v1, -0x1

    monitor-exit p0

    return v1
.end method

.method public declared-synchronized listIterator()Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
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

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listIterator(I)Ljava/util/ListIterator;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 1093
    if-ltz p1, :cond_7

    :try_start_3
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-le p1, v0, :cond_24

    .line 1094
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1095
    :cond_24
    :try_start_24
    new-instance v0, Ljava/util/Vector$ListItr;

    invoke-direct {v0, p0, p1}, Ljava/util/Vector$ListItr;-><init>(Ljava/util/Vector;I)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_21

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized remove(I)Ljava/lang/Object;
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 829
    :try_start_1
    iget v2, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/Vector;->modCount:I

    .line 830
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    if-lt p1, v2, :cond_14

    .line 831
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v2
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v2

    monitor-exit p0

    throw v2

    .line 832
    :cond_14
    :try_start_14
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    .line 834
    .local v1, "oldValue":Ljava/lang/Object;, "TE;"
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    sub-int/2addr v2, p1

    add-int/lit8 v0, v2, -0x1

    .line 835
    .local v0, "numMoved":I
    if-lez v0, :cond_28

    .line 836
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-static {v2, v3, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 838
    :cond_28
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/Vector;->elementCount:I

    const/4 v4, 0x0

    aput-object v4, v2, v3
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_11

    monitor-exit p0

    .line 840
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 799
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    .line 910
    :try_start_1
    invoke-super {p0, p1}, Ljava/util/AbstractList;->removeAll(Ljava/util/Collection;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAllElements()V
    .registers 4

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 656
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I

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
    :cond_14
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/Vector;->elementCount:I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    .line 662
    return-void

    .end local v0    # "i":I
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeElement(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v2, 0x0

    monitor-enter p0

    .line 640
    :try_start_2
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I

    .line 641
    invoke-virtual {p0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 642
    .local v0, "i":I
    if-ltz v0, :cond_14

    .line 643
    invoke-virtual {p0, v0}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_16

    .line 644
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :cond_14
    monitor-exit p0

    .line 646
    return v2

    .end local v0    # "i":I
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeElementAt(I)V
    .registers 6
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 556
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I

    .line 557
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-lt p1, v1, :cond_2e

    .line 558
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 559
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    .line 558
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 561
    :cond_2e
    if-gez p1, :cond_36

    .line 562
    :try_start_30
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 564
    :cond_36
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    sub-int/2addr v1, p1

    add-int/lit8 v0, v1, -0x1

    .line 565
    .local v0, "j":I
    if-lez v0, :cond_46

    .line 566
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-static {v1, v2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 568
    :cond_46
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/Vector;->elementCount:I

    .line 569
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_53
    .catchall {:try_start_30 .. :try_end_53} :catchall_2b

    monitor-exit p0

    .line 570
    return-void
.end method

.method public declared-synchronized removeIf(Ljava/util/function/Predicate;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    monitor-enter p0

    .line 1269
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    const/4 v7, 0x0

    .line 1274
    .local v7, "removeCount":I
    iget v9, p0, Ljava/util/Vector;->elementCount:I

    .line 1275
    .local v9, "size":I
    new-instance v8, Ljava/util/BitSet;

    invoke-direct {v8, v9}, Ljava/util/BitSet;-><init>(I)V

    .line 1276
    .local v8, "removeSet":Ljava/util/BitSet;
    iget v2, p0, Ljava/util/Vector;->modCount:I

    .line 1277
    .local v2, "expectedModCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    iget v10, p0, Ljava/util/Vector;->modCount:I

    if-ne v10, v2, :cond_27

    if-ge v3, v9, :cond_27

    .line 1279
    iget-object v10, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v10, v3

    .line 1280
    .local v1, "element":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 1281
    invoke-virtual {v8, v3}, Ljava/util/BitSet;->set(I)V

    .line 1282
    add-int/lit8 v7, v7, 0x1

    .line 1277
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1285
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    :cond_27
    iget v10, p0, Ljava/util/Vector;->modCount:I

    if-eq v10, v2, :cond_34

    .line 1286
    new-instance v10, Ljava/util/ConcurrentModificationException;

    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v10
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_31

    .end local v2    # "expectedModCount":I
    .end local v3    # "i":I
    .end local v7    # "removeCount":I
    .end local v8    # "removeSet":Ljava/util/BitSet;
    .end local v9    # "size":I
    :catchall_31
    move-exception v10

    monitor-exit p0

    throw v10

    .line 1290
    .restart local v2    # "expectedModCount":I
    .restart local v3    # "i":I
    .restart local v7    # "removeCount":I
    .restart local v8    # "removeSet":Ljava/util/BitSet;
    .restart local v9    # "size":I
    :cond_34
    if-lez v7, :cond_52

    const/4 v0, 0x1

    .line 1291
    .local v0, "anyToRemove":Z
    :goto_37
    if-eqz v0, :cond_71

    .line 1292
    sub-int v6, v9, v7

    .line 1293
    .local v6, "newSize":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3d
    if-ge v3, v9, :cond_54

    if-ge v4, v6, :cond_54

    .line 1294
    :try_start_41
    invoke-virtual {v8, v3}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v3

    .line 1295
    iget-object v10, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget-object v11, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v11, v11, v3

    aput-object v11, v10, v4

    .line 1293
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 1290
    .end local v0    # "anyToRemove":Z
    .end local v4    # "j":I
    .end local v6    # "newSize":I
    :cond_52
    const/4 v0, 0x0

    .restart local v0    # "anyToRemove":Z
    goto :goto_37

    .line 1297
    .restart local v4    # "j":I
    .restart local v6    # "newSize":I
    :cond_54
    move v5, v6

    .local v5, "k":I
    :goto_55
    if-ge v5, v9, :cond_5f

    .line 1298
    iget-object v10, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v11, v10, v5

    .line 1297
    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    .line 1300
    :cond_5f
    iput v6, p0, Ljava/util/Vector;->elementCount:I

    .line 1301
    iget v10, p0, Ljava/util/Vector;->modCount:I

    if-eq v10, v2, :cond_6b

    .line 1302
    new-instance v10, Ljava/util/ConcurrentModificationException;

    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v10

    .line 1304
    :cond_6b
    iget v10, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Ljava/util/Vector;->modCount:I
    :try_end_71
    .catchall {:try_start_41 .. :try_end_71} :catchall_31

    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v6    # "newSize":I
    :cond_71
    monitor-exit p0

    .line 1307
    return v0
.end method

.method protected declared-synchronized removeRange(II)V
    .registers 8
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 1050
    :try_start_1
    iget v2, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/Vector;->modCount:I

    .line 1051
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    sub-int v1, v2, p2

    .line 1052
    .local v1, "numMoved":I
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-static {v2, p2, v3, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1056
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    sub-int v3, p2, p1

    sub-int v0, v2, v3

    .line 1057
    .local v0, "newElementCount":I
    :goto_18
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    if-eq v2, v0, :cond_2b

    .line 1058
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/Vector;->elementCount:I

    const/4 v4, 0x0

    aput-object v4, v2, v3
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_18

    .end local v0    # "newElementCount":I
    .end local v1    # "numMoved":I
    :catchall_28
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0    # "newElementCount":I
    .restart local v1    # "numMoved":I
    :cond_2b
    monitor-exit p0

    .line 1059
    return-void
.end method

.method public declared-synchronized replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    monitor-enter p0

    .line 1313
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    iget v0, p0, Ljava/util/Vector;->modCount:I

    .line 1315
    .local v0, "expectedModCount":I
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    .line 1316
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget v3, p0, Ljava/util/Vector;->modCount:I

    if-ne v3, v0, :cond_1e

    if-ge v1, v2, :cond_1e

    .line 1317
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-interface {p1, v4}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1316
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1319
    :cond_1e
    iget v3, p0, Ljava/util/Vector;->modCount:I

    if-eq v3, v0, :cond_2b

    .line 1320
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_28

    .end local v0    # "expectedModCount":I
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_28
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1322
    .restart local v0    # "expectedModCount":I
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_2b
    :try_start_2b
    iget v3, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/Vector;->modCount:I
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_28

    monitor-exit p0

    .line 1323
    return-void
.end method

.method public declared-synchronized retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    .line 933
    :try_start_1
    invoke-super {p0, p1}, Ljava/util/AbstractList;->retainAll(Ljava/util/Collection;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 765
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-lt p1, v1, :cond_e

    .line 766
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 768
    :cond_e
    :try_start_e
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    move-result-object v0

    .line 769
    .local v0, "oldValue":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aput-object p2, v1, p1
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_b

    monitor-exit p0

    .line 770
    return-object v0
.end method

.method public declared-synchronized setElementAt(Ljava/lang/Object;I)V
    .registers 6
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 529
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-lt p2, v0, :cond_28

    .line 530
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 531
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0

    .line 533
    :cond_28
    :try_start_28
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aput-object p1, v0, p2
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_25

    monitor-exit p0

    .line 534
    return-void
.end method

.method public declared-synchronized setSize(I)V
    .registers 5
    .param p1, "newSize"    # I

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 287
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I

    .line 288
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-le p1, v1, :cond_12

    .line 289
    invoke-direct {p0, p1}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    .line 295
    :cond_e
    iput p1, p0, Ljava/util/Vector;->elementCount:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1f

    monitor-exit p0

    .line 296
    return-void

    .line 291
    :cond_12
    move v0, p1

    .local v0, "i":I
    :goto_13
    :try_start_13
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_e

    .line 292
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1f

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .end local v0    # "i":I
    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized size()I
    .registers 2

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 315
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sort(Ljava/util/Comparator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    monitor-enter p0

    .line 1328
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    .line 1329
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 1330
    iget v1, p0, Ljava/util/Vector;->modCount:I

    if-eq v1, v0, :cond_18

    .line 1331
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_15

    .end local v0    # "expectedModCount":I
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1333
    .restart local v0    # "expectedModCount":I
    :cond_18
    :try_start_18
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_15

    monitor-exit p0

    .line 1334
    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v3, 0x0

    .line 1351
    new-instance v0, Ljava/util/Vector$VectorSpliterator;

    const/4 v2, 0x0

    const/4 v4, -0x1

    move-object v1, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Ljava/util/Vector$VectorSpliterator;-><init>(Ljava/util/Vector;[Ljava/lang/Object;III)V

    return-object v0
.end method

.method public declared-synchronized subList(II)Ljava/util/List;
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 1038
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toArray()[Ljava/lang/Object;
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 691
    :try_start_1
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    monitor-enter p0

    .line 719
    :try_start_1
    array-length v0, p1

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_14

    .line 720
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_29

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 722
    :cond_14
    :try_start_14
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 724
    array-length v0, p1

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-le v0, v1, :cond_27

    .line 725
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    const/4 v1, 0x0

    aput-object v1, p1, v0
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_29

    :cond_27
    monitor-exit p0

    .line 727
    return-object p1

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 2

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 1000
    :try_start_1
    invoke-super {p0}, Ljava/util/AbstractList;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trimToSize()V
    .registers 4

    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 204
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I

    .line 205
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v1

    .line 206
    .local v0, "oldCapacity":I
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v1, v0, :cond_18

    .line 207
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit p0

    .line 209
    return-void

    .end local v0    # "oldCapacity":I
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method
