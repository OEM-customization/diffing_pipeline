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
        Ljava/util/ArrayList$Itr;,
        Ljava/util/ArrayList$ListItr;,
        Ljava/util/ArrayList$SubList;
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
.field private static final DEFAULTCAPACITY_EMPTY_ELEMENTDATA:[Ljava/lang/Object;

.field private static final DEFAULT_CAPACITY:I = 0xa

.field private static final EMPTY_ELEMENTDATA:[Ljava/lang/Object;

.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final serialVersionUID:J = 0x7881d21d99c7619dL


# instance fields
.field transient elementData:[Ljava/lang/Object;

.field private size:I


# direct methods
.method static synthetic -get0(Ljava/util/ArrayList;)I
    .registers 2
    .param p0, "-this"    # Ljava/util/ArrayList;

    .prologue
    iget v0, p0, Ljava/util/ArrayList;->size:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 132
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    .line 139
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Ljava/util/ArrayList;->DEFAULTCAPACITY_EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 178
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 179
    sget-object v0, Ljava/util/ArrayList;->DEFAULTCAPACITY_EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 180
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "initialCapacity"    # I

    .prologue
    .line 164
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 165
    if-lez p1, :cond_a

    .line 166
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 173
    :goto_9
    return-void

    .line 167
    :cond_a
    if-nez p1, :cond_11

    .line 168
    sget-object v0, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    goto :goto_9

    .line 170
    :cond_11
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
    .line 190
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 191
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Ljava/util/ArrayList;->size:I

    if-eqz v0, :cond_27

    .line 194
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [Ljava/lang/Object;

    if-eq v0, v1, :cond_26

    .line 195
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    const-class v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 200
    :cond_26
    :goto_26
    return-void

    .line 198
    :cond_27
    sget-object v0, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    goto :goto_26
.end method

.method private batchRemove(Ljava/util/Collection;Z)Z
    .registers 12
    .param p2, "complement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v8, 0x0

    .line 715
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 716
    .local v0, "elementData":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "r":I
    const/4 v4, 0x0

    .line 717
    .local v4, "w":I
    const/4 v2, 0x0

    .local v2, "modified":Z
    move v5, v4

    .line 719
    .end local v4    # "w":I
    .local v5, "w":I
    :goto_7
    :try_start_7
    iget v6, p0, Ljava/util/ArrayList;->size:I

    if-ge v3, v6, :cond_1d

    .line 720
    aget-object v6, v0, v3

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_46

    move-result v6

    if-ne v6, p2, :cond_74

    .line 721
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "w":I
    .restart local v4    # "w":I
    :try_start_15
    aget-object v6, v0, v3

    aput-object v6, v0, v5
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_70

    .line 719
    :goto_19
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4    # "w":I
    .restart local v5    # "w":I
    goto :goto_7

    .line 725
    :cond_1d
    iget v6, p0, Ljava/util/ArrayList;->size:I

    if-eq v3, v6, :cond_72

    .line 728
    iget v6, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v6, v3

    .line 726
    invoke-static {v0, v3, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 729
    iget v6, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v6, v3

    add-int v4, v5, v6

    .line 731
    .end local v5    # "w":I
    .restart local v4    # "w":I
    :goto_2c
    iget v6, p0, Ljava/util/ArrayList;->size:I

    if-eq v4, v6, :cond_45

    .line 733
    move v1, v4

    .local v1, "i":I
    :goto_31
    iget v6, p0, Ljava/util/ArrayList;->size:I

    if-ge v1, v6, :cond_3a

    .line 734
    aput-object v8, v0, v1

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 735
    :cond_3a
    iget v6, p0, Ljava/util/ArrayList;->modCount:I

    iget v7, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v7, v4

    add-int/2addr v6, v7

    iput v6, p0, Ljava/util/ArrayList;->modCount:I

    .line 736
    iput v4, p0, Ljava/util/ArrayList;->size:I

    .line 737
    const/4 v2, 0x1

    .line 740
    .end local v1    # "i":I
    :cond_45
    return v2

    .line 722
    .end local v4    # "w":I
    .restart local v5    # "w":I
    :catchall_46
    move-exception v6

    move v4, v5

    .line 725
    .end local v5    # "w":I
    .restart local v4    # "w":I
    :goto_48
    iget v7, p0, Ljava/util/ArrayList;->size:I

    if-eq v3, v7, :cond_56

    .line 728
    iget v7, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v7, v3

    .line 726
    invoke-static {v0, v3, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 729
    iget v7, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v7, v3

    add-int/2addr v4, v7

    .line 731
    :cond_56
    iget v7, p0, Ljava/util/ArrayList;->size:I

    if-eq v4, v7, :cond_6f

    .line 733
    move v1, v4

    .restart local v1    # "i":I
    :goto_5b
    iget v7, p0, Ljava/util/ArrayList;->size:I

    if-ge v1, v7, :cond_64

    .line 734
    aput-object v8, v0, v1

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 735
    :cond_64
    iget v7, p0, Ljava/util/ArrayList;->modCount:I

    iget v8, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v8, v4

    add-int/2addr v7, v8

    iput v7, p0, Ljava/util/ArrayList;->modCount:I

    .line 736
    iput v4, p0, Ljava/util/ArrayList;->size:I

    .line 737
    const/4 v2, 0x1

    .line 722
    .end local v1    # "i":I
    :cond_6f
    throw v6

    :catchall_70
    move-exception v6

    goto :goto_48

    .end local v4    # "w":I
    .restart local v5    # "w":I
    :cond_72
    move v4, v5

    .end local v5    # "w":I
    .restart local v4    # "w":I
    goto :goto_2c

    .end local v4    # "w":I
    .restart local v5    # "w":I
    :cond_74
    move v4, v5

    .end local v5    # "w":I
    .restart local v4    # "w":I
    goto :goto_19
.end method

.method private ensureCapacityInternal(I)V
    .registers 4
    .param p1, "minCapacity"    # I

    .prologue
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

.method private ensureExplicitCapacity(I)V
    .registers 3
    .param p1, "minCapacity"    # I

    .prologue
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

.method private fastRemove(I)V
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 552
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/ArrayList;->modCount:I

    .line 553
    iget v1, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v1, p1

    add-int/lit8 v0, v1, -0x1

    .line 554
    .local v0, "numMoved":I
    if-lez v0, :cond_16

    .line 555
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-static {v1, v2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    :cond_16
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/ArrayList;->size:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 558
    return-void
.end method

.method private grow(I)V
    .registers 5
    .param p1, "minCapacity"    # I

    .prologue
    .line 268
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    array-length v1, v2

    .line 269
    .local v1, "oldCapacity":I
    shr-int/lit8 v2, v1, 0x1

    add-int v0, v1, v2

    .line 270
    .local v0, "newCapacity":I
    sub-int v2, v0, p1

    if-gez v2, :cond_c

    .line 271
    move v0, p1

    .line 272
    :cond_c
    const v2, 0x7ffffff7

    sub-int v2, v0, v2

    if-lez v2, :cond_17

    .line 273
    invoke-static {p1}, Ljava/util/ArrayList;->hugeCapacity(I)I

    move-result v0

    .line 275
    :cond_17
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 276
    return-void
.end method

.method private static hugeCapacity(I)I
    .registers 2
    .param p0, "minCapacity"    # I

    .prologue
    const v0, 0x7ffffff7

    .line 279
    if-gez p0, :cond_b

    .line 280
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 281
    :cond_b
    if-le p0, v0, :cond_10

    .line 282
    const v0, 0x7fffffff

    .line 281
    :cond_10
    return v0
.end method

.method private outOfBoundsMsg(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 670
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 776
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    sget-object v2, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    iput-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 779
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 782
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 784
    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-lez v2, :cond_23

    .line 786
    iget v2, p0, Ljava/util/ArrayList;->size:I

    invoke-direct {p0, v2}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    .line 788
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 790
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-ge v1, v2, :cond_23

    .line 791
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 790
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 794
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method static subListRangeCheck(III)V
    .registers 6
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I
    .param p2, "size"    # I

    .prologue
    .line 1013
    if-gez p0, :cond_1c

    .line 1014
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fromIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1015
    :cond_1c
    if-le p1, p2, :cond_38

    .line 1016
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1017
    :cond_38
    if-le p0, p1, :cond_66

    .line 1018
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1019
    const-string/jumbo v2, ") > toIndex("

    .line 1018
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1019
    const-string/jumbo v2, ")"

    .line 1018
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1020
    :cond_66
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 754
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 755
    .local v0, "expectedModCount":I
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 758
    iget v2, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

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
    :cond_19
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    if-eq v2, v0, :cond_23

    .line 766
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 768
    :cond_23
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-gt p1, v0, :cond_6

    if-gez p1, :cond_10

    .line 483
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_10
    iget v0, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    .line 486
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    .line 487
    iget v3, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v3, p1

    .line 486
    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 489
    iget v0, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->size:I

    .line 490
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 467
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    .line 468
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/ArrayList;->size:I

    aput-object p1, v0, v1

    .line 469
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
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
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v3, 0x0

    .line 612
    iget v4, p0, Ljava/util/ArrayList;->size:I

    if-gt p1, v4, :cond_7

    if-gez p1, :cond_11

    .line 613
    :cond_7
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 615
    :cond_11
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 616
    .local v0, "a":[Ljava/lang/Object;
    array-length v2, v0

    .line 617
    .local v2, "numNew":I
    iget v4, p0, Ljava/util/ArrayList;->size:I

    add-int/2addr v4, v2

    invoke-direct {p0, v4}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    .line 619
    iget v4, p0, Ljava/util/ArrayList;->size:I

    sub-int v1, v4, p1

    .line 620
    .local v1, "numMoved":I
    if-lez v1, :cond_2b

    .line 621
    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    add-int v6, p1, v2

    invoke-static {v4, p1, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 624
    :cond_2b
    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-static {v0, v3, v4, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 625
    iget v4, p0, Ljava/util/ArrayList;->size:I

    add-int/2addr v4, v2

    iput v4, p0, Ljava/util/ArrayList;->size:I

    .line 626
    if-eqz v2, :cond_38

    const/4 v3, 0x1

    :cond_38
    return v3
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v2, 0x0

    .line 588
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 589
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    .line 590
    .local v1, "numNew":I
    iget v3, p0, Ljava/util/ArrayList;->size:I

    add-int/2addr v3, v1

    invoke-direct {p0, v3}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    .line 591
    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/ArrayList;->size:I

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 592
    iget v3, p0, Ljava/util/ArrayList;->size:I

    add-int/2addr v3, v1

    iput v3, p0, Ljava/util/ArrayList;->size:I

    .line 593
    if-eqz v1, :cond_1b

    const/4 v2, 0x1

    :cond_1b
    return v2
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 565
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/ArrayList;->modCount:I

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
    :cond_13
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/ArrayList;->size:I

    .line 572
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 365
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 366
    .local v1, "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayList;->size:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 367
    const/4 v2, 0x0

    iput v2, v1, Ljava/util/ArrayList;->modCount:I
    :try_end_13
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_13} :catch_14

    .line 368
    return-object v1

    .line 369
    .end local v1    # "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    :catch_14
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v0, 0x0

    .line 314
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public ensureCapacity(I)V
    .registers 5
    .param p1, "minCapacity"    # I

    .prologue
    .line 224
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    sget-object v2, Ljava/util/ArrayList;->DEFAULTCAPACITY_EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    if-eq v1, v2, :cond_d

    .line 226
    const/4 v0, 0x0

    .line 231
    .local v0, "minExpand":I
    :goto_7
    if-le p1, v0, :cond_c

    .line 232
    invoke-direct {p0, p1}, Ljava/util/ArrayList;->ensureExplicitCapacity(I)V

    .line 234
    :cond_c
    return-void

    .line 229
    .end local v0    # "minExpand":I
    :cond_d
    const/16 v0, 0xa

    .restart local v0    # "minExpand":I
    goto :goto_7
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1256
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    .line 1259
    .local v1, "expectedModCount":I
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 1260
    .local v0, "elementData":[Ljava/lang/Object;, "[TE;"
    iget v3, p0, Ljava/util/ArrayList;->size:I

    .line 1261
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget v4, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v4, v1, :cond_18

    if-ge v2, v3, :cond_18

    .line 1262
    aget-object v4, v0, v2

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1261
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1267
    :cond_18
    iget v4, p0, Ljava/util/ArrayList;->modCount:I

    if-eq v4, v1, :cond_22

    .line 1268
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1270
    :cond_22
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-lt p1, v0, :cond_e

    .line 437
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_e
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 325
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-nez p1, :cond_11

    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_24

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

    .line 330
    .end local v0    # "i":I
    :cond_11
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_12
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_24

    .line 331
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 332
    return v0

    .line 330
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 334
    :cond_24
    const/4 v1, -0x1

    return v1
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v0, 0x0

    .line 301
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 834
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    new-instance v0, Ljava/util/ArrayList$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/ArrayList$Itr;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList$Itr;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 345
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-nez p1, :cond_12

    .line 346
    iget v1, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_26

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

    .line 350
    .end local v0    # "i":I
    :cond_12
    iget v1, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_16
    if-ltz v0, :cond_26

    .line 351
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 352
    return v0

    .line 350
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 354
    :cond_26
    const/4 v1, -0x1

    return v1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 823
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    new-instance v0, Ljava/util/ArrayList$ListItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/ArrayList$ListItr;-><init>(Ljava/util/ArrayList;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
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
    .line 809
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-le p1, v0, :cond_20

    .line 810
    :cond_6
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

    .line 811
    :cond_20
    new-instance v0, Ljava/util/ArrayList$ListItr;

    invoke-direct {v0, p0, p1}, Ljava/util/ArrayList$ListItr;-><init>(Ljava/util/ArrayList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 502
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-lt p1, v2, :cond_e

    .line 503
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 505
    :cond_e
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/ArrayList;->modCount:I

    .line 506
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v2, p1

    .line 508
    .local v1, "oldValue":Ljava/lang/Object;, "TE;"
    iget v2, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v2, p1

    add-int/lit8 v0, v2, -0x1

    .line 509
    .local v0, "numMoved":I
    if-lez v0, :cond_28

    .line 510
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-static {v2, v3, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 512
    :cond_28
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/ArrayList;->size:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 514
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v2, 0x1

    .line 531
    if-nez p1, :cond_15

    .line 532
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_4
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_2b

    .line 533
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_12

    .line 534
    invoke-direct {p0, v0}, Ljava/util/ArrayList;->fastRemove(I)V

    .line 535
    return v2

    .line 532
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 538
    .end local v0    # "index":I
    :cond_15
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_16
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_2b

    .line 539
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 540
    invoke-direct {p0, v0}, Ljava/util/ArrayList;->fastRemove(I)V

    .line 541
    return v2

    .line 538
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 544
    :cond_2b
    const/4 v1, 0x0

    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
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

.method public removeIf(Ljava/util/function/Predicate;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 1410
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    const/4 v7, 0x0

    .line 1415
    .local v7, "removeCount":I
    new-instance v8, Ljava/util/BitSet;

    iget v10, p0, Ljava/util/ArrayList;->size:I

    invoke-direct {v8, v10}, Ljava/util/BitSet;-><init>(I)V

    .line 1416
    .local v8, "removeSet":Ljava/util/BitSet;
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    .line 1417
    .local v2, "expectedModCount":I
    iget v9, p0, Ljava/util/ArrayList;->size:I

    .line 1418
    .local v9, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    iget v10, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v10, v2, :cond_28

    if-ge v3, v9, :cond_28

    .line 1420
    iget-object v10, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v1, v10, v3

    .line 1421
    .local v1, "element":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25

    .line 1422
    invoke-virtual {v8, v3}, Ljava/util/BitSet;->set(I)V

    .line 1423
    add-int/lit8 v7, v7, 0x1

    .line 1418
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1426
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    :cond_28
    iget v10, p0, Ljava/util/ArrayList;->modCount:I

    if-eq v10, v2, :cond_32

    .line 1427
    new-instance v10, Ljava/util/ConcurrentModificationException;

    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v10

    .line 1431
    :cond_32
    if-lez v7, :cond_50

    const/4 v0, 0x1

    .line 1432
    .local v0, "anyToRemove":Z
    :goto_35
    if-eqz v0, :cond_6f

    .line 1433
    sub-int v6, v9, v7

    .line 1434
    .local v6, "newSize":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3b
    if-ge v3, v9, :cond_52

    if-ge v4, v6, :cond_52

    .line 1435
    invoke-virtual {v8, v3}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v3

    .line 1436
    iget-object v10, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget-object v11, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v11, v11, v3

    aput-object v11, v10, v4

    .line 1434
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 1431
    .end local v0    # "anyToRemove":Z
    .end local v4    # "j":I
    .end local v6    # "newSize":I
    :cond_50
    const/4 v0, 0x0

    .restart local v0    # "anyToRemove":Z
    goto :goto_35

    .line 1438
    .restart local v4    # "j":I
    .restart local v6    # "newSize":I
    :cond_52
    move v5, v6

    .local v5, "k":I
    :goto_53
    if-ge v5, v9, :cond_5d

    .line 1439
    iget-object v10, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v11, v10, v5

    .line 1438
    add-int/lit8 v5, v5, 0x1

    goto :goto_53

    .line 1441
    :cond_5d
    iput v6, p0, Ljava/util/ArrayList;->size:I

    .line 1442
    iget v10, p0, Ljava/util/ArrayList;->modCount:I

    if-eq v10, v2, :cond_69

    .line 1443
    new-instance v10, Ljava/util/ConcurrentModificationException;

    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v10

    .line 1445
    :cond_69
    iget v10, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Ljava/util/ArrayList;->modCount:I

    .line 1448
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v6    # "newSize":I
    :cond_6f
    return v0
.end method

.method protected removeRange(II)V
    .registers 8
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 647
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-ge p2, p1, :cond_b

    .line 648
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v4, "toIndex < fromIndex"

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 651
    :cond_b
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/ArrayList;->modCount:I

    .line 652
    iget v3, p0, Ljava/util/ArrayList;->size:I

    sub-int v2, v3, p2

    .line 653
    .local v2, "numMoved":I
    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-static {v3, p2, v4, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 657
    iget v3, p0, Ljava/util/ArrayList;->size:I

    sub-int v4, p2, p1

    sub-int v1, v3, v4

    .line 658
    .local v1, "newSize":I
    move v0, v1

    .local v0, "i":I
    :goto_23
    iget v3, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v3, :cond_2f

    .line 659
    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 661
    :cond_2f
    iput v1, p0, Ljava/util/ArrayList;->size:I

    .line 662
    return-void
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1454
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 1456
    .local v0, "expectedModCount":I
    iget v2, p0, Ljava/util/ArrayList;->size:I

    .line 1457
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v3, v0, :cond_1d

    if-ge v1, v2, :cond_1d

    .line 1458
    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-interface {p1, v4}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1457
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1460
    :cond_1d
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    if-eq v3, v0, :cond_27

    .line 1461
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 1463
    :cond_27
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/ArrayList;->modCount:I

    .line 1464
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
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

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 452
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-lt p1, v1, :cond_e

    .line 453
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :cond_e
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 456
    .local v0, "oldValue":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 457
    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 292
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    return v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
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

    if-eq v1, v0, :cond_14

    .line 1472
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1474
    :cond_14
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/ArrayList;->modCount:I

    .line 1475
    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v2, 0x0

    .line 1287
    new-instance v0, Ljava/util/ArrayList$ArrayListSpliterator;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v2, v1, v2}, Ljava/util/ArrayList$ArrayListSpliterator;-><init>(Ljava/util/ArrayList;III)V

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 9
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
    .line 1008
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    invoke-static {p1, p2, v0}, Ljava/util/ArrayList;->subListRangeCheck(III)V

    .line 1009
    new-instance v0, Ljava/util/ArrayList$SubList;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayList$SubList;-><init>(Ljava/util/ArrayList;Ljava/util/AbstractList;III)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 390
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    .line 419
    array-length v0, p1

    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_13

    .line 421
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 422
    :cond_13
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    array-length v0, p1

    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-le v0, v1, :cond_24

    .line 424
    iget v0, p0, Ljava/util/ArrayList;->size:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 425
    :cond_24
    return-object p1
.end method

.method public trimToSize()V
    .registers 3

    .prologue
    .line 208
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 209
    iget v0, p0, Ljava/util/ArrayList;->size:I

    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 210
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-nez v0, :cond_16

    .line 211
    sget-object v0, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    .line 210
    :goto_13
    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 214
    :cond_15
    return-void

    .line 212
    :cond_16
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_13
.end method
