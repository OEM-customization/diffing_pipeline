.class public Ljava/util/WeakHashMap;
.super Ljava/util/AbstractMap;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/WeakHashMap$EntrySpliterator;,
        Ljava/util/WeakHashMap$ValueSpliterator;,
        Ljava/util/WeakHashMap$KeySpliterator;,
        Ljava/util/WeakHashMap$WeakHashMapSpliterator;,
        Ljava/util/WeakHashMap$EntrySet;,
        Ljava/util/WeakHashMap$Values;,
        Ljava/util/WeakHashMap$KeySet;,
        Ljava/util/WeakHashMap$EntryIterator;,
        Ljava/util/WeakHashMap$KeyIterator;,
        Ljava/util/WeakHashMap$ValueIterator;,
        Ljava/util/WeakHashMap$HashIterator;,
        Ljava/util/WeakHashMap$Entry;
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
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final greylist-max-o DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final greylist-max-o MAXIMUM_CAPACITY:I = 0x40000000

.field private static final greylist-max-o NULL_KEY:Ljava/lang/Object;


# instance fields
.field private transient greylist-max-o entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o loadFactor:F

.field greylist-max-o modCount:I

.field private final greylist-max-o queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o size:I

.field greylist-max-o table:[Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/WeakHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private greylist-max-o threshold:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 266
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/WeakHashMap;->NULL_KEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 241
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Ljava/util/WeakHashMap;-><init>(IF)V

    .line 242
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 233
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Ljava/util/WeakHashMap;-><init>(IF)V

    .line 234
    return-void
.end method

.method public constructor whitelist test-api <init>(IF)V
    .registers 6
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 207
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 180
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 208
    if-ltz p1, :cond_48

    .line 211
    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_12

    .line 212
    const/high16 p1, 0x40000000    # 2.0f

    .line 214
    :cond_12
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_31

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_31

    .line 217
    const/4 v0, 0x1

    .line 218
    .local v0, "capacity":I
    :goto_1e
    if-ge v0, p1, :cond_23

    .line 219
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 220
    :cond_23
    invoke-direct {p0, v0}, Ljava/util/WeakHashMap;->newTable(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v1

    iput-object v1, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 221
    iput p2, p0, Ljava/util/WeakHashMap;->loadFactor:F

    .line 222
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Ljava/util/WeakHashMap;->threshold:I

    .line 223
    return-void

    .line 215
    .end local v0    # "capacity":I
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Load factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Initial Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 255
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v1}, Ljava/util/WeakHashMap;-><init>(IF)V

    .line 258
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->putAll(Ljava/util/Map;)V

    .line 259
    return-void
.end method

.method private greylist-max-o containsNullValue()Z
    .registers 5

    .line 690
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    .line 691
    .local v0, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v1, v0

    .local v1, "i":I
    :goto_5
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_18

    .line 692
    aget-object v1, v0, v2

    .local v1, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_b
    if-eqz v1, :cond_16

    .line 693
    iget-object v3, v1, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v3, :cond_13

    .line 694
    const/4 v3, 0x1

    return v3

    .line 692
    :cond_13
    iget-object v1, v1, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_b

    :cond_16
    move v1, v2

    .end local v1    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    goto :goto_5

    .line 695
    .end local v2    # "i":I
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method private static greylist-max-o eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "y"    # Ljava/lang/Object;

    .line 287
    if-eq p0, p1, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private greylist-max-o expungeStaleEntries()V
    .registers 9

    .line 318
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    :goto_0
    iget-object v0, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    move-object v1, v0

    .local v1, "x":Ljava/lang/Object;
    if-eqz v0, :cond_3e

    .line 319
    iget-object v0, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    monitor-enter v0

    .line 321
    :try_start_c
    move-object v2, v1

    check-cast v2, Ljava/util/WeakHashMap$Entry;

    .line 322
    .local v2, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v3, v2, Ljava/util/WeakHashMap$Entry;->hash:I

    iget-object v4, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v3

    .line 324
    .local v3, "i":I
    iget-object v4, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    aget-object v4, v4, v3

    .line 325
    .local v4, "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    move-object v5, v4

    .line 326
    .local v5, "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_1d
    if-eqz v5, :cond_39

    .line 327
    iget-object v6, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 328
    .local v6, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    if-ne v5, v2, :cond_36

    .line 329
    if-ne v4, v2, :cond_2a

    .line 330
    iget-object v7, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    aput-object v6, v7, v3

    goto :goto_2c

    .line 332
    :cond_2a
    iput-object v6, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 335
    :goto_2c
    const/4 v7, 0x0

    iput-object v7, v2, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 336
    iget v7, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/util/WeakHashMap;->size:I

    .line 337
    goto :goto_39

    .line 339
    :cond_36
    move-object v4, v5

    .line 340
    move-object v5, v6

    .line 341
    .end local v6    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    goto :goto_1d

    .line 342
    .end local v2    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v3    # "i":I
    .end local v4    # "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v5    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_39
    :goto_39
    monitor-exit v0

    goto :goto_0

    :catchall_3b
    move-exception v2

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_c .. :try_end_3d} :catchall_3b

    throw v2

    .line 344
    .end local v1    # "x":Ljava/lang/Object;
    :cond_3e
    return-void
