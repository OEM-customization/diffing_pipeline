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
        Ljava/util/TreeMap$AscendingSubMap;,
        Ljava/util/TreeMap$DescendingKeyIterator;,
        Ljava/util/TreeMap$DescendingKeySpliterator;,
        Ljava/util/TreeMap$DescendingSubMap;,
        Ljava/util/TreeMap$EntryIterator;,
        Ljava/util/TreeMap$EntrySet;,
        Ljava/util/TreeMap$EntrySpliterator;,
        Ljava/util/TreeMap$KeyIterator;,
        Ljava/util/TreeMap$KeySet;,
        Ljava/util/TreeMap$KeySpliterator;,
        Ljava/util/TreeMap$NavigableSubMap;,
        Ljava/util/TreeMap$PrivateEntryIterator;,
        Ljava/util/TreeMap$SubMap;,
        Ljava/util/TreeMap$TreeMapEntry;,
        Ljava/util/TreeMap$TreeMapSpliterator;,
        Ljava/util/TreeMap$ValueIterator;,
        Ljava/util/TreeMap$ValueSpliterator;,
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
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final BLACK:Z = true

.field private static final RED:Z = false

.field private static final UNBOUNDED:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0xcc1f63e2d256ae6L


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private transient descendingMap:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/TreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field private transient modCount:I

.field private transient navigableKeySet:Ljava/util/TreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$KeySet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient root:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient size:I


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .registers 1

    sget-object v0, Ljava/util/TreeMap;->UNBOUNDED:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/TreeMap;)Ljava/util/Comparator;
    .registers 2
    .param p0, "-this"    # Ljava/util/TreeMap;

    .prologue
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic -get2(Ljava/util/TreeMap;)I
    .registers 2
    .param p0, "-this"    # Ljava/util/TreeMap;

    .prologue
    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    return v0
.end method

