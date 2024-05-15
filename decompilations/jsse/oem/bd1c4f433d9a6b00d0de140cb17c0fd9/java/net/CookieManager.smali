.class public Ljava/net/CookieManager;
.super Ljava/net/CookieHandler;
.source "CookieManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/CookieManager$CookiePathComparator;
    }
.end annotation


# instance fields
.field private cookieJar:Ljava/net/CookieStore;

.field private policyCallback:Ljava/net/CookiePolicy;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Ljava/net/CookieManager;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, v0, v0}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V
    .registers 4
    .param p1, "store"    # Ljava/net/CookieStore;
    .param p2, "cookiePolicy"    # Ljava/net/CookiePolicy;

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-direct {p0}, Ljava/net/CookieHandler;-><init>()V

    .line 125
    iput-object v0, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    .line 157
    if-nez p2, :cond_a

    sget-object p2, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    .end local p2    # "cookiePolicy":Ljava/net/CookiePolicy;
    :cond_a
    iput-object p2, p0, Ljava/net/CookieManager;->policyCallback:Ljava/net/CookiePolicy;

    .line 161
    if-nez p1, :cond_16

    .line 162
    new-instance v0, Ljava/net/InMemoryCookieStore;

    invoke-direct {v0}, Ljava/net/InMemoryCookieStore;-><init>()V

    iput-object v0, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    .line 166
    :goto_15
    return-void

    .line 164
    :cond_16
    iput-object p1, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    goto :goto_15
.end method

.method private static isInPortList(Ljava/lang/String;I)Z
    .registers 8
    .param p0, "lst"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 366
    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 367
    .local v0, "i":I
    const/4 v2, -0x1

    .line 368
    .local v2, "val":I
    :goto_a
    if-lez v0, :cond_27

    .line 370
    const/4 v3, 0x0

    :try_start_d
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_14} :catch_18

    move-result v2

    .line 371
    if-ne v2, p1, :cond_19

    .line 372
    return v5

    .line 374
    :catch_18
    move-exception v1

    .line 376
    :cond_19
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 377
    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_a

    .line 379
    :cond_27
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_35

    .line 381
    :try_start_2d
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_30} :catch_34

    move-result v2

    .line 382
    if-ne v2, p1, :cond_35

    .line 383
    return v5

    .line 385
    :catch_34
    move-exception v1

    .line 388
    :cond_35
    return v4
.end method

.method private static normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 399
    if-nez p0, :cond_5

    .line 400
    const-string/jumbo p0, ""

    .line 403
    :cond_5
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 407
    :cond_22
    return-object p0
.end method

