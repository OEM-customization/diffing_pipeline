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
.field private greylist-max-o cookieJar:Ljava/net/CookieStore;

.field private greylist-max-o policyCallback:Ljava/net/CookiePolicy;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    .line 139
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V
    .registers 4
    .param p1, "store"    # Ljava/net/CookieStore;
    .param p2, "cookiePolicy"    # Ljava/net/CookiePolicy;

    .line 155
    invoke-direct {p0}, Ljava/net/CookieHandler;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    .line 157
    if-nez p2, :cond_b

    sget-object v0, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    goto :goto_c

    .line 158
    :cond_b
    move-object v0, p2

    :goto_c
    iput-object v0, p0, Ljava/net/CookieManager;->policyCallback:Ljava/net/CookiePolicy;

    .line 161
    if-nez p1, :cond_18

    .line 162
    new-instance v0, Ljava/net/InMemoryCookieStore;

    invoke-direct {v0}, Ljava/net/InMemoryCookieStore;-><init>()V

    iput-object v0, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    goto :goto_1a

    .line 164
    :cond_18
    iput-object p1, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    .line 166
    :goto_1a
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 118
    invoke-static {p0}, Ljava/net/CookieManager;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o isInPortList(Ljava/lang/String;I)Z
    .registers 7
    .param p0, "lst"    # Ljava/lang/String;
    .param p1, "port"    # I

    .line 386
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 387
    .local v1, "i":I
    const/4 v2, -0x1

    .line 388
    .local v2, "val":I
    :goto_7
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_24

    .line 390
    :try_start_b
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_13} :catch_18

    move v2, v3

    .line 391
    if-ne v2, p1, :cond_17

    .line 392
    return v4

    .line 395
    :cond_17
    goto :goto_19

    .line 394
    :catch_18
    move-exception v3

    .line 396
    :goto_19
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 397
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_7

    .line 399
    :cond_24
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 401
    :try_start_2a
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2e} :catch_33

    move v2, v0

    .line 402
    if-ne v2, p1, :cond_32

    .line 403
    return v4

    .line 406
    :cond_32
    goto :goto_34

    .line 405
    :catch_33
    move-exception v0

    .line 408
    :cond_34
    :goto_34
    return v3
.end method

.method private static greylist-max-o normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 420
    if-nez p0, :cond_4

    .line 421
    const-string p0, ""

    .line 424
    :cond_4
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 428
    :cond_1b
    return-object p0
.end method

