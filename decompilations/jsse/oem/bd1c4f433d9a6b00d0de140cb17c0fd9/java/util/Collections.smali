.class public Ljava/util/Collections;
.super Ljava/lang/Object;
.source "Collections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$AsLIFOQueue;,
        Ljava/util/Collections$CheckedCollection;,
        Ljava/util/Collections$CheckedList;,
        Ljava/util/Collections$CheckedMap;,
        Ljava/util/Collections$CheckedNavigableMap;,
        Ljava/util/Collections$CheckedNavigableSet;,
        Ljava/util/Collections$CheckedQueue;,
        Ljava/util/Collections$CheckedRandomAccessList;,
        Ljava/util/Collections$CheckedSet;,
        Ljava/util/Collections$CheckedSortedMap;,
        Ljava/util/Collections$CheckedSortedSet;,
        Ljava/util/Collections$CopiesList;,
        Ljava/util/Collections$EmptyEnumeration;,
        Ljava/util/Collections$EmptyIterator;,
        Ljava/util/Collections$EmptyList;,
        Ljava/util/Collections$EmptyListIterator;,
        Ljava/util/Collections$EmptyMap;,
        Ljava/util/Collections$EmptySet;,
        Ljava/util/Collections$ReverseComparator2;,
        Ljava/util/Collections$ReverseComparator;,
        Ljava/util/Collections$SetFromMap;,
        Ljava/util/Collections$SingletonList;,
        Ljava/util/Collections$SingletonMap;,
        Ljava/util/Collections$SingletonSet;,
        Ljava/util/Collections$SynchronizedCollection;,
        Ljava/util/Collections$SynchronizedList;,
        Ljava/util/Collections$SynchronizedMap;,
        Ljava/util/Collections$SynchronizedNavigableMap;,
        Ljava/util/Collections$SynchronizedNavigableSet;,
        Ljava/util/Collections$SynchronizedRandomAccessList;,
        Ljava/util/Collections$SynchronizedSet;,
        Ljava/util/Collections$SynchronizedSortedMap;,
        Ljava/util/Collections$SynchronizedSortedSet;,
        Ljava/util/Collections$UnmodifiableCollection;,
        Ljava/util/Collections$UnmodifiableList;,
        Ljava/util/Collections$UnmodifiableMap;,
        Ljava/util/Collections$UnmodifiableNavigableMap;,
        Ljava/util/Collections$UnmodifiableNavigableSet;,
        Ljava/util/Collections$UnmodifiableRandomAccessList;,
        Ljava/util/Collections$UnmodifiableSet;,
        Ljava/util/Collections$UnmodifiableSortedMap;,
        Ljava/util/Collections$UnmodifiableSortedSet;
    }
.end annotation


# static fields
.field private static final BINARYSEARCH_THRESHOLD:I = 0x1388

.field private static final COPY_THRESHOLD:I = 0xa

.field public static final EMPTY_LIST:Ljava/util/List;

.field public static final EMPTY_MAP:Ljava/util/Map;

.field public static final EMPTY_SET:Ljava/util/Set;

.field private static final FILL_THRESHOLD:I = 0x19

.field private static final INDEXOFSUBLIST_THRESHOLD:I = 0x23

.field private static final REPLACEALL_THRESHOLD:I = 0xb

.field private static final REVERSE_THRESHOLD:I = 0x12

.field private static final ROTATE_THRESHOLD:I = 0x64

.field private static final SHUFFLE_THRESHOLD:I = 0x5

