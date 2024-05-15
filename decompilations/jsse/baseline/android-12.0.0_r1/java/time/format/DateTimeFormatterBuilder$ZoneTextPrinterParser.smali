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
.field private static final greylist-max-o DST:I = 0x1

.field private static final greylist-max-o FULL_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

.field private static final greylist-max-o GENERIC:I = 0x2

.field private static final greylist-max-o SHORT_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

.field private static final greylist-max-o STD:I

.field private static final greylist-max-o TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

.field private static final greylist-max-o cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o cachedTree:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference<",
            "Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o cachedTreeCI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference<",
            "Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o preferredZones:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o textStyle:Ljava/time/format/TextStyle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 3657
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v6, 0x5

    aput-object v1, v0, v6

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    .line 3666
    new-array v0, v5, [Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v4

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->FULL_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    .line 3672
    new-array v0, v5, [Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v4

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->SHORT_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    .line 3679
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cache:Ljava/util/Map;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/time/format/TextStyle;Ljava/util/Set;)V
    .registers 7
    .param p1, "textStyle"    # Ljava/time/format/TextStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Set<",
            "Ljava/time/ZoneId;",
            ">;)V"
        }
    .end annotation

    .line 3642
    .local p2, "preferredZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/ZoneId;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZoneText("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    .line 3775
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTree:Ljava/util/Map;

    .line 3777
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTreeCI:Ljava/util/Map;

    .line 3643
    const-string v0, "textStyle"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/time/format/TextStyle;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    .line 3644
    if-eqz p2, :cond_5e

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_5e

    .line 3645
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    .line 3646
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/ZoneId;

    .line 3647
    .local v1, "id":Ljava/time/ZoneId;
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3648
    .end local v1    # "id":Ljava/time/ZoneId;
    goto :goto_48

    .line 3650
    :cond_5e
    return-void
.end method

