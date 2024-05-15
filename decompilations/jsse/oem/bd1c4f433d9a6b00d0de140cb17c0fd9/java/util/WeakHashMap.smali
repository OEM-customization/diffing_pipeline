.class public Ljava/util/WeakHashMap;
.super Ljava/util/AbstractMap;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/WeakHashMap$Entry;,
        Ljava/util/WeakHashMap$EntryIterator;,
        Ljava/util/WeakHashMap$EntrySet;,
        Ljava/util/WeakHashMap$EntrySpliterator;,
        Ljava/util/WeakHashMap$HashIterator;,
        Ljava/util/WeakHashMap$KeyIterator;,
        Ljava/util/WeakHashMap$KeySet;,
        Ljava/util/WeakHashMap$KeySpliterator;,
        Ljava/util/WeakHashMap$ValueIterator;,
        Ljava/util/WeakHashMap$ValueSpliterator;,
        Ljava/util/WeakHashMap$Values;,
        Ljava/util/WeakHashMap$WeakHashMapSpliterator;
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
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final NULL_KEY:Ljava/lang/Object;


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final loadFactor:F

.field modCount:I

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private size:I

.field table:[Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 266
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/WeakHashMap;->NULL_KEY:Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 241
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Ljava/util/WeakHashMap;-><init>(IF)V

    .line 242
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .prologue
    .line 233
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Ljava/util/WeakHashMap;-><init>(IF)V

    .line 234
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 7
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 207
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 180
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 208
    if-gez p1, :cond_26

    .line 209
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal Initial Capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_26
    const/high16 v1, 0x40000000    # 2.0f

    if-le p1, v1, :cond_2c

    .line 212
    const/high16 p1, 0x40000000    # 2.0f

    .line 214
    :cond_2c
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-lez v1, :cond_37

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 215
    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal Load factor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_51
    const/4 v0, 0x1

    .line 218
    .local v0, "capacity":I
    :goto_52
    if-ge v0, p1, :cond_57

    .line 219
    shl-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 220
    :cond_57
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
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/high16 v2, 0x3f400000    # 0.75f

    .line 255
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 256
    const/16 v1, 0x10

    .line 255
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v2}, Ljava/util/WeakHashMap;-><init>(IF)V

    .line 258
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->putAll(Ljava/util/Map;)V

    .line 259
    return-void
.end method

.method private containsNullValue()Z
    .registers 7

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 690
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v3

    .line 691
    .local v3, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v1, v3

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_7
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_1a

    .line 692
    aget-object v0, v3, v1

    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_d
    if-eqz v0, :cond_18

    .line 693
    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v4, :cond_15

    .line 694
    const/4 v4, 0x1

    return v4

    .line 692
    :cond_15
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_d

    :cond_18
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_7

    .line 695
    .end local v0    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1a
    return v5
.end method

