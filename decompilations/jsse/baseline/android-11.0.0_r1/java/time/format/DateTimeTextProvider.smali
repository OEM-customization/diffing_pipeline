.class Ljava/time/format/DateTimeTextProvider;
.super Ljava/lang/Object;
.source "DateTimeTextProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/format/DateTimeTextProvider$LocaleStore;
    }
.end annotation


# static fields
.field private static final greylist-max-o CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Map$Entry<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/format/DateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 109
    new-instance v0, Ljava/time/format/DateTimeTextProvider$1;

    invoke-direct {v0}, Ljava/time/format/DateTimeTextProvider$1;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeTextProvider;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 104
    invoke-static {p0, p1}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$100()Ljava/util/Comparator;
    .registers 1

    .line 104
    sget-object v0, Ljava/time/format/DateTimeTextProvider;->COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method private static greylist-max-o createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Ljava/util/Map$Entry<",
            "TA;TB;>;"
        }
    .end annotation

    .line 492
    .local p0, "text":Ljava/lang/Object;, "TA;"
    .local p1, "field":Ljava/lang/Object;, "TB;"
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private greylist-max-o createStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;
    .registers 16
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 329
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 330
    .local v0, "styleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x0

    const-string v3, "gregory"

    if-ne p1, v1, :cond_6c

    .line 331
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v1

    array-length v4, v1

    move v5, v2

    :goto_12
    if-ge v5, v4, :cond_66

    aget-object v6, v1, v5

    .line 332
    .local v6, "textStyle":Ljava/time/format/TextStyle;
    invoke-virtual {v6}, Ljava/time/format/TextStyle;->isStandalone()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 334
    goto :goto_63

    .line 336
    :cond_1d
    nop

    .line 337
    invoke-virtual {v6}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v7

    .line 336
    invoke-static {v3, v2, v7, p2}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v7

    .line 338
    .local v7, "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v7, :cond_63

    .line 339
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 340
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_35
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 341
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_35

    .line 343
    :cond_5a
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_63

    .line 344
    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .end local v6    # "textStyle":Ljava/time/format/TextStyle;
    .end local v7    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_63
    :goto_63
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 348
    :cond_66
    new-instance v1, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v1, v0}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v1

    .line 351
    :cond_6c
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne p1, v1, :cond_ea

    .line 352
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v1

    array-length v4, v1

    :goto_75
    if-ge v2, v4, :cond_e4

    aget-object v5, v1, v2

    .line 353
    .local v5, "textStyle":Ljava/time/format/TextStyle;
    nop

    .line 354
    invoke-virtual {v5}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v6

    .line 353
    const/4 v7, 0x2

    invoke-static {v3, v7, v6, p2}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v6

    .line 355
    .local v6, "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 356
    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz v6, :cond_ba

    .line 357
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_92
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 358
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_92

    :cond_b9
    goto :goto_d8

    .line 364
    :cond_ba
    const/4 v9, 0x0

    .local v9, "month":I
    :goto_bb
    const/16 v10, 0xb

    if-gt v9, v10, :cond_d8

    .line 366
    nop

    .line 367
    invoke-virtual {v5}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v10

    .line 366
    invoke-static {v3, v7, v9, v10, p2}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 368
    .local v10, "name":Ljava/lang/String;
    if-nez v10, :cond_cb

    .line 369
    goto :goto_d8

    .line 371
    :cond_cb
    add-int/lit8 v11, v9, 0x1

    int-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v8, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .end local v10    # "name":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_bb

    .line 374
    .end local v9    # "month":I
    :cond_d8
    :goto_d8
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e1

    .line 375
    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .end local v5    # "textStyle":Ljava/time/format/TextStyle;
    .end local v6    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_e1
    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    .line 378
    :cond_e4
    new-instance v1, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v1, v0}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v1

    .line 381
    :cond_ea
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    if-ne p1, v1, :cond_16a

    .line 382
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v1

    array-length v4, v1

    :goto_f3
    if-ge v2, v4, :cond_164

    aget-object v5, v1, v2

    .line 383
    .restart local v5    # "textStyle":Ljava/time/format/TextStyle;
    nop

    .line 384
    invoke-virtual {v5}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v6

    .line 383
    const/4 v7, 0x7

    invoke-static {v3, v7, v6, p2}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v6

    .line 385
    .restart local v6    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 386
    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz v6, :cond_13a

    .line 387
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_110
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_139

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 388
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/time/format/DateTimeTextProvider;->toWeekDay(I)I

    move-result v10

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_110

    :cond_139
    goto :goto_158

    .line 394
    :cond_13a
    const/4 v9, 0x1

    .local v9, "wday":I
    :goto_13b
    if-gt v9, v7, :cond_158

    .line 396
    nop

    .line 397
    invoke-virtual {v5}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v10

    .line 396
    invoke-static {v3, v7, v9, v10, p2}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 398
    .restart local v10    # "name":Ljava/lang/String;
    if-nez v10, :cond_149

    .line 399
    goto :goto_158

    .line 401
    :cond_149
    invoke-static {v9}, Ljava/time/format/DateTimeTextProvider;->toWeekDay(I)I

    move-result v11

    int-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v8, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .end local v10    # "name":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_13b

    .line 404
    .end local v9    # "wday":I
    :cond_158
    :goto_158
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_161

    .line 405
    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .end local v5    # "textStyle":Ljava/time/format/TextStyle;
    .end local v6    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_161
    add-int/lit8 v2, v2, 0x1

    goto :goto_f3

    .line 408
    :cond_164
    new-instance v1, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v1, v0}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v1

    .line 411
    :cond_16a
    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    if-ne p1, v1, :cond_1ce

    .line 412
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v1

    array-length v4, v1

    :goto_173
    if-ge v2, v4, :cond_1c8

    aget-object v5, v1, v2

    .line 413
    .restart local v5    # "textStyle":Ljava/time/format/TextStyle;
    invoke-virtual {v5}, Ljava/time/format/TextStyle;->isStandalone()Z

    move-result v6

    if-eqz v6, :cond_17e

    .line 415
    goto :goto_1c5

    .line 417
    :cond_17e
    const/16 v6, 0x9

    .line 418
    invoke-virtual {v5}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v7

    .line 417
    invoke-static {v3, v6, v7, p2}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v6

    .line 419
    .restart local v6    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v6, :cond_1c5

    .line 420
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 421
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_197
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1bc

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 422
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_197

    .line 424
    :cond_1bc
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1c5

    .line 425
    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .end local v5    # "textStyle":Ljava/time/format/TextStyle;
    .end local v6    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_1c5
    :goto_1c5
    add-int/lit8 v2, v2, 0x1

    goto :goto_173

    .line 429
    :cond_1c8
    new-instance v1, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v1, v0}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v1

    .line 432
    :cond_1ce
    sget-object v1, Ljava/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

    if-ne p1, v1, :cond_22f

    .line 455
    nop

    .line 456
    const-string v1, "android/icu/impl/data/icudt66b"

    invoke-static {v1, p2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 457
    .local v1, "rb":Landroid/icu/impl/ICUResourceBundle;
    const-string v2, "calendar/gregorian/quarters"

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    .line 458
    .local v2, "quartersRb":Landroid/icu/impl/ICUResourceBundle;
    const-string v3, "format"

    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v3

    .line 459
    .local v3, "formatRb":Landroid/icu/impl/ICUResourceBundle;
    const-string v4, "stand-alone"

    invoke-virtual {v2, v4}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v4

    .line 460
    .local v4, "standaloneRb":Landroid/icu/impl/ICUResourceBundle;
    sget-object v5, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    const-string v6, "wide"

    invoke-static {v3, v6}, Ljava/time/format/DateTimeTextProvider;->extractQuarters(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v5, Ljava/time/format/TextStyle;->FULL_STANDALONE:Ljava/time/format/TextStyle;

    invoke-static {v4, v6}, Ljava/time/format/DateTimeTextProvider;->extractQuarters(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v5, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    const-string v6, "abbreviated"

    invoke-static {v3, v6}, Ljava/time/format/DateTimeTextProvider;->extractQuarters(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v5, Ljava/time/format/TextStyle;->SHORT_STANDALONE:Ljava/time/format/TextStyle;

    invoke-static {v4, v6}, Ljava/time/format/DateTimeTextProvider;->extractQuarters(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v5, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    const-string v6, "narrow"

    invoke-static {v3, v6}, Ljava/time/format/DateTimeTextProvider;->extractQuarters(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v5, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    invoke-static {v4, v6}, Ljava/time/format/DateTimeTextProvider;->extractQuarters(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    new-instance v5, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v5, v0}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v5

    .line 470
    .end local v1    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v2    # "quartersRb":Landroid/icu/impl/ICUResourceBundle;
    .end local v3    # "formatRb":Landroid/icu/impl/ICUResourceBundle;
    .end local v4    # "standaloneRb":Landroid/icu/impl/ICUResourceBundle;
    :cond_22f
    const-string v1, ""

    return-object v1
.end method

.method private static greylist-max-o extractQuarters(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/util/Map;
    .registers 7
    .param p0, "rb"    # Landroid/icu/impl/ICUResourceBundle;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/ICUResourceBundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 475
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "names":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 477
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "q":I
    :goto_e
    array-length v3, v0

    if-ge v2, v3, :cond_20

    .line 478
    add-int/lit8 v3, v2, 0x1

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 480
    .end local v2    # "q":I
    :cond_20
    return-object v1
.end method

.method private greylist-max-o findStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 310
    invoke-static {p1, p2}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 311
    .local v0, "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/util/Locale;>;"
    sget-object v1, Ljava/time/format/DateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 312
    .local v1, "store":Ljava/lang/Object;
    if-nez v1, :cond_1b

    .line 313
    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeTextProvider;->createStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v1

    .line 314
    sget-object v2, Ljava/time/format/DateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v2, Ljava/time/format/DateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 317
    :cond_1b
    return-object v1
.end method

.method static greylist-max-o getInstance()Ljava/time/format/DateTimeTextProvider;
    .registers 1

    .line 124
    new-instance v0, Ljava/time/format/DateTimeTextProvider;

    invoke-direct {v0}, Ljava/time/format/DateTimeTextProvider;-><init>()V

    return-object v0
.end method

.method private static greylist-max-o toWeekDay(I)I
    .registers 2
    .param p0, "calWeekDay"    # I

    .line 321
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 322
    const/4 v0, 0x7

    return v0

    .line 324
    :cond_5
    add-int/lit8 v0, p0, -0x1

    return v0
.end method


# virtual methods
.method public greylist-max-o getText(Ljava/time/chrono/Chronology;Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 13
    .param p1, "chrono"    # Ljava/time/chrono/Chronology;
    .param p2, "field"    # Ljava/time/temporal/TemporalField;
    .param p3, "value"    # J
    .param p5, "style"    # Ljava/time/format/TextStyle;
    .param p6, "locale"    # Ljava/util/Locale;

    .line 166
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    if-eq p1, v0, :cond_4d

    instance-of v0, p2, Ljava/time/temporal/ChronoField;

    if-nez v0, :cond_9

    goto :goto_4d

    .line 173
    :cond_9
    sget-object v0, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    if-ne p2, v0, :cond_20

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "fieldIndex":I
    sget-object v1, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    if-ne p1, v1, :cond_1e

    .line 176
    const-wide/16 v1, -0x3e7

    cmp-long v1, p3, v1

    if-nez v1, :cond_1a

    .line 177
    const/4 v1, 0x0

    .local v1, "fieldValue":I
    goto :goto_3d

    .line 179
    .end local v1    # "fieldValue":I
    :cond_1a
    long-to-int v1, p3

    add-int/lit8 v1, v1, 0x2

    .restart local v1    # "fieldValue":I
    goto :goto_3d

    .line 182
    .end local v1    # "fieldValue":I
    :cond_1e
    long-to-int v1, p3

    .restart local v1    # "fieldValue":I
    goto :goto_3d

    .line 184
    .end local v0    # "fieldIndex":I
    .end local v1    # "fieldValue":I
    :cond_20
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne p2, v0, :cond_29

    .line 185
    const/4 v0, 0x2

    .line 186
    .restart local v0    # "fieldIndex":I
    long-to-int v1, p3

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "fieldValue":I
    goto :goto_3d

    .line 187
    .end local v0    # "fieldIndex":I
    .end local v1    # "fieldValue":I
    :cond_29
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    if-ne p2, v0, :cond_36

    .line 188
    const/4 v0, 0x7

    .line 189
    .restart local v0    # "fieldIndex":I
    long-to-int v1, p3

    add-int/lit8 v1, v1, 0x1

    .line 190
    .restart local v1    # "fieldValue":I
    const/4 v2, 0x7

    if-le v1, v2, :cond_3d

    .line 191
    const/4 v1, 0x1

    goto :goto_3d

    .line 193
    .end local v0    # "fieldIndex":I
    .end local v1    # "fieldValue":I
    :cond_36
    sget-object v0, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    if-ne p2, v0, :cond_4b

    .line 194
    const/16 v0, 0x9

    .line 195
    .restart local v0    # "fieldIndex":I
    long-to-int v1, p3

    .line 199
    .restart local v1    # "fieldValue":I
    :cond_3d
    :goto_3d
    nop

    .line 200
    invoke-interface {p1}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v3

    .line 199
    invoke-static {v2, v0, v1, v3, p6}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 197
    .end local v0    # "fieldIndex":I
    .end local v1    # "fieldValue":I
    :cond_4b
    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_4d
    :goto_4d
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Ljava/time/format/DateTimeTextProvider;->getText(Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getText(Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "value"    # J
    .param p4, "style"    # Ljava/time/format/TextStyle;
    .param p5, "locale"    # Ljava/util/Locale;

    .line 142
    invoke-direct {p0, p1, p5}, Ljava/time/format/DateTimeTextProvider;->findStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v0

    .line 143
    .local v0, "store":Ljava/lang/Object;
    instance-of v1, v0, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    if-eqz v1, :cond_10

    .line 144
    move-object v1, v0

    check-cast v1, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v1, p2, p3, p4}, Ljava/time/format/DateTimeTextProvider$LocaleStore;->getText(JLjava/time/format/TextStyle;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 146
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o getTextIterator(Ljava/time/chrono/Chronology;Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .registers 15
    .param p1, "chrono"    # Ljava/time/chrono/Chronology;
    .param p2, "field"    # Ljava/time/temporal/TemporalField;
    .param p3, "style"    # Ljava/time/format/TextStyle;
    .param p4, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/Chronology;",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 246
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    if-eq p1, v0, :cond_12c

    instance-of v0, p2, Ljava/time/temporal/ChronoField;

    if-nez v0, :cond_a

    goto/16 :goto_12c

    .line 252
    :cond_a
    sget-object v0, Ljava/time/format/DateTimeTextProvider$2;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p2

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2a

    if-eq v0, v2, :cond_28

    const/4 v4, 0x3

    if-eq v0, v4, :cond_26

    const/4 v4, 0x4

    if-eq v0, v4, :cond_23

    .line 266
    return-object v1

    .line 263
    :cond_23
    const/16 v0, 0x9

    .line 264
    .local v0, "fieldIndex":I
    goto :goto_2c

    .line 260
    .end local v0    # "fieldIndex":I
    :cond_26
    const/4 v0, 0x7

    .line 261
    .restart local v0    # "fieldIndex":I
    goto :goto_2c

    .line 257
    .end local v0    # "fieldIndex":I
    :cond_28
    const/4 v0, 0x2

    .line 258
    .restart local v0    # "fieldIndex":I
    goto :goto_2c

    .line 254
    .end local v0    # "fieldIndex":I
    :cond_2a
    const/4 v0, 0x0

    .line 255
    .restart local v0    # "fieldIndex":I
    nop

    .line 269
    :goto_2c
    if-nez p3, :cond_30

    const/4 v4, 0x0

    goto :goto_34

    :cond_30
    invoke-virtual {p3}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v4

    .line 270
    .local v4, "calendarStyle":I
    :goto_34
    nop

    .line 271
    invoke-interface {p1}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v5

    .line 270
    invoke-static {v5, v0, v4, p4}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v5

    .line 272
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v5, :cond_40

    .line 273
    return-object v1

    .line 275
    :cond_40
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 276
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    if-eqz v0, :cond_ea

    if-eq v0, v2, :cond_b7

    const/4 v2, 0x7

    if-eq v0, v2, :cond_81

    .line 301
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_127

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 302
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_58

    .line 296
    :cond_81
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_89
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 297
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/time/format/DateTimeTextProvider;->toWeekDay(I)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_89

    .line 299
    :cond_b6
    goto :goto_127

    .line 291
    :cond_b7
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_bf
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 292
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v3

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_bf

    .line 294
    :cond_e9
    goto :goto_127

    .line 278
    :cond_ea
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_126

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 279
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 280
    .local v6, "era":I
    sget-object v7, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    if-ne p1, v7, :cond_113

    .line 281
    if-nez v6, :cond_111

    .line 282
    const/16 v6, -0x3e7

    goto :goto_113

    .line 284
    :cond_111
    add-int/lit8 v6, v6, -0x2

    .line 287
    :cond_113
    :goto_113
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    int-to-long v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "era":I
    goto :goto_f2

    .line 289
    :cond_126
    nop

    .line 306
    :cond_127
    :goto_127
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2

    .line 248
    .end local v0    # "fieldIndex":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v4    # "calendarStyle":I
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_12c
    :goto_12c
    invoke-virtual {p0, p2, p3, p4}, Ljava/time/format/DateTimeTextProvider;->getTextIterator(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getTextIterator(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "style"    # Ljava/time/format/TextStyle;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 220
    invoke-direct {p0, p1, p3}, Ljava/time/format/DateTimeTextProvider;->findStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v0

    .line 221
    .local v0, "store":Ljava/lang/Object;
    instance-of v1, v0, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    if-eqz v1, :cond_10

    .line 222
    move-object v1, v0

    check-cast v1, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v1, p2}, Ljava/time/format/DateTimeTextProvider$LocaleStore;->getTextIterator(Ljava/time/format/TextStyle;)Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 224
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method
