.class Ljava/util/ResourceBundle$Control$CandidateListCache;
.super Lsun/util/locale/LocaleObjectCache;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle$Control;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CandidateListCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/util/locale/LocaleObjectCache<",
        "Lsun/util/locale/BaseLocale;",
        "Ljava/util/List<",
        "Ljava/util/Locale;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2369
    invoke-direct {p0}, Lsun/util/locale/LocaleObjectCache;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/ResourceBundle$1;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/ResourceBundle$1;

    .line 2369
    invoke-direct {p0}, Ljava/util/ResourceBundle$Control$CandidateListCache;-><init>()V

    return-void
.end method

.method private static greylist-max-o getDefaultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 2443
    const/4 v0, 0x0

    .line 2445
    .local v0, "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_25

    .line 2446
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v1

    .line 2447
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 2448
    .local v1, "idx":I
    :goto_11
    const/4 v2, -0x1

    if-eq v1, v2, :cond_25

    .line 2449
    const/4 v2, 0x0

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2450
    const/16 v2, 0x5f

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    goto :goto_11

    .line 2454
    .end local v1    # "idx":I
    :cond_25
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 2456
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_45

    .line 2457
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2458
    .local v4, "v":Ljava/lang/String;
    invoke-static {p0, p1, p2, v4, v2}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2459
    .end local v4    # "v":Ljava/lang/String;
    goto :goto_31

    .line 2461
    :cond_45
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, ""

    if-lez v3, :cond_54

    .line 2462
    invoke-static {p0, p1, p2, v4, v2}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2464
    :cond_54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_88

    .line 2465
    invoke-static {p0, p1, v4, v4, v2}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2469
    if-eqz v0, :cond_7b

    .line 2470
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_67
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2471
    .local v5, "v":Ljava/lang/String;
    invoke-static {p0, v4, p2, v5, v2}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2472
    .end local v5    # "v":Ljava/lang/String;
    goto :goto_67

    .line 2474
    :cond_7b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_88

    .line 2475
    invoke-static {p0, v4, p2, v4, v2}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2478
    :cond_88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_95

    .line 2479
    invoke-static {p0, v4, v4, v4, v2}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2482
    :cond_95
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2484
    return-object v1
.end method


