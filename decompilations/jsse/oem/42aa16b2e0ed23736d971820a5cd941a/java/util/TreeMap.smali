.class public Ljava/util/TreeMap;
.super Ljava/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/NavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TreeMap$EntrySpliterator;,
        Ljava/util/TreeMap$ValueSpliterator;,
        Ljava/util/TreeMap$DescendingKeySpliterator;,
        Ljava/util/TreeMap$KeySpliterator;,
        Ljava/util/TreeMap$TreeMapSpliterator;,
        Ljava/util/TreeMap$TreeMapEntry;,
        Ljava/util/TreeMap$SubMap;,
        Ljava/util/TreeMap$DescendingSubMap;,
        Ljava/util/TreeMap$AscendingSubMap;,
        Ljava/util/TreeMap$NavigableSubMap;,
        Ljava/util/TreeMap$DescendingKeyIterator;,
        Ljava/util/TreeMap$KeyIterator;,
        Ljava/util/TreeMap$ValueIterator;,
        Ljava/util/TreeMap$EntryIterator;,
        Ljava/util/TreeMap$PrivateEntryIterator;,
        Ljava/util/TreeMap$KeySet;,
        Ljava/util/TreeMap$EntrySet;,
        Ljava/util/TreeMap$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o BLACK:Z = true

.field private static final greylist-max-o RED:Z = false

.field private static final greylist-max-o UNBOUNDED:Ljava/lang/Object;

.field private static final whitelist serialVersionUID:J = 0xcc1f63e2d256ae6L


# instance fields
.field private final greylist-max-o comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o descendingMap:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o entrySet:Ljava/util/TreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field private transient greylist-max-o modCount:I

.field private transient greylist-max-o navigableKeySet:Ljava/util/TreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$KeySet<",
            "TK;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o root:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1339
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/TreeMap;->UNBOUNDED:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 148
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 134
    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 150
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 166
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 134
    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 167
    iput-object p1, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 168
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 184
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 134
    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 186
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 187
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/util/SortedMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;)V"
        }
    .end annotation

    .line 198
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 134
    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 199
    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 201
    :try_start_e
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1e} :catch_21
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_1e} :catch_1f

    goto :goto_22

    .line 203
    :catch_1f
    move-exception v0

    goto :goto_23

    .line 202
    :catch_21
    move-exception v0

    .line 204
    :goto_22
    nop

    .line 205
    :goto_23
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 2
    .param p0, "x0"    # Ljava/util/TreeMap;
    .param p1, "x1"    # Ljava/util/TreeMap$TreeMapEntry;

    .line 112
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    return-void
.end method

.method static synthetic blacklist access$100(Ljava/util/TreeMap;)I
    .registers 2
    .param p0, "x0"    # Ljava/util/TreeMap;

    .line 112
    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    return v0
.end method

.method static synthetic blacklist access$200()Ljava/lang/Object;
    .registers 1

    .line 112
    sget-object v0, Ljava/util/TreeMap;->UNBOUNDED:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic blacklist access$300(Ljava/util/TreeMap;)Ljava/util/Comparator;
    .registers 2
    .param p0, "x0"    # Ljava/util/TreeMap;

    .line 112
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic blacklist access$400(Ljava/util/TreeMap;)I
    .registers 2
    .param p0, "x0"    # Ljava/util/TreeMap;

    .line 112
    iget v0, p0, Ljava/util/TreeMap;->size:I

    return v0
.end method

