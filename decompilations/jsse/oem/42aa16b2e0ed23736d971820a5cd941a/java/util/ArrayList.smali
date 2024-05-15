.class public Ljava/util/ArrayList;
.super Ljava/util/AbstractList;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ArrayList$ArrayListSpliterator;,
        Ljava/util/ArrayList$SubList;,
        Ljava/util/ArrayList$ListItr;,
        Ljava/util/ArrayList$Itr;
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
.field private static final greylist-max-o DEFAULTCAPACITY_EMPTY_ELEMENTDATA:[Ljava/lang/Object;

.field private static final greylist-max-o DEFAULT_CAPACITY:I = 0xa

.field private static final greylist-max-o EMPTY_ELEMENTDATA:[Ljava/lang/Object;

.field private static final greylist-max-o MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final whitelist serialVersionUID:J = 0x7881d21d99c7619dL


# instance fields
.field transient greylist elementData:[Ljava/lang/Object;

.field private greylist size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 132
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    .line 139
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Ljava/util/ArrayList;->DEFAULTCAPACITY_EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 178
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 179
    sget-object v0, Ljava/util/ArrayList;->DEFAULTCAPACITY_EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 180
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(I)V
    .registers 5
    .param p1, "initialCapacity"    # I

    .line 164
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 165
    if-lez p1, :cond_a

    .line 166
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    goto :goto_10

    .line 167
    :cond_a
    if-nez p1, :cond_11

    .line 168
    sget-object v0, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 173
    :goto_10
    return-void

    .line 170
    :cond_11
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

.method public constructor whitelist core-platform-api test-api <init>(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 190
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 191
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 192
    array-length v1, v0

    iput v1, p0, Ljava/util/ArrayList;->size:I

    if-eqz v1, :cond_23

    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [Ljava/lang/Object;

    if-eq v0, v1, :cond_27

    .line 195
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    const-class v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    goto :goto_27

    .line 198
    :cond_23
    sget-object v0, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 200
    :cond_27
    :goto_27
    return-void
.end method

.method static synthetic blacklist access$100(Ljava/util/ArrayList;)I
    .registers 2
    .param p0, "x0"    # Ljava/util/ArrayList;

    .line 119
    iget v0, p0, Ljava/util/ArrayList;->size:I

    return v0
.end method

.method private greylist-max-o batchRemove(Ljava/util/Collection;Z)Z
    .registers 12
    .param p2, "complement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;Z)Z"
        }
    .end annotation

    .line 715
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 716
    .local v0, "elementData":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "r":I
    const/4 v2, 0x0

    .line 717
    .local v2, "w":I
    const/4 v3, 0x0

    .line 719
    .local v3, "modified":Z
    :goto_5
    const/4 v4, 0x0

    :try_start_6
    iget v5, p0, Ljava/util/ArrayList;->size:I

    if-ge v1, v5, :cond_1f

    .line 720
    aget-object v5, v0, v1

    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_45

    if-ne v5, p2, :cond_1c

    .line 721
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "w":I
    .local v5, "w":I
    :try_start_14
    aget-object v6, v0, v1

    aput-object v6, v0, v2
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_1a

    move v2, v5

    goto :goto_1c

    .line 725
    :catchall_1a
    move-exception v2

    goto :goto_49

    .line 719
    .end local v5    # "w":I
    .restart local v2    # "w":I
    :cond_1c
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 725
    :cond_1f
    iget v5, p0, Ljava/util/ArrayList;->size:I

    if-eq v1, v5, :cond_2b

    .line 726
    sub-int/2addr v5, v1

    invoke-static {v0, v1, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 729
    iget v5, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v5, v1

    add-int/2addr v2, v5

    .line 731
    :cond_2b
    iget v5, p0, Ljava/util/ArrayList;->size:I

    if-eq v2, v5, :cond_44

    .line 733
    move v5, v2

    .local v5, "i":I
    :goto_30
    iget v6, p0, Ljava/util/ArrayList;->size:I

    if-ge v5, v6, :cond_39

    .line 734
    aput-object v4, v0, v5

    .line 733
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 735
    .end local v5    # "i":I
    :cond_39
    iget v4, p0, Ljava/util/ArrayList;->modCount:I

    iget v5, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v5, v2

    add-int/2addr v4, v5

    iput v4, p0, Ljava/util/ArrayList;->modCount:I

    .line 736
    iput v2, p0, Ljava/util/ArrayList;->size:I

    .line 737
    const/4 v3, 0x1

    .line 740
    :cond_44
    return v3

    .line 725
    :catchall_45
    move-exception v5

    move-object v8, v5

    move v5, v2

    move-object v2, v8

    .end local v2    # "w":I
    .local v5, "w":I
    :goto_49
    iget v6, p0, Ljava/util/ArrayList;->size:I

    if-eq v1, v6, :cond_55

    .line 726
    sub-int/2addr v6, v1

    invoke-static {v0, v1, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 729
    iget v6, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v6, v1

    add-int/2addr v5, v6

    .line 731
    :cond_55
    iget v6, p0, Ljava/util/ArrayList;->size:I

    if-eq v5, v6, :cond_6e

    .line 733
    move v6, v5

    .local v6, "i":I
    :goto_5a
    iget v7, p0, Ljava/util/ArrayList;->size:I

    if-ge v6, v7, :cond_63

    .line 734
    aput-object v4, v0, v6

    .line 733
    add-int/lit8 v6, v6, 0x1

    goto :goto_5a

    .line 735
    .end local v6    # "i":I
    :cond_63
    iget v4, p0, Ljava/util/ArrayList;->modCount:I

    iget v6, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v6, v5

    add-int/2addr v4, v6

    iput v4, p0, Ljava/util/ArrayList;->modCount:I

    .line 736
    iput v5, p0, Ljava/util/ArrayList;->size:I

    .line 737
    const/4 v3, 0x1

    .line 739
    :cond_6e
    throw v2
.end method

.method private greylist-max-o ensureCapacityInternal(I)V
    .registers 4
    .param p1, "minCapacity"    # I

    .line 237
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    sget-object v1, Ljava/util/ArrayList;->DEFAULTCAPACITY_EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    .line 238
    const/16 v0, 0xa

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 241
    :cond_c
    invoke-direct {p0, p1}, Ljava/util/ArrayList;->ensureExplicitCapacity(I)V

    .line 242
    return-void
.end method

.method private greylist-max-o ensureExplicitCapacity(I)V
    .registers 3
    .param p1, "minCapacity"    # I

    .line 245
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 248
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    sub-int v0, p1, v0

    if-lez v0, :cond_10

    .line 249
    invoke-direct {p0, p1}, Ljava/util/ArrayList;->grow(I)V

    .line 250
    :cond_10
    return-void
.end method

.method private greylist-max-o fastRemove(I)V
    .registers 6
    .param p1, "index"    # I

    .line 552
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 553
    iget v0, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 554
    .local v0, "numMoved":I
    if-lez v0, :cond_14

    .line 555
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    :cond_14
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/ArrayList;->size:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 558
    return-void
.end method

.method private greylist-max-o grow(I)V
    .registers 5
    .param p1, "minCapacity"    # I

    .line 268
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    .line 269
    .local v0, "oldCapacity":I
    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v1, v0

    .line 270
    .local v1, "newCapacity":I
    sub-int v2, v1, p1

    if-gez v2, :cond_b

    .line 271
    move v1, p1

    .line 272
    :cond_b
    const v2, 0x7ffffff7

    sub-int v2, v1, v2

    if-lez v2, :cond_16

    .line 273
    invoke-static {p1}, Ljava/util/ArrayList;->hugeCapacity(I)I

    move-result v1

    .line 275
    :cond_16
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 276
    return-void
.end method

.method private static greylist-max-o hugeCapacity(I)I
    .registers 2
    .param p0, "minCapacity"    # I

    .line 279
    if-ltz p0, :cond_d

    .line 281
    const v0, 0x7ffffff7

    if-le p0, v0, :cond_b

    .line 282
    const v0, 0x7fffffff

    goto :goto_c

    .line 283
    :cond_b
    nop

    .line 281
    :goto_c
    return v0

    .line 280
    :cond_d
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0
.end method

.method private greylist-max-o outOfBoundsMsg(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 670
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 776
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    sget-object v0, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 779
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 782
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 784
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-lez v0, :cond_21

    .line 786
    invoke-direct {p0, v0}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    .line 788
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 790
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-ge v1, v2, :cond_21

    .line 791
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 790
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 794
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_21
    return-void
.end method

.method static greylist-max-o subListRangeCheck(III)V
    .registers 6
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I
    .param p2, "size"    # I

    .line 1013
    if-ltz p0, :cond_42

    .line 1015
    if-gt p1, p2, :cond_2b

    .line 1017
    if-gt p0, p1, :cond_7

    .line 1020
    return-void

    .line 1018
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1016
    :cond_2b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1014
    :cond_42
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

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

    .line 754
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 755
    .local v0, "expectedModCount":I
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 758
    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 761
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-ge v1, v2, :cond_19

    .line 762
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 761
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 765
    .end local v1    # "i":I
    :cond_19
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v1, v0, :cond_1e

    .line 768
    return-void

    .line 766
    :cond_1e
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method


# virtual methods
.method public whitelist core-platform-api test-api add(ILjava/lang/Object;)V
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 482
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-gt p1, v0, :cond_20

    if-ltz p1, :cond_20

    .line 485
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    .line 486
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 489
    iget v0, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->size:I

    .line 490
    return-void

    .line 483
    :cond_20
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api add(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 467
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    .line 468
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/ArrayList;->size:I

    aput-object p1, v0, v2

    .line 469
    return v1
.end method

.method public whitelist core-platform-api test-api addAll(ILjava/util/Collection;)Z
    .registers 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 612
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-gt p1, v0, :cond_2c

    if-ltz p1, :cond_2c

    .line 615
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 616
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    .line 617
    .local v1, "numNew":I
    iget v2, p0, Ljava/util/ArrayList;->size:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    .line 619
    iget v2, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v2, p1

    .line 620
    .local v2, "numMoved":I
    if-lez v2, :cond_1d

    .line 621
    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    add-int v4, p1, v1

    invoke-static {v3, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 624
    :cond_1d
    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 625
    iget v3, p0, Ljava/util/ArrayList;->size:I

    add-int/2addr v3, v1

    iput v3, p0, Ljava/util/ArrayList;->size:I

    .line 626
    if-eqz v1, :cond_2b

    const/4 v4, 0x1

    :cond_2b
    return v4

    .line 613
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "numNew":I
    .end local v2    # "numMoved":I
    :cond_2c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api addAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 588
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 589
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    .line 590
    .local v1, "numNew":I
    iget v2, p0, Ljava/util/ArrayList;->size:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    .line 591
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayList;->size:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 592
    iget v2, p0, Ljava/util/ArrayList;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/util/ArrayList;->size:I

    .line 593
    if-eqz v1, :cond_1b

    const/4 v4, 0x1

    :cond_1b
    return v4
.end method

.method public whitelist core-platform-api test-api clear()V
    .registers 4

    .line 565
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 568
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_13

    .line 569
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 571
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/ArrayList;->size:I

    .line 572
    return-void
.end method

.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 4

    .line 365
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 366
    .local v0, "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 367
    const/4 v1, 0x0

    iput v1, v0, Ljava/util/ArrayList;->modCount:I
    :try_end_13
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_13} :catch_14

    .line 368
    return-object v0

    .line 369
    .end local v0    # "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    :catch_14
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 314
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist core-platform-api test-api ensureCapacity(I)V
    .registers 4
    .param p1, "minCapacity"    # I

    .line 224
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    sget-object v1, Ljava/util/ArrayList;->DEFAULTCAPACITY_EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    if-eq v0, v1, :cond_8

    .line 226
    const/4 v0, 0x0

    goto :goto_a

    .line 229
    :cond_8
    const/16 v0, 0xa

    :goto_a
    nop

    .line 231
    .local v0, "minExpand":I
    if-le p1, v0, :cond_10

    .line 232
    invoke-direct {p0, p1}, Ljava/util/ArrayList;->ensureExplicitCapacity(I)V

    .line 234
    :cond_10
    return-void
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

    .line 1256
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 1259
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 1260
    .local v1, "elementData":[Ljava/lang/Object;, "[TE;"
    iget v2, p0, Ljava/util/ArrayList;->size:I

    .line 1261
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    iget v4, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v4, v0, :cond_18

    if-ge v3, v2, :cond_18

    .line 1262
    aget-object v4, v1, v3

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1261
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1267
    .end local v3    # "i":I
    :cond_18
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v3, v0, :cond_1d

    .line 1270
    return-void

    .line 1268
    :cond_1d
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method public whitelist core-platform-api test-api get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 436
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-ge p1, v0, :cond_9

    .line 439
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 437
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api indexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 325
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-nez p1, :cond_12

    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_11

    .line 327
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_e

    .line 328
    return v0

    .line 326
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    :cond_11
    goto :goto_25

    .line 330
    :cond_12
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_13
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_25

    .line 331
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 332
    return v0

    .line 330
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 334
    .end local v0    # "i":I
    :cond_25
    :goto_25
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist core-platform-api test-api isEmpty()Z
    .registers 2

    .line 301
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist core-platform-api test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 834
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    new-instance v0, Ljava/util/ArrayList$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/ArrayList$Itr;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList$1;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 345
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-nez p1, :cond_13

    .line 346
    iget v0, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_12

    .line 347
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_f

    .line 348
    return v0

    .line 346
    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .end local v0    # "i":I
    :cond_12
    goto :goto_27

    .line 350
    :cond_13
    iget v0, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_17
    if-ltz v0, :cond_27

    .line 351
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 352
    return v0

    .line 350
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 354
    .end local v0    # "i":I
    :cond_27
    :goto_27
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist core-platform-api test-api listIterator()Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 823
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    new-instance v0, Ljava/util/ArrayList$ListItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/ArrayList$ListItr;-><init>(Ljava/util/ArrayList;I)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api listIterator(I)Ljava/util/ListIterator;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 809
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-ltz p1, :cond_c

    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-gt p1, v0, :cond_c

    .line 811
    new-instance v0, Ljava/util/ArrayList$ListItr;

    invoke-direct {v0, p0, p1}, Ljava/util/ArrayList$ListItr;-><init>(Ljava/util/ArrayList;I)V

    return-object v0

    .line 810
    :cond_c
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
.end method

.method public whitelist core-platform-api test-api remove(I)Ljava/lang/Object;
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 502
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-ge p1, v0, :cond_26

    .line 505
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 506
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 508
    .local v1, "oldValue":Ljava/lang/Object;, "TE;"
    iget v2, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 509
    .local v2, "numMoved":I
    if-lez v2, :cond_1a

    .line 510
    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 512
    :cond_1a
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/ArrayList;->size:I

    const/4 v4, 0x0

    aput-object v4, v0, v3

    .line 514
    return-object v1

    .line 503
    .end local v1    # "oldValue":Ljava/lang/Object;, "TE;"
    .end local v2    # "numMoved":I
    :cond_26
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 531
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v0, 0x1

    if-nez p1, :cond_16

    .line 532
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_4
    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-ge v1, v2, :cond_15

    .line 533
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-nez v2, :cond_12

    .line 534
    invoke-direct {p0, v1}, Ljava/util/ArrayList;->fastRemove(I)V

    .line 535
    return v0

    .line 532
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1    # "index":I
    :cond_15
    goto :goto_2c

    .line 538
    :cond_16
    const/4 v1, 0x0

    .restart local v1    # "index":I
    :goto_17
    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-ge v1, v2, :cond_2c

    .line 539
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 540
    invoke-direct {p0, v1}, Ljava/util/ArrayList;->fastRemove(I)V

    .line 541
    return v0

    .line 538
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 544
    .end local v1    # "index":I
    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 689
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/ArrayList;->batchRemove(Ljava/util/Collection;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1410
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    const/4 v0, 0x0

    .line 1415
    .local v0, "removeCount":I
    new-instance v1, Ljava/util/BitSet;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 1416
    .local v1, "removeSet":Ljava/util/BitSet;
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    .line 1417
    .local v2, "expectedModCount":I
    iget v3, p0, Ljava/util/ArrayList;->size:I

    .line 1418
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    iget v5, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v5, v2, :cond_28

    if-ge v4, v3, :cond_28

    .line 1420
    iget-object v5, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v5, v5, v4

    .line 1421
    .local v5, "element":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 1422
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 1423
    add-int/lit8 v0, v0, 0x1

    .line 1418
    .end local v5    # "element":Ljava/lang/Object;, "TE;"
    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1426
    .end local v4    # "i":I
    :cond_28
    iget v4, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v4, v2, :cond_68

    .line 1431
    const/4 v4, 0x1

    if-lez v0, :cond_31

    move v5, v4

    goto :goto_32

    :cond_31
    const/4 v5, 0x0

    .line 1432
    .local v5, "anyToRemove":Z
    :goto_32
    if-eqz v5, :cond_67

    .line 1433
    sub-int v6, v3, v0

    .line 1434
    .local v6, "newSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_38
    if-ge v7, v3, :cond_4a

    if-ge v8, v6, :cond_4a

    .line 1435
    invoke-virtual {v1, v7}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v7

    .line 1436
    iget-object v9, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v10, v9, v7

    aput-object v10, v9, v8

    .line 1434
    add-int/2addr v7, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    .line 1438
    .end local v7    # "i":I
    .end local v8    # "j":I
    :cond_4a
    move v7, v6

    .local v7, "k":I
    :goto_4b
    if-ge v7, v3, :cond_55

    .line 1439
    iget-object v8, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v9, v8, v7

    .line 1438
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b

    .line 1441
    .end local v7    # "k":I
    :cond_55
    iput v6, p0, Ljava/util/ArrayList;->size:I

    .line 1442
    iget v7, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v7, v2, :cond_61

    .line 1445
    iget v7, p0, Ljava/util/ArrayList;->modCount:I

    add-int/2addr v7, v4

    iput v7, p0, Ljava/util/ArrayList;->modCount:I

    goto :goto_67

    .line 1443
    :cond_61
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1448
    .end local v6    # "newSize":I
    :cond_67
    :goto_67
    return v5

    .line 1427
    .end local v5    # "anyToRemove":Z
    :cond_68
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4
.end method

.method protected whitelist core-platform-api test-api removeRange(II)V
    .registers 8
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 647
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-lt p2, p1, :cond_25

    .line 651
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 652
    iget v0, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v0, p2

    .line 653
    .local v0, "numMoved":I
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-static {v1, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 657
    iget v1, p0, Ljava/util/ArrayList;->size:I

    sub-int v2, p2, p1

    sub-int/2addr v1, v2

    .line 658
    .local v1, "newSize":I
    move v2, v1

    .local v2, "i":I
    :goto_16
    iget v3, p0, Ljava/util/ArrayList;->size:I

    if-ge v2, v3, :cond_22

    .line 659
    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 658
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 661
    .end local v2    # "i":I
    :cond_22
    iput v1, p0, Ljava/util/ArrayList;->size:I

    .line 662
    return-void

    .line 648
    .end local v0    # "numMoved":I
    .end local v1    # "newSize":I
    :cond_25
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "toIndex < fromIndex"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 1454
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 1456
    .local v0, "expectedModCount":I
    iget v1, p0, Ljava/util/ArrayList;->size:I

    .line 1457
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v3, v0, :cond_1b

    if-ge v2, v1, :cond_1b

    .line 1458
    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v4, v3, v2

    invoke-interface {p1, v4}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    .line 1457
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1460
    .end local v2    # "i":I
    :cond_1b
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v2, v0, :cond_26

    .line 1463
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/ArrayList;->modCount:I

    .line 1464
    return-void

    .line 1461
    :cond_26
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public whitelist core-platform-api test-api retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 710
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/ArrayList;->batchRemove(Ljava/util/Collection;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 452
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-ge p1, v0, :cond_b

    .line 455
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 456
    .local v1, "oldValue":Ljava/lang/Object;, "TE;"
    aput-object p2, v0, p1

    .line 457
    return-object v1

    .line 453
    .end local v1    # "oldValue":Ljava/lang/Object;, "TE;"
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api size()I
    .registers 2

    .line 292
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

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

    .line 1469
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 1470
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 1471
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v1, v0, :cond_15

    .line 1474
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/ArrayList;->modCount:I

    .line 1475
    return-void

    .line 1472
    :cond_15
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public whitelist core-platform-api test-api spliterator()Ljava/util/Spliterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1287
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    new-instance v0, Ljava/util/ArrayList$ArrayListSpliterator;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2, v1}, Ljava/util/ArrayList$ArrayListSpliterator;-><init>(Ljava/util/ArrayList;III)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api subList(II)Ljava/util/List;
    .registers 10
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1008
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    invoke-static {p1, p2, v0}, Ljava/util/ArrayList;->subListRangeCheck(III)V

    .line 1009
    new-instance v0, Ljava/util/ArrayList$SubList;

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Ljava/util/ArrayList$SubList;-><init>(Ljava/util/ArrayList;Ljava/util/AbstractList;III)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api toArray()[Ljava/lang/Object;
    .registers 3

    .line 390
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 419
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_10

    .line 421
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 422
    :cond_10
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    array-length v0, p1

    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-le v0, v1, :cond_1e

    .line 424
    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 425
    :cond_1e
    return-object p1
.end method

.method public whitelist core-platform-api test-api trimToSize()V
    .registers 4

    .line 208
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 209
    iget v0, p0, Ljava/util/ArrayList;->size:I

    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_18

    .line 210
    if-nez v0, :cond_12

    .line 211
    sget-object v0, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    goto :goto_16

    .line 212
    :cond_12
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_16
    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 214
    :cond_18
    return-void
.end method
