.class final Ljava/util/WeakHashMap$EntrySpliterator;
.super Ljava/util/WeakHashMap$WeakHashMapSpliterator;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntrySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/WeakHashMap$WeakHashMapSpliterator",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap;IIII)V
    .registers 6
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap",
            "<TK;TV;>;IIII)V"
        }
    .end annotation

    .prologue
    .line 1259
    .local p0, "this":Ljava/util/WeakHashMap$EntrySpliterator;, "Ljava/util/WeakHashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    .line 1260
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .prologue
    .line 1335
    .local p0, "this":Ljava/util/WeakHashMap$EntrySpliterator;, "Ljava/util/WeakHashMap$EntrySpliterator<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$EntrySpliterator;, "Ljava/util/WeakHashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v11, 0x0

    .line 1272
    if-nez p1, :cond_9

    .line 1273
    new-instance v10, Ljava/lang/NullPointerException;

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v10

    .line 1274
    :cond_9
    iget-object v4, p0, Ljava/util/WeakHashMap$EntrySpliterator;->map:Ljava/util/WeakHashMap;

    .line 1275
    .local v4, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v7, v4, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 1276
    .local v7, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v0, p0, Ljava/util/WeakHashMap$EntrySpliterator;->fence:I

    .local v0, "hi":I
    if-gez v0, :cond_38

    .line 1277
    iget v5, v4, Ljava/util/WeakHashMap;->modCount:I

    iput v5, p0, Ljava/util/WeakHashMap$EntrySpliterator;->expectedModCount:I

    .line 1278
    .local v5, "mc":I
    array-length v0, v7

    .end local v0    # "hi":I
    iput v0, p0, Ljava/util/WeakHashMap$EntrySpliterator;->fence:I

    .line 1282
    .restart local v0    # "hi":I
    :goto_18
    array-length v10, v7

    if-lt v10, v0, :cond_53

    iget v1, p0, Ljava/util/WeakHashMap$EntrySpliterator;->index:I

    .local v1, "i":I
    if-ltz v1, :cond_53

    .line 1283
    iput v0, p0, Ljava/util/WeakHashMap$EntrySpliterator;->index:I

    if-lt v1, v0, :cond_27

    iget-object v10, p0, Ljava/util/WeakHashMap$EntrySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-eqz v10, :cond_53

    .line 1284
    :cond_27
    iget-object v6, p0, Ljava/util/WeakHashMap$EntrySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    .line 1285
    .local v6, "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iput-object v11, p0, Ljava/util/WeakHashMap$EntrySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    move v2, v1

    .line 1287
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_2c
    if-nez v6, :cond_3b

    .line 1288
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-object v6, v7, v2

    .line 1300
    :goto_32
    if-nez v6, :cond_36

    if-ge v1, v0, :cond_53

    :cond_36
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2c

    .line 1281
    .end local v2    # "i":I
    .end local v5    # "mc":I
    .end local v6    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_38
    iget v5, p0, Ljava/util/WeakHashMap$EntrySpliterator;->expectedModCount:I

    .restart local v5    # "mc":I
    goto :goto_18

    .line 1290
    .restart local v2    # "i":I
    .restart local v6    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3b
    invoke-virtual {v6}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v9

    .line 1291
    .local v9, "x":Ljava/lang/Object;
    iget-object v8, v6, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 1292
    .local v8, "v":Ljava/lang/Object;, "TV;"
    iget-object v6, v6, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 1293
    if-eqz v9, :cond_5e

    .line 1295
    invoke-static {v9}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1297
    .local v3, "k":Ljava/lang/Object;, "TK;"
    new-instance v10, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v10, v3, v8}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1296
    invoke-interface {p1, v10}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_32

    .line 1302
    .end local v1    # "i":I
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    .end local v6    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v8    # "v":Ljava/lang/Object;, "TV;"
    .end local v9    # "x":Ljava/lang/Object;
    :cond_53
    iget v10, v4, Ljava/util/WeakHashMap;->modCount:I

    if-eq v10, v5, :cond_5d

    .line 1303
    new-instance v10, Ljava/util/ConcurrentModificationException;

    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v10

    .line 1304
    :cond_5d
    return-void

    .restart local v2    # "i":I
    .restart local v6    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v8    # "v":Ljava/lang/Object;, "TV;"
    .restart local v9    # "x":Ljava/lang/Object;
    :cond_5e
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_32
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$EntrySpliterator;, "Ljava/util/WeakHashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v7, 0x0

    .line 1308
    if-nez p1, :cond_9

    .line 1309
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 1310
    :cond_9
    iget-object v5, p0, Ljava/util/WeakHashMap$EntrySpliterator;->map:Ljava/util/WeakHashMap;

    iget-object v2, v5, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 1311
    .local v2, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v5, v2

    invoke-virtual {p0}, Ljava/util/WeakHashMap$EntrySpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    if-lt v5, v0, :cond_5d

    iget v5, p0, Ljava/util/WeakHashMap$EntrySpliterator;->index:I

    if-ltz v5, :cond_5d

    .line 1312
    :cond_18
    :goto_18
    iget-object v5, p0, Ljava/util/WeakHashMap$EntrySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-nez v5, :cond_20

    iget v5, p0, Ljava/util/WeakHashMap$EntrySpliterator;->index:I

    if-ge v5, v0, :cond_5d

    .line 1313
    :cond_20
    iget-object v5, p0, Ljava/util/WeakHashMap$EntrySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-nez v5, :cond_2f

    .line 1314
    iget v5, p0, Ljava/util/WeakHashMap$EntrySpliterator;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/util/WeakHashMap$EntrySpliterator;->index:I

    aget-object v5, v2, v5

    iput-object v5, p0, Ljava/util/WeakHashMap$EntrySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    goto :goto_18

    .line 1316
    :cond_2f
    iget-object v5, p0, Ljava/util/WeakHashMap$EntrySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    invoke-virtual {v5}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    .line 1317
    .local v4, "x":Ljava/lang/Object;
    iget-object v5, p0, Ljava/util/WeakHashMap$EntrySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    iget-object v3, v5, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 1318
    .local v3, "v":Ljava/lang/Object;, "TV;"
    iget-object v5, p0, Ljava/util/WeakHashMap$EntrySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    iget-object v5, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v5, p0, Ljava/util/WeakHashMap$EntrySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    .line 1319
    if-eqz v4, :cond_18

    .line 1321
    invoke-static {v4}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1323
    .local v1, "k":Ljava/lang/Object;, "TK;"
    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v5, v1, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1322
    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1324
    iget-object v5, p0, Ljava/util/WeakHashMap$EntrySpliterator;->map:Ljava/util/WeakHashMap;

    iget v5, v5, Ljava/util/WeakHashMap;->modCount:I

    iget v6, p0, Ljava/util/WeakHashMap$EntrySpliterator;->expectedModCount:I

    if-eq v5, v6, :cond_5b

    .line 1325
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 1326
    :cond_5b
    const/4 v5, 0x1

    return v5

    .line 1331
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .end local v4    # "x":Ljava/lang/Object;
    :cond_5d
    return v7
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 1262
    .local p0, "this":Ljava/util/WeakHashMap$EntrySpliterator;, "Ljava/util/WeakHashMap$EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$EntrySpliterator;->trySplit()Ljava/util/WeakHashMap$EntrySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/WeakHashMap$EntrySpliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap$EntrySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1263
    .local p0, "this":Ljava/util/WeakHashMap$EntrySpliterator;, "Ljava/util/WeakHashMap$EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$EntrySpliterator;->getFence()I

    move-result v6

    .local v6, "hi":I
    iget v2, p0, Ljava/util/WeakHashMap$EntrySpliterator;->index:I

    .local v2, "lo":I
    add-int v0, v2, v6

    ushr-int/lit8 v3, v0, 0x1

    .line 1264
    .local v3, "mid":I
    if-lt v2, v3, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 1265
    :cond_e
    new-instance v0, Ljava/util/WeakHashMap$EntrySpliterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$EntrySpliterator;->map:Ljava/util/WeakHashMap;

    iput v3, p0, Ljava/util/WeakHashMap$EntrySpliterator;->index:I

    iget v4, p0, Ljava/util/WeakHashMap$EntrySpliterator;->est:I

    ushr-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/WeakHashMap$EntrySpliterator;->est:I

    .line 1266
    iget v5, p0, Ljava/util/WeakHashMap$EntrySpliterator;->expectedModCount:I

    .line 1265
    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$EntrySpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    goto :goto_d
.end method