# virtual methods
.method protected bridge synthetic blacklist createObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 2369
    check-cast p1, Lsun/util/locale/BaseLocale;

    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle$Control$CandidateListCache;->createObject(Lsun/util/locale/BaseLocale;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o createObject(Lsun/util/locale/BaseLocale;)Ljava/util/List;
    .registers 17
    .param p1, "base"    # Lsun/util/locale/BaseLocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/util/locale/BaseLocale;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 2371
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2372
    .local v0, "language":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 2373
    .local v1, "script":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    .line 2374
    .local v2, "region":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 2377
    .local v3, "variant":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2378
    .local v4, "isNorwegianBokmal":Z
    const/4 v5, 0x0

    .line 2379
    .local v5, "isNorwegianNynorsk":Z
    const-string v6, "no"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "NY"

    const-string v9, "NO"

    if-eqz v7, :cond_2f

    .line 2380
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 2381
    const-string v3, ""

    .line 2382
    const/4 v5, 0x1

    goto :goto_2f

    .line 2384
    :cond_2e
    const/4 v4, 0x1

    .line 2387
    :cond_2f
    :goto_2f
    const-string v7, "nb"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11c

    if-eqz v4, :cond_3b

    goto/16 :goto_11c

    .line 2400
    :cond_3b
    const-string v7, "nn"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_f5

    if-eqz v5, :cond_48

    goto/16 :goto_f5

    .line 2410
    :cond_48
    const-string v6, "zh"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f0

    .line 2411
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-nez v6, :cond_be

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_be

    .line 2414
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v9, 0x86b

    const/4 v10, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-eq v6, v9, :cond_a1

    const/16 v9, 0x903

    if-eq v6, v9, :cond_97

    const/16 v9, 0x9a2

    if-eq v6, v9, :cond_8d

    const/16 v9, 0xa54

    if-eq v6, v9, :cond_83

    const/16 v9, 0xa83

    if-eq v6, v9, :cond_7a

    :cond_79
    goto :goto_ab

    :cond_7a
    const-string v6, "TW"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    goto :goto_ac

    :cond_83
    const-string v6, "SG"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    move v7, v10

    goto :goto_ac

    :cond_8d
    const-string v6, "MO"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    move v7, v13

    goto :goto_ac

    :cond_97
    const-string v6, "HK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    move v7, v11

    goto :goto_ac

    :cond_a1
    const-string v6, "CN"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    move v7, v12

    goto :goto_ac

    :goto_ab
    move v7, v8

    :goto_ac
    if-eqz v7, :cond_ba

    if-eq v7, v11, :cond_ba

    if-eq v7, v13, :cond_ba

    if-eq v7, v12, :cond_b7

    if-eq v7, v10, :cond_b7

    goto :goto_bd

    .line 2422
    :cond_b7
    const-string v1, "Hans"

    goto :goto_bd

    .line 2418
    :cond_ba
    const-string v1, "Hant"

    .line 2419
    nop

    .line 2423
    :goto_bd
    goto :goto_f0

    .line 2425
    :cond_be
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_f0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_f0

    .line 2428
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_15a

    :cond_d1
    goto :goto_e5

    :pswitch_d2
    const-string v6, "Hant"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d1

    move v7, v11

    goto :goto_e6

    :pswitch_dc
    const-string v6, "Hans"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d1

    goto :goto_e6

    :goto_e5
    move v7, v8

    :goto_e6
    if-eqz v7, :cond_ee

    if-eq v7, v11, :cond_eb

    goto :goto_f0

    .line 2433
    :cond_eb
    const-string v2, "TW"

    goto :goto_f0

    .line 2430
    :cond_ee
    const-string v2, "CN"

    .line 2439
    :cond_f0
    :goto_f0
    invoke-static {v0, v1, v2, v3}, Ljava/util/ResourceBundle$Control$CandidateListCache;->getDefaultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    return-object v6

    .line 2402
    :cond_f5
    :goto_f5
    invoke-static {v7, v1, v2, v3}, Ljava/util/ResourceBundle$Control$CandidateListCache;->getDefaultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 2403
    .local v7, "nynorskList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v11

    .line 2404
    .local v10, "idx":I
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "idx":I
    .local v11, "idx":I
    invoke-static {v6, v9, v8}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v8

    invoke-interface {v7, v10, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2405
    add-int/lit8 v8, v11, 0x1

    .end local v11    # "idx":I
    .local v8, "idx":I
    const-string v10, ""

    invoke-static {v6, v9, v10}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v9

    invoke-interface {v7, v11, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2406
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .local v9, "idx":I
    invoke-static {v6, v10, v10}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    invoke-interface {v7, v8, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2407
    return-object v7

    .line 2388
    .end local v7    # "nynorskList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v9    # "idx":I
    :cond_11c
    :goto_11c
    invoke-static {v7, v1, v2, v3}, Ljava/util/ResourceBundle$Control$CandidateListCache;->getDefaultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 2390
    .local v7, "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 2391
    .local v8, "bokmalList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_129
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_158

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Locale;

    .line 2392
    .local v10, "l":Ljava/util/Locale;
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2393
    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_143

    .line 2394
    goto :goto_158

    .line 2396
    :cond_143
    invoke-virtual {v10}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v12

    .line 2397
    invoke-virtual {v10}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 2396
    invoke-static {v6, v11, v12, v13, v14}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2398
    .end local v10    # "l":Ljava/util/Locale;
    goto :goto_129

    .line 2399
    :cond_158
    :goto_158
    return-object v8

    nop

    :pswitch_data_15a
    .packed-switch 0x22349e
        :pswitch_dc
        :pswitch_d2
    .end packed-switch
.end method