.end method

.method private greylist-max-o getTable()[Ljava/util/WeakHashMap$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/WeakHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 350
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/WeakHashMap;->expungeStaleEntries()V

    .line 351
    iget-object v0, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    return-object v0
.end method

.method private static greylist-max-o indexFor(II)I
    .registers 3
    .param p0, "h"    # I
    .param p1, "length"    # I

    .line 311
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    return v0
.end method

.method private static greylist-max-o maskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "key"    # Ljava/lang/Object;

    .line 272
    if-nez p0, :cond_5

    sget-object v0, Ljava/util/WeakHashMap;->NULL_KEY:Ljava/lang/Object;

    goto :goto_6

    :cond_5
    move-object v0, p0

    :goto_6
    return-object v0
.end method

.method private greylist-max-o newTable(I)[Ljava/util/WeakHashMap$Entry;
    .registers 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/WeakHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 195
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    new-array v0, p1, [Ljava/util/WeakHashMap$Entry;

    return-object v0
.end method

.method private greylist-max-o transfer([Ljava/util/WeakHashMap$Entry;[Ljava/util/WeakHashMap$Entry;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/WeakHashMap$Entry<",
            "TK;TV;>;[",
            "Ljava/util/WeakHashMap$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 512
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "src":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .local p2, "dest":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_30

    .line 513
    aget-object v1, p1, v0

    .line 514
    .local v1, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v2, 0x0

    aput-object v2, p1, v0

    .line 515
    :goto_9
    if-eqz v1, :cond_2d

    .line 516
    iget-object v3, v1, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 517
    .local v3, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    invoke-virtual {v1}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    .line 518
    .local v4, "key":Ljava/lang/Object;
    if-nez v4, :cond_1e

    .line 519
    iput-object v2, v1, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 520
    iput-object v2, v1, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 521
    iget v5, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/WeakHashMap;->size:I

    goto :goto_2b

    .line 523
    :cond_1e
    iget v5, v1, Ljava/util/WeakHashMap$Entry;->hash:I

    array-length v6, p2

    invoke-static {v5, v6}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v5

    .line 524
    .local v5, "i":I
    aget-object v6, p2, v5

    iput-object v6, v1, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 525
    aput-object v1, p2, v5

    .line 527
    .end local v5    # "i":I
    :goto_2b
    move-object v1, v3

    .line 528
    .end local v3    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v4    # "key":Ljava/lang/Object;
    goto :goto_9

    .line 512
    .end local v1    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 530
    .end local v0    # "j":I
    :cond_30
    return-void
.end method

.method static greylist-max-o unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "key"    # Ljava/lang/Object;

    .line 279
    sget-object v0, Ljava/util/WeakHashMap;->NULL_KEY:Ljava/lang/Object;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    move-object v0, p0

    :goto_7
    return-object v0
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 3

    .line 652
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    :goto_0
    iget-object v0, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 653
    goto :goto_0

    .line 655
    :cond_9
    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 656
    iget-object v0, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 657
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap;->size:I

    .line 662
    :goto_18
    iget-object v0, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 663
    goto :goto_18

    .line 664
    :cond_21
    return-void
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 417
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 675
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    if-nez p1, :cond_7

    .line 676
    invoke-direct {p0}, Ljava/util/WeakHashMap;->containsNullValue()Z

    move-result v0

    return v0

    .line 678
    :cond_7
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    .line 679
    .local v0, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v1, v0

    .local v1, "i":I
    :goto_c
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_23

    .line 680
    aget-object v1, v0, v2

    .local v1, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_12
    if-eqz v1, :cond_21

    .line 681
    iget-object v3, v1, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 682
    const/4 v3, 0x1

    return v3

    .line 680
    :cond_1e
    iget-object v1, v1, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_12

    :cond_21
    move v1, v2

    .end local v1    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    goto :goto_c

    .line 683
    .end local v2    # "i":I
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 965
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/WeakHashMap;->entrySet:Ljava/util/Set;

    .line 966
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_e

    :cond_6
    new-instance v1, Ljava/util/WeakHashMap$EntrySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/WeakHashMap$EntrySet;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$1;)V

    iput-object v1, p0, Ljava/util/WeakHashMap;->entrySet:Ljava/util/Set;

    :goto_e
    return-object v1
.end method

.method public whitelist test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 1017
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 1020
    .local v0, "expectedModCount":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v1

    .line 1021
    .local v1, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_30

    aget-object v4, v1, v3

    .line 1022
    .local v4, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_f
    if-eqz v4, :cond_2d

    .line 1023
    invoke-virtual {v4}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v5

    .line 1024
    .local v5, "key":Ljava/lang/Object;
    if-eqz v5, :cond_20

    .line 1025
    invoke-static {v5}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v4, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {p1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1027
    :cond_20
    iget-object v4, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 1029
    iget v6, p0, Ljava/util/WeakHashMap;->modCount:I

    if-ne v0, v6, :cond_27

    .line 1032
    .end local v5    # "key":Ljava/lang/Object;
    goto :goto_f

    .line 1030
    .restart local v5    # "key":Ljava/lang/Object;
    :cond_27
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1021
    .end local v4    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v5    # "key":Ljava/lang/Object;
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1034
    :cond_30
    return-void
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 395
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 396
    .local v0, "k":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 397
    .local v1, "h":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v2

    .line 398
    .local v2, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v3, v2

    invoke-static {v1, v3}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v3

    .line 399
    .local v3, "index":I
    aget-object v4, v2, v3

    .line 400
    .local v4, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_13
    if-eqz v4, :cond_29

    .line 401
    iget v5, v4, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v5, v1, :cond_26

    invoke-virtual {v4}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/WeakHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 402
    iget-object v5, v4, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    return-object v5

    .line 403
    :cond_26
    iget-object v4, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_13

    .line 405
    :cond_29
    const/4 v5, 0x0

    return-object v5
.end method

.method greylist-max-o getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/WeakHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 425
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 426
    .local v0, "k":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 427
    .local v1, "h":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v2

    .line 428
    .local v2, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v3, v2

    invoke-static {v1, v3}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v3

    .line 429
    .local v3, "index":I
    aget-object v4, v2, v3

    .line 430
    .local v4, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_13
    if-eqz v4, :cond_26

    iget v5, v4, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v5, v1, :cond_23

    invoke-virtual {v4}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/WeakHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 431
    :cond_23
    iget-object v4, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_13

    .line 432
    :cond_26
    return-object v4
.end method

.method final greylist-max-o hash(Ljava/lang/Object;)I
    .registers 5
    .param p1, "k"    # Ljava/lang/Object;

    .line 298
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 303
    .local v0, "h":I
    ushr-int/lit8 v1, v0, 0x14

    ushr-int/lit8 v2, v0, 0xc

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 304
    ushr-int/lit8 v1, v0, 0x7

    xor-int/2addr v1, v0

    ushr-int/lit8 v2, v0, 0x4

    xor-int/2addr v1, v2

    return v1
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 374
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 867
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    .line 868
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_d

    .line 869
    new-instance v1, Ljava/util/WeakHashMap$KeySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/WeakHashMap$KeySet;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$1;)V

    move-object v0, v1

    .line 870
    iput-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    .line 872
    :cond_d
    return-object v0
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 448
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 449
    .local v6, "k":Ljava/lang/Object;
    invoke-virtual {p0, v6}, Ljava/util/WeakHashMap;->hash(Ljava/lang/Object;)I

    move-result v7

    .line 450
    .local v7, "h":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v8

    .line 451
    .local v8, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v0, v8

    invoke-static {v7, v0}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v9

    .line 453
    .local v9, "i":I
    aget-object v0, v8, v9

    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_13
    if-eqz v0, :cond_2d

    .line 454
    iget v1, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v7, v1, :cond_2a

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v1}, Ljava/util/WeakHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 455
    iget-object v1, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 456
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    if-eq p2, v1, :cond_29

    .line 457
    iput-object p2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 458
    :cond_29
    return-object v1

    .line 453
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2a
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_13

    .line 462
    .end local v0    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_2d
    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 463
    aget-object v10, v8, v9

    .line 464
    .local v10, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    new-instance v11, Ljava/util/WeakHashMap$Entry;

    iget-object v3, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    move-object v0, v11

    move-object v1, v6

    move-object v2, p2

    move v4, v7

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;ILjava/util/WeakHashMap$Entry;)V

    aput-object v11, v8, v9

    .line 465
    iget v0, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/WeakHashMap;->size:I

    iget v1, p0, Ljava/util/WeakHashMap;->threshold:I

    if-lt v0, v1, :cond_53

    .line 466
    array-length v0, v8

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->resize(I)V

    .line 467
    :cond_53
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api putAll(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 541
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 542
    .local v0, "numKeysToBeAdded":I
    if-nez v0, :cond_7

    .line 543
    return-void

    .line 554
    :cond_7
    iget v1, p0, Ljava/util/WeakHashMap;->threshold:I

    if-le v0, v1, :cond_29

    .line 555
    int-to-float v1, v0

    iget v2, p0, Ljava/util/WeakHashMap;->loadFactor:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 556
    .local v1, "targetCapacity":I
    const/high16 v2, 0x40000000    # 2.0f

    if-le v1, v2, :cond_19

    .line 557
    const/high16 v1, 0x40000000    # 2.0f

    .line 558
    :cond_19
    iget-object v2, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length v2, v2

    .line 559
    .local v2, "newCapacity":I
    :goto_1c
    if-ge v2, v1, :cond_21

    .line 560
    shl-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 561
    :cond_21
    iget-object v3, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length v3, v3

    if-le v2, v3, :cond_29

    .line 562
    invoke-virtual {p0, v2}, Ljava/util/WeakHashMap;->resize(I)V

    .line 565
    .end local v1    # "targetCapacity":I
    .end local v2    # "newCapacity":I
    :cond_29
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 566
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    .line 567
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_49
    return-void
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 590
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 591
    .local v0, "k":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 592
    .local v1, "h":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v2

    .line 593
    .local v2, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v3, v2

    invoke-static {v1, v3}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v3

    .line 594
    .local v3, "i":I
    aget-object v4, v2, v3

    .line 595
    .local v4, "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    move-object v5, v4

    .line 597
    .local v5, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_14
    if-eqz v5, :cond_3f

    .line 598
    iget-object v6, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 599
    .local v6, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v7, v5, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v1, v7, :cond_3c

    invoke-virtual {v5}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v7}, Ljava/util/WeakHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 600
    iget v7, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 601
    iget v7, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/util/WeakHashMap;->size:I

    .line 602
    if-ne v4, v5, :cond_37

    .line 603
    aput-object v6, v2, v3

    goto :goto_39

    .line 605
    :cond_37
    iput-object v6, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 606
    :goto_39
    iget-object v7, v5, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    return-object v7

    .line 608
    :cond_3c
    move-object v4, v5

    .line 609
    move-object v5, v6

    .line 610
    .end local v6    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    goto :goto_14

    .line 612
    :cond_3f
    const/4 v6, 0x0

    return-object v6
.end method

.method greylist-max-o removeMapping(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "o"    # Ljava/lang/Object;

    .line 617
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 618
    return v1

    .line 619
    :cond_6
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    .line 620
    .local v0, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    move-object v2, p1

    check-cast v2, Ljava/util/Map$Entry;

    .line 621
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 622
    .local v3, "k":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Ljava/util/WeakHashMap;->hash(Ljava/lang/Object;)I

    move-result v4

    .line 623
    .local v4, "h":I
    array-length v5, v0

    invoke-static {v4, v5}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v5

    .line 624
    .local v5, "i":I
    aget-object v6, v0, v5

    .line 625
    .local v6, "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    move-object v7, v6

    .line 627
    .local v7, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_21
    if-eqz v7, :cond_45

    .line 628
    iget-object v8, v7, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 629
    .local v8, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v9, v7, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v4, v9, :cond_42

    invoke-virtual {v7, v2}, Ljava/util/WeakHashMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    .line 630
    iget v1, p0, Ljava/util/WeakHashMap;->modCount:I

    const/4 v9, 0x1

    add-int/2addr v1, v9

    iput v1, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 631
    iget v1, p0, Ljava/util/WeakHashMap;->size:I

    sub-int/2addr v1, v9

    iput v1, p0, Ljava/util/WeakHashMap;->size:I

    .line 632
    if-ne v6, v7, :cond_3f

    .line 633
    aput-object v8, v0, v5

    goto :goto_41

    .line 635
    :cond_3f
    iput-object v8, v6, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 636
    :goto_41
    return v9

    .line 638
    :cond_42
    move-object v6, v7

    .line 639
    move-object v7, v8

    .line 640
    .end local v8    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    goto :goto_21

    .line 642
    :cond_45
    return v1
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 1039
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 1042
    .local v0, "expectedModCount":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v1

    .line 1043
    .local v1, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_33

    aget-object v4, v1, v3

    .line 1044
    .local v4, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_f
    if-eqz v4, :cond_30

    .line 1045
    invoke-virtual {v4}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v5

    .line 1046
    .local v5, "key":Ljava/lang/Object;
    if-eqz v5, :cond_23

    .line 1047
    invoke-static {v5}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v4, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {p1, v6, v7}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v4, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 1049
    :cond_23
    iget-object v4, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 1051
    iget v6, p0, Ljava/util/WeakHashMap;->modCount:I

    if-ne v0, v6, :cond_2a

    .line 1054
    .end local v5    # "key":Ljava/lang/Object;
    goto :goto_f

    .line 1052
    .restart local v5    # "key":Ljava/lang/Object;
    :cond_2a
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1043
    .end local v4    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v5    # "key":Ljava/lang/Object;
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1056
    :cond_33
    return-void
.end method

.method greylist-max-o resize(I)V
    .registers 7
    .param p1, "newCapacity"    # I

    .line 485
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    .line 486
    .local v0, "oldTable":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v1, v0

    .line 487
    .local v1, "oldCapacity":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_f

    .line 488
    const v2, 0x7fffffff

    iput v2, p0, Ljava/util/WeakHashMap;->threshold:I

    .line 489
    return-void

    .line 492
    :cond_f
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap;->newTable(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v2

    .line 493
    .local v2, "newTable":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    invoke-direct {p0, v0, v2}, Ljava/util/WeakHashMap;->transfer([Ljava/util/WeakHashMap$Entry;[Ljava/util/WeakHashMap$Entry;)V

    .line 494
    iput-object v2, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 501
    iget v3, p0, Ljava/util/WeakHashMap;->size:I

    iget v4, p0, Ljava/util/WeakHashMap;->threshold:I

    div-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_28

    .line 502
    int-to-float v3, p1

    iget v4, p0, Ljava/util/WeakHashMap;->loadFactor:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Ljava/util/WeakHashMap;->threshold:I

    goto :goto_30

    .line 504
    :cond_28
    invoke-direct {p0}, Ljava/util/WeakHashMap;->expungeStaleEntries()V

    .line 505
    invoke-direct {p0, v2, v0}, Ljava/util/WeakHashMap;->transfer([Ljava/util/WeakHashMap$Entry;[Ljava/util/WeakHashMap$Entry;)V

    .line 506
    iput-object v0, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 508
    :goto_30
    return-void
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 361
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/WeakHashMap;->size:I

    if-nez v0, :cond_6

    .line 362
    const/4 v0, 0x0

    return v0

    .line 363
    :cond_6
    invoke-direct {p0}, Ljava/util/WeakHashMap;->expungeStaleEntries()V

    .line 364
    iget v0, p0, Ljava/util/WeakHashMap;->size:I

    return v0
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 920
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/WeakHashMap;->values:Ljava/util/Collection;

    .line 921
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_d

    .line 922
    new-instance v1, Ljava/util/WeakHashMap$Values;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/WeakHashMap$Values;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$1;)V

    move-object v0, v1

    .line 923
    iput-object v0, p0, Ljava/util/WeakHashMap;->values:Ljava/util/Collection;

    .line 925
    :cond_d
    return-object v0
.end method
