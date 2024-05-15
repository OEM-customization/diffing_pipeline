.class public Ljava/util/LinkedHashMap;
.super Ljava/util/HashMap;
.source "LinkedHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/LinkedHashMap$LinkedEntryIterator;,
        Ljava/util/LinkedHashMap$LinkedValueIterator;,
        Ljava/util/LinkedHashMap$LinkedKeyIterator;,
        Ljava/util/LinkedHashMap$LinkedHashIterator;,
        Ljava/util/LinkedHashMap$LinkedEntrySet;,
        Ljava/util/LinkedHashMap$LinkedValues;,
        Ljava/util/LinkedHashMap$LinkedKeySet;,
        Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x34c04e5c106cc0fbL


# instance fields
.field final greylist-max-r accessOrder:Z

.field transient greylist-max-o head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field transient greylist-max-o tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 392
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    .line 394
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 383
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    .line 385
    return-void
.end method

.method public constructor whitelist test-api <init>(IF)V
    .registers 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 371
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    .line 373
    return-void
.end method

.method public constructor whitelist test-api <init>(IFZ)V
    .registers 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "accessOrder"    # Z

    .line 425
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    .line 426
    iput-boolean p3, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    .line 427
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 406
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    .line 408
    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->putMapEntries(Ljava/util/Map;Z)V

    .line 409
    return-void
.end method

