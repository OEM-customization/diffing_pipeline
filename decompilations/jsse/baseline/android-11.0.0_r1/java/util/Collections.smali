.class public Ljava/util/Collections;
.super Ljava/lang/Object;
.source "Collections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$AsLIFOQueue;,
        Ljava/util/Collections$SetFromMap;,
        Ljava/util/Collections$ReverseComparator2;,
        Ljava/util/Collections$ReverseComparator;,
        Ljava/util/Collections$CopiesList;,
        Ljava/util/Collections$SingletonMap;,
        Ljava/util/Collections$SingletonList;,
        Ljava/util/Collections$SingletonSet;,
        Ljava/util/Collections$EmptyMap;,
        Ljava/util/Collections$EmptyList;,
        Ljava/util/Collections$EmptySet;,
        Ljava/util/Collections$EmptyEnumeration;,
        Ljava/util/Collections$EmptyListIterator;,
        Ljava/util/Collections$EmptyIterator;,
        Ljava/util/Collections$CheckedNavigableMap;,
        Ljava/util/Collections$CheckedSortedMap;,
        Ljava/util/Collections$CheckedMap;,
        Ljava/util/Collections$CheckedRandomAccessList;,
        Ljava/util/Collections$CheckedList;,
        Ljava/util/Collections$CheckedNavigableSet;,
        Ljava/util/Collections$CheckedSortedSet;,
        Ljava/util/Collections$CheckedSet;,
        Ljava/util/Collections$CheckedQueue;,
        Ljava/util/Collections$CheckedCollection;,
        Ljava/util/Collections$SynchronizedNavigableMap;,
        Ljava/util/Collections$SynchronizedSortedMap;,
        Ljava/util/Collections$SynchronizedMap;,
        Ljava/util/Collections$SynchronizedRandomAccessList;,
        Ljava/util/Collections$SynchronizedList;,
        Ljava/util/Collections$SynchronizedNavigableSet;,
        Ljava/util/Collections$SynchronizedSortedSet;,
        Ljava/util/Collections$SynchronizedSet;,
        Ljava/util/Collections$SynchronizedCollection;,
        Ljava/util/Collections$UnmodifiableNavigableMap;,
        Ljava/util/Collections$UnmodifiableSortedMap;,
        Ljava/util/Collections$UnmodifiableMap;,
        Ljava/util/Collections$UnmodifiableRandomAccessList;,
        Ljava/util/Collections$UnmodifiableList;,
        Ljava/util/Collections$UnmodifiableNavigableSet;,
        Ljava/util/Collections$UnmodifiableSortedSet;,
        Ljava/util/Collections$UnmodifiableSet;,
        Ljava/util/Collections$UnmodifiableCollection;
    }
.end annotation


# static fields
.field private static final greylist-max-o BINARYSEARCH_THRESHOLD:I = 0x1388

.field private static final greylist-max-o COPY_THRESHOLD:I = 0xa

.field public static final whitelist core-platform-api test-api EMPTY_LIST:Ljava/util/List;

.field public static final whitelist core-platform-api test-api EMPTY_MAP:Ljava/util/Map;

.field public static final whitelist core-platform-api test-api EMPTY_SET:Ljava/util/Set;

.field private static final greylist-max-o FILL_THRESHOLD:I = 0x19

.field private static final greylist-max-o INDEXOFSUBLIST_THRESHOLD:I = 0x23

.field private static final greylist-max-o REPLACEALL_THRESHOLD:I = 0xb

.field private static final greylist-max-o REVERSE_THRESHOLD:I = 0x12

.field private static final greylist-max-o ROTATE_THRESHOLD:I = 0x64

.field private static final greylist-max-o SHUFFLE_THRESHOLD:I = 0x5

.field private static greylist-max-o r:Ljava/util/Random;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 4336
    new-instance v0, Ljava/util/Collections$EmptySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Collections$EmptySet;-><init>(Ljava/util/Collections$1;)V

    sput-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 4454
    new-instance v0, Ljava/util/Collections$EmptyList;

    invoke-direct {v0, v1}, Ljava/util/Collections$EmptyList;-><init>(Ljava/util/Collections$1;)V

    sput-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4555
    new-instance v0, Ljava/util/Collections$EmptyMap;

    invoke-direct {v0, v1}, Ljava/util/Collections$EmptyMap;-><init>(Ljava/util/Collections$1;)V

    sput-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static varargs whitelist core-platform-api test-api addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "-TT;>;[TT;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 5456
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    .line 5457
    .local v0, "result":Z
    array-length v1, p1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_f

    aget-object v3, p1, v2

    .line 5458
    .local v3, "element":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 5457
    .end local v3    # "element":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5459
    :cond_f
    return v0
.end method