.method private static greylist-max-o pathMatches(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .registers 4
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "cookie"    # Ljava/net/HttpCookie;

    .line 416
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

.method private greylist-max-o shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .registers 5
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookie"    # Ljava/net/HttpCookie;

    .line 378
    :try_start_0
    iget-object v0, p0, Ljava/net/CookieManager;->policyCallback:Ljava/net/CookiePolicy;

    invoke-interface {v0, p1, p2}, Ljava/net/CookiePolicy;->shouldAccept(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 379
    :catch_7
    move-exception v0

    .line 380
    .local v0, "ignored":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o sortByPath(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 437
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    new-instance v0, Ljava/net/CookieManager$CookiePathComparator;

    invoke-direct {v0}, Ljava/net/CookieManager$CookiePathComparator;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 444
    .local v1, "minVersion":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/HttpCookie;

    .line 445
    .local v3, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v3}, Ljava/net/HttpCookie;->getVersion()I

    move-result v4

    if-ge v4, v1, :cond_28

    .line 446
    invoke-virtual {v3}, Ljava/net/HttpCookie;->getVersion()I

    move-result v1

    .line 448
    .end local v3    # "cookie":Ljava/net/HttpCookie;
    :cond_28
    goto :goto_12

    .line 450
    :cond_29
    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    .line 451
    const-string v2, "$Version=\"1\"; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    :cond_31
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4f

    .line 455
    if-eqz v2, :cond_3f

    .line 456
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    :cond_3f
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/HttpCookie;

    invoke-virtual {v3}, Ljava/net/HttpCookie;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 462
    .end local v2    # "i":I
    :cond_4f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v2, "cookieHeader":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    return-object v2
.end method


# virtual methods
.method public whitelist core-platform-api test-api get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    .registers 12
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    .local p2, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_8f

    if-eqz p2, :cond_8f

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    .local v0, "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    if-nez v1, :cond_12

    .line 209
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 211
    :cond_12
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 212
    .local v1, "secureLink":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v3, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v4, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    invoke-interface {v4, p1}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/HttpCookie;

    .line 225
    .local v5, "cookie":Ljava/net/HttpCookie;
    invoke-static {p1, v5}, Ljava/net/CookieManager;->pathMatches(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v6

    if-eqz v6, :cond_75

    if-nez v1, :cond_45

    .line 226
    invoke-virtual {v5}, Ljava/net/HttpCookie;->getSecure()Z

    move-result v6

    if-nez v6, :cond_75

    .line 239
    :cond_45
    invoke-virtual {v5}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, "ports":Ljava/lang/String;
    if-eqz v6, :cond_72

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_72

    .line 241
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v7

    .line 242
    .local v7, "port":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_68

    .line 243
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_65

    const/16 v8, 0x1bb

    goto :goto_67

    :cond_65
    const/16 v8, 0x50

    :goto_67
    move v7, v8

    .line 245
    :cond_68
    invoke-static {v6, v7}, Ljava/net/CookieManager;->isInPortList(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 246
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v7    # "port":I
    :cond_71
    goto :goto_75

    .line 249
    :cond_72
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v5    # "cookie":Ljava/net/HttpCookie;
    .end local v6    # "ports":Ljava/lang/String;
    :cond_75
    :goto_75
    goto :goto_2b

    .line 254
    :cond_76
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 255
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 259
    :cond_81
    invoke-direct {p0, v3}, Ljava/net/CookieManager;->sortByPath(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 261
    .local v2, "cookieHeader":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "Cookie"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    return-object v4

    .line 202
    .end local v0    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "secureLink":Z
    .end local v2    # "cookieHeader":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_8f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getCookieStore()Ljava/net/CookieStore;
    .registers 2

    .line 192
    iget-object v0, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    return-object v0
.end method

.method public whitelist core-platform-api test-api put(Ljava/net/URI;Ljava/util/Map;)V
    .registers 16
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    .local p2, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v0, "/"

    if-eqz p1, :cond_14c

    if-eqz p2, :cond_14c

    .line 276
    iget-object v1, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    if-nez v1, :cond_b

    .line 277
    return-void

    .line 279
    :cond_b
    const-string v1, "java.net.CookieManager"

    invoke-static {v1}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v1

    .line 280
    .local v1, "logger":Lsun/util/logging/PlatformLogger;
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 283
    .local v3, "headerKey":Ljava/lang/String;
    if-eqz v3, :cond_19

    .line 284
    const-string v4, "Set-Cookie2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 285
    const-string v4, "Set-Cookie"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 289
    goto :goto_19

    .line 292
    :cond_38
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_149

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 296
    .local v5, "headerValue":Ljava/lang/String;
    :try_start_4e
    invoke-static {v5}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6
    :try_end_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_52} :catch_53

    .line 303
    .local v6, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    goto :goto_7d

    .line 297
    .end local v6    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :catch_53
    move-exception v6

    .line 299
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_54
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 300
    .local v7, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    sget-object v8, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v1, v8}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 301
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid cookie for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 304
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :cond_7c
    move-object v6, v7

    .end local v7    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .local v6, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :goto_7d
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_81
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_145

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/HttpCookie;

    .line 305
    .local v8, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v8}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_b1

    .line 308
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 309
    .local v9, "path":Ljava/lang/String;
    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_ad

    .line 310
    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 311
    .local v10, "i":I
    if-lez v10, :cond_ac

    .line 312
    const/4 v11, 0x0

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    goto :goto_ad

    .line 314
    :cond_ac
    move-object v9, v0

    .line 317
    .end local v10    # "i":I
    :cond_ad
    :goto_ad
    invoke-virtual {v8, v9}, Ljava/net/HttpCookie;->setPath(Ljava/lang/String;)V

    .line 319
    .end local v9    # "path":Ljava/lang/String;
    goto :goto_b8

    .line 321
    :cond_b1
    invoke-static {p1, v8}, Ljava/net/CookieManager;->pathMatches(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v9

    if-nez v9, :cond_b8

    .line 322
    goto :goto_81

    .line 330
    :cond_b8
    :goto_b8
    invoke-virtual {v8}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_e1

    .line 331
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 332
    .local v9, "host":Ljava/lang/String;
    if-eqz v9, :cond_de

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_de

    .line 333
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".local"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 334
    :cond_de
    invoke-virtual {v8, v9}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    .line 336
    .end local v9    # "host":Ljava/lang/String;
    :cond_e1
    invoke-virtual {v8}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v9

    .line 337
    .local v9, "ports":Ljava/lang/String;
    if-eqz v9, :cond_138

    .line 338
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v10

    .line 339
    .local v10, "port":I
    const/4 v11, -0x1

    if-ne v10, v11, :cond_100

    .line 340
    const-string v11, "https"

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_fd

    const/16 v11, 0x1bb

    goto :goto_ff

    :cond_fd
    const/16 v11, 0x50

    :goto_ff
    move v10, v11

    .line 342
    :cond_100
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_126

    .line 345
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/net/HttpCookie;->setPortlist(Ljava/lang/String;)V

    .line 346
    invoke-direct {p0, p1, v8}, Ljava/net/CookieManager;->shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v11

    if-eqz v11, :cond_137

    .line 347
    iget-object v11, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    invoke-interface {v11, p1, v8}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    goto :goto_137

    .line 353
    :cond_126
    invoke-static {v9, v10}, Ljava/net/CookieManager;->isInPortList(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_137

    .line 354
    invoke-direct {p0, p1, v8}, Ljava/net/CookieManager;->shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v11

    if-eqz v11, :cond_137

    .line 355
    iget-object v11, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    invoke-interface {v11, p1, v8}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    .line 358
    .end local v10    # "port":I
    :cond_137
    :goto_137
    goto :goto_143

    .line 359
    :cond_138
    invoke-direct {p0, p1, v8}, Ljava/net/CookieManager;->shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v10

    if-eqz v10, :cond_143

    .line 360
    iget-object v10, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    invoke-interface {v10, p1, v8}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    :try_end_143
    .catch Ljava/lang/IllegalArgumentException; {:try_start_54 .. :try_end_143} :catch_146

    .line 363
    .end local v8    # "cookie":Ljava/net/HttpCookie;
    .end local v9    # "ports":Ljava/lang/String;
    :cond_143
    :goto_143
    goto/16 :goto_81

    .line 367
    .end local v6    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_145
    goto :goto_147

    .line 364
    :catch_146
    move-exception v6

    .line 368
    .end local v5    # "headerValue":Ljava/lang/String;
    :goto_147
    goto/16 :goto_42

    .line 369
    .end local v3    # "headerKey":Ljava/lang/String;
    :cond_149
    goto/16 :goto_19

    .line 370
    :cond_14b
    return-void

    .line 271
    .end local v1    # "logger":Lsun/util/logging/PlatformLogger;
    :cond_14c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api setCookiePolicy(Ljava/net/CookiePolicy;)V
    .registers 2
    .param p1, "cookiePolicy"    # Ljava/net/CookiePolicy;

    .line 182
    if-eqz p1, :cond_4

    iput-object p1, p0, Ljava/net/CookieManager;->policyCallback:Ljava/net/CookiePolicy;

    .line 183
    :cond_4
    return-void
.end method
