.class public Ljava/net/InMemoryCookieStore;
.super Ljava/lang/Object;
.source "InMemoryCookieStore.java"

# interfaces
.implements Ljava/net/CookieStore;


# instance fields
.field private final applyMCompatibility:Z

.field private lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private uriIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/net/InMemoryCookieStore;-><init>(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "targetSdkVersion"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    .line 51
    iput-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    .line 64
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1, v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 65
    const/16 v1, 0x17

    if-gt p1, v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    iput-boolean v0, p0, Ljava/net/InMemoryCookieStore;->applyMCompatibility:Z

    .line 66
    return-void
.end method

.method private addIndex(Ljava/util/Map;Ljava/lang/Object;Ljava/net/HttpCookie;)V
    .registers 5
    .param p3, "cookie"    # Ljava/net/HttpCookie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TT;",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;>;TT;",
            "Ljava/net/HttpCookie;",
            ")V"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, "indexStore":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    .local p2, "index":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 343
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-eqz v0, :cond_f

    .line 345
    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 347
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :goto_e
    return-void

    .line 349
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .restart local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e
.end method

.method private getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;
    .registers 9
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    const/4 v1, 0x0

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "effectiveURI":Ljava/net/URI;
    if-nez p1, :cond_5

    .line 363
    return-object v1

    .line 366
    :cond_5
    :try_start_5
    new-instance v0, Ljava/net/URI;

    .end local v0    # "effectiveURI":Ljava/net/URI;
    const-string/jumbo v1, "http"

    .line 367
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 368
    const/4 v3, 0x0

    .line 369
    const/4 v4, 0x0

    .line 370
    const/4 v5, 0x0

    .line 366
    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_14} :catch_15

    .line 376
    .local v0, "effectiveURI":Ljava/net/URI;
    :goto_14
    return-object v0

    .line 372
    .end local v0    # "effectiveURI":Ljava/net/URI;
    :catch_15
    move-exception v6

    .line 373
    .local v6, "ignored":Ljava/net/URISyntaxException;
    move-object v0, p1

    .restart local v0    # "effectiveURI":Ljava/net/URI;
    goto :goto_14
.end method