.method private greylist-max-o linkNodeLast(Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 247
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "p":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 248
    .local v0, "last":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    iput-object p1, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 249
    if-nez v0, :cond_9

    .line 250
    iput-object p1, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_d

    .line 252
    :cond_9
    iput-object v0, p1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 253
    iput-object p1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 255
    :goto_d
    return-void
.end method

.method private greylist-max-o transferLinks(Ljava/util/LinkedHashMap$LinkedHashMapEntry;Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry<",
            "TK;TV;>;",
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 260
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "src":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    .local p2, "dst":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    iget-object v0, p1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v0, p2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 261
    .local v0, "b":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    iget-object v1, p1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v1, p2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 262
    .local v1, "a":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    if-nez v0, :cond_d

    .line 263
    iput-object p2, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_f

    .line 265
    :cond_d
    iput-object p2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 266
    :goto_f
    if-nez v1, :cond_14

    .line 267
    iput-object p2, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_16

    .line 269
    :cond_14
    iput-object p2, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 270
    :goto_16
    return-void
.end method


# virtual methods
.method greylist-max-o afterNodeAccess(Ljava/util/HashMap$Node;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 331
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    move-object v1, v0

    .local v1, "last":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    if-eq v0, p1, :cond_31

    .line 332
    move-object v0, p1

    check-cast v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 333
    .local v0, "p":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .local v2, "b":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    iget-object v3, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 334
    .local v3, "a":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    const/4 v4, 0x0

    iput-object v4, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 335
    if-nez v2, :cond_18

    .line 336
    iput-object v3, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_1a

    .line 338
    :cond_18
    iput-object v3, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 339
    :goto_1a
    if-eqz v3, :cond_1f

    .line 340
    iput-object v2, v3, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_20

    .line 342
    :cond_1f
    move-object v1, v2

    .line 343
    :goto_20
    if-nez v1, :cond_25

    .line 344
    iput-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_29

    .line 346
    :cond_25
    iput-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 347
    iput-object v0, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 349
    :goto_29
    iput-object v0, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 350
    iget v4, p0, Ljava/util/LinkedHashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/LinkedHashMap;->modCount:I

    .line 352
    .end local v0    # "p":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    .end local v1    # "last":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    .end local v2    # "b":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    .end local v3    # "a":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :cond_31
    return-void
.end method

.method greylist-max-o afterNodeInsertion(Z)V
    .registers 10
    .param p1, "evict"    # Z

    .line 323
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    if-eqz p1, :cond_1b

    iget-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    move-object v1, v0

    .local v1, "first":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    if-eqz v0, :cond_1b

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->removeEldestEntry(Ljava/util/Map$Entry;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 324
    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    .line 325
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-static {v0}, Ljava/util/LinkedHashMap;->hash(Ljava/lang/Object;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Ljava/util/LinkedHashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    .line 327
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    .end local v1    # "first":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :cond_1b
    return-void
.end method

.method greylist-max-o afterNodeRemoval(Ljava/util/HashMap$Node;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 308
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 309
    .local v0, "p":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .local v1, "b":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 310
    .local v2, "a":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    const/4 v3, 0x0

    iput-object v3, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v3, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 311
    if-nez v1, :cond_11

    .line 312
    iput-object v2, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_13

    .line 314
    :cond_11
    iput-object v2, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 315
    :goto_13
    if-nez v2, :cond_18

    .line 316
    iput-object v1, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_1a

    .line 318
    :cond_18
    iput-object v1, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 319
    :goto_1a
    return-void
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 487
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 489
    return-void
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "value"    # Ljava/lang/Object;

    .line 439
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .local v0, "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_16

    .line 440
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    .line 441
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eq v1, p1, :cond_14

    if-eqz p1, :cond_11

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_14

    .line 439
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_11
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_2

    .line 442
    .restart local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_14
    :goto_14
    const/4 v2, 0x1

    return v2

    .line 444
    .end local v0    # "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public greylist test-api eldest()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 500
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    return-object v0
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 673
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap;->entrySet:Ljava/util/Set;

    move-object v1, v0

    .local v1, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_d

    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntrySet;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap$LinkedEntrySet;-><init>(Ljava/util/LinkedHashMap;)V

    iput-object v0, p0, Ljava/util/LinkedHashMap;->entrySet:Ljava/util/Set;

    goto :goto_e

    :cond_d
    move-object v0, v1

    :goto_e
    return-object v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 719
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-eqz p1, :cond_21

    .line 721
    iget v0, p0, Ljava/util/LinkedHashMap;->modCount:I

    .line 723
    .local v0, "mc":I
    iget-object v1, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .local v1, "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :goto_6
    iget v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v2, v0, :cond_16

    if-eqz v1, :cond_16

    .line 724
    iget-object v2, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    iget-object v3, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 723
    iget-object v1, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_6

    .line 725
    .end local v1    # "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :cond_16
    iget v1, p0, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v1, v0, :cond_1b

    .line 727
    return-void

    .line 726
    :cond_1b
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 720
    .end local v0    # "mc":I
    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 464
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/LinkedHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedHashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v0, :cond_d

    .line 465
    const/4 v0, 0x0

    return-object v0

    .line 466
    :cond_d
    iget-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v0, :cond_14

    .line 467
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 468
    :cond_14
    iget-object v0, v1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 476
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/util/LinkedHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedHashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v0, :cond_c

    .line 477
    return-object p2

    .line 478
    :cond_c
    iget-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v0, :cond_13

    .line 479
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 480
    :cond_13
    iget-object v0, v1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method greylist-max-o internalWriteEntries(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .local v0, "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_11

    .line 356
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 357
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 355
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_2

    .line 359
    .end local v0    # "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :cond_11
    return-void
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 567
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap;->keySet:Ljava/util/Set;

    .line 568
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_c

    .line 569
    new-instance v1, Ljava/util/LinkedHashMap$LinkedKeySet;

    invoke-direct {v1, p0}, Ljava/util/LinkedHashMap$LinkedKeySet;-><init>(Ljava/util/LinkedHashMap;)V

    move-object v0, v1

    .line 570
    iput-object v0, p0, Ljava/util/LinkedHashMap;->keySet:Ljava/util/Set;

    .line 572
    :cond_c
    return-object v0
.end method

.method greylist-max-o newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;
    .registers 6
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 280
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    .line 282
    .local v0, "p":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;->linkNodeLast(Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V

    .line 283
    return-object v0
.end method

.method greylist-max-o newTreeNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$TreeNode;
    .registers 6
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 295
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$TreeNode;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/HashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    .line 296
    .local v0, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;->linkNodeLast(Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V

    .line 297
    return-object v0
.end method

.method greylist-max-o reinitialize()V
    .registers 2

    .line 275
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-super {p0}, Ljava/util/HashMap;->reinitialize()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 277
    return-void
.end method

.method protected whitelist test-api removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 545
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 730
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_24

    .line 732
    iget v0, p0, Ljava/util/LinkedHashMap;->modCount:I

    .line 734
    .local v0, "mc":I
    iget-object v1, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .local v1, "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :goto_6
    iget v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v2, v0, :cond_19

    if-eqz v1, :cond_19

    .line 735
    iget-object v2, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    iget-object v3, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    .line 734
    iget-object v1, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_6

    .line 736
    .end local v1    # "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :cond_19
    iget v1, p0, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v1, v0, :cond_1e

    .line 738
    return-void

    .line 737
    :cond_1e
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 731
    .end local v0    # "mc":I
    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method greylist-max-o replacementNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 287
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local p2, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 288
    .local v0, "q":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    new-instance v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->hash:I

    iget-object v3, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    iget-object v4, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4, p2}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    .line 290
    .local v1, "t":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    invoke-direct {p0, v0, v1}, Ljava/util/LinkedHashMap;->transferLinks(Ljava/util/LinkedHashMap$LinkedHashMapEntry;Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V

    .line 291
    return-object v1
.end method

.method greylist-max-o replacementTreeNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$TreeNode;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 301
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local p2, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 302
    .local v0, "q":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    new-instance v1, Ljava/util/HashMap$TreeNode;

    iget v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->hash:I

    iget-object v3, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    iget-object v4, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4, p2}, Ljava/util/HashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    .line 303
    .local v1, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    invoke-direct {p0, v0, v1}, Ljava/util/LinkedHashMap;->transferLinks(Ljava/util/LinkedHashMap$LinkedHashMapEntry;Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V

    .line 304
    return-object v1
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 621
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap;->values:Ljava/util/Collection;

    .line 622
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_c

    .line 623
    new-instance v1, Ljava/util/LinkedHashMap$LinkedValues;

    invoke-direct {v1, p0}, Ljava/util/LinkedHashMap$LinkedValues;-><init>(Ljava/util/LinkedHashMap;)V

    move-object v0, v1

    .line 624
    iput-object v0, p0, Ljava/util/LinkedHashMap;->values:Ljava/util/Collection;

    .line 626
    :cond_c
    return-object v0
.end method