.method public static whitelist core-platform-api test-api asLifoQueue(Ljava/util/Deque;)Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    .line 5576
    .local p0, "deque":Ljava/util/Deque;, "Ljava/util/Deque<TT;>;"
    new-instance v0, Ljava/util/Collections$AsLIFOQueue;

    invoke-direct {v0, p0}, Ljava/util/Collections$AsLIFOQueue;-><init>(Ljava/util/Deque;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api binarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Comparable<",
            "-TT;>;>;TT;)I"
        }
    .end annotation

    .line 259
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-nez v0, :cond_12

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1388

    if-ge v0, v1, :cond_d

    goto :goto_12

    .line 262
    :cond_d
    invoke-static {p0, p1}, Ljava/util/Collections;->iteratorBinarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 260
    :cond_12
    :goto_12
    invoke-static {p0, p1}, Ljava/util/Collections;->indexedBinarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 363
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p2, :cond_7

    .line 364
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 366
    :cond_7
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-nez v0, :cond_19

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1388

    if-ge v0, v1, :cond_14

    goto :goto_19

    .line 369
    :cond_14
    invoke-static {p0, p1, p2}, Ljava/util/Collections;->iteratorBinarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0

    .line 367
    :cond_19
    :goto_19
    invoke-static {p0, p1, p2}, Ljava/util/Collections;->indexedBinarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api checkedCollection(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 3068
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedCollection;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api checkedList(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 3461
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    .line 3462
    new-instance v0, Ljava/util/Collections$CheckedRandomAccessList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    goto :goto_f

    .line 3463
    :cond_a
    new-instance v0, Ljava/util/Collections$CheckedList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    .line 3461
    :goto_f
    return-object v0
.end method

.method public static whitelist core-platform-api test-api checkedMap(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3609
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/util/Collections$CheckedMap;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/Collections$CheckedMap;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4083
    .local p0, "m":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/util/Collections$CheckedNavigableMap;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/Collections$CheckedNavigableMap;-><init>(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 3381
    .local p0, "s":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedNavigableSet;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedNavigableSet;-><init>(Ljava/util/NavigableSet;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api checkedQueue(Ljava/util/Queue;Ljava/lang/Class;)Ljava/util/Queue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 3216
    .local p0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedQueue;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedQueue;-><init>(Ljava/util/Queue;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api checkedSet(Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 3271
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedSet;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedSet;-><init>(Ljava/util/Set;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api checkedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4009
    .local p0, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/util/Collections$CheckedSortedMap;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/Collections$CheckedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api checkedSortedSet(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 3318
    .local p0, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedSortedSet;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api copy(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "-TT;>;",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 601
    .local p0, "dest":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    .local p1, "src":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 602
    .local v0, "srcSize":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_3d

    .line 605
    const/16 v1, 0xa

    if-lt v0, v1, :cond_2f

    instance-of v1, p1, Ljava/util/RandomAccess;

    if-eqz v1, :cond_17

    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_17

    goto :goto_2f

    .line 610
    :cond_17
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 611
    .local v1, "di":Ljava/util/ListIterator;, "Ljava/util/ListIterator<-TT;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 612
    .local v2, "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TT;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v0, :cond_3c

    .line 613
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 614
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 612
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 607
    .end local v1    # "di":Ljava/util/ListIterator;, "Ljava/util/ListIterator<-TT;>;"
    .end local v2    # "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TT;>;"
    .end local v3    # "i":I
    :cond_2f
    :goto_2f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    if-ge v1, v0, :cond_3c

    .line 608
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 607
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 617
    .end local v1    # "i":I
    :cond_3c
    return-void

    .line 603
    :cond_3d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Source does not fit in dest"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist core-platform-api test-api disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 5378
    .local p0, "c1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "c2":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v0, p1

    .line 5384
    .local v0, "contains":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v1, p0

    .line 5391
    .local v1, "iterate":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v2, p0, Ljava/util/Set;

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    .line 5394
    move-object v1, p1

    .line 5395
    move-object v0, p0

    goto :goto_21

    .line 5396
    :cond_a
    instance-of v2, p1, Ljava/util/Set;

    if-nez v2, :cond_21

    .line 5403
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 5404
    .local v2, "c1size":I
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    .line 5405
    .local v4, "c2size":I
    if-eqz v2, :cond_20

    if-nez v4, :cond_1b

    goto :goto_20

    .line 5410
    :cond_1b
    if-le v2, v4, :cond_21

    .line 5411
    move-object v1, p1

    .line 5412
    move-object v0, p0

    goto :goto_21

    .line 5407
    :cond_20
    :goto_20
    return v3

    .line 5416
    .end local v2    # "c1size":I
    .end local v4    # "c2size":I
    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 5417
    .local v4, "e":Ljava/lang/Object;
    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 5419
    const/4 v2, 0x0

    return v2

    .line 5421
    .end local v4    # "e":Ljava/lang/Object;
    :cond_37
    goto :goto_25

    .line 5424
    :cond_38
    return v3
.end method

.method public static whitelist core-platform-api test-api emptyEnumeration()Ljava/util/Enumeration;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Enumeration<",
            "TT;>;"
        }
    .end annotation

    .line 4319
    sget-object v0, Ljava/util/Collections$EmptyEnumeration;->EMPTY_ENUMERATION:Ljava/util/Collections$EmptyEnumeration;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api emptyIterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 4238
    sget-object v0, Ljava/util/Collections$EmptyIterator;->EMPTY_ITERATOR:Ljava/util/Collections$EmptyIterator;

    return-object v0
.end method

.method public static final whitelist core-platform-api test-api emptyList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 4478
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api emptyListIterator()Ljava/util/ListIterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 4282
    sget-object v0, Ljava/util/Collections$EmptyListIterator;->EMPTY_ITERATOR:Ljava/util/Collections$EmptyListIterator;

    return-object v0
.end method

.method public static final whitelist core-platform-api test-api emptyMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4577
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public static final whitelist core-platform-api test-api emptyNavigableMap()Ljava/util/NavigableMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4619
    # getter for: Ljava/util/Collections$UnmodifiableNavigableMap;->EMPTY_NAVIGABLE_MAP:Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;
    invoke-static {}, Ljava/util/Collections$UnmodifiableNavigableMap;->access$100()Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api emptyNavigableSet()Ljava/util/NavigableSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 4445
    # getter for: Ljava/util/Collections$UnmodifiableNavigableSet;->EMPTY_NAVIGABLE_SET:Ljava/util/NavigableSet;
    invoke-static {}, Ljava/util/Collections$UnmodifiableNavigableSet;->access$000()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist core-platform-api test-api emptySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 4359
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public static final whitelist core-platform-api test-api emptySortedMap()Ljava/util/SortedMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4598
    # getter for: Ljava/util/Collections$UnmodifiableNavigableMap;->EMPTY_NAVIGABLE_MAP:Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;
    invoke-static {}, Ljava/util/Collections$UnmodifiableNavigableMap;->access$100()Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api emptySortedSet()Ljava/util/SortedSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 4424
    # getter for: Ljava/util/Collections$UnmodifiableNavigableSet;->EMPTY_NAVIGABLE_SET:Ljava/util/NavigableSet;
    invoke-static {}, Ljava/util/Collections$UnmodifiableNavigableSet;->access$000()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Enumeration<",
            "TT;>;"
        }
    .end annotation

    .line 5265
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/Collections$3;

    invoke-direct {v0, p0}, Ljava/util/Collections$3;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static greylist-max-o eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .line 5307
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0
.end method

.method public static whitelist core-platform-api test-api fill(Ljava/util/List;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 569
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 571
    .local v0, "size":I
    const/16 v1, 0x19

    if-lt v0, v1, :cond_1d

    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_d

    goto :goto_1d

    .line 575
    :cond_d
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 576
    .local v1, "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<-TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_26

    .line 577
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 578
    invoke-interface {v1, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 576
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 572
    .end local v1    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<-TT;>;"
    .end local v2    # "i":I
    :cond_1d
    :goto_1d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v0, :cond_26

    .line 573
    invoke-interface {p0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 572
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 581
    .end local v1    # "i":I
    :cond_26
    return-void
.end method

.method public static whitelist core-platform-api test-api frequency(Ljava/util/Collection;Ljava/lang/Object;)I
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 5324
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 5325
    .local v0, "result":I
    if-nez p1, :cond_17

    .line 5326
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5327
    .local v2, "e":Ljava/lang/Object;
    if-nez v2, :cond_15

    .line 5328
    add-int/lit8 v0, v0, 0x1

    .line 5327
    .end local v2    # "e":Ljava/lang/Object;
    :cond_15
    goto :goto_7

    :cond_16
    goto :goto_2e

    .line 5330
    :cond_17
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5331
    .restart local v2    # "e":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 5332
    add-int/lit8 v0, v0, 0x1

    .line 5331
    .end local v2    # "e":Ljava/lang/Object;
    :cond_2d
    goto :goto_1b

    .line 5334
    :cond_2e
    :goto_2e
    return v0
.end method

.method private static greylist-max-o get(Ljava/util/ListIterator;I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ListIterator<",
            "+TT;>;I)TT;"
        }
    .end annotation

    .line 312
    .local p0, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TT;>;"
    const/4 v0, 0x0

    .line 313
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    .line 314
    .local v1, "pos":I
    if-gt v1, p1, :cond_12

    .line 316
    :goto_7
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 317
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .local v2, "pos":I
    if-lt v1, p1, :cond_10

    goto :goto_1b

    :cond_10
    move v1, v2

    goto :goto_7

    .line 320
    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    :cond_12
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    .line 321
    add-int/lit8 v1, v1, -0x1

    if-gt v1, p1, :cond_12

    move v2, v1

    .line 323
    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    :goto_1b
    return-object v0
.end method

.method public static whitelist core-platform-api test-api indexOfSubList(Ljava/util/List;Ljava/util/List;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 945
    .local p0, "source":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 946
    .local v0, "sourceSize":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 947
    .local v1, "targetSize":I
    sub-int v2, v0, v1

    .line 949
    .local v2, "maxCandidate":I
    const/16 v3, 0x23

    if-lt v0, v3, :cond_44

    instance-of v3, p0, Ljava/util/RandomAccess;

    if-eqz v3, :cond_17

    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_17

    goto :goto_44

    .line 959
    :cond_17
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 961
    .local v3, "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    const/4 v4, 0x0

    .local v4, "candidate":I
    :goto_1c
    if-gt v4, v2, :cond_63

    .line 962
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .line 963
    .local v5, "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_23
    if-ge v6, v1, :cond_43

    .line 964
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_40

    .line 966
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_34
    if-ge v7, v6, :cond_3c

    .line 967
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 966
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 968
    .end local v7    # "j":I
    :cond_3c
    nop

    .line 961
    .end local v5    # "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .end local v6    # "i":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 963
    .restart local v5    # "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .restart local v6    # "i":I
    :cond_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 971
    .end local v6    # "i":I
    :cond_43
    return v4

    .line 952
    .end local v3    # "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .end local v4    # "candidate":I
    .end local v5    # "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_44
    :goto_44
    const/4 v3, 0x0

    .local v3, "candidate":I
    :goto_45
    if-gt v3, v2, :cond_63

    .line 953
    const/4 v4, 0x0

    .local v4, "i":I
    move v5, v3

    .local v5, "j":I
    :goto_49
    if-ge v4, v1, :cond_62

    .line 954
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5d

    .line 955
    nop

    .line 952
    .end local v4    # "i":I
    .end local v5    # "j":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 953
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    :cond_5d
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 956
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_62
    return v3

    .line 974
    .end local v3    # "candidate":I
    :cond_63
    const/4 v3, -0x1

    return v3
.end method

.method private static greylist-max-o indexedBinarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Comparable<",
            "-TT;>;>;TT;)I"
        }
    .end annotation

    .line 267
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 268
    .local v0, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 270
    .local v1, "high":I
    :goto_7
    if-gt v0, v1, :cond_22

    .line 271
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 272
    .local v2, "mid":I
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    .line 273
    .local v3, "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    invoke-interface {v3, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    .line 275
    .local v4, "cmp":I
    if-gez v4, :cond_1c

    .line 276
    add-int/lit8 v0, v2, 0x1

    goto :goto_20

    .line 277
    :cond_1c
    if-lez v4, :cond_21

    .line 278
    add-int/lit8 v1, v2, -0x1

    .line 281
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    .end local v4    # "cmp":I
    :goto_20
    goto :goto_7

    .line 280
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    .restart local v4    # "cmp":I
    :cond_21
    return v2

    .line 282
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    .end local v4    # "cmp":I
    :cond_22
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static greylist-max-o indexedBinarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 373
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    .line 374
    .local v0, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 376
    .local v1, "high":I
    :goto_7
    if-gt v0, v1, :cond_20

    .line 377
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 378
    .local v2, "mid":I
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 379
    .local v3, "midVal":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v3, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 381
    .local v4, "cmp":I
    if-gez v4, :cond_1a

    .line 382
    add-int/lit8 v0, v2, 0x1

    goto :goto_1e

    .line 383
    :cond_1a
    if-lez v4, :cond_1f

    .line 384
    add-int/lit8 v1, v2, -0x1

    .line 387
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Object;, "TT;"
    .end local v4    # "cmp":I
    :goto_1e
    goto :goto_7

    .line 386
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":Ljava/lang/Object;, "TT;"
    .restart local v4    # "cmp":I
    :cond_1f
    return v2

    .line 388
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Object;, "TT;"
    .end local v4    # "cmp":I
    :cond_20
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static greylist-max-o iteratorBinarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Comparable<",
            "-TT;>;>;TT;)I"
        }
    .end annotation

    .line 288
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 289
    .local v0, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 290
    .local v1, "high":I
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 292
    .local v2, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+Ljava/lang/Comparable<-TT;>;>;"
    :goto_b
    if-gt v0, v1, :cond_26

    .line 293
    add-int v3, v0, v1

    ushr-int/lit8 v3, v3, 0x1

    .line 294
    .local v3, "mid":I
    invoke-static {v2, v3}, Ljava/util/Collections;->get(Ljava/util/ListIterator;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    .line 295
    .local v4, "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    invoke-interface {v4, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    .line 297
    .local v5, "cmp":I
    if-gez v5, :cond_20

    .line 298
    add-int/lit8 v0, v3, 0x1

    goto :goto_24

    .line 299
    :cond_20
    if-lez v5, :cond_25

    .line 300
    add-int/lit8 v1, v3, -0x1

    .line 303
    .end local v3    # "mid":I
    .end local v4    # "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    .end local v5    # "cmp":I
    :goto_24
    goto :goto_b

    .line 302
    .restart local v3    # "mid":I
    .restart local v4    # "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    .restart local v5    # "cmp":I
    :cond_25
    return v3

    .line 304
    .end local v3    # "mid":I
    .end local v4    # "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    .end local v5    # "cmp":I
    :cond_26
    add-int/lit8 v3, v0, 0x1

    neg-int v3, v3

    return v3
.end method

.method private static greylist-max-o iteratorBinarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 392
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    .line 393
    .local v0, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 394
    .local v1, "high":I
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 396
    .local v2, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TT;>;"
    :goto_b
    if-gt v0, v1, :cond_24

    .line 397
    add-int v3, v0, v1

    ushr-int/lit8 v3, v3, 0x1

    .line 398
    .local v3, "mid":I
    invoke-static {v2, v3}, Ljava/util/Collections;->get(Ljava/util/ListIterator;I)Ljava/lang/Object;

    move-result-object v4

    .line 399
    .local v4, "midVal":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v4, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 401
    .local v5, "cmp":I
    if-gez v5, :cond_1e

    .line 402
    add-int/lit8 v0, v3, 0x1

    goto :goto_22

    .line 403
    :cond_1e
    if-lez v5, :cond_23

    .line 404
    add-int/lit8 v1, v3, -0x1

    .line 407
    .end local v3    # "mid":I
    .end local v4    # "midVal":Ljava/lang/Object;, "TT;"
    .end local v5    # "cmp":I
    :goto_22
    goto :goto_b

    .line 406
    .restart local v3    # "mid":I
    .restart local v4    # "midVal":Ljava/lang/Object;, "TT;"
    .restart local v5    # "cmp":I
    :cond_23
    return v3

    .line 408
    .end local v3    # "mid":I
    .end local v4    # "midVal":Ljava/lang/Object;, "TT;"
    .end local v5    # "cmp":I
    :cond_24
    add-int/lit8 v3, v0, 0x1

    neg-int v3, v3

    return v3
.end method

.method public static whitelist core-platform-api test-api lastIndexOfSubList(Ljava/util/List;Ljava/util/List;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 998
    .local p0, "source":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 999
    .local v0, "sourceSize":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1000
    .local v1, "targetSize":I
    sub-int v2, v0, v1

    .line 1002
    .local v2, "maxCandidate":I
    const/4 v3, -0x1

    const/16 v4, 0x23

    if-lt v0, v4, :cond_47

    instance-of v4, p0, Ljava/util/RandomAccess;

    if-eqz v4, :cond_14

    goto :goto_47

    .line 1012
    :cond_14
    if-gez v2, :cond_17

    .line 1013
    return v3

    .line 1014
    :cond_17
    invoke-interface {p0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 1016
    .local v4, "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    move v5, v2

    .local v5, "candidate":I
    :goto_1c
    if-ltz v5, :cond_66

    .line 1017
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    .line 1018
    .local v6, "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_23
    if-ge v7, v1, :cond_46

    .line 1019
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_43

    .line 1020
    if-eqz v5, :cond_40

    .line 1022
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_36
    add-int/lit8 v9, v7, 0x1

    if-gt v8, v9, :cond_40

    .line 1023
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1022
    add-int/lit8 v8, v8, 0x1

    goto :goto_36

    .line 1016
    .end local v6    # "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .end local v7    # "i":I
    .end local v8    # "j":I
    :cond_40
    add-int/lit8 v5, v5, -0x1

    goto :goto_1c

    .line 1018
    .restart local v6    # "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .restart local v7    # "i":I
    :cond_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    .line 1028
    .end local v7    # "i":I
    :cond_46
    return v5

    .line 1005
    .end local v4    # "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .end local v5    # "candidate":I
    .end local v6    # "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_47
    :goto_47
    move v4, v2

    .local v4, "candidate":I
    :goto_48
    if-ltz v4, :cond_66

    .line 1006
    const/4 v5, 0x0

    .local v5, "i":I
    move v6, v4

    .local v6, "j":I
    :goto_4c
    if-ge v5, v1, :cond_65

    .line 1007
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_60

    .line 1008
    nop

    .line 1005
    .end local v5    # "i":I
    .end local v6    # "j":I
    add-int/lit8 v4, v4, -0x1

    goto :goto_48

    .line 1006
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    :cond_60
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4c

    .line 1009
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_65
    return v4

    .line 1031
    .end local v4    # "candidate":I
    :cond_66
    return v3
.end method

.method public static whitelist core-platform-api test-api list(Ljava/util/Enumeration;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 5295
    .local p0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5296
    .local v0, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_5
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 5297
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 5298
    :cond_13
    return-object v0
.end method

.method public static whitelist core-platform-api test-api max(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/Collection<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 715
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 716
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 718
    .local v1, "candidate":Ljava/lang/Object;, "TT;"
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 719
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 720
    .local v2, "next":Ljava/lang/Object;, "TT;"
    move-object v3, v2

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v3, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_1c

    .line 721
    move-object v1, v2

    .line 722
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_1c
    goto :goto_8

    .line 723
    :cond_1d
    return-object v1
.end method

.method public static whitelist core-platform-api test-api max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 751
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p1, :cond_7

    .line 752
    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 754
    :cond_7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 755
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 757
    .local v1, "candidate":Ljava/lang/Object;, "TT;"
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 758
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 759
    .local v2, "next":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_20

    .line 760
    move-object v1, v2

    .line 761
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_20
    goto :goto_f

    .line 762
    :cond_21
    return-object v1
.end method

.method public static whitelist core-platform-api test-api min(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/Collection<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 642
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 643
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 645
    .local v1, "candidate":Ljava/lang/Object;, "TT;"
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 646
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 647
    .local v2, "next":Ljava/lang/Object;, "TT;"
    move-object v3, v2

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v3, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1c

    .line 648
    move-object v1, v2

    .line 649
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_1c
    goto :goto_8

    .line 650
    :cond_1d
    return-object v1
.end method

.method public static whitelist core-platform-api test-api min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 678
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p1, :cond_7

    .line 679
    invoke-static {p0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 681
    :cond_7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 682
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 684
    .local v1, "candidate":Ljava/lang/Object;, "TT;"
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 685
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 686
    .local v2, "next":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_20

    .line 687
    move-object v1, v2

    .line 688
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_20
    goto :goto_f

    .line 689
    :cond_21
    return-object v1
.end method

.method public static whitelist core-platform-api test-api nCopies(ILjava/lang/Object;)Ljava/util/List;
    .registers 5
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 5040
    .local p1, "o":Ljava/lang/Object;, "TT;"
    if-ltz p0, :cond_8

    .line 5042
    new-instance v0, Ljava/util/Collections$CopiesList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CopiesList;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 5041
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "List length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist core-platform-api test-api newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TE;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 5494
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TE;Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/util/Collections$SetFromMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SetFromMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api replaceAll(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;TT;)Z"
        }
    .end annotation

    .line 885
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "oldVal":Ljava/lang/Object;, "TT;"
    .local p2, "newVal":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 886
    .local v0, "result":Z
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 887
    .local v1, "size":I
    const/16 v2, 0xb

    if-lt v1, v2, :cond_39

    instance-of v2, p0, Ljava/util/RandomAccess;

    if-eqz v2, :cond_e

    goto :goto_39

    .line 904
    :cond_e
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 905
    .local v2, "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    if-nez p1, :cond_25

    .line 906
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v1, :cond_24

    .line 907
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_21

    .line 908
    invoke-interface {v2, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 909
    const/4 v0, 0x1

    .line 906
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .end local v3    # "i":I
    :cond_24
    goto :goto_60

    .line 913
    :cond_25
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_26
    if-ge v3, v1, :cond_60

    .line 914
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 915
    invoke-interface {v2, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 916
    const/4 v0, 0x1

    .line 913
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 888
    .end local v2    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    .end local v3    # "i":I
    :cond_39
    :goto_39
    if-nez p1, :cond_4c

    .line 889
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3c
    if-ge v2, v1, :cond_4b

    .line 890
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_48

    .line 891
    invoke-interface {p0, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 892
    const/4 v0, 0x1

    .line 889
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .end local v2    # "i":I
    :cond_4b
    goto :goto_60

    .line 896
    :cond_4c
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4d
    if-ge v2, v1, :cond_60

    .line 897
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 898
    invoke-interface {p0, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 899
    const/4 v0, 0x1

    .line 896
    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 921
    .end local v2    # "i":I
    :cond_60
    :goto_60
    return v0
.end method

.method public static whitelist core-platform-api test-api reverse(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 422
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 423
    .local v0, "size":I
    const/16 v1, 0x12

    if-lt v0, v1, :cond_2f

    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_d

    goto :goto_2f

    .line 430
    :cond_d
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 431
    .local v1, "fwd":Ljava/util/ListIterator;
    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 432
    .local v2, "rev":Ljava/util/ListIterator;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    .local v4, "mid":I
    :goto_1c
    if-ge v3, v4, :cond_3e

    .line 433
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 434
    .local v5, "tmp":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 435
    invoke-interface {v2, v5}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 432
    .end local v5    # "tmp":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 424
    .end local v1    # "fwd":Ljava/util/ListIterator;
    .end local v2    # "rev":Ljava/util/ListIterator;
    .end local v3    # "i":I
    .end local v4    # "mid":I
    :cond_2f
    :goto_2f
    const/4 v1, 0x0

    .local v1, "i":I
    shr-int/lit8 v2, v0, 0x1

    .local v2, "mid":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "j":I
    :goto_34
    if-ge v1, v2, :cond_3e

    .line 425
    invoke-static {p0, v1, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 424
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_34

    .line 438
    .end local v1    # "i":I
    .end local v2    # "mid":I
    .end local v3    # "j":I
    :cond_3e
    return-void
.end method

.method public static whitelist core-platform-api test-api reverseOrder()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 5159
    sget-object v0, Ljava/util/Collections$ReverseComparator;->REVERSE_ORDER:Ljava/util/Collections$ReverseComparator;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 5203
    .local p0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    if-nez p0, :cond_7

    .line 5204
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    return-object v0

    .line 5206
    :cond_7
    instance-of v0, p0, Ljava/util/Collections$ReverseComparator2;

    if-eqz v0, :cond_11

    .line 5207
    move-object v0, p0

    check-cast v0, Ljava/util/Collections$ReverseComparator2;

    iget-object v0, v0, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    return-object v0

    .line 5209
    :cond_11
    new-instance v0, Ljava/util/Collections$ReverseComparator2;

    invoke-direct {v0, p0}, Ljava/util/Collections$ReverseComparator2;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api rotate(Ljava/util/List;I)V
    .registers 4
    .param p1, "distance"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;I)V"
        }
    .end annotation

    .line 821
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-nez v0, :cond_11

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_d

    goto :goto_11

    .line 824
    :cond_d
    invoke-static {p0, p1}, Ljava/util/Collections;->rotate2(Ljava/util/List;I)V

    goto :goto_14

    .line 822
    :cond_11
    :goto_11
    invoke-static {p0, p1}, Ljava/util/Collections;->rotate1(Ljava/util/List;I)V

    .line 825
    :goto_14
    return-void
.end method

.method private static greylist-max-o rotate1(Ljava/util/List;I)V
    .registers 7
    .param p1, "distance"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 828
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 829
    .local v0, "size":I
    if-nez v0, :cond_7

    .line 830
    return-void

    .line 831
    :cond_7
    rem-int/2addr p1, v0

    .line 832
    if-gez p1, :cond_b

    .line 833
    add-int/2addr p1, v0

    .line 834
    :cond_b
    if-nez p1, :cond_e

    .line 835
    return-void

    .line 837
    :cond_e
    const/4 v1, 0x0

    .local v1, "cycleStart":I
    const/4 v2, 0x0

    .local v2, "nMoved":I
    :goto_10
    if-eq v2, v0, :cond_26

    .line 838
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 839
    .local v3, "displaced":Ljava/lang/Object;, "TT;"
    move v4, v1

    .line 841
    .local v4, "i":I
    :cond_17
    add-int/2addr v4, p1

    .line 842
    if-lt v4, v0, :cond_1b

    .line 843
    sub-int/2addr v4, v0

    .line 844
    :cond_1b
    invoke-interface {p0, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 845
    add-int/lit8 v2, v2, 0x1

    .line 846
    if-ne v4, v1, :cond_17

    .line 837
    .end local v3    # "displaced":Ljava/lang/Object;, "TT;"
    .end local v4    # "i":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 848
    .end local v1    # "cycleStart":I
    .end local v2    # "nMoved":I
    :cond_26
    return-void
.end method

.method private static greylist-max-o rotate2(Ljava/util/List;I)V
    .registers 5
    .param p1, "distance"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;I)V"
        }
    .end annotation

    .line 851
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 852
    .local v0, "size":I
    if-nez v0, :cond_7

    .line 853
    return-void

    .line 854
    :cond_7
    neg-int v1, p1

    rem-int/2addr v1, v0

    .line 855
    .local v1, "mid":I
    if-gez v1, :cond_c

    .line 856
    add-int/2addr v1, v0

    .line 857
    :cond_c
    if-nez v1, :cond_f

    .line 858
    return-void

    .line 860
    :cond_f
    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 861
    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 862
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 863
    return-void
.end method

.method public static whitelist core-platform-api test-api shuffle(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 469
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    sget-object v0, Ljava/util/Collections;->r:Ljava/util/Random;

    .line 470
    .local v0, "rnd":Ljava/util/Random;
    if-nez v0, :cond_c

    .line 471
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    move-object v0, v1

    sput-object v1, Ljava/util/Collections;->r:Ljava/util/Random;

    .line 472
    :cond_c
    invoke-static {p0, v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 473
    return-void
.end method

.method public static whitelist core-platform-api test-api shuffle(Ljava/util/List;Ljava/util/Random;)V
    .registers 8
    .param p1, "rnd"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    .line 502
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 503
    .local v0, "size":I
    const/4 v1, 0x1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_33

    instance-of v2, p0, Ljava/util/RandomAccess;

    if-eqz v2, :cond_d

    goto :goto_33

    .line 507
    :cond_d
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 510
    .local v2, "arr":[Ljava/lang/Object;
    move v3, v0

    .local v3, "i":I
    :goto_12
    if-le v3, v1, :cond_20

    .line 511
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v2, v4, v5}, Ljava/util/Collections;->swap([Ljava/lang/Object;II)V

    .line 510
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    .line 517
    .end local v3    # "i":I
    :cond_20
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 518
    .local v1, "it":Ljava/util/ListIterator;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_25
    array-length v4, v2

    if-ge v3, v4, :cond_42

    .line 519
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 520
    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 518
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 504
    .end local v1    # "it":Ljava/util/ListIterator;
    .end local v2    # "arr":[Ljava/lang/Object;
    .end local v3    # "i":I
    :cond_33
    :goto_33
    move v2, v0

    .local v2, "i":I
    :goto_34
    if-le v2, v1, :cond_42

    .line 505
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-static {p0, v3, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 504
    add-int/lit8 v2, v2, -0x1

    goto :goto_34

    .line 523
    .end local v2    # "i":I
    :cond_42
    return-void
.end method

.method public static whitelist core-platform-api test-api singleton(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 4724
    .local p0, "o":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/Collections$SingletonSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SingletonSet;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static greylist-max-o singletonIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 4728
    .local p0, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/Collections$1;

    invoke-direct {v0, p0}, Ljava/util/Collections$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api singletonList(Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 4846
    .local p0, "o":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/Collections$SingletonList;

    invoke-direct {v0, p0}, Ljava/util/Collections$SingletonList;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4911
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/Collections$SingletonMap;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SingletonMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static greylist-max-o singletonSpliterator(Ljava/lang/Object;)Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 4761
    .local p0, "element":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/Collections$2;

    invoke-direct {v0, p0}, Ljava/util/Collections$2;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api sort(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 159
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 160
    return-void
.end method

.method public static whitelist core-platform-api test-api sort(Ljava/util/List;Ljava/util/Comparator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 204
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    .line 205
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x19

    if-le v0, v1, :cond_10

    .line 206
    invoke-interface {p0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    goto :goto_40

    .line 209
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    if-ne v1, v2, :cond_26

    .line 210
    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    iget-object v1, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v2, v3, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 211
    return-void

    .line 214
    :cond_26
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 215
    .local v1, "a":[Ljava/lang/Object;
    invoke-static {v1, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 216
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 217
    .local v2, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_32
    array-length v4, v1

    if-ge v3, v4, :cond_40

    .line 218
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 219
    aget-object v4, v1, v3

    invoke-interface {v2, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 217
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 223
    .end local v1    # "a":[Ljava/lang/Object;
    .end local v2    # "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    .end local v3    # "j":I
    :cond_40
    :goto_40
    return-void
.end method

.method public static whitelist core-platform-api test-api swap(Ljava/util/List;II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "j"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;II)V"
        }
    .end annotation

    .line 543
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v0, p0

    .line 544
    .local v0, "l":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 545
    return-void
.end method

.method private static greylist-max-o swap([Ljava/lang/Object;II)V
    .registers 5
    .param p0, "arr"    # [Ljava/lang/Object;
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 551
    aget-object v0, p0, p1

    .line 552
    .local v0, "tmp":Ljava/lang/Object;
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 553
    aput-object v0, p0, p2

    .line 554
    return-void
.end method

.method public static whitelist core-platform-api test-api synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 2039
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedCollection;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static greylist-max-o synchronizedCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .param p1, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 2043
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedCollection;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api synchronizedList(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 2428
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    .line 2429
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;)V

    goto :goto_f

    .line 2430
    :cond_a
    new-instance v0, Ljava/util/Collections$SynchronizedList;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;)V

    .line 2428
    :goto_f
    return-object v0
.end method

.method static greylist-max-o synchronizedList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .param p1, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 2434
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    .line 2435
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_f

    .line 2436
    :cond_a
    new-instance v0, Ljava/util/Collections$SynchronizedList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 2434
    :goto_f
    return-object v0
.end method

.method public static whitelist core-platform-api test-api synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2599
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api synchronizedNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2890
    .local p0, "m":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedNavigableMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedNavigableMap;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api synchronizedNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TT;>;)",
            "Ljava/util/NavigableSet<",
            "TT;>;"
        }
    .end annotation

    .line 2327
    .local p0, "s":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedNavigableSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api synchronizedSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 2163
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method static greylist-max-o synchronizedSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 2167
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedSet;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2791
    .local p0, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedSortedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TT;>;)",
            "Ljava/util/SortedSet<",
            "TT;>;"
        }
    .end annotation

    .line 2234
    .local p0, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedSortedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 1060
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableCollection;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api unmodifiableList(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1334
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    .line 1335
    new-instance v0, Ljava/util/Collections$UnmodifiableRandomAccessList;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableRandomAccessList;-><init>(Ljava/util/List;)V

    goto :goto_f

    .line 1336
    :cond_a
    new-instance v0, Ljava/util/Collections$UnmodifiableList;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableList;-><init>(Ljava/util/List;)V

    .line 1334
    :goto_f
    return-object v0
.end method

.method public static whitelist core-platform-api test-api unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1480
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;+TV;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1881
    .local p0, "m":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;+TV;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableNavigableMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableNavigableMap;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TT;>;)",
            "Ljava/util/NavigableSet<",
            "TT;>;"
        }
    .end annotation

    .line 1247
    .local p0, "s":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TT;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableNavigableSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 1165
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<+TT;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1836
    .local p0, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TT;>;)",
            "Ljava/util/SortedSet<",
            "TT;>;"
        }
    .end annotation

    .line 1198
    .local p0, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method static greylist-max-o zeroLengthArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 3073
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method