.method private static pathMatches(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .registers 4
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "cookie"    # Ljava/net/HttpCookie;

    .prologue
    .line 395
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/CookieManager;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/CookieManager;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .registers 5
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookie"    # Ljava/net/HttpCookie;

    .prologue
    .line 358
    :try_start_0
    iget-object v1, p0, Ljava/net/CookieManager;->policyCallback:Ljava/net/CookiePolicy;

    invoke-interface {v1, p1, p2}, Ljava/net/CookiePolicy;->shouldAccept(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 359
    :catch_7
    move-exception v0

    .line 360
    .local v0, "ignored":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private sortByPath(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    new-instance v6, Ljava/net/CookieManager$CookiePathComparator;

    invoke-direct {v6}, Ljava/net/CookieManager$CookiePathComparator;-><init>()V

    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 418
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .local v5, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    .line 425
    .local v4, "minVersion":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cookie$iterator":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 426
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v6

    if-ge v6, v4, :cond_12

    .line 427
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v4

    goto :goto_12

    .line 431
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    :cond_29
    const/4 v6, 0x1

    if-ne v4, v6, :cond_32

    .line 432
    const-string/jumbo v6, "$Version=\"1\"; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :cond_32
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_51

    .line 436
    if-eqz v3, :cond_41

    .line 437
    const-string/jumbo v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_41
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/HttpCookie;

    invoke-virtual {v6}, Ljava/net/HttpCookie;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 443
    :cond_51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v2, "cookieHeader":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    return-object v2
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    .registers 13
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    .local p2, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    .line 202
    :cond_4
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Argument is null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 206
    :cond_d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 208
    .local v3, "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v8, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    if-nez v8, :cond_1b

    .line 209
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    return-object v8

    .line 211
    :cond_1b
    const-string/jumbo v8, "https"

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 212
    .local v7, "secureLink":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v4, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v8, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    invoke-interface {v8, p1}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cookie$iterator":Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 217
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-static {p1, v0}, Ljava/net/CookieManager;->pathMatches(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 218
    if-nez v7, :cond_51

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getSecure()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 217
    if-eqz v8, :cond_35

    .line 221
    :cond_51
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, "ports":Ljava/lang/String;
    if-eqz v6, :cond_82

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_82

    .line 223
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v5

    .line 224
    .local v5, "port":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_75

    .line 225
    const-string/jumbo v8, "https"

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7f

    const/16 v5, 0x1bb

    .line 227
    :cond_75
    :goto_75
    invoke-static {v6, v5}, Ljava/net/CookieManager;->isInPortList(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 228
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 225
    :cond_7f
    const/16 v5, 0x50

    goto :goto_75

    .line 231
    .end local v5    # "port":I
    :cond_82
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 235
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v6    # "ports":Ljava/lang/String;
    :cond_86
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_91

    .line 236
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    return-object v8

    .line 240
    :cond_91
    invoke-direct {p0, v4}, Ljava/net/CookieManager;->sortByPath(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 242
    .local v2, "cookieHeader":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v8, "Cookie"

    invoke-interface {v3, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    return-object v8
.end method

.method public getCookieStore()Ljava/net/CookieStore;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/util/Map;)V
    .registers 21
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    .local p2, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    .line 252
    :cond_4
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v17, "Argument is null"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 257
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    move-object/from16 v16, v0

    if-nez v16, :cond_16

    .line 258
    return-void

    .line 260
    :cond_16
    const-string/jumbo v16, "java.net.CookieManager"

    invoke-static/range {v16 .. v16}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v12

    .line 261
    .local v12, "logger":Lsun/util/logging/PlatformLogger;
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "headerKey$iterator":Ljava/util/Iterator;
    :cond_25
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1be

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 264
    .local v6, "headerKey":Ljava/lang/String;
    if-eqz v6, :cond_25

    .line 265
    const-string/jumbo v16, "Set-Cookie2"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_134

    .line 266
    const-string/jumbo v16, "Set-Cookie"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    .line 265
    :goto_47
    xor-int/lit8 v16, v16, 0x1

    .line 264
    if-nez v16, :cond_25

    .line 273
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "headerValue$iterator":Ljava/util/Iterator;
    :cond_57
    :goto_57
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_25

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 277
    .local v8, "headerValue":Ljava/lang/String;
    :try_start_63
    invoke-static {v8}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;
    :try_end_66
    .catch Ljava/lang/IllegalArgumentException; {:try_start_63 .. :try_end_66} :catch_138

    move-result-object v4

    .line 285
    .local v4, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_67
    :goto_67
    :try_start_67
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "cookie$iterator":Ljava/util/Iterator;
    :cond_6b
    :goto_6b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/HttpCookie;

    .line 286
    .local v2, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v2}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_178

    .line 289
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 290
    .local v13, "path":Ljava/lang/String;
    const-string/jumbo v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a3

    .line 291
    const-string/jumbo v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 292
    .local v11, "i":I
    if-lez v11, :cond_173

    .line 293
    add-int/lit8 v16, v11, 0x1

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 298
    .end local v11    # "i":I
    :cond_a3
    :goto_a3
    invoke-virtual {v2, v13}, Ljava/net/HttpCookie;->setPath(Ljava/lang/String;)V

    .line 310
    .end local v13    # "path":Ljava/lang/String;
    :cond_a6
    invoke-virtual {v2}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_d8

    .line 311
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v10

    .line 312
    .local v10, "host":Ljava/lang/String;
    if-eqz v10, :cond_d5

    const-string/jumbo v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_d5

    .line 313
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ".local"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 314
    :cond_d5
    invoke-virtual {v2, v10}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    .line 316
    .end local v10    # "host":Ljava/lang/String;
    :cond_d8
    invoke-virtual {v2}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v15

    .line 317
    .local v15, "ports":Ljava/lang/String;
    if-eqz v15, :cond_1a5

    .line 318
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getPort()I

    move-result v14

    .line 319
    .local v14, "port":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_f7

    .line 320
    const-string/jumbo v16, "https"

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_182

    const/16 v14, 0x1bb

    .line 322
    :cond_f7
    :goto_f7
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_186

    .line 325
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/net/HttpCookie;->setPortlist(Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;->shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v16

    if-eqz v16, :cond_6b

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    goto/16 :goto_6b

    .line 344
    .end local v2    # "cookie":Ljava/net/HttpCookie;
    .end local v3    # "cookie$iterator":Ljava/util/Iterator;
    .end local v4    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v14    # "port":I
    .end local v15    # "ports":Ljava/lang/String;
    :catch_131
    move-exception v5

    .local v5, "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_57

    .line 265
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "headerValue":Ljava/lang/String;
    .end local v9    # "headerValue$iterator":Ljava/util/Iterator;
    :cond_134
    const/16 v16, 0x1

    goto/16 :goto_47

    .line 278
    .restart local v8    # "headerValue":Ljava/lang/String;
    .restart local v9    # "headerValue$iterator":Ljava/util/Iterator;
    :catch_138
    move-exception v5

    .line 280
    .restart local v5    # "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 281
    .restart local v4    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    sget-object v16, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v16

    if-eqz v16, :cond_67

    .line 282
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Invalid cookie for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    goto/16 :goto_67

    .line 295
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "cookie":Ljava/net/HttpCookie;
    .restart local v3    # "cookie$iterator":Ljava/util/Iterator;
    .restart local v11    # "i":I
    .restart local v13    # "path":Ljava/lang/String;
    :cond_173
    const-string/jumbo v13, "/"

    goto/16 :goto_a3

    .line 301
    .end local v11    # "i":I
    .end local v13    # "path":Ljava/lang/String;
    :cond_178
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Ljava/net/CookieManager;->pathMatches(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v16

    if-nez v16, :cond_a6

    goto/16 :goto_6b

    .line 320
    .restart local v14    # "port":I
    .restart local v15    # "ports":Ljava/lang/String;
    :cond_182
    const/16 v14, 0x50

    goto/16 :goto_f7

    .line 333
    :cond_186
    invoke-static {v15, v14}, Ljava/net/CookieManager;->isInPortList(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_6b

    .line 334
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;->shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v16

    .line 333
    if-eqz v16, :cond_6b

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    goto/16 :goto_6b

    .line 339
    .end local v14    # "port":I
    :cond_1a5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;->shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v16

    if-eqz v16, :cond_6b

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    :try_end_1bc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_67 .. :try_end_1bc} :catch_131

    goto/16 :goto_6b

    .line 350
    .end local v2    # "cookie":Ljava/net/HttpCookie;
    .end local v3    # "cookie$iterator":Ljava/util/Iterator;
    .end local v4    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v6    # "headerKey":Ljava/lang/String;
    .end local v8    # "headerValue":Ljava/lang/String;
    .end local v9    # "headerValue$iterator":Ljava/util/Iterator;
    .end local v15    # "ports":Ljava/lang/String;
    :cond_1be
    return-void
.end method

.method public setCookiePolicy(Ljava/net/CookiePolicy;)V
    .registers 2
    .param p1, "cookiePolicy"    # Ljava/net/CookiePolicy;

    .prologue
    .line 182
    if-eqz p1, :cond_4

    iput-object p1, p0, Ljava/net/CookieManager;->policyCallback:Ljava/net/CookiePolicy;

    .line 183
    :cond_4
    return-void
.end method
