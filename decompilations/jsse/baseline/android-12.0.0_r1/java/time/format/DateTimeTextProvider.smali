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

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/format/DateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 110
    new-instance v0, Ljava/time/format/DateTimeTextProvider$1;

    invoke-direct {v0}, Ljava/time/format/DateTimeTextProvider$1;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeTextProvider;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 105
    invoke-static {p0, p1}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$100()Ljava/util/Comparator;
    .registers 1

    .line 105
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

    .line 500
    .local p0, "text":Ljava/lang/Object;, "TA;"
    .local p1, "field":Ljava/lang/Object;, "TB;"
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private greylist-max-o createStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;
    .registers 19
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 330
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 331
    .local v2, "styleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    sget-object v3, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    const-string v4, "gregory"

    const/4 v5, 0x0

    if-ne v0, v3, :cond_70

    .line 332
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v3

    array-length v6, v3

    move v7, v5

    :goto_16
    if-ge v7, v6, :cond_6a

    aget-object v8, v3, v7

    .line 333
    .local v8, "textStyle":Ljava/time/format/TextStyle;
    invoke-virtual {v8}, Ljava/time/format/TextStyle;->isStandalone()Z

    move-result v9

    if-eqz v9, :cond_21

    .line 335
    goto :goto_67

    .line 337
    :cond_21
    nop

    .line 338
    invoke-virtual {v8}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v9

    .line 337
    invoke-static {v4, v5, v9, v1}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v9

    .line 339
    .local v9, "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v9, :cond_67

    .line 340
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 341
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_39
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 342
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v13, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_39

    .line 344
    :cond_5e
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_67

    .line 345
    invoke-interface {v2, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .end local v8    # "textStyle":Ljava/time/format/TextStyle;
    .end local v9    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_67
    :goto_67
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 349
    :cond_6a
    new-instance v3, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v3, v2}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v3

    .line 352
    :cond_70
    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    const/4 v6, 0x1

    if-ne v0, v3, :cond_ee

    .line 353
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v3

    array-length v7, v3

    :goto_7a
    if-ge v5, v7, :cond_e8

    aget-object v8, v3, v5

    .line 354
    .restart local v8    # "textStyle":Ljava/time/format/TextStyle;
    nop

    .line 355
    invoke-virtual {v8}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v9

    .line 354
    const/4 v10, 0x2

    invoke-static {v4, v10, v9, v1}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v9

    .line 356
    .restart local v9    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 357
    .local v11, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz v9, :cond_be

    .line 358
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_97
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_bd

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 359
    .restart local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v13, v6

    int-to-long v13, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_97

    :cond_bd
    goto :goto_dc

    .line 365
    :cond_be
    const/4 v12, 0x0

    .local v12, "month":I
    :goto_bf
    const/16 v13, 0xb

    if-gt v12, v13, :cond_dc

    .line 367
    nop

    .line 368
    invoke-virtual {v8}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v13

    .line 367
    invoke-static {v4, v10, v12, v13, v1}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    .line 369
    .local v13, "name":Ljava/lang/String;
    if-nez v13, :cond_cf

    .line 370
    goto :goto_dc

    .line 372
    :cond_cf
    add-int/lit8 v14, v12, 0x1

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v11, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .end local v13    # "name":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_bf

    .line 375
    .end local v12    # "month":I
    :cond_dc
    :goto_dc
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e5

    .line 376
    invoke-interface {v2, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .end local v8    # "textStyle":Ljava/time/format/TextStyle;
    .end local v9    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_e5
    add-int/lit8 v5, v5, 0x1

    goto :goto_7a

    .line 379
    :cond_e8
    new-instance v3, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v3, v2}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v3

    .line 382
    :cond_ee
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    if-ne v0, v3, :cond_16e

    .line 383
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v3

    array-length v6, v3

    :goto_f7
    if-ge v5, v6, :cond_168

    aget-object v7, v3, v5

    .line 384
    .local v7, "textStyle":Ljava/time/format/TextStyle;
    nop

    .line 385
    invoke-virtual {v7}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v8

    .line 384
    const/4 v9, 0x7

    invoke-static {v4, v9, v8, v1}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    .line 386
    .local v8, "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 387
    .restart local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz v8, :cond_13e

    .line 388
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_114
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 389
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Ljava/time/format/DateTimeTextProvider;->toWeekDay(I)I

    move-result v12

    int-to-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_114

    :cond_13d
    goto :goto_15c

    .line 395
    :cond_13e
    const/4 v11, 0x1

    .local v11, "wday":I
    :goto_13f
    if-gt v11, v9, :cond_15c

    .line 397
    nop

    .line 398
    invoke-virtual {v7}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v12

    .line 397
    invoke-static {v4, v9, v11, v12, v1}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 399
    .local v12, "name":Ljava/lang/String;
    if-nez v12, :cond_14d

    .line 400
    goto :goto_15c

    .line 402
    :cond_14d
    invoke-static {v11}, Ljava/time/format/DateTimeTextProvider;->toWeekDay(I)I

    move-result v13

    int-to-long v13, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v10, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .end local v12    # "name":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_13f

    .line 405
    .end local v11    # "wday":I
    :cond_15c
    :goto_15c
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_165

    .line 406
    invoke-interface {v2, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .end local v7    # "textStyle":Ljava/time/format/TextStyle;
    .end local v8    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_165
    add-int/lit8 v5, v5, 0x1

    goto :goto_f7

    .line 409
    :cond_168
    new-instance v3, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v3, v2}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v3

    .line 412
    :cond_16e
    sget-object v3, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    if-ne v0, v3, :cond_1d2

    .line 413
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v3

    array-length v6, v3

    :goto_177
    if-ge v5, v6, :cond_1cc

    aget-object v7, v3, v5

    .line 414
    .restart local v7    # "textStyle":Ljava/time/format/TextStyle;
    invoke-virtual {v7}, Ljava/time/format/TextStyle;->isStandalone()Z

    move-result v8

    if-eqz v8, :cond_182

    .line 416
    goto :goto_1c9

    .line 418
    :cond_182
    const/16 v8, 0x9

    .line 419
    invoke-virtual {v7}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v9

    .line 418
    invoke-static {v4, v8, v9, v1}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v8

    .line 420
    .restart local v8    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v8, :cond_1c9

    .line 421
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 422
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_19b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1c0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 423
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_19b

    .line 425
    :cond_1c0
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1c9

    .line 426
    invoke-interface {v2, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .end local v7    # "textStyle":Ljava/time/format/TextStyle;
    .end local v8    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_1c9
    :goto_1c9
    add-int/lit8 v5, v5, 0x1

    goto :goto_177

    .line 430
    :cond_1cc
    new-instance v3, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v3, v2}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v3

    .line 433
    :cond_1d2
    sget-object v3, Ljava/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

    if-ne v0, v3, :cond_23d

    .line 456
    invoke-static/range {p2 .. p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v3

    .line 459
    .local v3, "uLocale":Landroid/icu/util/ULocale;
    const-string v4, "calendar"

    const-string v7, "gregorian"

    invoke-virtual {v3, v4, v7}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;

    .line 460
    invoke-static {v3}, Lcom/android/icu/text/ExtendedDateFormatSymbols;->getInstance(Landroid/icu/util/ULocale;)Lcom/android/icu/text/ExtendedDateFormatSymbols;

    move-result-object v4

    .line 461
    .local v4, "extendedDfs":Lcom/android/icu/text/ExtendedDateFormatSymbols;
    invoke-virtual {v4}, Lcom/android/icu/text/ExtendedDateFormatSymbols;->getDateFormatSymbols()Landroid/icu/text/DateFormatSymbols;

    move-result-object v7

    .line 462
    .local v7, "dfs":Landroid/icu/text/DateFormatSymbols;
    sget-object v8, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    .line 463
    invoke-virtual {v7, v5, v6}, Landroid/icu/text/DateFormatSymbols;->getQuarters(II)[Ljava/lang/String;

    move-result-object v9

    .line 462
    invoke-static {v9}, Ljava/time/format/DateTimeTextProvider;->extractQuarters([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v8, Ljava/time/format/TextStyle;->FULL_STANDALONE:Ljava/time/format/TextStyle;

    .line 465
    invoke-virtual {v7, v6, v6}, Landroid/icu/text/DateFormatSymbols;->getQuarters(II)[Ljava/lang/String;

    move-result-object v9

    .line 464
    invoke-static {v9}, Ljava/time/format/DateTimeTextProvider;->extractQuarters([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v8, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    .line 467
    invoke-virtual {v7, v5, v5}, Landroid/icu/text/DateFormatSymbols;->getQuarters(II)[Ljava/lang/String;

    move-result-object v9

    .line 466
    invoke-static {v9}, Ljava/time/format/DateTimeTextProvider;->extractQuarters([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v8, Ljava/time/format/TextStyle;->SHORT_STANDALONE:Ljava/time/format/TextStyle;

    .line 469
    invoke-virtual {v7, v6, v5}, Landroid/icu/text/DateFormatSymbols;->getQuarters(II)[Ljava/lang/String;

    move-result-object v9

    .line 468
    invoke-static {v9}, Ljava/time/format/DateTimeTextProvider;->extractQuarters([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v8, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    .line 471
    invoke-virtual {v4, v5}, Lcom/android/icu/text/ExtendedDateFormatSymbols;->getNarrowQuarters(I)[Ljava/lang/String;

    move-result-object v5

    .line 470
    invoke-static {v5}, Ljava/time/format/DateTimeTextProvider;->extractQuarters([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v2, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v5, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    .line 473
    invoke-virtual {v4, v6}, Lcom/android/icu/text/ExtendedDateFormatSymbols;->getNarrowQuarters(I)[Ljava/lang/String;

    move-result-object v6

    .line 472
    invoke-static {v6}, Ljava/time/format/DateTimeTextProvider;->extractQuarters([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    new-instance v5, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v5, v2}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v5

    .line 479
    .end local v3    # "uLocale":Landroid/icu/util/ULocale;
    .end local v4    # "extendedDfs":Lcom/android/icu/text/ExtendedDateFormatSymbols;
    .end local v7    # "dfs":Landroid/icu/text/DateFormatSymbols;
    :cond_23d
    const-string v3, ""

    return-object v3
.end method

.method private static blacklist extractQuarters([Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .param p0, "quarters"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 485
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "q":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_18

    .line 486
    add-int/lit8 v2, v1, 0x1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 488
    .end local v1    # "q":I
    :cond_18
    return-object v0
.end method

.method private greylist-max-o findStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 311
    invoke-static {p1, p2}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 312
    .local v0, "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/util/Locale;>;"
    sget-object v1, Ljava/time/format/DateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 313
    .local v2, "store":Ljava/lang/Object;
    if-nez v2, :cond_17

    .line 314
    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeTextProvider;->createStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v2

    .line 315
    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 318
    :cond_17
    return-object v2
.end method

.method static greylist-max-o getInstance()Ljava/time/format/DateTimeTextProvider;
    .registers 1

    .line 125
    new-instance v0, Ljava/time/format/DateTimeTextProvider;

    invoke-direct {v0}, Ljava/time/format/DateTimeTextProvider;-><init>()V

    return-object v0
.end method

.method private static greylist-max-o toWeekDay(I)I
    .registers 2
    .param p0, "calWeekDay"    # I

    .line 322
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 323
    const/4 v0, 0x7

    return v0

    .line 325
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

    .line 167
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    if-eq p1, v0, :cond_4d

    instance-of v0, p2, Ljava/time/temporal/ChronoField;

    if-nez v0, :cond_9

    goto :goto_4d

    .line 174
    :cond_9
    sget-object v0, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    if-ne p2, v0, :cond_20

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "fieldIndex":I
    sget-object v1, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    if-ne p1, v1, :cond_1e

    .line 177
    const-wide/16 v1, -0x3e7

    cmp-long v1, p3, v1

    if-nez v1, :cond_1a

    .line 178
    const/4 v1, 0x0

    .local v1, "fieldValue":I
    goto :goto_3d

    .line 180
    .end local v1    # "fieldValue":I
    :cond_1a
    long-to-int v1, p3

    add-int/lit8 v1, v1, 0x2

    .restart local v1    # "fieldValue":I
    goto :goto_3d

    .line 183
    .end local v1    # "fieldValue":I
    :cond_1e
    long-to-int v1, p3

    .restart local v1    # "fieldValue":I
    goto :goto_3d

    .line 185
    .end local v0    # "fieldIndex":I
    .end local v1    # "fieldValue":I
    :cond_20
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne p2, v0, :cond_29

    .line 186
    const/4 v0, 0x2

    .line 187
    .restart local v0    # "fieldIndex":I
    long-to-int v1, p3

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "fieldValue":I
    goto :goto_3d

    .line 188
    .end local v0    # "fieldIndex":I
    .end local v1    # "fieldValue":I
    :cond_29
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    if-ne p2, v0, :cond_36

    .line 189
    const/4 v0, 0x7

    .line 190
    .restart local v0    # "fieldIndex":I
    long-to-int v1, p3

    add-int/lit8 v1, v1, 0x1

    .line 191
    .restart local v1    # "fieldValue":I
    const/4 v2, 0x7

    if-le v1, v2, :cond_3d

    .line 192
    const/4 v1, 0x1

    goto :goto_3d

    .line 194
    .end local v0    # "fieldIndex":I
    .end local v1    # "fieldValue":I
    :cond_36
    sget-object v0, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    if-ne p2, v0, :cond_4b

    .line 195
    const/16 v0, 0x9

    .line 196
    .restart local v0    # "fieldIndex":I
    long-to-int v1, p3

    .line 200
    .restart local v1    # "fieldValue":I
    :cond_3d
    :goto_3d
    nop

    .line 201
    invoke-interface {p1}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v3

    .line 200
    invoke-static {v2, v0, v1, v3, p6}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 198
    .end local v0    # "fieldIndex":I
    .end local v1    # "fieldValue":I
    :cond_4b
    const/4 v0, 0x0

    return-object v0

    .line 169
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

    .line 143
    invoke-direct {p0, p1, p5}, Ljava/time/format/DateTimeTextProvider;->findStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    .local v0, "store":Ljava/lang/Object;
    instance-of v1, v0, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    if-eqz v1, :cond_10

    .line 145
    move-object v1, v0

    check-cast v1, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v1, p2, p3, p4}, Ljava/time/format/DateTimeTextProvider$LocaleStore;->getText(JLjava/time/format/TextStyle;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 147
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

    .line 247
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    if-eq p1, v0, :cond_123

    instance-of v0, p2, Ljava/time/temporal/ChronoField;

    if-nez v0, :cond_a

    goto/16 :goto_123

    .line 253
    :cond_a
    sget-object v0, Ljava/time/format/DateTimeTextProvider$2;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p2

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_128

    .line 267
    return-object v1

    .line 264
    :pswitch_1a
    const/16 v0, 0x9

    .line 265
    .local v0, "fieldIndex":I
    goto :goto_23

    .line 261
    .end local v0    # "fieldIndex":I
    :pswitch_1d
    const/4 v0, 0x7

    .line 262
    .restart local v0    # "fieldIndex":I
    goto :goto_23

    .line 258
    .end local v0    # "fieldIndex":I
    :pswitch_1f
    const/4 v0, 0x2

    .line 259
    .restart local v0    # "fieldIndex":I
    goto :goto_23

    .line 255
    .end local v0    # "fieldIndex":I
    :pswitch_21
    const/4 v0, 0x0

    .line 256
    .restart local v0    # "fieldIndex":I
    nop

    .line 270
    :goto_23
    if-nez p3, :cond_27

    const/4 v2, 0x0

    goto :goto_2b

    :cond_27
    invoke-virtual {p3}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v2

    .line 271
    .local v2, "calendarStyle":I
    :goto_2b
    nop

    .line 272
    invoke-interface {p1}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-static {v3, v0, v2, p4}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v3

    .line 273
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v3, :cond_37

    .line 274
    return-object v1

    .line 276
    :cond_37
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    sparse-switch v0, :sswitch_data_134

    .line 302
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    goto/16 :goto_f5

    .line 297
    :sswitch_4d
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 298
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

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

    .line 299
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_55

    .line 300
    :cond_82
    goto/16 :goto_11e

    .line 292
    :sswitch_84
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 293
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_8c

    .line 295
    :cond_b7
    goto :goto_11e

    .line 279
    :sswitch_b8
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 280
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 281
    .local v6, "era":I
    sget-object v7, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    if-ne p1, v7, :cond_e1

    .line 282
    if-nez v6, :cond_df

    .line 283
    const/16 v6, -0x3e7

    goto :goto_e1

    .line 285
    :cond_df
    add-int/lit8 v6, v6, -0x2

    .line 288
    :cond_e1
    :goto_e1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    int-to-long v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "era":I
    goto :goto_c0

    .line 290
    :cond_f4
    goto :goto_11e

    .line 302
    :goto_f5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 303
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

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

    .line 304
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_f5

    .line 307
    :cond_11e
    :goto_11e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    return-object v4

    .line 249
    .end local v0    # "fieldIndex":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v2    # "calendarStyle":I
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_123
    :goto_123
    invoke-virtual {p0, p2, p3, p4}, Ljava/time/format/DateTimeTextProvider;->getTextIterator(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1f
        :pswitch_1d
        :pswitch_1a
    .end packed-switch

    :sswitch_data_134
    .sparse-switch
        0x0 -> :sswitch_b8
        0x2 -> :sswitch_84
        0x7 -> :sswitch_4d
    .end sparse-switch
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

    .line 221
    invoke-direct {p0, p1, p3}, Ljava/time/format/DateTimeTextProvider;->findStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v0

    .line 222
    .local v0, "store":Ljava/lang/Object;
    instance-of v1, v0, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    if-eqz v1, :cond_10

    .line 223
    move-object v1, v0

    check-cast v1, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v1, p2}, Ljava/time/format/DateTimeTextProvider$LocaleStore;->getTextIterator(Ljava/time/format/TextStyle;)Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 225
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method