.field private static r:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 4325
    new-instance v0, Ljava/util/Collections$EmptySet;

    invoke-direct {v0, v1}, Ljava/util/Collections$EmptySet;-><init>(Ljava/util/Collections$EmptySet;)V

    sput-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 4443
    new-instance v0, Ljava/util/Collections$EmptyList;

    invoke-direct {v0, v1}, Ljava/util/Collections$EmptyList;-><init>(Ljava/util/Collections$EmptyList;)V

    sput-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4544
    new-instance v0, Ljava/util/Collections$EmptyMap;

    invoke-direct {v0, v1}, Ljava/util/Collections$EmptyMap;-><init>(Ljava/util/Collections$EmptyMap;)V

    sput-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 85
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static varargs addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<-TT;>;[TT;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 5445
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .line 5446
    .local v1, "result":Z
    const/4 v2, 0x0

    array-length v3, p1

    .end local v1    # "result":Z
    :goto_3
    if-ge v2, v3, :cond_f

    aget-object v0, p1, v2

    .line 5447
    .local v0, "element":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 5446
    .local v1, "result":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5448
    .end local v0    # "element":Ljava/lang/Object;, "TT;"
    .end local v1    # "result":Z
    :cond_f
    return v1
.end method

.method public static asLifoQueue(Ljava/util/Deque;)Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque",
            "<TT;>;)",
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5565
    .local p0, "deque":Ljava/util/Deque;, "Ljava/util/Deque<TT;>;"
    new-instance v0, Ljava/util/Collections$AsLIFOQueue;

    invoke-direct {v0, p0}, Ljava/util/Collections$AsLIFOQueue;-><init>(Ljava/util/Deque;)V

    return-object v0
.end method

.method public static binarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Comparable",
            "<-TT;>;>;TT;)I"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-nez v0, :cond_c

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1388

    if-ge v0, v1, :cond_11

    .line 255
    :cond_c
    invoke-static {p0, p1}, Ljava/util/Collections;->indexedBinarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 257
    :cond_11
    invoke-static {p0, p1}, Ljava/util/Collections;->iteratorBinarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TT;>;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p2, :cond_7

    .line 359
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 361
    :cond_7
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-nez v0, :cond_13

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1388

    if-ge v0, v1, :cond_18

    .line 362
    :cond_13
    invoke-static {p0, p1, p2}, Ljava/util/Collections;->indexedBinarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0

    .line 364
    :cond_18
    invoke-static {p0, p1, p2}, Ljava/util/Collections;->iteratorBinarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static checkedCollection(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3061
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedCollection;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedList(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3453
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    .line 3454
    new-instance v0, Ljava/util/Collections$CheckedRandomAccessList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    .line 3453
    :goto_9
    return-object v0

    .line 3455
    :cond_a
    new-instance v0, Ljava/util/Collections$CheckedList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    goto :goto_9
.end method

.method public static checkedMap(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3601
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/util/Collections$CheckedMap;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/Collections$CheckedMap;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4072
    .local p0, "m":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/util/Collections$CheckedNavigableMap;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/Collections$CheckedNavigableMap;-><init>(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3373
    .local p0, "s":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedNavigableSet;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedNavigableSet;-><init>(Ljava/util/NavigableSet;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedQueue(Ljava/util/Queue;Ljava/lang/Class;)Ljava/util/Queue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3208
    .local p0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedQueue;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedQueue;-><init>(Ljava/util/Queue;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedSet(Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3263
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedSet;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedSet;-><init>(Ljava/util/Set;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3998
    .local p0, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/util/Collections$CheckedSortedMap;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/Collections$CheckedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static checkedSortedSet(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3310
    .local p0, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedSortedSet;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static copy(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<-TT;>;",
            "Ljava/util/List",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p0, "dest":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    .local p1, "src":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 597
    .local v3, "srcSize":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_13

    .line 598
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v5, "Source does not fit in dest"

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 600
    :cond_13
    const/16 v4, 0xa

    if-lt v3, v4, :cond_1f

    .line 601
    instance-of v4, p1, Ljava/util/RandomAccess;

    if-eqz v4, :cond_2c

    instance-of v4, p0, Ljava/util/RandomAccess;

    .line 600
    if-eqz v4, :cond_2c

    .line 602
    :cond_1f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    if-ge v1, v3, :cond_44

    .line 603
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 602
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 605
    .end local v1    # "i":I
    :cond_2c
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 606
    .local v0, "di":Ljava/util/ListIterator;, "Ljava/util/ListIterator<-TT;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 607
    .local v2, "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TT;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_35
    if-ge v1, v3, :cond_44

    .line 608
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 609
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 607
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 612
    .end local v0    # "di":Ljava/util/ListIterator;, "Ljava/util/ListIterator<-TT;>;"
    .end local v2    # "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TT;>;"
    :cond_44
    return-void
.end method

.method public static disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "c1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "c2":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5367
    move-object v2, p1

    .line 5373
    .local v2, "contains":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v5, p0

    .line 5380
    .local v5, "iterate":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v6, p0, Ljava/util/Set;

    if-eqz v6, :cond_1f

    .line 5383
    move-object v5, p1

    .line 5384
    move-object v2, p0

    .line 5405
    :cond_a
    :goto_a
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "e$iterator":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5406
    .local v3, "e":Ljava/lang/Object;
    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 5408
    return v7

    .line 5385
    .end local v3    # "e":Ljava/lang/Object;
    .end local v4    # "e$iterator":Ljava/util/Iterator;
    :cond_1f
    instance-of v6, p1, Ljava/util/Set;

    if-nez v6, :cond_a

    .line 5392
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 5393
    .local v0, "c1size":I
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 5394
    .local v1, "c2size":I
    if-eqz v0, :cond_2f

    if-nez v1, :cond_30

    .line 5396
    :cond_2f
    return v8

    .line 5399
    :cond_30
    if-le v0, v1, :cond_a

    .line 5400
    move-object v5, p1

    .line 5401
    move-object v2, p0

    goto :goto_a

    .line 5413
    .end local v0    # "c1size":I
    .end local v1    # "c2size":I
    .restart local v4    # "e$iterator":Ljava/util/Iterator;
    :cond_35
    return v8
.end method

.method public static emptyEnumeration()Ljava/util/Enumeration;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Enumeration",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4308
    sget-object v0, Ljava/util/Collections$EmptyEnumeration;->EMPTY_ENUMERATION:Ljava/util/Collections$EmptyEnumeration;

    return-object v0
.end method

.method public static emptyIterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4227
    sget-object v0, Ljava/util/Collections$EmptyIterator;->EMPTY_ITERATOR:Ljava/util/Collections$EmptyIterator;

    return-object v0
.end method

.method public static final emptyList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4467
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static emptyListIterator()Ljava/util/ListIterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4271
    sget-object v0, Ljava/util/Collections$EmptyListIterator;->EMPTY_ITERATOR:Ljava/util/Collections$EmptyListIterator;

    return-object v0
.end method

.method public static final emptyMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4566
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public static final emptyNavigableMap()Ljava/util/NavigableMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4608
    invoke-static {}, Ljava/util/Collections$UnmodifiableNavigableMap;->-get0()Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static emptyNavigableSet()Ljava/util/NavigableSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 4434
    invoke-static {}, Ljava/util/Collections$UnmodifiableNavigableSet;->-get0()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public static final emptySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4348
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public static final emptySortedMap()Ljava/util/SortedMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4587
    invoke-static {}, Ljava/util/Collections$UnmodifiableNavigableMap;->-get0()Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static emptySortedSet()Ljava/util/SortedSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 4413
    invoke-static {}, Ljava/util/Collections$UnmodifiableNavigableSet;->-get0()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public static enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Enumeration",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5254
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/Collections$3;

    invoke-direct {v0, p0}, Ljava/util/Collections$3;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 5296
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static fill(Ljava/util/List;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 564
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 566
    .local v2, "size":I
    const/16 v3, 0x19

    if-lt v2, v3, :cond_c

    instance-of v3, p0, Ljava/util/RandomAccess;

    if-eqz v3, :cond_15

    .line 567
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v2, :cond_25

    .line 568
    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 567
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 570
    .end local v0    # "i":I
    :cond_15
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 571
    .local v1, "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<-TT;>;"
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1a
    if-ge v0, v2, :cond_25

    .line 572
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 573
    invoke-interface {v1, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 571
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 576
    .end local v1    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<-TT;>;"
    :cond_25
    return-void
.end method

.method public static frequency(Ljava/util/Collection;Ljava/lang/Object;)I
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 5313
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v2, 0x0

    .line 5314
    .local v2, "result":I
    if-nez p1, :cond_16

    .line 5315
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5316
    .local v0, "e":Ljava/lang/Object;
    if-nez v0, :cond_7

    .line 5317
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 5319
    .end local v0    # "e":Ljava/lang/Object;
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_16
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5320
    .restart local v0    # "e":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 5321
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 5323
    .end local v0    # "e":Ljava/lang/Object;
    :cond_2d
    return v2
.end method

.method private static get(Ljava/util/ListIterator;I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ListIterator",
            "<+TT;>;I)TT;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TT;>;"
    const/4 v0, 0x0

    .line 308
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    .line 309
    .local v1, "pos":I
    if-gt v1, p1, :cond_11

    .line 311
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    :goto_7
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 312
    .restart local v0    # "obj":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .local v2, "pos":I
    if-ge v1, p1, :cond_1a

    move v1, v2

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_7

    .line 315
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_11
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    .line 316
    .restart local v0    # "obj":Ljava/lang/Object;, "TT;"
    add-int/lit8 v1, v1, -0x1

    if-gt v1, p1, :cond_11

    .line 318
    :goto_19
    return-object v0

    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    :cond_1a
    move v1, v2

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_19
.end method

.method public static indexOfSubList(Ljava/util/List;Ljava/util/List;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 940
    .local p0, "source":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 941
    .local v5, "sourceSize":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 942
    .local v6, "targetSize":I
    sub-int v3, v5, v6

    .line 944
    .local v3, "maxCandidate":I
    const/16 v8, 0x23

    if-lt v5, v8, :cond_16

    .line 945
    instance-of v8, p0, Ljava/util/RandomAccess;

    if-eqz v8, :cond_34

    instance-of v8, p1, Ljava/util/RandomAccess;

    .line 944
    if-eqz v8, :cond_34

    .line 947
    :cond_16
    const/4 v0, 0x0

    .local v0, "candidate":I
    :goto_17
    if-gt v0, v3, :cond_60

    .line 948
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v0

    .local v2, "j":I
    :goto_1b
    if-ge v1, v6, :cond_33

    .line 949
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2e

    .line 947
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 948
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 951
    :cond_33
    return v0

    .line 954
    .end local v0    # "candidate":I
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_34
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 956
    .local v4, "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    const/4 v0, 0x0

    .restart local v0    # "candidate":I
    :goto_39
    if-gt v0, v3, :cond_60

    .line 957
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    .line 958
    .local v7, "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_40
    if-ge v1, v6, :cond_5c

    .line 959
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_59

    .line 961
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_51
    if-ge v2, v1, :cond_5d

    .line 962
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 961
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 958
    .end local v2    # "j":I
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 966
    :cond_5c
    return v0

    .line 956
    .restart local v2    # "j":I
    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 969
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v4    # "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .end local v7    # "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_60
    const/4 v8, -0x1

    return v8
.end method

.method private static indexedBinarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Comparable",
            "<-TT;>;>;TT;)I"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 263
    .local v2, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 265
    .local v1, "high":I
    :goto_7
    if-gt v2, v1, :cond_22

    .line 266
    add-int v5, v2, v1

    ushr-int/lit8 v3, v5, 0x1

    .line 267
    .local v3, "mid":I
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    .line 268
    .local v4, "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    invoke-interface {v4, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 270
    .local v0, "cmp":I
    if-gez v0, :cond_1c

    .line 271
    add-int/lit8 v2, v3, 0x1

    goto :goto_7

    .line 272
    :cond_1c
    if-lez v0, :cond_21

    .line 273
    add-int/lit8 v1, v3, -0x1

    goto :goto_7

    .line 275
    :cond_21
    return v3

    .line 277
    .end local v0    # "cmp":I
    .end local v3    # "mid":I
    .end local v4    # "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    :cond_22
    add-int/lit8 v5, v2, 0x1

    neg-int v5, v5

    return v5
.end method

.method private static indexedBinarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TT;>;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v2, 0x0

    .line 369
    .local v2, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 371
    .local v1, "high":I
    :goto_7
    if-gt v2, v1, :cond_20

    .line 372
    add-int v5, v2, v1

    ushr-int/lit8 v3, v5, 0x1

    .line 373
    .local v3, "mid":I
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 374
    .local v4, "midVal":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v4, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 376
    .local v0, "cmp":I
    if-gez v0, :cond_1a

    .line 377
    add-int/lit8 v2, v3, 0x1

    goto :goto_7

    .line 378
    :cond_1a
    if-lez v0, :cond_1f

    .line 379
    add-int/lit8 v1, v3, -0x1

    goto :goto_7

    .line 381
    :cond_1f
    return v3

    .line 383
    .end local v0    # "cmp":I
    .end local v3    # "mid":I
    .end local v4    # "midVal":Ljava/lang/Object;, "TT;"
    :cond_20
    add-int/lit8 v5, v2, 0x1

    neg-int v5, v5

    return v5
.end method

.method private static iteratorBinarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Comparable",
            "<-TT;>;>;TT;)I"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 284
    .local v3, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 285
    .local v1, "high":I
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 287
    .local v2, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+Ljava/lang/Comparable<-TT;>;>;"
    :goto_b
    if-gt v3, v1, :cond_26

    .line 288
    add-int v6, v3, v1

    ushr-int/lit8 v4, v6, 0x1

    .line 289
    .local v4, "mid":I
    invoke-static {v2, v4}, Ljava/util/Collections;->get(Ljava/util/ListIterator;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Comparable;

    .line 290
    .local v5, "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    invoke-interface {v5, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 292
    .local v0, "cmp":I
    if-gez v0, :cond_20

    .line 293
    add-int/lit8 v3, v4, 0x1

    goto :goto_b

    .line 294
    :cond_20
    if-lez v0, :cond_25

    .line 295
    add-int/lit8 v1, v4, -0x1

    goto :goto_b

    .line 297
    :cond_25
    return v4

    .line 299
    .end local v0    # "cmp":I
    .end local v4    # "mid":I
    .end local v5    # "midVal":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    :cond_26
    add-int/lit8 v6, v3, 0x1

    neg-int v6, v6

    return v6
.end method

.method private static iteratorBinarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TT;>;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v3, 0x0

    .line 388
    .local v3, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 389
    .local v1, "high":I
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 391
    .local v2, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TT;>;"
    :goto_b
    if-gt v3, v1, :cond_24

    .line 392
    add-int v6, v3, v1

    ushr-int/lit8 v4, v6, 0x1

    .line 393
    .local v4, "mid":I
    invoke-static {v2, v4}, Ljava/util/Collections;->get(Ljava/util/ListIterator;I)Ljava/lang/Object;

    move-result-object v5

    .line 394
    .local v5, "midVal":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v5, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 396
    .local v0, "cmp":I
    if-gez v0, :cond_1e

    .line 397
    add-int/lit8 v3, v4, 0x1

    goto :goto_b

    .line 398
    :cond_1e
    if-lez v0, :cond_23

    .line 399
    add-int/lit8 v1, v4, -0x1

    goto :goto_b

    .line 401
    :cond_23
    return v4

    .line 403
    .end local v0    # "cmp":I
    .end local v4    # "mid":I
    .end local v5    # "midVal":Ljava/lang/Object;, "TT;"
    :cond_24
    add-int/lit8 v6, v3, 0x1

    neg-int v6, v6

    return v6
.end method

.method public static lastIndexOfSubList(Ljava/util/List;Ljava/util/List;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p0, "source":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v10, -0x1

    .line 993
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 994
    .local v5, "sourceSize":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 995
    .local v6, "targetSize":I
    sub-int v3, v5, v6

    .line 997
    .local v3, "maxCandidate":I
    const/16 v8, 0x23

    if-lt v5, v8, :cond_13

    .line 998
    instance-of v8, p0, Ljava/util/RandomAccess;

    .line 997
    if-eqz v8, :cond_31

    .line 1000
    :cond_13
    move v0, v3

    .local v0, "candidate":I
    :goto_14
    if-ltz v0, :cond_64

    .line 1001
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v0

    .local v2, "j":I
    :goto_18
    if-ge v1, v6, :cond_30

    .line 1002
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2b

    .line 1000
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 1001
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1004
    :cond_30
    return v0

    .line 1007
    .end local v0    # "candidate":I
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_31
    if-gez v3, :cond_34

    .line 1008
    return v10

    .line 1009
    :cond_34
    invoke-interface {p0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 1011
    .local v4, "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    move v0, v3

    .restart local v0    # "candidate":I
    :goto_39
    if-ltz v0, :cond_64

    .line 1012
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    .line 1013
    .local v7, "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_40
    if-ge v1, v6, :cond_60

    .line 1014
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Collections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5d

    .line 1015
    if-eqz v0, :cond_61

    .line 1017
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_53
    add-int/lit8 v8, v1, 0x1

    if-gt v2, v8, :cond_61

    .line 1018
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1017
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 1013
    .end local v2    # "j":I
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 1023
    :cond_60
    return v0

    .line 1011
    :cond_61
    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    .line 1026
    .end local v1    # "i":I
    .end local v4    # "si":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    .end local v7    # "ti":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_64
    return v10
.end method

.method public static list(Ljava/util/Enumeration;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5284
    .local p0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5285
    .local v0, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_5
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 5286
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 5287
    :cond_13
    return-object v0
.end method

.method public static max(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/util/Collection",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 710
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 711
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 713
    .local v0, "candidate":Ljava/lang/Object;, "TT;"
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 714
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "next":Ljava/lang/Object;, "TT;"
    move-object v3, v2

    .line 715
    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v3, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_8

    .line 716
    move-object v0, v2

    goto :goto_8

    .line 718
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_1d
    return-object v0
.end method

.method public static max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 746
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p1, :cond_7

    .line 747
    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 749
    :cond_7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 750
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 752
    .local v0, "candidate":Ljava/lang/Object;, "TT;"
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 753
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 754
    .local v2, "next":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_f

    .line 755
    move-object v0, v2

    goto :goto_f

    .line 757
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_21
    return-object v0
.end method

.method public static min(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/util/Collection",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 637
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 638
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 640
    .local v0, "candidate":Ljava/lang/Object;, "TT;"
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 641
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "next":Ljava/lang/Object;, "TT;"
    move-object v3, v2

    .line 642
    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v3, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_8

    .line 643
    move-object v0, v2

    goto :goto_8

    .line 645
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_1d
    return-object v0
.end method

.method public static min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 673
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p1, :cond_7

    .line 674
    invoke-static {p0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 676
    :cond_7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 677
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 679
    .local v0, "candidate":Ljava/lang/Object;, "TT;"
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 680
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 681
    .local v2, "next":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_f

    .line 682
    move-object v0, v2

    goto :goto_f

    .line 684
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    :cond_21
    return-object v0
.end method

.method public static nCopies(ILjava/lang/Object;)Ljava/util/List;
    .registers 5
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5029
    .local p1, "o":Ljava/lang/Object;, "TT;"
    if-gez p0, :cond_1c

    .line 5030
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "List length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5031
    :cond_1c
    new-instance v0, Ljava/util/Collections$CopiesList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CopiesList;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 5483
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TE;Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/util/Collections$SetFromMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SetFromMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static replaceAll(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 880
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "oldVal":Ljava/lang/Object;, "TT;"
    .local p2, "newVal":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 881
    .local v2, "result":Z
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 882
    .local v3, "size":I
    const/16 v4, 0xb

    if-lt v3, v4, :cond_d

    instance-of v4, p0, Ljava/util/RandomAccess;

    if-eqz v4, :cond_33

    .line 883
    :cond_d
    if-nez p1, :cond_1f

    .line 884
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v3, :cond_5d

    .line 885
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1c

    .line 886
    invoke-interface {p0, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 887
    const/4 v2, 0x1

    .line 884
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 891
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_20
    if-ge v0, v3, :cond_5d

    .line 892
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 893
    invoke-interface {p0, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 894
    const/4 v2, 0x1

    .line 891
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 899
    .end local v0    # "i":I
    :cond_33
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 900
    .local v1, "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    if-nez p1, :cond_49

    .line 901
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3a
    if-ge v0, v3, :cond_5d

    .line 902
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_46

    .line 903
    invoke-interface {v1, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 904
    const/4 v2, 0x1

    .line 901
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 908
    .end local v0    # "i":I
    :cond_49
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4a
    if-ge v0, v3, :cond_5d

    .line 909
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 910
    invoke-interface {v1, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 911
    const/4 v2, 0x1

    .line 908
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 916
    .end local v1    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    :cond_5d
    return v2
.end method

.method public static reverse(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 418
    .local v5, "size":I
    const/16 v7, 0x12

    if-lt v5, v7, :cond_c

    instance-of v7, p0, Ljava/util/RandomAccess;

    if-eqz v7, :cond_1b

    .line 419
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    shr-int/lit8 v3, v5, 0x1

    .local v3, "mid":I
    add-int/lit8 v2, v5, -0x1

    .local v2, "j":I
    :goto_11
    if-ge v1, v3, :cond_3d

    .line 420
    invoke-static {p0, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 419
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 425
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "mid":I
    :cond_1b
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 426
    .local v0, "fwd":Ljava/util/ListIterator;
    invoke-interface {p0, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 427
    .local v4, "rev":Ljava/util/ListIterator;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    shr-int/lit8 v3, v7, 0x1

    .restart local v3    # "mid":I
    :goto_2a
    if-ge v1, v3, :cond_3d

    .line 428
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 429
    .local v6, "tmp":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 430
    invoke-interface {v4, v6}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 433
    .end local v0    # "fwd":Ljava/util/ListIterator;
    .end local v4    # "rev":Ljava/util/ListIterator;
    .end local v6    # "tmp":Ljava/lang/Object;
    :cond_3d
    return-void
.end method

.method public static reverseOrder()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5148
    sget-object v0, Ljava/util/Collections$ReverseComparator;->REVERSE_ORDER:Ljava/util/Collections$ReverseComparator;

    return-object v0
.end method

.method public static reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5192
    .local p0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    if-nez p0, :cond_7

    .line 5193
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    return-object v0

    .line 5195
    :cond_7
    instance-of v0, p0, Ljava/util/Collections$ReverseComparator2;

    if-eqz v0, :cond_10

    .line 5196
    check-cast p0, Ljava/util/Collections$ReverseComparator2;

    .end local p0    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    iget-object v0, p0, Ljava/util/Collections$ReverseComparator2;->cmp:Ljava/util/Comparator;

    return-object v0

    .line 5198
    .restart local p0    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    :cond_10
    new-instance v0, Ljava/util/Collections$ReverseComparator2;

    invoke-direct {v0, p0}, Ljava/util/Collections$ReverseComparator2;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static rotate(Ljava/util/List;I)V
    .registers 4
    .param p1, "distance"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 816
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-nez v0, :cond_c

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_10

    .line 817
    :cond_c
    invoke-static {p0, p1}, Ljava/util/Collections;->rotate1(Ljava/util/List;I)V

    .line 820
    :goto_f
    return-void

    .line 819
    :cond_10
    invoke-static {p0, p1}, Ljava/util/Collections;->rotate2(Ljava/util/List;I)V

    goto :goto_f
.end method

.method private static rotate1(Ljava/util/List;I)V
    .registers 7
    .param p1, "distance"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 823
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 824
    .local v4, "size":I
    if-nez v4, :cond_7

    .line 825
    return-void

    .line 826
    :cond_7
    rem-int/2addr p1, v4

    .line 827
    if-gez p1, :cond_b

    .line 828
    add-int/2addr p1, v4

    .line 829
    :cond_b
    if-nez p1, :cond_e

    .line 830
    return-void

    .line 832
    :cond_e
    const/4 v0, 0x0

    .local v0, "cycleStart":I
    const/4 v3, 0x0

    .local v3, "nMoved":I
    :goto_10
    if-eq v3, v4, :cond_26

    .line 833
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 834
    .local v1, "displaced":Ljava/lang/Object;, "TT;"
    move v2, v0

    .line 836
    .local v2, "i":I
    :cond_17
    add-int/2addr v2, p1

    .line 837
    if-lt v2, v4, :cond_1b

    .line 838
    sub-int/2addr v2, v4

    .line 839
    :cond_1b
    invoke-interface {p0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 840
    add-int/lit8 v3, v3, 0x1

    .line 841
    if-ne v2, v0, :cond_17

    .line 832
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 843
    .end local v1    # "displaced":Ljava/lang/Object;, "TT;"
    .end local v2    # "i":I
    :cond_26
    return-void
.end method

.method private static rotate2(Ljava/util/List;I)V
    .registers 6
    .param p1, "distance"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v3, 0x0

    .line 846
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 847
    .local v1, "size":I
    if-nez v1, :cond_8

    .line 848
    return-void

    .line 849
    :cond_8
    neg-int v2, p1

    rem-int v0, v2, v1

    .line 850
    .local v0, "mid":I
    if-gez v0, :cond_e

    .line 851
    add-int/2addr v0, v1

    .line 852
    :cond_e
    if-nez v0, :cond_11

    .line 853
    return-void

    .line 855
    :cond_11
    invoke-interface {p0, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 856
    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 857
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 858
    return-void
.end method

.method public static shuffle(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    sget-object v0, Ljava/util/Collections;->r:Ljava/util/Random;

    .line 465
    .local v0, "rnd":Ljava/util/Random;
    if-nez v0, :cond_b

    .line 466
    new-instance v0, Ljava/util/Random;

    .end local v0    # "rnd":Ljava/util/Random;
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .restart local v0    # "rnd":Ljava/util/Random;
    sput-object v0, Ljava/util/Collections;->r:Ljava/util/Random;

    .line 467
    :cond_b
    invoke-static {p0, v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 468
    return-void
.end method

.method public static shuffle(Ljava/util/List;Ljava/util/Random;)V
    .registers 9
    .param p1, "rnd"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v6, 0x1

    .line 497
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 498
    .local v3, "size":I
    const/4 v4, 0x5

    if-lt v3, v4, :cond_c

    instance-of v4, p0, Ljava/util/RandomAccess;

    if-eqz v4, :cond_1b

    .line 499
    :cond_c
    move v1, v3

    .local v1, "i":I
    :goto_d
    if-le v1, v6, :cond_41

    .line 500
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {p0, v4, v5}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 499
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 502
    .end local v1    # "i":I
    :cond_1b
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 505
    .local v0, "arr":[Ljava/lang/Object;
    move v1, v3

    .restart local v1    # "i":I
    :goto_20
    if-le v1, v6, :cond_2e

    .line 506
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v0, v4, v5}, Ljava/util/Collections;->swap([Ljava/lang/Object;II)V

    .line 505
    add-int/lit8 v1, v1, -0x1

    goto :goto_20

    .line 512
    :cond_2e
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 513
    .local v2, "it":Ljava/util/ListIterator;
    const/4 v1, 0x0

    :goto_33
    array-length v4, v0

    if-ge v1, v4, :cond_41

    .line 514
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 515
    aget-object v4, v0, v1

    invoke-interface {v2, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 518
    .end local v0    # "arr":[Ljava/lang/Object;
    .end local v2    # "it":Ljava/util/ListIterator;
    :cond_41
    return-void
.end method

.method public static singleton(Ljava/lang/Object;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4713
    .local p0, "o":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/Collections$SingletonSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SingletonSet;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static singletonIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 4717
    .local p0, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/Collections$1;

    invoke-direct {v0, p0}, Ljava/util/Collections$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static singletonList(Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4835
    .local p0, "o":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/Collections$SingletonList;

    invoke-direct {v0, p0}, Ljava/util/Collections$SingletonList;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4900
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/Collections$SingletonMap;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SingletonMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static singletonSpliterator(Ljava/lang/Object;)Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4750
    .local p0, "element":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/Collections$2;

    invoke-direct {v0, p0}, Ljava/util/Collections$2;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static sort(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 157
    return-void
.end method

.method public static sort(Ljava/util/List;Ljava/util/Comparator;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v3

    .line 200
    .local v3, "targetSdkVersion":I
    const/16 v4, 0x19

    if-le v3, v4, :cond_10

    .line 201
    invoke-interface {p0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 218
    :cond_f
    return-void

    .line 204
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/util/ArrayList;

    if-ne v4, v5, :cond_26

    move-object v4, p0

    .line 205
    check-cast v4, Ljava/util/ArrayList;

    iget-object v4, v4, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 206
    return-void

    .line 209
    :cond_26
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 210
    .local v0, "a":[Ljava/lang/Object;
    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 211
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 212
    .local v1, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_32
    array-length v4, v0

    if-ge v2, v4, :cond_f

    .line 213
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 214
    aget-object v4, v0, v2

    invoke-interface {v1, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_32
.end method

.method public static swap(Ljava/util/List;II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "j"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;II)V"
        }
    .end annotation

    .prologue
    .line 538
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v0, p0

    .line 539
    .local v0, "l":Ljava/util/List;
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 540
    return-void
.end method

.method private static swap([Ljava/lang/Object;II)V
    .registers 5
    .param p0, "arr"    # [Ljava/lang/Object;
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 546
    aget-object v0, p0, p1

    .line 547
    .local v0, "tmp":Ljava/lang/Object;
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 548
    aput-object v0, p0, p2

    .line 549
    return-void
.end method

.method public static synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2032
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedCollection;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static synchronizedCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .param p1, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2036
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedCollection;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synchronizedList(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2421
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    .line 2422
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;)V

    .line 2421
    :goto_9
    return-object v0

    .line 2423
    :cond_a
    new-instance v0, Ljava/util/Collections$SynchronizedList;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;)V

    goto :goto_9
.end method

.method static synchronizedList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .param p1, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2427
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    .line 2428
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 2427
    :goto_9
    return-object v0

    .line 2429
    :cond_a
    new-instance v0, Ljava/util/Collections$SynchronizedList;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public static synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2592
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static synchronizedNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2883
    .local p0, "m":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedNavigableMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedNavigableMap;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public static synchronizedNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet",
            "<TT;>;)",
            "Ljava/util/NavigableSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2320
    .local p0, "s":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedNavigableSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method

.method public static synchronizedSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2156
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method static synchronizedSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2160
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedSet;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2784
    .local p0, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedSortedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public static synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TT;>;)",
            "Ljava/util/SortedSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2227
    .local p0, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedSortedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public static unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1055
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableCollection;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static unmodifiableList(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1329
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    .line 1330
    new-instance v0, Ljava/util/Collections$UnmodifiableRandomAccessList;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableRandomAccessList;-><init>(Ljava/util/List;)V

    .line 1329
    :goto_9
    return-object v0

    .line 1331
    :cond_a
    new-instance v0, Ljava/util/Collections$UnmodifiableList;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableList;-><init>(Ljava/util/List;)V

    goto :goto_9
.end method

.method public static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1475
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;+TV;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1874
    .local p0, "m":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;+TV;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableNavigableMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableNavigableMap;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public static unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet",
            "<TT;>;)",
            "Ljava/util/NavigableSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1242
    .local p0, "s":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TT;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableNavigableSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method

.method public static unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1160
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<+TT;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1829
    .local p0, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedMap;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public static unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TT;>;)",
            "Ljava/util/SortedSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1193
    .local p0, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableSortedSet;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method static zeroLengthArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 3066
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method