.method static synthetic -get3(Ljava/util/TreeMap;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 2
    .param p0, "-this"    # Ljava/util/TreeMap;

    .prologue
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    return-object v0
.end method

.method static synthetic -get4(Ljava/util/TreeMap;)I
    .registers 2
    .param p0, "-this"    # Ljava/util/TreeMap;

    .prologue
    iget v0, p0, Ljava/util/TreeMap;->size:I

    return v0
.end method

.method static synthetic -wrap0(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 2
    .param p0, "-this"    # Ljava/util/TreeMap;
    .param p1, "p"    # Ljava/util/TreeMap$TreeMapEntry;

    .prologue
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1365
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/TreeMap;->UNBOUNDED:Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 148
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 129
    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 134
    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v0, 0x0

    .line 166
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 129
    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 134
    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 167
    iput-object p1, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 168
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/4 v0, 0x0

    .line 184
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 129
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

.method public constructor <init>(Ljava/util/SortedMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    const/4 v2, 0x0

    .line 198
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 129
    iput v2, p0, Ljava/util/TreeMap;->size:I

    .line 134
    iput v2, p0, Ljava/util/TreeMap;->modCount:I

    .line 199
    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v2

    iput-object v2, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 201
    :try_start_e
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1f} :catch_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_1f} :catch_22

    .line 205
    :goto_1f
    return-void

    .line 202
    :catch_20
    move-exception v0

    .local v0, "cannotHappen":Ljava/io/IOException;
    goto :goto_1f

    .line 203
    .end local v0    # "cannotHappen":Ljava/io/IOException;
    :catch_22
    move-exception v1

    .local v1, "cannotHappen":Ljava/lang/ClassNotFoundException;
    goto :goto_1f
.end method

.method private final buildFromSorted(IIIILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 25
    .param p1, "level"    # I
    .param p2, "lo"    # I
    .param p3, "hi"    # I
    .param p4, "redLevel"    # I
    .param p6, "str"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/io/ObjectInputStream;",
            "TV;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2601
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local p7, "defaultVal":Ljava/lang/Object;, "TV;"
    move/from16 v0, p3

    move/from16 v1, p2

    if-ge v0, v1, :cond_8

    const/4 v2, 0x0

    return-object v2

    .line 2603
    :cond_8
    add-int v2, p2, p3

    ushr-int/lit8 v13, v2, 0x1

    .line 2605
    .local v13, "mid":I
    const/4 v12, 0x0

    .line 2606
    .local v12, "left":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move/from16 v0, p2

    if-ge v0, v13, :cond_25

    .line 2607
    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v5, v13, -0x1

    move-object/from16 v2, p0

    move/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Ljava/util/TreeMap;->buildFromSorted(IIIILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v12

    .line 2613
    .end local v12    # "left":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_25
    if-eqz p5, :cond_72

    .line 2614
    if-nez p7, :cond_6b

    .line 2615
    invoke-interface/range {p5 .. p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 2616
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    .line 2617
    .local v11, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    .line 2627
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .local v16, "value":Ljava/lang/Object;, "TV;"
    :goto_37
    new-instance v14, Ljava/util/TreeMap$TreeMapEntry;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-direct {v14, v11, v0, v2}, Ljava/util/TreeMap$TreeMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2630
    .local v14, "middle":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move/from16 v0, p1

    move/from16 v1, p4

    if-ne v0, v1, :cond_48

    .line 2631
    const/4 v2, 0x0

    iput-boolean v2, v14, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    .line 2633
    :cond_48
    if-eqz v12, :cond_4e

    .line 2634
    iput-object v12, v14, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2635
    iput-object v14, v12, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2638
    :cond_4e
    move/from16 v0, p3

    if-ge v13, v0, :cond_6a

    .line 2639
    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, v13, 0x1

    move-object/from16 v2, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Ljava/util/TreeMap;->buildFromSorted(IIIILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v15

    .line 2641
    .local v15, "right":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iput-object v15, v14, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2642
    iput-object v14, v15, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2645
    .end local v15    # "right":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_6a
    return-object v14

    .line 2619
    .end local v11    # "key":Ljava/lang/Object;, "TK;"
    .end local v14    # "middle":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v16    # "value":Ljava/lang/Object;, "TV;"
    :cond_6b
    invoke-interface/range {p5 .. p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 2620
    .restart local v11    # "key":Ljava/lang/Object;, "TK;"
    move-object/from16 v16, p7

    .restart local v16    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_37

    .line 2623
    .end local v11    # "key":Ljava/lang/Object;, "TK;"
    .end local v16    # "value":Ljava/lang/Object;, "TV;"
    :cond_72
    invoke-virtual/range {p6 .. p6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v11

    .line 2624
    .restart local v11    # "key":Ljava/lang/Object;, "TK;"
    if-eqz p7, :cond_7b

    move-object/from16 v16, p7

    .restart local v16    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_37

    .end local v16    # "value":Ljava/lang/Object;, "TV;"
    :cond_7b
    invoke-virtual/range {p6 .. p6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_37
.end method

.method private buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    .registers 13
    .param p1, "size"    # I
    .param p3, "str"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator",
            "<*>;",
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

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local p4, "defaultVal":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    .line 2563
    iput p1, p0, Ljava/util/TreeMap;->size:I

    .line 2564
    add-int/lit8 v3, p1, -0x1

    invoke-static {p1}, Ljava/util/TreeMap;->computeRedLevel(I)I

    move-result v4

    move-object v0, p0

    move v2, v1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap;->buildFromSorted(IIIILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 2566
    return-void
.end method

.method private static colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 2256
    .local p0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    iget-boolean v0, p0, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    goto :goto_3
.end method

.method private static computeRedLevel(I)I
    .registers 4
    .param p0, "sz"    # I

    .prologue
    .line 2658
    const/4 v0, 0x0

    .line 2659
    .local v0, "level":I
    add-int/lit8 v1, p0, -0x1

    .local v1, "m":I
    :goto_3
    if-ltz v1, :cond_c

    .line 2660
    add-int/lit8 v0, v0, 0x1

    .line 2659
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v1, v2, -0x1

    goto :goto_3

    .line 2661
    :cond_c
    return v0
.end method

.method private deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v3, 0x0

    .line 2358
    iget v2, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/TreeMap;->modCount:I

    .line 2359
    iget v2, p0, Ljava/util/TreeMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/TreeMap;->size:I

    .line 2363
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_22

    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_22

    .line 2364
    invoke-static {p1}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    .line 2365
    .local v1, "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iput-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    .line 2366
    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    iput-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 2367
    move-object p1, v1

    .line 2371
    .end local v1    # "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_22
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_42

    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2373
    .local v0, "replacement":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_28
    if-eqz v0, :cond_55

    .line 2375
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2376
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v2, :cond_45

    .line 2377
    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 2384
    :goto_34
    iput-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2387
    iget-boolean v2, p1, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    if-eqz v2, :cond_41

    .line 2388
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->fixAfterDeletion(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2403
    :cond_41
    :goto_41
    return-void

    .line 2371
    .end local v0    # "replacement":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_42
    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .restart local v0    # "replacement":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    goto :goto_28

    .line 2378
    :cond_45
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne p1, v2, :cond_50

    .line 2379
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_34

    .line 2381
    :cond_50
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_34

    .line 2389
    :cond_55
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v2, :cond_5c

    .line 2390
    iput-object v3, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_41

    .line 2392
    :cond_5c
    iget-boolean v2, p1, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    if-eqz v2, :cond_63

    .line 2393
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->fixAfterDeletion(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2395
    :cond_63
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_41

    .line 2396
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne p1, v2, :cond_74

    .line 2397
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2400
    :cond_71
    :goto_71
    iput-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_41

    .line 2398
    :cond_74
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne p1, v2, :cond_71

    .line 2399
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_71
.end method

.method static exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v0, 0x0

    .line 1337
    if-nez p0, :cond_4

    :goto_3
    return-object v0

    .line 1338
    :cond_4
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_3
.end method

.method private fixAfterDeletion(Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "x":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2407
    :goto_2
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    if-eq p1, v1, :cond_123

    invoke-static {p1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-eqz v1, :cond_123

    .line 2408
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    if-ne p1, v1, :cond_9c

    .line 2409
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2411
    .local v0, "sib":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 2412
    invoke-static {v0, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2413
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2414
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2415
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2418
    :cond_3d
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 2419
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 2420
    invoke-static {v0, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2421
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    goto :goto_2

    .line 2423
    :cond_59
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 2424
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2425
    invoke-static {v0, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2426
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2427
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2429
    :cond_78
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    invoke-static {v0, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2430
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2431
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2432
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2433
    iget-object p1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    goto/16 :goto_2

    .line 2436
    .end local v0    # "sib":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_9c
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2438
    .restart local v0    # "sib":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-nez v1, :cond_c3

    .line 2439
    invoke-static {v0, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2440
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2441
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2442
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2445
    :cond_c3
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 2446
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 2447
    invoke-static {v0, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2448
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    goto/16 :goto_2

    .line 2450
    :cond_e0
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 2451
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2452
    invoke-static {v0, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2453
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2454
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2456
    :cond_ff
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    invoke-static {v0, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2457
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2458
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2459
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2460
    iget-object p1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    goto/16 :goto_2

    .line 2465
    .end local v0    # "sib":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_123
    invoke-static {p1, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2466
    return-void
.end method

.method private fixAfterInsertion(Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "x":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2314
    iput-boolean v4, p1, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    .line 2316
    :goto_4
    if-eqz p1, :cond_e2

    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    if-eq p1, v1, :cond_e2

    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-boolean v1, v1, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    if-nez v1, :cond_e2

    .line 2317
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    if-ne v1, v2, :cond_81

    .line 2318
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2319
    .local v0, "y":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 2320
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2321
    invoke-static {v0, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2322
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2323
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    goto :goto_4

    .line 2325
    :cond_52
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    if-ne p1, v1, :cond_63

    .line 2326
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    .line 2327
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2329
    :cond_63
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2330
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2331
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    goto :goto_4

    .line 2334
    .end local v0    # "y":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_81
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 2335
    .restart local v0    # "y":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-nez v1, :cond_b2

    .line 2336
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2337
    invoke-static {v0, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2338
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2339
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    goto/16 :goto_4

    .line 2341
    :cond_b2
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    if-ne p1, v1, :cond_c3

    .line 2342
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    .line 2343
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2345
    :cond_c3
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2346
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    .line 2347
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    goto/16 :goto_4

    .line 2351
    .end local v0    # "y":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_e2
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    iput-boolean v3, v1, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    .line 2352
    return-void
.end method

.method static key(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;*>;)TK;"
        }
    .end annotation

    .prologue
    .line 1353
    .local p0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;*>;"
    if-nez p0, :cond_8

    .line 1354
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1355
    :cond_8
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method static keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .local p0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v0, 0x0

    .line 1345
    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    goto :goto_3
.end method

.method static keySpliteratorFor(Ljava/util/NavigableMap;)Ljava/util/Spliterator;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;*>;)",
            "Ljava/util/Spliterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2674
    .local p0, "m":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;*>;"
    instance-of v4, p0, Ljava/util/TreeMap;

    if-eqz v4, :cond_c

    move-object v2, p0

    .line 2676
    check-cast v2, Ljava/util/TreeMap;

    .line 2677
    .local v2, "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;Ljava/lang/Object;>;"
    invoke-virtual {v2}, Ljava/util/TreeMap;->keySpliterator()Ljava/util/Spliterator;

    move-result-object v4

    return-object v4

    .line 2679
    .end local v2    # "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;Ljava/lang/Object;>;"
    :cond_c
    instance-of v4, p0, Ljava/util/TreeMap$DescendingSubMap;

    if-eqz v4, :cond_1f

    move-object v0, p0

    .line 2681
    check-cast v0, Ljava/util/TreeMap$DescendingSubMap;

    .line 2682
    .local v0, "dm":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;*>;"
    iget-object v3, v0, Ljava/util/TreeMap$DescendingSubMap;->m:Ljava/util/TreeMap;

    .line 2683
    .local v3, "tm":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;*>;"
    iget-object v4, v3, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    if-ne v0, v4, :cond_1f

    .line 2684
    move-object v2, v3

    .line 2686
    .restart local v2    # "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;Ljava/lang/Object;>;"
    invoke-virtual {v3}, Ljava/util/TreeMap;->descendingKeySpliterator()Ljava/util/Spliterator;

    move-result-object v4

    return-object v4

    .end local v0    # "dm":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;*>;"
    .end local v2    # "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;Ljava/lang/Object;>;"
    .end local v3    # "tm":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;*>;"
    :cond_1f
    move-object v1, p0

    .line 2690
    check-cast v1, Ljava/util/TreeMap$NavigableSubMap;

    .line 2691
    .local v1, "sm":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;*>;"
    invoke-virtual {v1}, Ljava/util/TreeMap$NavigableSubMap;->keySpliterator()Ljava/util/Spliterator;

    move-result-object v4

    return-object v4
.end method

.method private static leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v0, 0x0

    .line 2269
    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_3
.end method

.method private static parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v0, 0x0

    .line 2260
    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_3
.end method

.method static predecessor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "t":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v2, 0x0

    .line 2227
    if-nez p0, :cond_4

    .line 2228
    return-object v2

    .line 2229
    :cond_4
    iget-object v2, p0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_12

    .line 2230
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2231
    .local v1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_a
    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_11

    .line 2232
    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_a

    .line 2233
    :cond_11
    return-object v1

    .line 2235
    .end local v1    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_12
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2236
    .restart local v1    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v0, p0

    .line 2237
    .local v0, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_15
    if-eqz v1, :cond_1f

    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v0, v2, :cond_1f

    .line 2238
    move-object v0, v1

    .line 2239
    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_15

    .line 2241
    :cond_1f
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 2505
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2508
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 2510
    .local v0, "size":I
    invoke-direct {p0, v0, v1, p1, v1}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V

    .line 2511
    return-void
.end method

.method private static rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v0, 0x0

    .line 2273
    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_3
.end method

.method private rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2278
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz p1, :cond_1e

    .line 2279
    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2280
    .local v0, "r":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2281
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_10

    .line 2282
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    iput-object p1, v1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2283
    :cond_10
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2284
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v1, :cond_1f

    .line 2285
    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 2290
    :goto_1a
    iput-object p1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2291
    iput-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2293
    .end local v0    # "r":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_1e
    return-void

    .line 2286
    .restart local v0    # "r":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_1f
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v1, p1, :cond_2a

    .line 2287
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1a

    .line 2289
    :cond_2a
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1a
.end method

.method private rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2297
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz p1, :cond_1e

    .line 2298
    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2299
    .local v0, "l":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 2300
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_10

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    iput-object p1, v1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2301
    :cond_10
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2302
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v1, :cond_1f

    .line 2303
    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 2307
    :goto_1a
    iput-object p1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2308
    iput-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2310
    .end local v0    # "l":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_1e
    return-void

    .line 2304
    .restart local v0    # "l":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_1f
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v1, p1, :cond_2a

    .line 2305
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1a

    .line 2306
    :cond_2a
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1a
.end method

.method private static setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V
    .registers 2
    .param p1, "c"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .line 2264
    .local p0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz p0, :cond_4

    .line 2265
    iput-boolean p1, p0, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    .line 2266
    :cond_4
    return-void
.end method

.method static successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "t":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v2, 0x0

    .line 2205
    if-nez p0, :cond_4

    .line 2206
    return-object v2

    .line 2207
    :cond_4
    iget-object v2, p0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_12

    .line 2208
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .line 2209
    .local v1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_a
    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_11

    .line 2210
    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_a

    .line 2211
    :cond_11
    return-object v1

    .line 2213
    .end local v1    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_12
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 2214
    .restart local v1    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v0, p0

    .line 2215
    .local v0, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_15
    if-eqz v1, :cond_1f

    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v0, v2, :cond_1f

    .line 2216
    move-object v0, v1

    .line 2217
    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_15

    .line 2219
    :cond_1f
    return-object v1
.end method

.method static final valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 1330
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

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2485
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2488
    iget v2, p0, Ljava/util/TreeMap;->size:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2491
    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2492
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2493
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2494
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_10

    .line 2496
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_2b
    return-void
.end method


# virtual methods
.method addAllForTreeSet(Ljava/util/SortedSet;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<+TK;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 2522
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TK;>;"
    .local p2, "defaultVal":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4, p2}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_c} :catch_f

    .line 2526
    :goto_c
    return-void

    .line 2523
    :catch_d
    move-exception v0

    .local v0, "cannotHappen":Ljava/io/IOException;
    goto :goto_c

    .line 2524
    .end local v0    # "cannotHappen":Ljava/io/IOException;
    :catch_f
    move-exception v1

    .local v1, "cannotHappen":Ljava/lang/ClassNotFoundException;
    goto :goto_c
.end method

.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 771
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getCeilingEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 782
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getCeilingEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 644
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 645
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 646
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 647
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 9

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 658
    :try_start_2
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TreeMap;
    :try_end_8
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_8} :catch_24

    .line 664
    .local v2, "clone":Ljava/util/TreeMap;, "Ljava/util/TreeMap<**>;"
    iput-object v4, v2, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 665
    iput v5, v2, Ljava/util/TreeMap;->size:I

    .line 666
    iput v5, v2, Ljava/util/TreeMap;->modCount:I

    .line 667
    iput-object v4, v2, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    .line 668
    iput-object v4, v2, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    .line 669
    iput-object v4, v2, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    .line 673
    :try_start_14
    iget v4, p0, Ljava/util/TreeMap;->size:I

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_23} :catch_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_23} :catch_2d

    .line 678
    :goto_23
    return-object v2

    .line 659
    .end local v2    # "clone":Ljava/util/TreeMap;, "Ljava/util/TreeMap<**>;"
    :catch_24
    move-exception v3

    .line 660
    .local v3, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v4, Ljava/lang/InternalError;

    invoke-direct {v4, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 674
    .end local v3    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v2    # "clone":Ljava/util/TreeMap;, "Ljava/util/TreeMap<**>;"
    :catch_2b
    move-exception v0

    .local v0, "cannotHappen":Ljava/io/IOException;
    goto :goto_23

    .line 675
    .end local v0    # "cannotHappen":Ljava/io/IOException;
    :catch_2d
    move-exception v1

    .local v1, "cannotHappen":Ljava/lang/ClassNotFoundException;
    goto :goto_23
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "k1"    # Ljava/lang/Object;
    .param p2, "k2"    # Ljava/lang/Object;

    .prologue
    .line 1321
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_b

    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "k1":Ljava/lang/Object;
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    :goto_a
    return v0

    .line 1322
    .restart local p1    # "k1":Ljava/lang/Object;
    :cond_b
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_a
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 233
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
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
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method descendingKeyIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1141
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$DescendingKeyIterator;

    invoke-virtual {p0}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/TreeMap$DescendingKeyIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 859
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method final descendingKeySpliterator()Ljava/util/Spliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2699
    new-instance v0, Ljava/util/TreeMap$DescendingKeySpliterator;

    const/4 v5, -0x2

    move-object v1, p0

    move-object v3, v2

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$DescendingKeySpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 923
    iget-object v8, p0, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    .line 924
    .local v8, "km":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    if-eqz v8, :cond_7

    .end local v8    # "km":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    :goto_6
    return-object v8

    .line 925
    .restart local v8    # "km":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    :cond_7
    new-instance v0, Ljava/util/TreeMap$DescendingSubMap;

    move-object v1, p0

    move v4, v2

    move v5, v2

    move-object v6, v3

    move v7, v2

    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$DescendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    iput-object v0, p0, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    move-object v8, v0

    goto :goto_6
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 915
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    .line 916
    .local v0, "es":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    if-eqz v0, :cond_5

    .end local v0    # "es":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    :goto_4
    return-object v0

    .restart local v0    # "es":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    :cond_5
    new-instance v0, Ljava/util/TreeMap$EntrySet;

    .end local v0    # "es":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$EntrySet;-><init>(Ljava/util/TreeMap;)V

    iput-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    goto :goto_4
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 687
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->key(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 749
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getFloorEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 760
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getFloorEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1029
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    iget v1, p0, Ljava/util/TreeMap;->modCount:I

    .line 1031
    .local v1, "expectedModCount":I
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_9
    if-eqz v0, :cond_21

    .line 1032
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v3, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1034
    iget v2, p0, Ljava/util/TreeMap;->modCount:I

    if-eq v1, v2, :cond_1c

    .line 1035
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1031
    :cond_1c
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    goto :goto_9

    .line 1038
    :cond_21
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 279
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 280
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez v0, :cond_8

    :goto_7
    return-object v1

    :cond_8
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    goto :goto_7
.end method

.method final getCeilingEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    .line 396
    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 397
    .local v2, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_3
    if-eqz v2, :cond_2d

    .line 398
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 399
    .local v1, "cmp":I
    if-gez v1, :cond_15

    .line 400
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v4, :cond_14

    .line 401
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_3

    .line 403
    :cond_14
    return-object v2

    .line 404
    :cond_15
    if-lez v1, :cond_2c

    .line 405
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v4, :cond_1e

    .line 406
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_3

    .line 408
    :cond_1e
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 409
    .local v3, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v0, v2

    .line 410
    .local v0, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_21
    if-eqz v3, :cond_2b

    iget-object v4, v3, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v0, v4, :cond_2b

    .line 411
    move-object v0, v3

    .line 412
    iget-object v3, v3, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_21

    .line 414
    :cond_2b
    return-object v3

    .line 417
    .end local v0    # "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v3    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2c
    return-object v2

    .line 419
    .end local v1    # "cmp":I
    :cond_2d
    return-object v5
.end method

.method final getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 345
    iget-object v3, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-eqz v3, :cond_a

    .line 346
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntryUsingComparator(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    return-object v3

    .line 347
    :cond_a
    if-nez p1, :cond_12

    .line 348
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_12
    move-object v1, p1

    .line 350
    check-cast v1, Ljava/lang/Comparable;

    .line 351
    .local v1, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 352
    .local v2, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_17
    if-eqz v2, :cond_2a

    .line 353
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 354
    .local v0, "cmp":I
    if-gez v0, :cond_24

    .line 355
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_17

    .line 356
    :cond_24
    if-lez v0, :cond_29

    .line 357
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_17

    .line 359
    :cond_29
    return-object v2

    .line 361
    .end local v0    # "cmp":I
    :cond_2a
    return-object v4
.end method

.method final getEntryUsingComparator(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 372
    move-object v2, p1

    .line 373
    .local v2, "k":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 374
    .local v1, "cpr":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-eqz v1, :cond_1b

    .line 375
    iget-object v3, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 376
    .local v3, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_8
    if-eqz v3, :cond_1b

    .line 377
    iget-object v4, v3, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v1, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 378
    .local v0, "cmp":I
    if-gez v0, :cond_15

    .line 379
    iget-object v3, v3, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_8

    .line 380
    :cond_15
    if-lez v0, :cond_1a

    .line 381
    iget-object v3, v3, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_8

    .line 383
    :cond_1a
    return-object v3

    .line 386
    .end local v0    # "cmp":I
    .end local v3    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_1b
    return-object v5
.end method

.method final getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2182
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 2183
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_b

    .line 2184
    :goto_4
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_b

    .line 2185
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_4

    .line 2186
    :cond_b
    return-object v0
.end method

.method final getFloorEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    .line 428
    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 429
    .local v2, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_3
    if-eqz v2, :cond_2d

    .line 430
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 431
    .local v1, "cmp":I
    if-lez v1, :cond_15

    .line 432
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v4, :cond_14

    .line 433
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_3

    .line 435
    :cond_14
    return-object v2

    .line 436
    :cond_15
    if-gez v1, :cond_2c

    .line 437
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v4, :cond_1e

    .line 438
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_3

    .line 440
    :cond_1e
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 441
    .local v3, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v0, v2

    .line 442
    .local v0, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_21
    if-eqz v3, :cond_2b

    iget-object v4, v3, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v0, v4, :cond_2b

    .line 443
    move-object v0, v3

    .line 444
    iget-object v3, v3, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_21

    .line 446
    :cond_2b
    return-object v3

    .line 449
    .end local v0    # "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v3    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2c
    return-object v2

    .line 452
    .end local v1    # "cmp":I
    :cond_2d
    return-object v5
.end method

.method final getHigherEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    .line 462
    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 463
    .local v2, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_3
    if-eqz v2, :cond_2a

    .line 464
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 465
    .local v1, "cmp":I
    if-gez v1, :cond_15

    .line 466
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v4, :cond_14

    .line 467
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_3

    .line 469
    :cond_14
    return-object v2

    .line 471
    :cond_15
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v4, :cond_1c

    .line 472
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_3

    .line 474
    :cond_1c
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 475
    .local v3, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v0, v2

    .line 476
    .local v0, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_1f
    if-eqz v3, :cond_29

    iget-object v4, v3, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v0, v4, :cond_29

    .line 477
    move-object v0, v3

    .line 478
    iget-object v3, v3, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1f

    .line 480
    :cond_29
    return-object v3

    .line 484
    .end local v0    # "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v1    # "cmp":I
    .end local v3    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2a
    return-object v5
.end method

.method final getLastEntry()Ljava/util/TreeMap$TreeMapEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2194
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 2195
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_b

    .line 2196
    :goto_4
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_b

    .line 2197
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_4

    .line 2198
    :cond_b
    return-object v0
.end method

.method final getLowerEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    .line 493
    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 494
    .local v2, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_3
    if-eqz v2, :cond_2a

    .line 495
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 496
    .local v1, "cmp":I
    if-lez v1, :cond_15

    .line 497
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v4, :cond_14

    .line 498
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_3

    .line 500
    :cond_14
    return-object v2

    .line 502
    :cond_15
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v4, :cond_1c

    .line 503
    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_3

    .line 505
    :cond_1c
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    .line 506
    .local v3, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    move-object v0, v2

    .line 507
    .local v0, "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_1f
    if-eqz v3, :cond_29

    iget-object v4, v3, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v0, v4, :cond_29

    .line 508
    move-object v0, v3

    .line 509
    iget-object v3, v3, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1f

    .line 511
    :cond_29
    return-object v3

    .line 515
    .end local v0    # "ch":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v1    # "cmp":I
    .end local v3    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2a
    return-object v5
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 11
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x1

    .line 954
    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    .line 955
    const/4 v3, 0x0

    .line 956
    const/4 v5, 0x0

    move-object v1, p0

    move v4, v2

    move-object v6, p1

    move v7, p2

    .line 954
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 992
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 793
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getHigherEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 804
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getHigherEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method keyIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1137
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$KeyIterator;

    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/TreeMap$KeyIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 844
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method final keySpliterator()Ljava/util/Spliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2695
    new-instance v0, Ljava/util/TreeMap$KeySpliterator;

    const/4 v5, -0x1

    move-object v1, p0

    move-object v3, v2

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$KeySpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 694
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->key(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 727
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getLowerEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 738
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getLowerEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 851
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    .line 852
    .local v0, "nks":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TK;>;"
    if-eqz v0, :cond_5

    .end local v0    # "nks":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TK;>;"
    :goto_4
    return-object v0

    .restart local v0    # "nks":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TK;>;"
    :cond_5
    new-instance v0, Ljava/util/TreeMap$KeySet;

    .end local v0    # "nks":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap$KeySet<TK;>;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/NavigableMap;)V

    iput-object v0, p0, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    goto :goto_4
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 701
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 702
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 703
    .local v1, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_d

    .line 704
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 705
    :cond_d
    return-object v1
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 712
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 713
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 714
    .local v1, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_d

    .line 715
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 716
    :cond_d
    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v7, 0x0

    .line 537
    iget-object v5, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 538
    .local v5, "t":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez v5, :cond_59

    .line 554
    iget-object v6, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-eqz v6, :cond_21

    .line 555
    if-nez p1, :cond_10

    .line 556
    iget-object v6, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v6, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 567
    :cond_10
    new-instance v6, Ljava/util/TreeMap$TreeMapEntry;

    invoke-direct {v6, p1, p2, v7}, Ljava/util/TreeMap$TreeMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/TreeMap$TreeMapEntry;)V

    iput-object v6, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    .line 568
    const/4 v6, 0x1

    iput v6, p0, Ljava/util/TreeMap;->size:I

    .line 569
    iget v6, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/TreeMap;->modCount:I

    .line 570
    return-object v7

    .line 559
    :cond_21
    if-nez p1, :cond_2c

    .line 560
    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "key == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 561
    :cond_2c
    instance-of v6, p1, Ljava/lang/Comparable;

    if-nez v6, :cond_10

    .line 562
    new-instance v6, Ljava/lang/ClassCastException;

    .line 563
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cannot cast"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to Comparable."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 562
    invoke-direct {v6, v7}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 575
    :cond_59
    iget-object v1, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 576
    .local v1, "cpr":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-eqz v1, :cond_8d

    .line 578
    :cond_5d
    move-object v4, v5

    .line 579
    .local v4, "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v6, v5, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v1, p1, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 580
    .local v0, "cmp":I
    if-gez v0, :cond_83

    .line 581
    iget-object v5, v5, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 586
    :goto_68
    if-nez v5, :cond_5d

    .line 604
    :cond_6a
    new-instance v2, Ljava/util/TreeMap$TreeMapEntry;

    invoke-direct {v2, p1, p2, v4}, Ljava/util/TreeMap$TreeMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 605
    .local v2, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-gez v0, :cond_b0

    .line 606
    iput-object v2, v4, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 609
    :goto_73
    invoke-direct {p0, v2}, Ljava/util/TreeMap;->fixAfterInsertion(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 610
    iget v6, p0, Ljava/util/TreeMap;->size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/TreeMap;->size:I

    .line 611
    iget v6, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/TreeMap;->modCount:I

    .line 612
    return-object v7

    .line 582
    .end local v2    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_83
    if-lez v0, :cond_88

    .line 583
    iget-object v5, v5, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_68

    .line 585
    :cond_88
    invoke-virtual {v5, p2}, Ljava/util/TreeMap$TreeMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 589
    .end local v0    # "cmp":I
    .end local v4    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_8d
    if-nez p1, :cond_95

    .line 590
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    :cond_95
    move-object v3, p1

    .line 592
    check-cast v3, Ljava/lang/Comparable;

    .line 594
    .local v3, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :goto_98
    move-object v4, v5

    .line 595
    .restart local v4    # "parent":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v6, v5, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v3, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 596
    .restart local v0    # "cmp":I
    if-gez v0, :cond_a6

    .line 597
    iget-object v5, v5, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .line 602
    :goto_a3
    if-eqz v5, :cond_6a

    goto :goto_98

    .line 598
    :cond_a6
    if-lez v0, :cond_ab

    .line 599
    iget-object v5, v5, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_a3

    .line 601
    :cond_ab
    invoke-virtual {v5, p2}, Ljava/util/TreeMap$TreeMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 608
    .end local v3    # "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .restart local v2    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_b0
    iput-object v2, v4, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_73
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    .line 315
    .local v3, "mapSize":I
    iget v4, p0, Ljava/util/TreeMap;->size:I

    if-nez v4, :cond_37

    if-eqz v3, :cond_37

    instance-of v4, p1, Ljava/util/SortedMap;

    if-eqz v4, :cond_37

    move-object v4, p1

    .line 316
    check-cast v4, Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 317
    .local v0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    iget-object v4, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-eq v0, v4, :cond_23

    if-eqz v0, :cond_37

    iget-object v4, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, v4}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 318
    :cond_23
    iget v4, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/TreeMap;->modCount:I

    .line 320
    :try_start_29
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 321
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 320
    invoke-direct {p0, v3, v4, v5, v6}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_36} :catch_3b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_29 .. :try_end_36} :catch_3d

    .line 325
    :goto_36
    return-void

    .line 328
    .end local v0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    :cond_37
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 329
    return-void

    .line 322
    .restart local v0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    :catch_3b
    move-exception v1

    .local v1, "cannotHappen":Ljava/io/IOException;
    goto :goto_36

    .line 323
    .end local v1    # "cannotHappen":Ljava/io/IOException;
    :catch_3d
    move-exception v2

    .local v2, "cannotHappen":Ljava/lang/ClassNotFoundException;
    goto :goto_36
.end method

.method readTreeSet(ILjava/io/ObjectInputStream;Ljava/lang/Object;)V
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

    .prologue
    .line 2516
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p3, "defaultVal":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V

    .line 2517
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 630
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    .line 631
    .local v1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez v1, :cond_8

    .line 632
    return-object v2

    .line 634
    :cond_8
    iget-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 635
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v1}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    .line 636
    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 1018
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    .line 1019
    .local v1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_c

    .line 1020
    iget-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 1021
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p2, v1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 1022
    return-object v0

    .line 1024
    .end local v0    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_c
    return-object v2
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 1008
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 1009
    .local v0, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_12

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1010
    iput-object p3, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 1011
    const/4 v1, 0x1

    return v1

    .line 1013
    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1042
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    iget v1, p0, Ljava/util/TreeMap;->modCount:I

    .line 1045
    .local v1, "expectedModCount":I
    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_9
    if-eqz v0, :cond_24

    .line 1046
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v3, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    .line 1048
    iget v2, p0, Ljava/util/TreeMap;->modCount:I

    if-eq v1, v2, :cond_1f

    .line 1049
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1045
    :cond_1f
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    goto :goto_9

    .line 1052
    :cond_24
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 216
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap;->size:I

    return v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 13
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    .line 940
    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, v2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 981
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 11
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x1

    .line 968
    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    .line 969
    const/4 v2, 0x0

    .line 970
    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v7, v5

    .line 968
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1003
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 884
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->values:Ljava/util/Collection;

    .line 885
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_b

    .line 886
    new-instance v0, Ljava/util/TreeMap$Values;

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$Values;-><init>(Ljava/util/TreeMap;)V

    .line 887
    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iput-object v0, p0, Ljava/util/TreeMap;->values:Ljava/util/Collection;

    .line 889
    :cond_b
    return-object v0
.end method