.method private static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "y"    # Ljava/lang/Object;

    .prologue
    .line 287
    if-eq p0, p1, :cond_7

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method private expungeStaleEntries()V
    .registers 11

    .prologue
    .line 318
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    :goto_0
    iget-object v7, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v7}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v6

    .local v6, "x":Ljava/lang/Object;
    if-eqz v6, :cond_3d

    .line 319
    iget-object v8, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    monitor-enter v8

    .line 321
    :try_start_b
    move-object v0, v6

    check-cast v0, Ljava/util/WeakHashMap$Entry;

    move-object v1, v0

    .line 322
    .local v1, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v7, v1, Ljava/util/WeakHashMap$Entry;->hash:I

    iget-object v9, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length v9, v9

    invoke-static {v7, v9}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v2

    .line 324
    .local v2, "i":I
    iget-object v7, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    aget-object v5, v7, v2

    .line 325
    .local v5, "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    move-object v4, v5

    .line 326
    .local v4, "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_1d
    if-eqz v4, :cond_32

    .line 327
    iget-object v3, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 328
    .local v3, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    if-ne v4, v1, :cond_3a

    .line 329
    if-ne v5, v1, :cond_34

    .line 330
    iget-object v7, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    aput-object v3, v7, v2

    .line 335
    :goto_29
    const/4 v7, 0x0

    iput-object v7, v1, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 336
    iget v7, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/util/WeakHashMap;->size:I
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_37

    .end local v3    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_32
    monitor-exit v8

    goto :goto_0

    .line 332
    .restart local v3    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_34
    :try_start_34
    iput-object v3, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;
    :try_end_36
    .catchall {:try_start_34 .. :try_end_36} :catchall_37

    goto :goto_29

    .line 319
    .end local v1    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2    # "i":I
    .end local v3    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v4    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v5    # "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :catchall_37
    move-exception v7

    monitor-exit v8

    throw v7

    .line 339
    .restart local v1    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v2    # "i":I
    .restart local v3    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v4    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v5    # "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3a
    move-object v5, v4

    .line 340
    move-object v4, v3

    goto :goto_1d

    .line 344
    .end local v1    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2    # "i":I
    .end local v3    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v4    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v5    # "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3d
    return-void
.end method