.method private greylist-max-o getDisplayName(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;
    .registers 24
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .line 3683
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    sget-object v4, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    if-ne v3, v4, :cond_e

    .line 3684
    const/4 v3, 0x0

    return-object v3

    .line 3687
    :cond_e
    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cache:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 3688
    .local v4, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/util/Map<Ljava/util/Locale;[Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    .line 3689
    .local v5, "perLocale":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;[Ljava/lang/String;>;"
    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v4, :cond_2d

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    move-object v5, v9

    if-eqz v9, :cond_2d

    .line 3690
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v10, v9

    .local v10, "names":[Ljava/lang/String;
    if-nez v9, :cond_cd

    .line 3706
    .end local v10    # "names":[Ljava/lang/String;
    :cond_2d
    invoke-static/range {p3 .. p3}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v16

    .line 3707
    .local v16, "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    sget-object v11, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    array-length v9, v11

    add-int/2addr v9, v8

    new-array v15, v9, [Ljava/lang/String;

    .line 3709
    .local v15, "names":[Ljava/lang/String;
    const/16 v17, 0x0

    aput-object v1, v15, v17

    .line 3710
    invoke-static/range {p1 .. p1}, Ljava/time/format/ZoneName;->getSystemCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3711
    .local v18, "canonicalId":Ljava/lang/String;
    nop

    .line 3712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/16 v19, 0x1

    .line 3711
    move-object/from16 v9, v16

    move-object/from16 v10, v18

    move-object v14, v15

    move-object v6, v15

    .end local v15    # "names":[Ljava/lang/String;
    .local v6, "names":[Ljava/lang/String;
    move/from16 v15, v19

    invoke-static/range {v9 .. v15}, Llibcore/icu/TimeZoneNames;->getDisplayNames(Landroid/icu/text/TimeZoneNames;Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V

    .line 3713
    nop

    .line 3716
    aget-object v9, v6, v8

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-eqz v9, :cond_64

    aget-object v9, v6, v11

    if-eqz v9, :cond_64

    aget-object v9, v6, v7

    if-eqz v9, :cond_64

    aget-object v9, v6, v10

    if-nez v9, :cond_a7

    .line 3718
    :cond_64
    invoke-static/range {p1 .. p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    .line 3719
    .local v9, "tz":Ljava/util/TimeZone;
    nop

    .line 3721
    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v12

    .line 3719
    invoke-static {v8, v8, v12}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v12

    .line 3722
    .local v12, "stdString":Ljava/lang/String;
    nop

    .line 3724
    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v13

    invoke-virtual {v9}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v14

    add-int/2addr v13, v14

    .line 3722
    invoke-static {v8, v8, v13}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v13

    .line 3725
    .local v13, "dstString":Ljava/lang/String;
    aget-object v14, v6, v8

    if-eqz v14, :cond_86

    aget-object v14, v6, v8

    goto :goto_87

    :cond_86
    move-object v14, v12

    :goto_87
    aput-object v14, v6, v8

    .line 3726
    aget-object v14, v6, v11

    if-eqz v14, :cond_90

    aget-object v14, v6, v11

    goto :goto_91

    :cond_90
    move-object v14, v12

    :goto_91
    aput-object v14, v6, v11

    .line 3727
    aget-object v11, v6, v7

    if-eqz v11, :cond_9a

    aget-object v11, v6, v7

    goto :goto_9b

    :cond_9a
    move-object v11, v13

    :goto_9b
    aput-object v11, v6, v7

    .line 3728
    aget-object v11, v6, v10

    if-eqz v11, :cond_a4

    aget-object v11, v6, v10

    goto :goto_a5

    :cond_a4
    move-object v11, v13

    :goto_a5
    aput-object v11, v6, v10

    .line 3730
    .end local v9    # "tz":Ljava/util/TimeZone;
    .end local v12    # "stdString":Ljava/lang/String;
    .end local v13    # "dstString":Ljava/lang/String;
    :cond_a7
    const/4 v9, 0x5

    aget-object v10, v6, v9

    if-nez v10, :cond_b0

    .line 3731
    aget-object v10, v6, v17

    aput-object v10, v6, v9

    .line 3734
    :cond_b0
    const/4 v9, 0x6

    aget-object v10, v6, v9

    if-nez v10, :cond_b9

    .line 3735
    aget-object v10, v6, v17

    aput-object v10, v6, v9

    .line 3737
    :cond_b9
    if-nez v5, :cond_c1

    .line 3738
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v5, v9

    .line 3740
    :cond_c1
    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3741
    new-instance v9, Ljava/lang/ref/SoftReference;

    invoke-direct {v9, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v6

    .line 3743
    .end local v6    # "names":[Ljava/lang/String;
    .end local v16    # "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    .end local v18    # "canonicalId":Ljava/lang/String;
    .restart local v10    # "names":[Ljava/lang/String;
    :cond_cd
    packed-switch p2, :pswitch_data_f0

    .line 3749
    iget-object v3, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {v3}, Ljava/time/format/TextStyle;->zoneNameStyleIndex()I

    move-result v3

    const/4 v6, 0x5

    add-int/2addr v3, v6

    aget-object v3, v10, v3

    return-object v3

    .line 3747
    :pswitch_db
    iget-object v3, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {v3}, Ljava/time/format/TextStyle;->zoneNameStyleIndex()I

    move-result v3

    add-int/2addr v3, v7

    aget-object v3, v10, v3

    return-object v3

    .line 3745
    :pswitch_e5
    iget-object v3, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {v3}, Ljava/time/format/TextStyle;->zoneNameStyleIndex()I

    move-result v3

    add-int/2addr v3, v8

    aget-object v3, v10, v3

    return-object v3

    nop

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_e5
        :pswitch_db
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 10
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 3754
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    .line 3755
    .local v0, "zone":Ljava/time/ZoneId;
    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 3756
    return v1

    .line 3758
    :cond_e
    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v2

    .line 3759
    .local v2, "zname":Ljava/lang/String;
    instance-of v3, v0, Ljava/time/ZoneOffset;

    const/4 v4, 0x1

    if-nez v3, :cond_40

    .line 3760
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v3

    .line 3761
    .local v3, "dt":Ljava/time/temporal/TemporalAccessor;
    nop

    .line 3762
    sget-object v5, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v5}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 3763
    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v5

    invoke-static {v3}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/time/zone/ZoneRules;->isDaylightSavings(Ljava/time/Instant;)Z

    move-result v5

    if-eqz v5, :cond_35

    move v1, v4

    goto :goto_35

    .line 3764
    :cond_34
    const/4 v1, 0x2

    .line 3765
    :cond_35
    :goto_35
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v5

    .line 3761
    invoke-direct {p0, v2, v1, v5}, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->getDisplayName(Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 3766
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_40

    .line 3767
    move-object v2, v1

    .line 3770
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "dt":Ljava/time/temporal/TemporalAccessor;
    :cond_40
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3771
    return v4
.end method

.method protected greylist-max-o getTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 26
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;

    .line 3782
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    sget-object v2, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    if-ne v1, v2, :cond_d

    .line 3783
    invoke-super/range {p0 .. p1}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->getTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    return-object v1

    .line 3785
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 3786
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v2

    .line 3787
    .local v2, "isCaseSensitive":Z
    invoke-static {}, Ljava/time/zone/ZoneRulesProvider;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v3

    .line 3788
    .local v3, "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    .line 3791
    .local v4, "regionIdsSize":I
    if-eqz v2, :cond_22

    iget-object v5, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTree:Ljava/util/Map;

    goto :goto_24

    :cond_22
    iget-object v5, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->cachedTreeCI:Ljava/util/Map;

    .line 3793
    .local v5, "cached":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/SoftReference<Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;>;>;"
    :goto_24
    const/4 v6, 0x0

    .line 3794
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/SoftReference<Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;>;"
    const/4 v7, 0x0

    .line 3795
    .local v7, "tree":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    const/4 v8, 0x0

    .line 3796
    .local v8, "zoneStrings":[[Ljava/lang/String;
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    move-object v6, v9

    if-eqz v9, :cond_50

    .line 3797
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v4, :cond_50

    .line 3798
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/SoftReference;

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-object v7, v9

    if-nez v9, :cond_4c

    goto :goto_50

    :cond_4c
    move/from16 v22, v2

    goto/16 :goto_11d

    .line 3799
    :cond_50
    :goto_50
    invoke-static/range {p1 .. p1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->newTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v7

    .line 3830
    invoke-static {v1}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v16

    .line 3831
    .local v16, "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 3833
    .local v17, "now":J
    iget-object v9, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    sget-object v10, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    if-ne v9, v10, :cond_65

    sget-object v9, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->FULL_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_67

    :cond_65
    sget-object v9, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->SHORT_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    :goto_67
    move-object v15, v9

    .line 3834
    .local v15, "types":[Landroid/icu/text/TimeZoneNames$NameType;
    array-length v9, v15

    new-array v14, v9, [Ljava/lang/String;

    .line 3835
    .local v14, "names":[Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_6f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3836
    .local v9, "zid":Ljava/lang/String;
    invoke-virtual {v7, v9, v9}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3837
    invoke-static {v9, v1}, Ljava/time/format/ZoneName;->toZid(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 3838
    .end local v9    # "zid":Ljava/lang/String;
    .local v12, "zid":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v9, v16

    move-object v10, v12

    move-object v11, v15

    move-object/from16 v21, v12

    .end local v12    # "zid":Ljava/lang/String;
    .local v21, "zid":Ljava/lang/String;
    move-wide/from16 v12, v17

    move-object/from16 v22, v14

    .end local v14    # "names":[Ljava/lang/String;
    .local v22, "names":[Ljava/lang/String;
    move-object/from16 v23, v15

    .end local v15    # "types":[Landroid/icu/text/TimeZoneNames$NameType;
    .local v23, "types":[Landroid/icu/text/TimeZoneNames$NameType;
    move/from16 v15, v20

    invoke-static/range {v9 .. v15}, Llibcore/icu/TimeZoneNames;->getDisplayNames(Landroid/icu/text/TimeZoneNames;Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V

    .line 3840
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_96
    move-object/from16 v15, v22

    .end local v22    # "names":[Ljava/lang/String;
    .local v15, "names":[Ljava/lang/String;
    array-length v10, v15

    if-ge v9, v10, :cond_b0

    .line 3841
    aget-object v10, v15, v9

    if-eqz v10, :cond_a7

    .line 3842
    aget-object v10, v15, v9

    move-object/from16 v11, v21

    .end local v21    # "zid":Ljava/lang/String;
    .local v11, "zid":Ljava/lang/String;
    invoke-virtual {v7, v10, v11}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->add(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_a9

    .line 3841
    .end local v11    # "zid":Ljava/lang/String;
    .restart local v21    # "zid":Ljava/lang/String;
    :cond_a7
    move-object/from16 v11, v21

    .line 3840
    .end local v21    # "zid":Ljava/lang/String;
    .restart local v11    # "zid":Ljava/lang/String;
    :goto_a9
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v21, v11

    move-object/from16 v22, v15

    goto :goto_96

    .end local v11    # "zid":Ljava/lang/String;
    .restart local v21    # "zid":Ljava/lang/String;
    :cond_b0
    move-object/from16 v11, v21

    .line 3845
    .end local v9    # "i":I
    .end local v21    # "zid":Ljava/lang/String;
    move-object v14, v15

    move-object/from16 v15, v23

    goto :goto_6f

    .line 3848
    .end local v23    # "types":[Landroid/icu/text/TimeZoneNames$NameType;
    .restart local v14    # "names":[Ljava/lang/String;
    .local v15, "types":[Landroid/icu/text/TimeZoneNames$NameType;
    :cond_b6
    move-object/from16 v23, v15

    move-object v15, v14

    .end local v14    # "names":[Ljava/lang/String;
    .local v15, "names":[Ljava/lang/String;
    .restart local v23    # "types":[Landroid/icu/text/TimeZoneNames$NameType;
    iget-object v9, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    if-eqz v9, :cond_109

    .line 3849
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_c1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_105

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Ljava/lang/String;

    .line 3850
    .local v14, "zid":Ljava/lang/String;
    iget-object v9, v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->preferredZones:Ljava/util/Set;

    invoke-interface {v9, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d7

    .line 3851
    goto :goto_c1

    .line 3853
    :cond_d7
    invoke-static {v14, v1}, Ljava/time/format/ZoneName;->toZid(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    .line 3854
    .local v20, "canonicalId":Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v9, v16

    move-object/from16 v10, v20

    move-object/from16 v11, v23

    move-wide/from16 v12, v17

    move-object v0, v14

    .end local v14    # "zid":Ljava/lang/String;
    .local v0, "zid":Ljava/lang/String;
    move-object v14, v15

    move/from16 v22, v2

    move-object v2, v15

    .end local v15    # "names":[Ljava/lang/String;
    .local v2, "names":[Ljava/lang/String;
    .local v22, "isCaseSensitive":Z
    move/from16 v15, v21

    invoke-static/range {v9 .. v15}, Llibcore/icu/TimeZoneNames;->getDisplayNames(Landroid/icu/text/TimeZoneNames;Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V

    .line 3856
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_f0
    array-length v10, v2

    if-ge v9, v10, :cond_ff

    .line 3857
    aget-object v10, v2, v9

    if-eqz v10, :cond_fc

    .line 3858
    aget-object v10, v2, v9

    invoke-virtual {v7, v10, v0}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3856
    :cond_fc
    add-int/lit8 v9, v9, 0x1

    goto :goto_f0

    .line 3861
    .end local v0    # "zid":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v20    # "canonicalId":Ljava/lang/String;
    :cond_ff
    move-object/from16 v0, p0

    move-object v15, v2

    move/from16 v2, v22

    goto :goto_c1

    .line 3849
    .end local v22    # "isCaseSensitive":Z
    .local v2, "isCaseSensitive":Z
    .restart local v15    # "names":[Ljava/lang/String;
    :cond_105
    move/from16 v22, v2

    move-object v2, v15

    .end local v15    # "names":[Ljava/lang/String;
    .local v2, "names":[Ljava/lang/String;
    .restart local v22    # "isCaseSensitive":Z
    goto :goto_10c

    .line 3848
    .end local v22    # "isCaseSensitive":Z
    .local v2, "isCaseSensitive":Z
    .restart local v15    # "names":[Ljava/lang/String;
    :cond_109
    move/from16 v22, v2

    move-object v2, v15

    .line 3864
    .end local v15    # "names":[Ljava/lang/String;
    .local v2, "names":[Ljava/lang/String;
    .restart local v22    # "isCaseSensitive":Z
    :goto_10c
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Ljava/lang/ref/SoftReference;

    invoke-direct {v10, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v9, v10}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3866
    .end local v2    # "names":[Ljava/lang/String;
    .end local v16    # "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    .end local v17    # "now":J
    .end local v23    # "types":[Landroid/icu/text/TimeZoneNames$NameType;
    :goto_11d
    return-object v7
.end method