.method static synthetic blacklist access$500(Ljava/util/TreeMap;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 2
    .param p0, "x0"    # Ljava/util/TreeMap;

    .line 112
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    return-object v0
.end method

.method private final greylist-max-o buildFromSorted(IIIILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 24
    .param p1, "level"    # I
    .param p2, "lo"    # I
    .param p3, "hi"    # I
    .param p4, "redLevel"    # I
    .param p6, "str"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/io/ObjectInputStream;",
            "TV;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2575
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local p7, "defaultVal":Ljava/lang/Object;, "TV;"
    move/from16 v0, p1

    move/from16 v9, p2

    move/from16 v10, p3

    const/4 v11, 0x0

    if-ge v10, v9, :cond_a

    return-object v11

    .line 2577
    :cond_a
    add-int v1, v9, v10

    ushr-int/lit8 v12, v1, 0x1

    .line 2579
    .local v12, "mid":I
    const/4 v13, 0x0

    .line 2580
    .local v13, "left":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-ge v9, v12, :cond_25

    .line 2581
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v4, v12, -0x1

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Ljava/util/TreeMap;->buildFromSorted(IIIILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v13

    .line 2587
    :cond_25
    if-eqz p5, :cond_43

    .line 2588
    if-nez p7, :cond_3a

    .line 2589
    invoke-interface/range {p5 .. p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2590
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2591
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 2592
    .local v1, "value":Ljava/lang/Object;, "TV;"
    move-object v14, v1

    move-object v15, v2

    goto :goto_52

    .line 2593
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_3a
    invoke-interface/range {p5 .. p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2594
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    move-object/from16 v1, p7

    move-object v14, v1

    move-object v15, v2

    .restart local v1    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_52

    .line 2597
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_43
    invoke-virtual/range {p6 .. p6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 2598
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    if-eqz p7, :cond_4c

    move-object/from16 v1, p7

    goto :goto_50

    :cond_4c
    invoke-virtual/range {p6 .. p6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    :goto_50
    move-object v14, v1

    move-object v15, v2

    .line 2601
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .local v14, "value":Ljava/lang/Object;, "TV;"
    .local v15, "key":Ljava/lang/Object;, "TK;"
    :goto_52
    new-instance v1, Ljava/util/TreeMap$TreeMapEntry;

    invoke-direct {v1, v15, v14, v11}, Ljava/util/TreeMap$TreeMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/TreeMap$TreeMapEntry;)V

    move-object v11, v1

    .line 2604
    .local v11, "middle":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move/from16 v8, p4

    if-ne v0, v8, :cond_5f

    .line 2605
    const/4 v1, 0x0

    iput-boolean v1, v11, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    .line 2607
    :cond_5f
    if-eqz v13, :cond_65

    .line 2608
    iput-object v13, v11, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2609
    iput-object v11, v13, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2612
    :cond_65
    if-ge v12, v10, :cond_7f

    .line 2613
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v12, 0x1

    move-object/from16 v1, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Ljava/util/TreeMap;->buildFromSorted(IIIILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    .line 2615
    .local v1, "right":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iput-object v1, v11, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2616
    iput-object v11, v1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2619
    .end local v1    # "right":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_7f
    return-object v11
.end method

.method private greylist-max-o buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    .registers 13
    .param p1, "size"    # I
    .param p3, "str"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/io/ObjectInputStream;",
            "TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2537
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local p4, "defaultVal":Ljava/lang/Object;, "TV;"
    iput p1, p0, Ljava/util/TreeMap;->size:I

    .line 2538
    add-int/lit8 v3, p1, -0x1

    invoke-static {p1}, Ljava/util/TreeMap;->computeRedLevel(I)I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap;->buildFromSorted(IIIILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 2540
    return-void
.end method

.method private static greylist-max-o colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 2230
    .local p0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_6

    :cond_4
    iget-boolean v0, p0, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    :goto_6
    return v0
.end method

.method private static greylist-max-o computeRedLevel(I)I
    .registers 4
    .param p0, "sz"    # I

    .line 2632
    const/4 v0, 0x0

    .line 2633
    .local v0, "level":I
    add-int/lit8 v1, p0, -0x1

    .local v1, "m":I
    :goto_3
    if-ltz v1, :cond_c

    .line 2634
    add-int/lit8 v0, v0, 0x1

    .line 2633
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v1, v2, -0x1

    goto :goto_3

    .line 2635
    .end local v1    # "m":I
    :cond_c
    return v0
.end method

.method private greylist-max-o deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2332
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 2333
    iget v0, p0, Ljava/util/TreeMap;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 2337
    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_20

    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_20

    .line 2338
    invoke-static {p1}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2339
    .local v0, "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iput-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    .line 2340
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    iput-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 2341
    move-object p1, v0

    .line 2345
    .end local v0    # "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_20
    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_27

    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_29

    :cond_27
    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2347
    .local v0, "replacement":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_29
    const/4 v2, 0x0

    if-eqz v0, :cond_54

    .line 2349
    iget-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v3, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2350
    iget-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v3, :cond_37

    .line 2351
    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_46

    .line 2352
    :cond_37
    iget-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v3, v3, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne p1, v3, :cond_42

    .line 2353
    iget-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v3, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_46

    .line 2355
    :cond_42
    iget-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v3, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2358
    :goto_46
    iput-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2361
    iget-boolean v2, p1, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    if-ne v2, v1, :cond_7d

    .line 2362
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->fixAfterDeletion(Ljava/util/TreeMap$TreeMapEntry;)V

    goto :goto_7d

    .line 2363
    :cond_54
    iget-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v3, :cond_5b

    .line 2364
    iput-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_7d

    .line 2366
    :cond_5b
    iget-boolean v3, p1, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    if-ne v3, v1, :cond_62

    .line 2367
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->fixAfterDeletion(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2369
    :cond_62
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_7d

    .line 2370
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne p1, v1, :cond_71

    .line 2371
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_7b

    .line 2372
    :cond_71
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne p1, v1, :cond_7b

    .line 2373
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2374
    :cond_7b
    :goto_7b
    iput-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2377
    :cond_7d
    :goto_7d
    return-void
.end method

.method static greylist-max-o exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1311
    .local p0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    .line 1312
    :cond_4
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    .line 1311
    :goto_9
    return-object v0
.end method

.method private greylist-max-o fixAfterDeletion(Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2381
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "x":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_0
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_122

    invoke-static {p1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v0

    if-ne v0, v1, :cond_122

    .line 2382
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_9c

    .line 2383
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2385
    .local v0, "sib":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 2386
    invoke-static {v0, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2387
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2388
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2389
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2392
    :cond_3d
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v3

    if-ne v3, v1, :cond_59

    .line 2393
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v3

    if-ne v3, v1, :cond_59

    .line 2394
    invoke-static {v0, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2395
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    goto :goto_9a

    .line 2397
    :cond_59
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v3

    if-ne v3, v1, :cond_78

    .line 2398
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2399
    invoke-static {v0, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2400
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2401
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2403
    :cond_78
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v2

    invoke-static {v0, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2404
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2405
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2406
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2407
    iget-object p1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 2409
    .end local v0    # "sib":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_9a
    goto/16 :goto_0

    .line 2410
    :cond_9c
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2412
    .restart local v0    # "sib":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v3

    if-nez v3, :cond_c3

    .line 2413
    invoke-static {v0, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2414
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2415
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2416
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2419
    :cond_c3
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v3

    if-ne v3, v1, :cond_df

    .line 2420
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v3

    if-ne v3, v1, :cond_df

    .line 2421
    invoke-static {v0, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2422
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    goto :goto_120

    .line 2424
    :cond_df
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v3

    if-ne v3, v1, :cond_fe

    .line 2425
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2426
    invoke-static {v0, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2427
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2428
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2430
    :cond_fe
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v2

    invoke-static {v0, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2431
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2432
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2433
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2434
    iget-object p1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 2436
    .end local v0    # "sib":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_120
    goto/16 :goto_0

    .line 2439
    :cond_122
    invoke-static {p1, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2440
    return-void
.end method

.method private greylist-max-o fixAfterInsertion(Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2288
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "x":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v0, 0x0

    iput-boolean v0, p1, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    .line 2290
    :goto_3
    const/4 v1, 0x1

    if-eqz p1, :cond_e1

    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    if-eq p1, v2, :cond_e1

    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-boolean v2, v2, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    if-nez v2, :cond_e1

    .line 2291
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    if-ne v2, v3, :cond_81

    .line 2292
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    .line 2293
    .local v2, "y":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v2}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 2294
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2295
    invoke-static {v2, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2296
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2297
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    goto :goto_80

    .line 2299
    :cond_52
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    if-ne p1, v3, :cond_63

    .line 2300
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    .line 2301
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2303
    :cond_63
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2304
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2305
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2307
    .end local v2    # "y":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_80
    goto :goto_3

    .line 2308
    :cond_81
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    .line 2309
    .restart local v2    # "y":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v2}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v3

    if-nez v3, :cond_b1

    .line 2310
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2311
    invoke-static {v2, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2312
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2313
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    goto :goto_df

    .line 2315
    :cond_b1
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    if-ne p1, v3, :cond_c2

    .line 2316
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    .line 2317
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2319
    :cond_c2
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2320
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2321
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2323
    .end local v2    # "y":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_df
    goto/16 :goto_3

    .line 2325
    :cond_e1
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    iput-boolean v1, v0, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    .line 2326
    return-void
.end method

.method static greylist-max-o key(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;*>;)TK;"
        }
    .end annotation

    .line 1327
    .local p0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;*>;"
    if-eqz p0, :cond_5

    .line 1329
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    return-object v0

    .line 1328
    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method static greylist-max-o keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)TK;"
        }
    .end annotation

    .line 1319
    .local p0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    :goto_6
    return-object v0
.end method

.method static greylist-max-o keySpliteratorFor(Ljava/util/NavigableMap;)Ljava/util/Spliterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;*>;)",
            "Ljava/util/Spliterator<",
            "TK;>;"
        }
    .end annotation

    .line 2648
    .local p0, "m":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;*>;"
    instance-of v0, p0, Ljava/util/TreeMap;

    if-eqz v0, :cond_c

    .line 2649
    move-object v0, p0

    check-cast v0, Ljava/util/TreeMap;

    .line 2651
    .local v0, "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySpliterator()Ljava/util/Spliterator;

    move-result-object v1

    return-object v1

    .line 2653
    .end local v0    # "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;Ljava/lang/Object;>;"
    :cond_c
    instance-of v0, p0, Ljava/util/TreeMap$DescendingSubMap;

    if-eqz v0, :cond_1f

    .line 2654
    move-object v0, p0

    check-cast v0, Ljava/util/TreeMap$DescendingSubMap;

    .line 2656
    .local v0, "dm":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;*>;"
    iget-object v1, v0, Ljava/util/TreeMap$DescendingSubMap;->m:Ljava/util/TreeMap;

    .line 2657
    .local v1, "tm":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;*>;"
    iget-object v2, v1, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    if-ne v0, v2, :cond_1f

    .line 2658
    move-object v2, v1

    .line 2660
    .local v2, "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;Ljava/lang/Object;>;"
    invoke-virtual {v2}, Ljava/util/TreeMap;->descendingKeySpliterator()Ljava/util/Spliterator;

    move-result-object v3

    return-object v3

    .line 2663
    .end local v0    # "dm":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;*>;"
    .end local v1    # "tm":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;*>;"
    .end local v2    # "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;Ljava/lang/Object;>;"
    :cond_1f
    move-object v0, p0

    check-cast v0, Ljava/util/TreeMap$NavigableSubMap;

    .line 2665
    .local v0, "sm":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;*>;"
    invoke-virtual {v0}, Ljava/util/TreeMap$NavigableSubMap;->keySpliterator()Ljava/util/Spliterator;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2243
    .local p0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    :goto_6
    return-object v0
.end method

.method private static greylist-max-o parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2234
    .local p0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    :goto_6
    return-object v0
.end method

.method static greylist-max-o predecessor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2201
    .local p0, "t":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez p0, :cond_4

    .line 2202
    const/4 v0, 0x0

    return-object v0

    .line 2203
    :cond_4
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_12

    .line 2204
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2205
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_a
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_11

    .line 2206
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_a

    .line 2207
    :cond_11
    return-object v0

    .line 2209
    .end local v0    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_12
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2210
    .restart local v0    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v1, p0

    .line 2211
    .local v1, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_15
    if-eqz v0, :cond_1f

    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v1, v2, :cond_1f

    .line 2212
    move-object v1, v0

    .line 2213
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_15

    .line 2215
    :cond_1f
    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2479
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2482
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 2484
    .local v0, "size":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v1}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V

    .line 2485
    return-void
.end method

.method private static greylist-max-o rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2247
    .local p0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    :goto_6
    return-object v0
.end method

.method private greylist-max-o rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2252
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz p1, :cond_2e

    .line 2253
    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2254
    .local v0, "r":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2255
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_10

    .line 2256
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    iput-object p1, v1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2257
    :cond_10
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2258
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v1, :cond_1b

    .line 2259
    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_2a

    .line 2260
    :cond_1b
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v1, p1, :cond_26

    .line 2261
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_2a

    .line 2263
    :cond_26
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2264
    :goto_2a
    iput-object p1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2265
    iput-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2267
    .end local v0    # "r":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2e
    return-void
.end method

.method private greylist-max-o rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2271
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz p1, :cond_2e

    .line 2272
    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2273
    .local v0, "l":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2274
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_10

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    iput-object p1, v1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2275
    :cond_10
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2276
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v1, :cond_1b

    .line 2277
    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_2a

    .line 2278
    :cond_1b
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v1, p1, :cond_26

    .line 2279
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_2a

    .line 2280
    :cond_26
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2281
    :goto_2a
    iput-object p1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2282
    iput-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2284
    .end local v0    # "l":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2e
    return-void
.end method

.method private static greylist-max-o setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V
    .registers 2
    .param p1, "c"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    .line 2238
    .local p0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz p0, :cond_4

    .line 2239
    iput-boolean p1, p0, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    .line 2240
    :cond_4
    return-void
.end method

.method static greylist-max-o successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2179
    .local p0, "t":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez p0, :cond_4

    .line 2180
    const/4 v0, 0x0

    return-object v0

    .line 2181
    :cond_4
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_12

    .line 2182
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2183
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_a
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_11

    .line 2184
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_a

    .line 2185
    :cond_11
    return-object v0

    .line 2187
    .end local v0    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_12
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2188
    .restart local v0    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v1, p0

    .line 2189
    .local v1, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_15
    if-eqz v0, :cond_1f

    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v1, v2, :cond_1f

    .line 2190
    move-object v1, v0

    .line 2191
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_15

    .line 2193
    :cond_1f
    return-object v0
.end method

.method static final greylist-max-o valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .line 1304
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

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2459
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2462
    iget v0, p0, Ljava/util/TreeMap;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2465
    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2466
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2467
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2468
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2469
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_10

    .line 2470
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_2b
    return-void
.end method


# virtual methods
.method greylist-max-o addAllForTreeSet(Ljava/util/SortedSet;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "+TK;>;TV;)V"
        }
    .end annotation

    .line 2496
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TK;>;"
    .local p2, "defaultVal":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p2}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_10

    .line 2498
    :catch_d
    move-exception v0

    goto :goto_11

    .line 2497
    :catch_f
    move-exception v0

    .line 2499
    :goto_10
    nop

    .line 2500
    :goto_11
    return-void
.end method

.method public whitelist core-platform-api test-api ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 745
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getCeilingEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 756
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getCeilingEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api clear()V
    .registers 2

    .line 618
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 619
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 621
    return-void
.end method

.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 5

    .line 632
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_28

    .line 635
    .local v0, "clone":Ljava/util/TreeMap;, "Ljava/util/TreeMap<**>;"
    nop

    .line 638
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 639
    const/4 v2, 0x0

    iput v2, v0, Ljava/util/TreeMap;->size:I

    .line 640
    iput v2, v0, Ljava/util/TreeMap;->modCount:I

    .line 641
    iput-object v1, v0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    .line 642
    iput-object v1, v0, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    .line 643
    iput-object v1, v0, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    .line 647
    :try_start_15
    iget v2, p0, Ljava/util/TreeMap;->size:I

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1, v1}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_22} :catch_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_22} :catch_23

    goto :goto_26

    .line 649
    :catch_23
    move-exception v1

    goto :goto_27

    .line 648
    :catch_25
    move-exception v1

    .line 650
    :goto_26
    nop

    .line 652
    :goto_27
    return-object v0

    .line 633
    .end local v0    # "clone":Ljava/util/TreeMap;, "Ljava/util/TreeMap<**>;"
    :catch_28
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 284
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method final greylist-max-o compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "k1"    # Ljava/lang/Object;
    .param p2, "k2"    # Ljava/lang/Object;

    .line 1295
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_10

    .line 1296
    :cond_c
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 1295
    :goto_10
    return v0
.end method

.method public whitelist core-platform-api test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 233
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist core-platform-api test-api containsValue(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 250
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_4
    if-eqz v0, :cond_15

    .line 251
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    invoke-static {p1, v1}, Ljava/util/TreeMap;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 252
    const/4 v1, 0x1

    return v1

    .line 250
    :cond_10
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    goto :goto_4

    .line 253
    .end local v0    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o descendingKeyIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1115
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$DescendingKeyIterator;

    invoke-virtual {p0}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/TreeMap$DescendingKeyIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api descendingKeySet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 833
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o descendingKeySpliterator()Ljava/util/Spliterator;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TK;>;"
        }
    .end annotation

    .line 2673
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    new-instance v7, Ljava/util/TreeMap$DescendingKeySpliterator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$DescendingKeySpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    return-object v7
.end method

.method public whitelist core-platform-api test-api descendingMap()Ljava/util/NavigableMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 897
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    .line 898
    .local v0, "km":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    if-eqz v0, :cond_6

    move-object v9, v0

    goto :goto_15

    .line 899
    :cond_6
    new-instance v9, Ljava/util/TreeMap$DescendingSubMap;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/TreeMap$DescendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    iput-object v9, p0, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    .line 898
    :goto_15
    return-object v9
.end method

.method public whitelist core-platform-api test-api entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 889
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    .line 890
    .local v0, "es":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_d

    :cond_6
    new-instance v1, Ljava/util/TreeMap$EntrySet;

    invoke-direct {v1, p0}, Ljava/util/TreeMap$EntrySet;-><init>(Ljava/util/TreeMap;)V

    iput-object v1, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    :goto_d
    return-object v1
.end method

.method public whitelist core-platform-api test-api firstEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 661
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api firstKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 291
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->key(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 723
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getFloorEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 734
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getFloorEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 1003
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 1005
    .local v0, "expectedModCount":I
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    .local v1, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_9
    if-eqz v1, :cond_21

    .line 1006
    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v3, v1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1008
    iget v2, p0, Ljava/util/TreeMap;->modCount:I

    if-ne v0, v2, :cond_1b

    .line 1005
    invoke-static {v1}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    goto :goto_9

    .line 1009
    :cond_1b
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1012
    .end local v1    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_21
    return-void
.end method

.method public whitelist core-platform-api test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 279
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 280
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    :cond_8
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    :goto_a
    return-object v1
.end method

.method final greylist-max-o getCeilingEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 396
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 397
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_2c

    .line 398
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 399
    .local v1, "cmp":I
    if-gez v1, :cond_14

    .line 400
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_13

    .line 401
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1c

    .line 403
    :cond_13
    return-object v0

    .line 404
    :cond_14
    if-lez v1, :cond_2b

    .line 405
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_1d

    .line 406
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 418
    .end local v1    # "cmp":I
    :goto_1c
    goto :goto_2

    .line 408
    .restart local v1    # "cmp":I
    :cond_1d
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 409
    .local v2, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v3, v0

    .line 410
    .local v3, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_20
    if-eqz v2, :cond_2a

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v3, v4, :cond_2a

    .line 411
    move-object v3, v2

    .line 412
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_20

    .line 414
    :cond_2a
    return-object v2

    .line 417
    .end local v2    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v3    # "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2b
    return-object v0

    .line 419
    .end local v1    # "cmp":I
    :cond_2c
    const/4 v1, 0x0

    return-object v1
.end method

.method final greylist-max-o getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 345
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_9

    .line 346
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntryUsingComparator(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0

    .line 347
    :cond_9
    const/4 v0, 0x0

    if-eqz p1, :cond_25

    .line 350
    move-object v1, p1

    check-cast v1, Ljava/lang/Comparable;

    .line 351
    .local v1, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 352
    .local v2, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_11
    if-eqz v2, :cond_24

    .line 353
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    .line 354
    .local v3, "cmp":I
    if-gez v3, :cond_1e

    .line 355
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_22

    .line 356
    :cond_1e
    if-lez v3, :cond_23

    .line 357
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 360
    .end local v3    # "cmp":I
    :goto_22
    goto :goto_11

    .line 359
    .restart local v3    # "cmp":I
    :cond_23
    return-object v2

    .line 361
    .end local v3    # "cmp":I
    :cond_24
    return-object v0

    .line 348
    .end local v1    # "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .end local v2    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_25
    throw v0
.end method

.method final greylist-max-o getEntryUsingComparator(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 372
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    move-object v0, p1

    .line 373
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 374
    .local v1, "cpr":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-eqz v1, :cond_1a

    .line 375
    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 376
    .local v2, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_7
    if-eqz v2, :cond_1a

    .line 377
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v1, v0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 378
    .local v3, "cmp":I
    if-gez v3, :cond_14

    .line 379
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_18

    .line 380
    :cond_14
    if-lez v3, :cond_19

    .line 381
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 384
    .end local v3    # "cmp":I
    :goto_18
    goto :goto_7

    .line 383
    .restart local v3    # "cmp":I
    :cond_19
    return-object v2

    .line 386
    .end local v2    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v3    # "cmp":I
    :cond_1a
    const/4 v2, 0x0

    return-object v2
.end method

.method final greylist-max-o getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2156
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 2157
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_b

    .line 2158
    :goto_4
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_b

    .line 2159
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_4

    .line 2160
    :cond_b
    return-object v0
.end method

.method final greylist-max-o getFloorEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 428
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 429
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_2c

    .line 430
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 431
    .local v1, "cmp":I
    if-lez v1, :cond_14

    .line 432
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_13

    .line 433
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1c

    .line 435
    :cond_13
    return-object v0

    .line 436
    :cond_14
    if-gez v1, :cond_2b

    .line 437
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_1d

    .line 438
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 451
    .end local v1    # "cmp":I
    :goto_1c
    goto :goto_2

    .line 440
    .restart local v1    # "cmp":I
    :cond_1d
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 441
    .local v2, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v3, v0

    .line 442
    .local v3, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_20
    if-eqz v2, :cond_2a

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v3, v4, :cond_2a

    .line 443
    move-object v3, v2

    .line 444
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_20

    .line 446
    :cond_2a
    return-object v2

    .line 449
    .end local v2    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v3    # "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2b
    return-object v0

    .line 452
    .end local v1    # "cmp":I
    :cond_2c
    const/4 v1, 0x0

    return-object v1
.end method

.method final greylist-max-o getHigherEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 462
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 463
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_29

    .line 464
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 465
    .local v1, "cmp":I
    if-gez v1, :cond_14

    .line 466
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_13

    .line 467
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1a

    .line 469
    :cond_13
    return-object v0

    .line 471
    :cond_14
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_1b

    .line 472
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 483
    .end local v1    # "cmp":I
    :goto_1a
    goto :goto_2

    .line 474
    .restart local v1    # "cmp":I
    :cond_1b
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 475
    .local v2, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v3, v0

    .line 476
    .local v3, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_1e
    if-eqz v2, :cond_28

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v3, v4, :cond_28

    .line 477
    move-object v3, v2

    .line 478
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1e

    .line 480
    :cond_28
    return-object v2

    .line 484
    .end local v1    # "cmp":I
    .end local v2    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v3    # "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_29
    const/4 v1, 0x0

    return-object v1
.end method

.method final greylist-max-o getLastEntry()Ljava/util/TreeMap$TreeMapEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2168
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 2169
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_b

    .line 2170
    :goto_4
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_b

    .line 2171
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_4

    .line 2172
    :cond_b
    return-object v0
.end method

.method final greylist-max-o getLowerEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 493
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 494
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_29

    .line 495
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 496
    .local v1, "cmp":I
    if-lez v1, :cond_14

    .line 497
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_13

    .line 498
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1a

    .line 500
    :cond_13
    return-object v0

    .line 502
    :cond_14
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_1b

    .line 503
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 514
    .end local v1    # "cmp":I
    :goto_1a
    goto :goto_2

    .line 505
    .restart local v1    # "cmp":I
    :cond_1b
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 506
    .local v2, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v3, v0

    .line 507
    .local v3, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_1e
    if-eqz v2, :cond_28

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v3, v4, :cond_28

    .line 508
    move-object v3, v2

    .line 509
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1e

    .line 511
    :cond_28
    return-object v2

    .line 515
    .end local v1    # "cmp":I
    .end local v2    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v3    # "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_29
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist core-platform-api test-api headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 12
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 928
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v8, Ljava/util/TreeMap$AscendingSubMap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v8
.end method

.method public whitelist core-platform-api test-api headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 966
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 767
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getHigherEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 778
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getHigherEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o keyIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1111
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$KeyIterator;

    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/TreeMap$KeyIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 818
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o keySpliterator()Ljava/util/Spliterator;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TK;>;"
        }
    .end annotation

    .line 2669
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    new-instance v7, Ljava/util/TreeMap$KeySpliterator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$KeySpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    return-object v7
.end method

.method public whitelist core-platform-api test-api lastEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 668
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api lastKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 298
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->key(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 701
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getLowerEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 712
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getLowerEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api navigableKeySet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 825
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    .line 826
    .local v0, "nks":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TK;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_d

    :cond_6
    new-instance v1, Ljava/util/TreeMap$KeySet;

    invoke-direct {v1, p0}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/NavigableMap;)V

    iput-object v1, p0, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    :goto_d
    return-object v1
.end method

.method public whitelist core-platform-api test-api pollFirstEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 675
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 676
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 677
    .local v1, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_d

    .line 678
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 679
    :cond_d
    return-object v1
.end method

.method public whitelist core-platform-api test-api pollLastEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 686
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 687
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 688
    .local v1, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_d

    .line 689
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 690
    :cond_d
    return-object v1
.end method

.method public whitelist core-platform-api test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 537
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 538
    .local v0, "t":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_18

    .line 539
    invoke-virtual {p0, p1, p1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 541
    new-instance v3, Ljava/util/TreeMap$TreeMapEntry;

    invoke-direct {v3, p1, p2, v2}, Ljava/util/TreeMap$TreeMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/TreeMap$TreeMapEntry;)V

    iput-object v3, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 542
    iput v1, p0, Ljava/util/TreeMap;->size:I

    .line 543
    iget v3, p0, Ljava/util/TreeMap;->modCount:I

    add-int/2addr v3, v1

    iput v3, p0, Ljava/util/TreeMap;->modCount:I

    .line 544
    return-object v2

    .line 549
    :cond_18
    iget-object v3, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 550
    .local v3, "cpr":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-eqz v3, :cond_34

    .line 552
    :cond_1c
    move-object v4, v0

    .line 553
    .local v4, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v5, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v3, p1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 554
    .local v5, "cmp":I
    if-gez v5, :cond_28

    .line 555
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_2c

    .line 556
    :cond_28
    if-lez v5, :cond_2f

    .line 557
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 560
    :goto_2c
    if-nez v0, :cond_1c

    goto :goto_4d

    .line 559
    :cond_2f
    invoke-virtual {v0, p2}, Ljava/util/TreeMap$TreeMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 563
    .end local v4    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v5    # "cmp":I
    :cond_34
    if-eqz p1, :cond_6c

    .line 566
    move-object v4, p1

    check-cast v4, Ljava/lang/Comparable;

    .line 568
    .local v4, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_39
    move-object v5, v0

    .line 569
    .local v5, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v6, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v4, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    .line 570
    .local v6, "cmp":I
    if-gez v6, :cond_45

    .line 571
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_49

    .line 572
    :cond_45
    if-lez v6, :cond_67

    .line 573
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 576
    :goto_49
    if-nez v0, :cond_39

    move-object v4, v5

    move v5, v6

    .line 578
    .end local v6    # "cmp":I
    .local v4, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local v5, "cmp":I
    :goto_4d
    new-instance v6, Ljava/util/TreeMap$TreeMapEntry;

    invoke-direct {v6, p1, p2, v4}, Ljava/util/TreeMap$TreeMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 579
    .local v6, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-gez v5, :cond_57

    .line 580
    iput-object v6, v4, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_59

    .line 582
    :cond_57
    iput-object v6, v4, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 583
    :goto_59
    invoke-direct {p0, v6}, Ljava/util/TreeMap;->fixAfterInsertion(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 584
    iget v7, p0, Ljava/util/TreeMap;->size:I

    add-int/2addr v7, v1

    iput v7, p0, Ljava/util/TreeMap;->size:I

    .line 585
    iget v7, p0, Ljava/util/TreeMap;->modCount:I

    add-int/2addr v7, v1

    iput v7, p0, Ljava/util/TreeMap;->modCount:I

    .line 586
    return-object v2

    .line 575
    .local v4, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local v5, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local v6, "cmp":I
    :cond_67
    invoke-virtual {v0, p2}, Ljava/util/TreeMap$TreeMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 564
    .end local v4    # "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .end local v5    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v6    # "cmp":I
    :cond_6c
    throw v2
.end method

.method public whitelist core-platform-api test-api putAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 314
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 315
    .local v0, "mapSize":I
    iget v1, p0, Ljava/util/TreeMap;->size:I

    if-nez v1, :cond_39

    if-eqz v0, :cond_39

    instance-of v1, p1, Ljava/util/SortedMap;

    if-eqz v1, :cond_39

    .line 316
    move-object v1, p1

    check-cast v1, Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    .line 317
    .local v1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    iget-object v2, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-eq v1, v2, :cond_21

    if-eqz v1, :cond_39

    invoke-interface {v1, v2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 318
    :cond_21
    iget v2, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/TreeMap;->modCount:I

    .line 320
    :try_start_27
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v3}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_33} :catch_36
    .catch Ljava/lang/ClassNotFoundException; {:try_start_27 .. :try_end_33} :catch_34

    goto :goto_37

    .line 323
    :catch_34
    move-exception v2

    goto :goto_38

    .line 322
    :catch_36
    move-exception v2

    .line 324
    :goto_37
    nop

    .line 325
    :goto_38
    return-void

    .line 328
    .end local v1    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    :cond_39
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 329
    return-void
.end method

.method greylist-max-o readTreeSet(ILjava/io/ObjectInputStream;Ljava/lang/Object;)V
    .registers 5
    .param p1, "size"    # I
    .param p2, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/ObjectInputStream;",
            "TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2490
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p3, "defaultVal":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V

    .line 2491
    return-void
.end method

.method public whitelist core-platform-api test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 604
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 605
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez v0, :cond_8

    .line 606
    const/4 v1, 0x0

    return-object v1

    .line 608
    :cond_8
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 609
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 610
    return-object v1
.end method

.method public whitelist core-platform-api test-api replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 992
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 993
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_b

    .line 994
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 995
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 996
    return-object v1

    .line 998
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist core-platform-api test-api replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 982
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 983
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_12

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 984
    iput-object p3, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 985
    const/4 v1, 0x1

    return v1

    .line 987
    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist core-platform-api test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 1016
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 1019
    .local v0, "expectedModCount":I
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    .local v1, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_9
    if-eqz v1, :cond_24

    .line 1020
    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v3, v1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 1022
    iget v2, p0, Ljava/util/TreeMap;->modCount:I

    if-ne v0, v2, :cond_1e

    .line 1019
    invoke-static {v1}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    goto :goto_9

    .line 1023
    :cond_1e
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1026
    .end local v1    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_24
    return-void
.end method

.method public whitelist core-platform-api test-api size()I
    .registers 2

    .line 216
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap;->size:I

    return v0
.end method

.method public whitelist core-platform-api test-api subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 14
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 914
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v8, Ljava/util/TreeMap$AscendingSubMap;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v8
.end method

.method public whitelist core-platform-api test-api subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 955
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 12
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 942
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    new-instance v8, Ljava/util/TreeMap$AscendingSubMap;

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v8
.end method

.method public whitelist core-platform-api test-api tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 977
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 858
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->values:Ljava/util/Collection;

    .line 859
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_c

    .line 860
    new-instance v1, Ljava/util/TreeMap$Values;

    invoke-direct {v1, p0}, Ljava/util/TreeMap$Values;-><init>(Ljava/util/TreeMap;)V

    move-object v0, v1

    .line 861
    iput-object v0, p0, Ljava/util/TreeMap;->values:Ljava/util/Collection;

    .line 863
    :cond_c
    return-object v0
.end method
