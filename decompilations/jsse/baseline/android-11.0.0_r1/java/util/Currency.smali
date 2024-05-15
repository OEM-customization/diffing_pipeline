.class public final Ljava/util/Currency;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static greylist-max-o available:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o instances:Ljava/util/concurrent/ConcurrentMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = -0x2326cb5a6ee56e1L


# instance fields
.field private final greylist-max-o currencyCode:Ljava/lang/String;

.field private final transient greylist-max-o icuCurrency:Landroid/icu/util/Currency;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Ljava/util/Currency;->instances:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/icu/util/Currency;)V
    .registers 3
    .param p1, "icuCurrency"    # Landroid/icu/util/Currency;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    .line 268
    invoke-virtual {p1}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public static whitelist core-platform-api test-api getAvailableCurrencies()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation

    .line 391
    const-class v0, Ljava/util/Currency;

    monitor-enter v0

    .line 392
    :try_start_3
    sget-object v1, Ljava/util/Currency;->available:Ljava/util/HashSet;

    if-nez v1, :cond_40

    .line 421
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Ljava/util/Currency;->available:Ljava/util/HashSet;

    .line 423
    invoke-static {}, Landroid/icu/util/Currency;->getAvailableCurrencies()Ljava/util/Set;

    move-result-object v1

    .line 424
    .local v1, "icuAvailableCurrencies":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/Currency;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/Currency;

    .line 425
    .local v3, "icuCurrency":Landroid/icu/util/Currency;
    invoke-virtual {v3}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v4

    .line 426
    .local v4, "currency":Ljava/util/Currency;
    if-nez v4, :cond_39

    .line 427
    new-instance v5, Ljava/util/Currency;

    invoke-direct {v5, v3}, Ljava/util/Currency;-><init>(Landroid/icu/util/Currency;)V

    move-object v4, v5

    .line 428
    sget-object v5, Ljava/util/Currency;->instances:Ljava/util/concurrent/ConcurrentMap;

    iget-object v6, v4, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :cond_39
    sget-object v5, Ljava/util/Currency;->available:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 431
    nop

    .end local v3    # "icuCurrency":Landroid/icu/util/Currency;
    .end local v4    # "currency":Ljava/util/Currency;
    goto :goto_16

    .line 434
    .end local v1    # "icuAvailableCurrencies":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/Currency;>;"
    :cond_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_4a

    .line 437
    sget-object v0, Ljava/util/Currency;->available:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 438
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Currency;>;"
    return-object v0

    .line 434
    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Currency;>;"
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public static whitelist core-platform-api test-api getInstance(Ljava/lang/String;)Ljava/util/Currency;
    .registers 5
    .param p0, "currencyCode"    # Ljava/lang/String;

    .line 284
    sget-object v0, Ljava/util/Currency;->instances:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Currency;

    .line 285
    .local v0, "instance":Ljava/util/Currency;
    if-eqz v0, :cond_b

    .line 286
    return-object v0

    .line 288
    :cond_b
    nop

    .line 289
    invoke-static {p0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v1

    .line 290
    .local v1, "icuInstance":Landroid/icu/util/Currency;
    if-nez v1, :cond_14

    .line 291
    const/4 v2, 0x0

    return-object v2

    .line 293
    :cond_14
    new-instance v2, Ljava/util/Currency;

    invoke-direct {v2, v1}, Ljava/util/Currency;-><init>(Landroid/icu/util/Currency;)V

    .line 295
    .local v2, "currencyVal":Ljava/util/Currency;
    sget-object v3, Ljava/util/Currency;->instances:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/Currency;

    .line 296
    if-eqz v0, :cond_26

    move-object v3, v0

    goto :goto_27

    :cond_26
    move-object v3, v2

    :goto_27
    return-object v3
.end method

.method public static whitelist core-platform-api test-api getInstance(Ljava/util/Locale;)Ljava/util/Currency;
    .registers 8
    .param p0, "locale"    # Ljava/util/Locale;

    .line 321
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "country":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_74

    .line 362
    nop

    .line 363
    invoke-static {p0}, Landroid/icu/util/Currency;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Currency;

    move-result-object v2

    .line 364
    .local v2, "icuInstance":Landroid/icu/util/Currency;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "variant":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_42

    const-string v4, "EURO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    const-string v4, "HK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 366
    const-string v4, "PREEURO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 367
    :cond_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    :cond_42
    invoke-static {v0}, Llibcore/icu/ICU;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, "currencyCode":Ljava/lang/String;
    if-eqz v4, :cond_5d

    .line 373
    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "XXX"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    goto :goto_5c

    .line 376
    :cond_57
    invoke-static {v4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    return-object v1

    .line 374
    :cond_5c
    :goto_5c
    return-object v1

    .line 371
    :cond_5d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported ISO 3166 country: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    .end local v2    # "icuInstance":Landroid/icu/util/Currency;
    .end local v3    # "variant":Ljava/lang/String;
    .end local v4    # "currencyCode":Ljava/lang/String;
    :cond_74
    throw v1
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 2

    .line 595
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api getCurrencyCode()Ljava/lang/String;
    .registers 2

    .line 447
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getDefaultFractionDigits()I
    .registers 3

    .line 513
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XXX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 514
    const/4 v0, -0x1

    return v0

    .line 516
    :cond_10
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->getDefaultFractionDigits()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getDisplayName()Ljava/lang/String;
    .registers 2

    .line 547
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Currency;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 576
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/icu/util/Currency;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getNumericCode()I
    .registers 2

    .line 529
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->getNumericCode()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getSymbol()Ljava/lang/String;
    .registers 2

    .line 465
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getSymbol(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 494
    if-eqz p1, :cond_9

    .line 497
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0, p1}, Landroid/icu/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 495
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locale == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 2

    .line 588
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
