.class final Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;
.super Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZoneTextPrinterParser"
.end annotation


# static fields
.field private static final DST:I = 0x1

.field private static final FULL_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

.field private static final GENERIC:I = 0x2

.field private static final SHORT_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

.field private static final STD:I

.field private static final TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final cachedTree:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final cachedTreeCI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private preferredZones:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final textStyle:Ljava/time/format/TextStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3645
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/icu/text/TimeZoneNames$NameType;

    .line 3646
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v3

    .line 3647
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v4

    .line 3648
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v5

    .line 3649
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v6

    .line 3650
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 3651
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 3645
    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    .line 3654
    new-array v0, v6, [Landroid/icu/text/TimeZoneNames$NameType;

    .line 3655
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v3

    .line 3656
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v4

    .line 3657
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v5

    .line 3654
    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->FULL_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    .line 3660
    new-array v0, v6, [Landroid/icu/text/TimeZoneNames$NameType;

    .line 3661
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v3

    .line 3662
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v4

    .line 3663
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v5

    .line 3660
    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->SHORT_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    .line 3667
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 3666
    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cache:Ljava/util/Map;

    .line 3621
    return-void
.end method

.method constructor <init>(Ljava/time/format/TextStyle;Ljava/util/Set;)V
    .registers 8
    .param p1, "textStyle"    # Ljava/time/format/TextStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Set",
            "<",
            "Ljava/time/ZoneId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3630
    .local p2, "preferredZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/ZoneId;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ZoneText("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    .line 3748
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTree:Ljava/util/Map;

    .line 3750
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTreeCI:Ljava/util/Map;

    .line 3631
    const-string/jumbo v2, "textStyle"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/format/TextStyle;

    iput-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    .line 3632
    if-eqz p2, :cond_64

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_64

    .line 3633
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    .line 3634
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "id$iterator":Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    .line 3635
    .local v0, "id":Ljava/time/ZoneId;
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 3638
    .end local v0    # "id":Ljava/time/ZoneId;
    .end local v1    # "id$iterator":Ljava/util/Iterator;
    :cond_64
    return-void
.end method

.method private getDisplayName(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;
    .registers 16
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 3670
    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    sget-object v4, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    if-ne v3, v4, :cond_8

    .line 3671
    const/4 v3, 0x0

    return-object v3

    .line 3674
    :cond_8
    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/SoftReference;

    .line 3675
    .local v9, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/util/Map<Ljava/util/Locale;[Ljava/lang/String;>;>;"
    const/4 v8, 0x0

    .line 3676
    .local v8, "perLocale":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;[Ljava/lang/String;>;"
    if-eqz v9, :cond_1b

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "perLocale":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;[Ljava/lang/String;>;"
    check-cast v8, Ljava/util/Map;

    .local v8, "perLocale":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;[Ljava/lang/String;>;"
    if-nez v8, :cond_3b

    .line 3679
    .end local v8    # "perLocale":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;[Ljava/lang/String;>;"
    :cond_1b
    invoke-static {p3}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v1

    .line 3680
    .local v1, "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    .line 3682
    .local v6, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p1, v6, v3

    .line 3683
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3684
    .local v2, "canonicalId":Ljava/lang/String;
    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3685
    const/4 v7, 0x1

    .line 3684
    invoke-virtual/range {v1 .. v7}, Landroid/icu/text/TimeZoneNames;->getDisplayNames(Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V

    .line 3686
    if-nez v6, :cond_51

    .line 3687
    const/4 v3, 0x0

    return-object v3

    .line 3677
    .end local v1    # "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    .end local v2    # "canonicalId":Ljava/lang/String;
    .end local v6    # "names":[Ljava/lang/String;
    .restart local v8    # "perLocale":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;[Ljava/lang/String;>;"
    :cond_3b
    invoke-interface {v8, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .restart local v6    # "names":[Ljava/lang/String;
    if-eqz v6, :cond_1b

    .line 3715
    .end local v8    # "perLocale":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;[Ljava/lang/String;>;"
    :goto_43
    packed-switch p2, :pswitch_data_f6

    .line 3721
    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {v3}, Ljava/time/format/TextStyle;->zoneNameStyleIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    aget-object v3, v6, v3

    return-object v3

    .line 3689
    .restart local v1    # "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    .restart local v2    # "canonicalId":Ljava/lang/String;
    :cond_51
    const/4 v3, 0x1

    aget-object v3, v6, v3

    if-eqz v3, :cond_5b

    const/4 v3, 0x2

    aget-object v3, v6, v3

    if-nez v3, :cond_d0

    .line 3691
    :cond_5b
    :goto_5b
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    .line 3694
    .local v11, "tz":Ljava/util/TimeZone;
    invoke-virtual {v11}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    .line 3693
    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 3692
    invoke-static {v4, v5, v3}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v10

    .line 3697
    .local v10, "stdString":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    invoke-virtual {v11}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v4

    add-int/2addr v3, v4

    .line 3696
    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 3695
    invoke-static {v4, v5, v3}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v0

    .line 3698
    .local v0, "dstString":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v6, v3

    if-eqz v3, :cond_db

    const/4 v3, 0x1

    aget-object v3, v6, v3

    :goto_80
    const/4 v4, 0x1

    aput-object v3, v6, v4

    .line 3699
    const/4 v3, 0x2

    aget-object v3, v6, v3

    if-eqz v3, :cond_8b

    const/4 v3, 0x2

    aget-object v10, v6, v3

    .end local v10    # "stdString":Ljava/lang/String;
    :cond_8b
    const/4 v3, 0x2

    aput-object v10, v6, v3

    .line 3700
    const/4 v3, 0x3

    aget-object v3, v6, v3

    if-eqz v3, :cond_dd

    const/4 v3, 0x3

    aget-object v3, v6, v3

    :goto_96
    const/4 v4, 0x3

    aput-object v3, v6, v4

    .line 3701
    const/4 v3, 0x4

    aget-object v3, v6, v3

    if-eqz v3, :cond_a1

    const/4 v3, 0x4

    aget-object v0, v6, v3

    .end local v0    # "dstString":Ljava/lang/String;
    :cond_a1
    const/4 v3, 0x4

    aput-object v0, v6, v3

    .line 3703
    .end local v11    # "tz":Ljava/util/TimeZone;
    :cond_a4
    const/4 v3, 0x5

    aget-object v3, v6, v3

    if-nez v3, :cond_af

    .line 3704
    const/4 v3, 0x0

    aget-object v3, v6, v3

    const/4 v4, 0x5

    aput-object v3, v6, v4

    .line 3706
    :cond_af
    const/4 v3, 0x6

    aget-object v3, v6, v3

    if-nez v3, :cond_ba

    .line 3707
    const/4 v3, 0x0

    aget-object v3, v6, v3

    const/4 v4, 0x6

    aput-object v3, v6, v4

    .line 3709
    :cond_ba
    if-nez v8, :cond_c1

    .line 3710
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 3712
    :cond_c1
    invoke-interface {v8, p3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3713
    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cache:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v8}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_43

    .line 3689
    :cond_d0
    const/4 v3, 0x3

    aget-object v3, v6, v3

    if-eqz v3, :cond_5b

    const/4 v3, 0x4

    aget-object v3, v6, v3

    if-nez v3, :cond_a4

    goto :goto_5b

    .restart local v0    # "dstString":Ljava/lang/String;
    .restart local v10    # "stdString":Ljava/lang/String;
    .restart local v11    # "tz":Ljava/util/TimeZone;
    :cond_db
    move-object v3, v10

    .line 3698
    goto :goto_80

    .end local v10    # "stdString":Ljava/lang/String;
    :cond_dd
    move-object v3, v0

    .line 3700
    goto :goto_96

    .line 3717
    .end local v0    # "dstString":Ljava/lang/String;
    .end local v1    # "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    .end local v2    # "canonicalId":Ljava/lang/String;
    .end local v11    # "tz":Ljava/util/TimeZone;
    :pswitch_df
    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {v3}, Ljava/time/format/TextStyle;->zoneNameStyleIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    aget-object v3, v6, v3

    return-object v3

    .line 3719
    :pswitch_ea
    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {v3}, Ljava/time/format/TextStyle;->zoneNameStyleIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    aget-object v3, v6, v3

    return-object v3

    .line 3715
    nop

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_df
        :pswitch_ea
    .end packed-switch
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 11
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3726
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/ZoneId;

    .line 3727
    .local v3, "zone":Ljava/time/ZoneId;
    if-nez v3, :cond_f

    .line 3728
    return v4

    .line 3730
    :cond_f
    invoke-virtual {v3}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v2

    .line 3731
    .local v2, "zname":Ljava/lang/String;
    instance-of v6, v3, Ljava/time/ZoneOffset;

    if-nez v6, :cond_3d

    .line 3732
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    .line 3734
    .local v0, "dt":Ljava/time/temporal/TemporalAccessor;
    sget-object v6, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v6}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 3735
    invoke-virtual {v3}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v6

    invoke-static {v0}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/time/zone/ZoneRules;->isDaylightSavings(Ljava/time/Instant;)Z

    move-result v6

    if-eqz v6, :cond_32

    move v4, v5

    .line 3737
    :cond_32
    :goto_32
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v6

    .line 3733
    invoke-direct {p0, v2, v4, v6}, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->getDisplayName(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 3738
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_3d

    .line 3739
    move-object v2, v1

    .line 3742
    .end local v0    # "dt":Ljava/time/temporal/TemporalAccessor;
    .end local v1    # "name":Ljava/lang/String;
    :cond_3d
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3743
    return v5

    .line 3736
    .restart local v0    # "dt":Ljava/time/temporal/TemporalAccessor;
    :cond_41
    const/4 v4, 0x2

    goto :goto_32
.end method

.method protected getTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 26
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;

    .prologue
    .line 3754
    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    sget-object v11, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    if-ne v9, v11, :cond_d

    .line 3755
    invoke-super/range {p0 .. p1}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->getTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v9

    return-object v9

    .line 3757
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v19

    .line 3758
    .local v19, "locale":Ljava/util/Locale;
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v18

    .line 3759
    .local v18, "isCaseSensitive":Z
    invoke-static {}, Ljava/time/zone/ZoneRulesProvider;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v20

    .line 3760
    .local v20, "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->size()I

    move-result v21

    .line 3763
    .local v21, "regionIdsSize":I
    if-eqz v18, :cond_96

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTree:Ljava/util/Map;

    .line 3767
    .local v2, "cached":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/SoftReference<Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;>;>;"
    :goto_23
    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .local v16, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/SoftReference<Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;>;"
    if-eqz v16, :cond_49

    .line 3768
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move/from16 v0, v21

    if-ne v9, v0, :cond_49

    .line 3769
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/SoftReference;

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .local v22, "tree":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    if-nez v22, :cond_f6

    .line 3770
    .end local v22    # "tree":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_49
    invoke-static/range {p1 .. p1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->newTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v22

    .line 3772
    .restart local v22    # "tree":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    invoke-static/range {v19 .. v19}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v3

    .line 3773
    .local v3, "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3775
    .local v6, "now":J
    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    sget-object v11, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    if-ne v9, v11, :cond_9b

    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->FULL_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    .line 3776
    .local v5, "types":[Landroid/icu/text/TimeZoneNames$NameType;
    :goto_5f
    array-length v9, v5

    new-array v8, v9, [Ljava/lang/String;

    .line 3777
    .local v8, "names":[Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "zid$iterator":Ljava/util/Iterator;
    :cond_66
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3778
    .local v4, "zid":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v4}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3779
    move-object/from16 v0, v19

    invoke-static {v4, v0}, Ljava/time/format/ZoneName;->toZid(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 3780
    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/icu/text/TimeZoneNames;->getDisplayNames(Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V

    .line 3781
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_83
    array-length v9, v8

    move/from16 v0, v17

    if-ge v0, v9, :cond_66

    .line 3782
    aget-object v9, v8, v17

    if-eqz v9, :cond_93

    .line 3783
    aget-object v9, v8, v17

    move-object/from16 v0, v22

    invoke-virtual {v0, v9, v4}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3781
    :cond_93
    add-int/lit8 v17, v17, 0x1

    goto :goto_83

    .line 3763
    .end local v2    # "cached":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/SoftReference<Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;>;>;"
    .end local v3    # "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    .end local v4    # "zid":Ljava/lang/String;
    .end local v5    # "types":[Landroid/icu/text/TimeZoneNames$NameType;
    .end local v6    # "now":J
    .end local v8    # "names":[Ljava/lang/String;
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/SoftReference<Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;>;"
    .end local v17    # "i":I
    .end local v22    # "tree":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .end local v23    # "zid$iterator":Ljava/util/Iterator;
    :cond_96
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTreeCI:Ljava/util/Map;

    .restart local v2    # "cached":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/SoftReference<Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;>;>;"
    goto :goto_23

    .line 3775
    .restart local v3    # "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    .restart local v6    # "now":J
    .restart local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/SoftReference<Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;>;"
    .restart local v22    # "tree":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_9b
    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->SHORT_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    .restart local v5    # "types":[Landroid/icu/text/TimeZoneNames$NameType;
    goto :goto_5f

    .line 3789
    .restart local v8    # "names":[Ljava/lang/String;
    .restart local v23    # "zid$iterator":Ljava/util/Iterator;
    :cond_9e
    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    if-eqz v9, :cond_e1

    .line 3790
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_a8
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e1

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3791
    .restart local v4    # "zid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a8

    .line 3794
    move-object/from16 v0, v19

    invoke-static {v4, v0}, Ljava/time/format/ZoneName;->toZid(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 3795
    .local v10, "canonicalId":Ljava/lang/String;
    const/4 v15, 0x0

    move-object v9, v3

    move-object v11, v5

    move-wide v12, v6

    move-object v14, v8

    invoke-virtual/range {v9 .. v15}, Landroid/icu/text/TimeZoneNames;->getDisplayNames(Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V

    .line 3796
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_ce
    array-length v9, v8

    move/from16 v0, v17

    if-ge v0, v9, :cond_a8

    .line 3797
    aget-object v9, v8, v17

    if-eqz v9, :cond_de

    .line 3798
    aget-object v9, v8, v17

    move-object/from16 v0, v22

    invoke-virtual {v0, v9, v4}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3796
    :cond_de
    add-int/lit8 v17, v17, 0x1

    goto :goto_ce

    .line 3803
    .end local v4    # "zid":Ljava/lang/String;
    .end local v10    # "canonicalId":Ljava/lang/String;
    .end local v17    # "i":I
    :cond_e1
    new-instance v9, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v9, v11, v12}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v19

    invoke-interface {v2, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3805
    .end local v3    # "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    .end local v5    # "types":[Landroid/icu/text/TimeZoneNames$NameType;
    .end local v6    # "now":J
    .end local v8    # "names":[Ljava/lang/String;
    .end local v23    # "zid$iterator":Ljava/util/Iterator;
    :cond_f6
    return-object v22
.end method