.method private getInternal1(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .registers 13
    .param p3, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .local p2, "cookieIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v6, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/HttpCookie;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "entry$iterator":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_78

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 277
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/URI;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 278
    .local v5, "lst":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 279
    .local v0, "c":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "domain":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v7

    if-nez v7, :cond_3f

    invoke-direct {p0, v2, p3}, Ljava/net/InMemoryCookieStore;->netscapeDomainMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4c

    .line 281
    :cond_3f
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_23

    invoke-static {v2, p3}, Ljava/net/HttpCookie;->domainMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 280
    if-eqz v7, :cond_23

    .line 284
    :cond_4c
    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v7

    if-nez v7, :cond_5c

    .line 286
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 287
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 290
    :cond_5c
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 295
    .end local v0    # "c":Ljava/net/HttpCookie;
    .end local v2    # "domain":Ljava/lang/String;
    :cond_60
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 296
    .restart local v0    # "c":Ljava/net/HttpCookie;
    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_64

    .line 299
    .end local v0    # "c":Ljava/net/HttpCookie;
    :cond_74
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_d

    .line 301
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/URI;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    .end local v5    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_78
    return-void
.end method

.method private getInternal2(Ljava/util/List;Ljava/util/Map;Ljava/lang/Comparable;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/util/Map",
            "<TT;",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .local p2, "cookieIndex":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    .local p3, "comparator":Ljava/lang/Comparable;, "TT;"
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "index$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 313
    .local v1, "index":Ljava/lang/Comparable;, "TT;"
    if-eq v1, p3, :cond_1e

    if-eqz v1, :cond_8

    invoke-interface {p3, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_8

    .line 314
    :cond_1e
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 316
    .local v3, "indexedCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-eqz v3, :cond_8

    .line 317
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 318
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_2a
    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 319
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 321
    .local v0, "ck":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v5

    if-nez v5, :cond_46

    .line 323
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 324
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 326
    :cond_46
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2a

    .line 332
    .end local v0    # "ck":Ljava/net/HttpCookie;
    .end local v1    # "index":Ljava/lang/Comparable;, "TT;"
    .end local v3    # "indexedCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_4a
    return-void
.end method

.method private netscapeDomainMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/16 v8, 0x2e

    const/4 v6, 0x0

    .line 225
    if-eqz p1, :cond_9

    if-nez p2, :cond_a

    .line 226
    :cond_9
    return v6

    .line 230
    :cond_a
    const-string/jumbo v7, ".local"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 231
    .local v4, "isLocalDomain":Z
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 232
    .local v2, "embeddedDotInDomain":I
    if-nez v2, :cond_1b

    .line 233
    invoke-virtual {p1, v8, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 235
    :cond_1b
    if-nez v4, :cond_28

    if-eq v2, v9, :cond_27

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_28

    .line 236
    :cond_27
    return v6

    .line 240
    :cond_28
    invoke-virtual {p2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 241
    .local v3, "firstDotInHost":I
    if-ne v3, v9, :cond_31

    if-eqz v4, :cond_31

    .line 242
    return v10

    .line 245
    :cond_31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 246
    .local v1, "domainLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v5, v7, v1

    .line 247
    .local v5, "lengthDiff":I
    if-nez v5, :cond_42

    .line 249
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    return v6

    .line 250
    :cond_42
    if-lez v5, :cond_5d

    .line 252
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "D":Ljava/lang/String;
    iget-boolean v7, p0, Ljava/net/InMemoryCookieStore;->applyMCompatibility:Z

    if-eqz v7, :cond_58

    const-string/jumbo v7, "."

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_58

    .line 258
    return v6

    .line 261
    :cond_58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    return v6

    .line 262
    .end local v0    # "D":Ljava/lang/String;
    :cond_5d
    if-ne v5, v9, :cond_6e

    .line 264
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_6d

    .line 265
    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 264
    :cond_6d
    return v6

    .line 268
    :cond_6e
    return v6
.end method


# virtual methods
.method public add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    .registers 5
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookie"    # Ljava/net/HttpCookie;

    .prologue
    .line 73
    if-nez p2, :cond_b

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "cookie is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_b
    iget-object v0, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 82
    :try_start_10
    iget-object v0, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-direct {p0, p1}, Ljava/net/InMemoryCookieStore;->getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Ljava/net/InMemoryCookieStore;->addIndex(Ljava/util/Map;Ljava/lang/Object;Ljava/net/HttpCookie;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1f

    .line 85
    iget-object v0, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 87
    return-void

    .line 84
    :catchall_1f
    move-exception v0

    .line 85
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 84
    throw v0
.end method

.method public get(Ljava/net/URI;)Ljava/util/List;
    .registers 5
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    if-nez p1, :cond_b

    .line 100
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "uri is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 107
    :try_start_15
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ljava/net/InMemoryCookieStore;->getInternal1(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-direct {p0, p1}, Ljava/net/InMemoryCookieStore;->getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ljava/net/InMemoryCookieStore;->getInternal2(Ljava/util/List;Ljava/util/Map;Ljava/lang/Comparable;)V
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_2d

    .line 111
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 114
    return-object v0

    .line 110
    :catchall_2d
    move-exception v1

    .line 111
    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 110
    throw v1
.end method

.method public getCookies()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v4, "rt":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v5, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 125
    :try_start_a
    iget-object v5, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "list$iterator":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 126
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 127
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 129
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_39
    .catchall {:try_start_a .. :try_end_39} :catchall_3a

    goto :goto_24

    .line 136
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v3    # "list$iterator":Ljava/util/Iterator;
    :catchall_3a
    move-exception v5

    .line 137
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 138
    iget-object v6, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 136
    throw v5

    .line 131
    .restart local v0    # "cookie":Ljava/net/HttpCookie;
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .restart local v3    # "list$iterator":Ljava/util/Iterator;
    :cond_45
    :try_start_45
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 132
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_3a

    goto :goto_24

    .line 137
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_4f
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 138
    iget-object v5, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 141
    return-object v4
.end method

.method public getURIs()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v1, "uris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 153
    :try_start_a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 154
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 155
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_2c

    move-result-object v2

    .line 157
    iget-object v3, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    iget-object v3, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 155
    return-object v2

    .line 156
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :catchall_2c
    move-exception v2

    .line 157
    iget-object v3, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    iget-object v3, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 156
    throw v2
.end method

.method public remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .registers 6
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "ck"    # Ljava/net/HttpCookie;

    .prologue
    const/4 v2, 0x0

    .line 168
    if-nez p2, :cond_c

    .line 169
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "cookie is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_c
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 174
    :try_start_11
    invoke-direct {p0, p1}, Ljava/net/InMemoryCookieStore;->getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 175
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_3d

    move-result-object v1

    if-nez v1, :cond_23

    .line 186
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 176
    return v2

    .line 178
    :cond_23
    :try_start_23
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 179
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-eqz v0, :cond_37

    .line 180
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_3d

    move-result v1

    .line 186
    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 180
    return v1

    .line 186
    :cond_37
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 182
    return v2

    .line 185
    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :catchall_3d
    move-exception v1

    .line 186
    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 185
    throw v1
.end method

.method public removeAll()Z
    .registers 4

    .prologue
    .line 195
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 196
    const/4 v0, 0x0

    .line 199
    .local v0, "result":Z
    :try_start_6
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    .line 200
    .local v0, "result":Z
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_19

    .line 202
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 205
    return v0

    .line 201
    .end local v0    # "result":Z
    :catchall_19
    move-exception v1

    .line 202
    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 201
    throw v1
.end method