.method private getTable()[Ljava/util/WeakHashMap$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/WeakHashMap;->expungeStaleEntries()V

    .line 351
    iget-object v0, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    return-object v0
.end method

.method private static indexFor(II)I
    .registers 3
    .param p0, "h"    # I
    .param p1, "length"    # I

    .prologue
    .line 311
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    return v0
.end method

.method private static maskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .param p0, "key"    # Ljava/lang/Object;

    .prologue
    .line 272
    if-nez p0, :cond_4

    sget-object p0, Ljava/util/WeakHashMap;->NULL_KEY:Ljava/lang/Object;

    .end local p0    # "key":Ljava/lang/Object;
    :cond_4
    return-object p0
.end method

.method private newTable(I)[Ljava/util/WeakHashMap$Entry;
    .registers 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    new-array v0, p1, [Ljava/util/WeakHashMap$Entry;

    return-object v0
.end method

.method private transfer([Ljava/util/WeakHashMap$Entry;[Ljava/util/WeakHashMap$Entry;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "src":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .local p2, "dest":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v7, 0x0

    .line 512
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    array-length v5, p1

    if-ge v2, v5, :cond_30

    .line 513
    aget-object v0, p1, v2

    .line 514
    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    aput-object v7, p1, v2

    .line 515
    :goto_9
    if-eqz v0, :cond_2d

    .line 516
    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 517
    .local v4, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    .line 518
    .local v3, "key":Ljava/lang/Object;
    if-nez v3, :cond_1f

    .line 519
    iput-object v7, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 520
    iput-object v7, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 521
    iget v5, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/WeakHashMap;->size:I

    .line 527
    :goto_1d
    move-object v0, v4

    goto :goto_9

    .line 523
    :cond_1f
    iget v5, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    array-length v6, p2

    invoke-static {v5, v6}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v1

    .line 524
    .local v1, "i":I
    aget-object v5, p2, v1

    iput-object v5, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 525
    aput-object v0, p2, v1

    goto :goto_1d

    .line 512
    .end local v1    # "i":I
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 530
    .end local v0    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_30
    return-void
.end method

.method static unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "key"    # Ljava/lang/Object;

    .prologue
    .line 279
    sget-object v0, Ljava/util/WeakHashMap;->NULL_KEY:Ljava/lang/Object;

    if-ne p0, v0, :cond_5

    const/4 p0, 0x0

    .end local p0    # "key":Ljava/lang/Object;
    :cond_5
    return-object p0
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 652
    :cond_1
    iget-object v0, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 655
    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 656
    iget-object v0, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 657
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap;->size:I

    .line 662
    :cond_17
    iget-object v0, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_17

    .line 664
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 417
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;

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
    .registers 8
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 675
    if-nez p1, :cond_8

    .line 676
    invoke-direct {p0}, Ljava/util/WeakHashMap;->containsNullValue()Z

    move-result v4

    return v4

    .line 678
    :cond_8
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v3

    .line 679
    .local v3, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v1, v3

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_e
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_25

    .line 680
    aget-object v0, v3, v1

    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_14
    if-eqz v0, :cond_23

    .line 681
    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 682
    const/4 v4, 0x1

    return v4

    .line 680
    :cond_20
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_14

    :cond_23
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_e

    .line 683
    .end local v0    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_25
    return v5
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
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
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 965
    iget-object v0, p0, Ljava/util/WeakHashMap;->entrySet:Ljava/util/Set;

    .line 966
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_6

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_5
    return-object v0

    .restart local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_6
    new-instance v0, Ljava/util/WeakHashMap$EntrySet;

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0, v1}, Ljava/util/WeakHashMap$EntrySet;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$EntrySet;)V

    iput-object v0, p0, Ljava/util/WeakHashMap;->entrySet:Ljava/util/Set;

    goto :goto_5
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1017
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    iget v1, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 1020
    .local v1, "expectedModCount":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v3

    .line 1021
    .local v3, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v4, 0x0

    array-length v5, v3

    :goto_b
    if-ge v4, v5, :cond_2f

    aget-object v0, v3, v4

    .line 1022
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_f
    if-eqz v0, :cond_2c

    .line 1023
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    .line 1024
    .local v2, "key":Ljava/lang/Object;
    if-eqz v2, :cond_20

    .line 1025
    invoke-static {v2}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {p1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1027
    :cond_20
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 1029
    iget v6, p0, Ljava/util/WeakHashMap;->modCount:I

    if-eq v1, v6, :cond_f

    .line 1030
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1021
    .end local v2    # "key":Ljava/lang/Object;
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 1034
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_2f
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v6, 0x0

    .line 395
    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 396
    .local v3, "k":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Ljava/util/WeakHashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 397
    .local v1, "h":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v4

    .line 398
    .local v4, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v5, v4

    invoke-static {v1, v5}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v2

    .line 399
    .local v2, "index":I
    aget-object v0, v4, v2

    .line 400
    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_14
    if-eqz v0, :cond_2a

    .line 401
    iget v5, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v5, v1, :cond_27

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/WeakHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 402
    iget-object v5, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    return-object v5

    .line 403
    :cond_27
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_14

    .line 405
    :cond_2a
    return-object v6
.end method

.method getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 426
    .local v3, "k":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Ljava/util/WeakHashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 427
    .local v1, "h":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v4

    .line 428
    .local v4, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v5, v4

    invoke-static {v1, v5}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v2

    .line 429
    .local v2, "index":I
    aget-object v0, v4, v2

    .line 430
    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_13
    if-eqz v0, :cond_2a

    iget v5, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v5, v1, :cond_28

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/WeakHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    :goto_21
    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2a

    .line 431
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_13

    .line 430
    :cond_28
    const/4 v5, 0x0

    goto :goto_21

    .line 432
    :cond_2a
    return-object v0
.end method

.method final hash(Ljava/lang/Object;)I
    .registers 5
    .param p1, "k"    # Ljava/lang/Object;

    .prologue
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

.method public isEmpty()Z
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 374
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 867
    iget-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    .line 868
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_c

    .line 869
    new-instance v0, Ljava/util/WeakHashMap$KeySet;

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0, v1}, Ljava/util/WeakHashMap$KeySet;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$KeySet;)V

    .line 870
    .restart local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iput-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    .line 872
    :cond_c
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v9, 0x0

    .line 448
    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 449
    .local v1, "k":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Ljava/util/WeakHashMap;->hash(Ljava/lang/Object;)I

    move-result v4

    .line 450
    .local v4, "h":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v8

    .line 451
    .local v8, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v0, v8

    invoke-static {v4, v0}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v6

    .line 453
    .local v6, "i":I
    aget-object v5, v8, v6

    .local v5, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_14
    if-eqz v5, :cond_2e

    .line 454
    iget v0, v5, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v4, v0, :cond_2b

    invoke-virtual {v5}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/WeakHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 455
    iget-object v7, v5, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 456
    .local v7, "oldValue":Ljava/lang/Object;, "TV;"
    if-eq p2, v7, :cond_2a

    .line 457
    iput-object p2, v5, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 458
    :cond_2a
    return-object v7

    .line 453
    .end local v7    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2b
    iget-object v5, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_14

    .line 462
    :cond_2e
    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 463
    aget-object v5, v8, v6

    .line 464
    new-instance v0, Ljava/util/WeakHashMap$Entry;

    iget-object v3, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;ILjava/util/WeakHashMap$Entry;)V

    aput-object v0, v8, v6

    .line 465
    iget v0, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/WeakHashMap;->size:I

    iget v2, p0, Ljava/util/WeakHashMap;->threshold:I

    if-lt v0, v2, :cond_50

    .line 466
    array-length v0, v8

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->resize(I)V

    .line 467
    :cond_50
    return-object v9
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
    .line 541
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    .line 542
    .local v3, "numKeysToBeAdded":I
    if-nez v3, :cond_7

    .line 543
    return-void

    .line 554
    :cond_7
    iget v5, p0, Ljava/util/WeakHashMap;->threshold:I

    if-le v3, v5, :cond_29

    .line 555
    int-to-float v5, v3

    iget v6, p0, Ljava/util/WeakHashMap;->loadFactor:F

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    float-to-int v4, v5

    .line 556
    .local v4, "targetCapacity":I
    const/high16 v5, 0x40000000    # 2.0f

    if-le v4, v5, :cond_19

    .line 557
    const/high16 v4, 0x40000000    # 2.0f

    .line 558
    :cond_19
    iget-object v5, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length v2, v5

    .line 559
    .local v2, "newCapacity":I
    :goto_1c
    if-ge v2, v4, :cond_21

    .line 560
    shl-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 561
    :cond_21
    iget-object v5, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length v5, v5

    if-le v2, v5, :cond_29

    .line 562
    invoke-virtual {p0, v2}, Ljava/util/WeakHashMap;->resize(I)V

    .line 565
    .end local v2    # "newCapacity":I
    .end local v4    # "targetCapacity":I
    :cond_29
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 566
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    .line 567
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_49
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v8, 0x0

    .line 590
    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 591
    .local v3, "k":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Ljava/util/WeakHashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 592
    .local v1, "h":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v6

    .line 593
    .local v6, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v7, v6

    invoke-static {v1, v7}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v2

    .line 594
    .local v2, "i":I
    aget-object v5, v6, v2

    .line 595
    .local v5, "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    move-object v0, v5

    .line 597
    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_15
    if-eqz v0, :cond_40

    .line 598
    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 599
    .local v4, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v7, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v1, v7, :cond_3d

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v7}, Ljava/util/WeakHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 600
    iget v7, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 601
    iget v7, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/util/WeakHashMap;->size:I

    .line 602
    if-ne v5, v0, :cond_3a

    .line 603
    aput-object v4, v6, v2

    .line 606
    :goto_37
    iget-object v7, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    return-object v7

    .line 605
    :cond_3a
    iput-object v4, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_37

    .line 608
    :cond_3d
    move-object v5, v0

    .line 609
    move-object v0, v4

    goto :goto_15

    .line 612
    .end local v4    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_40
    return-object v8
.end method

.method removeMapping(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v9, 0x0

    .line 617
    instance-of v8, p1, Ljava/util/Map$Entry;

    if-nez v8, :cond_6

    .line 618
    return v9

    .line 619
    :cond_6
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v7

    .local v7, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    move-object v1, p1

    .line 620
    check-cast v1, Ljava/util/Map$Entry;

    .line 621
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 622
    .local v4, "k":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Ljava/util/WeakHashMap;->hash(Ljava/lang/Object;)I

    move-result v2

    .line 623
    .local v2, "h":I
    array-length v8, v7

    invoke-static {v2, v8}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v3

    .line 624
    .local v3, "i":I
    aget-object v6, v7, v3

    .line 625
    .local v6, "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    move-object v0, v6

    .line 627
    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_21
    if-eqz v0, :cond_47

    .line 628
    iget-object v5, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 629
    .local v5, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v8, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v2, v8, :cond_44

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 630
    iget v8, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 631
    iget v8, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Ljava/util/WeakHashMap;->size:I

    .line 632
    if-ne v6, v0, :cond_41

    .line 633
    aput-object v5, v7, v3

    .line 636
    :goto_3f
    const/4 v8, 0x1

    return v8

    .line 635
    :cond_41
    iput-object v5, v6, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_3f

    .line 638
    :cond_44
    move-object v6, v0

    .line 639
    move-object v0, v5

    goto :goto_21

    .line 642
    .end local v5    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_47
    return v9
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1039
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    iget v1, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 1042
    .local v1, "expectedModCount":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v3

    .line 1043
    .local v3, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v4, 0x0

    array-length v5, v3

    :goto_b
    if-ge v4, v5, :cond_32

    aget-object v0, v3, v4

    .line 1044
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_f
    if-eqz v0, :cond_2f

    .line 1045
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    .line 1046
    .local v2, "key":Ljava/lang/Object;
    if-eqz v2, :cond_23

    .line 1047
    invoke-static {v2}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {p1, v6, v7}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 1049
    :cond_23
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 1051
    iget v6, p0, Ljava/util/WeakHashMap;->modCount:I

    if-eq v1, v6, :cond_f

    .line 1052
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1043
    .end local v2    # "key":Ljava/lang/Object;
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 1056
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_32
    return-void
.end method

.method resize(I)V
    .registers 7
    .param p1, "newCapacity"    # I

    .prologue
    .line 485
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v2

    .line 486
    .local v2, "oldTable":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v1, v2

    .line 487
    .local v1, "oldCapacity":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_f

    .line 488
    const v3, 0x7fffffff

    iput v3, p0, Ljava/util/WeakHashMap;->threshold:I

    .line 489
    return-void

    .line 492
    :cond_f
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap;->newTable(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    .line 493
    .local v0, "newTable":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    invoke-direct {p0, v2, v0}, Ljava/util/WeakHashMap;->transfer([Ljava/util/WeakHashMap$Entry;[Ljava/util/WeakHashMap$Entry;)V

    .line 494
    iput-object v0, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

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

    .line 508
    :goto_27
    return-void

    .line 504
    :cond_28
    invoke-direct {p0}, Ljava/util/WeakHashMap;->expungeStaleEntries()V

    .line 505
    invoke-direct {p0, v0, v2}, Ljava/util/WeakHashMap;->transfer([Ljava/util/WeakHashMap$Entry;[Ljava/util/WeakHashMap$Entry;)V

    .line 506
    iput-object v2, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    goto :goto_27
.end method

.method public size()I
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 361
    iget v0, p0, Ljava/util/WeakHashMap;->size:I

    if-nez v0, :cond_6

    .line 362
    return v1

    .line 363
    :cond_6
    invoke-direct {p0}, Ljava/util/WeakHashMap;->expungeStaleEntries()V

    .line 364
    iget v0, p0, Ljava/util/WeakHashMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 920
    iget-object v0, p0, Ljava/util/WeakHashMap;->values:Ljava/util/Collection;

    .line 921
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_c

    .line 922
    new-instance v0, Ljava/util/WeakHashMap$Values;

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0, v1}, Ljava/util/WeakHashMap$Values;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$Values;)V

    .line 923
    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iput-object v0, p0, Ljava/util/WeakHashMap;->values:Ljava/util/Collection;

    .line 925
    :cond_c
    return-object v0
.end method
