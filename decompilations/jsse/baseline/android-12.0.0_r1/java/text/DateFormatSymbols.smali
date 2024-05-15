.class public Ljava/text/DateFormatSymbols;
.super Ljava/lang/Object;
.source "DateFormatSymbols.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final greylist-max-o PATTERN_AM_PM:I = 0xe

.field static final greylist-max-o PATTERN_DAY_OF_MONTH:I = 0x3

.field static final greylist-max-o PATTERN_DAY_OF_WEEK:I = 0x9

.field static final greylist-max-o PATTERN_DAY_OF_WEEK_IN_MONTH:I = 0xb

.field static final greylist-max-o PATTERN_DAY_OF_YEAR:I = 0xa

.field static final greylist-max-o PATTERN_DAY_PERIOD:I = 0x18

.field static final greylist-max-o PATTERN_ERA:I = 0x0

.field static final greylist-max-o PATTERN_FLEXIBLE_DAY_PERIOD:I = 0x19

.field static final greylist-max-o PATTERN_HOUR0:I = 0x10

.field static final greylist-max-o PATTERN_HOUR1:I = 0xf

.field static final greylist-max-o PATTERN_HOUR_OF_DAY0:I = 0x5

.field static final greylist-max-o PATTERN_HOUR_OF_DAY1:I = 0x4

.field static final greylist-max-o PATTERN_ISO_DAY_OF_WEEK:I = 0x14

.field static final greylist-max-o PATTERN_ISO_ZONE:I = 0x15

.field static final greylist-max-o PATTERN_MILLISECOND:I = 0x8

.field static final greylist-max-o PATTERN_MINUTE:I = 0x6

.field static final greylist-max-o PATTERN_MONTH:I = 0x2

.field static final greylist-max-o PATTERN_MONTH_STANDALONE:I = 0x16

.field static final greylist-max-o PATTERN_SECOND:I = 0x7

.field static final greylist-max-o PATTERN_STANDALONE_DAY_OF_WEEK:I = 0x17

.field static final greylist-max-o PATTERN_WEEK_OF_MONTH:I = 0xd

.field static final greylist-max-o PATTERN_WEEK_OF_YEAR:I = 0xc

.field static final greylist-max-o PATTERN_WEEK_YEAR:I = 0x13

.field static final greylist-max-o PATTERN_YEAR:I = 0x1

.field static final greylist-max-o PATTERN_ZONE_NAME:I = 0x11

.field static final greylist-max-o PATTERN_ZONE_VALUE:I = 0x12

.field private static final greylist-max-o cachedInstances:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Ljava/lang/ref/SoftReference<",
            "Ljava/text/DateFormatSymbols;",
            ">;>;"
        }
    .end annotation
.end field

.field static final greylist-max-o currentSerialVersion:I = 0x1

.field static final greylist-max-o millisPerHour:I = 0x36ee80

.field static final greylist-max-o patternChars:Ljava/lang/String; = "GyMdkHmsSEDFwWahKzZYuXLcbB"

.field static final whitelist serialVersionUID:J = -0x53198e36cae8e83eL


# instance fields
.field greylist-max-o ampms:[Ljava/lang/String;

.field volatile transient greylist-max-o cachedHashCode:I

.field greylist-max-o eras:[Ljava/lang/String;

.field transient greylist-max-o isZoneStringsSet:Z

.field private transient greylist-max-o lastZoneIndex:I

.field greylist-max-o localPatternChars:Ljava/lang/String;

.field greylist-max-o locale:Ljava/util/Locale;

.field greylist-max-o months:[Ljava/lang/String;

.field private greylist-max-o serialVersionOnStream:I

.field greylist-max-o shortMonths:[Ljava/lang/String;

.field private greylist-max-o shortStandAloneMonths:[Ljava/lang/String;

.field private greylist-max-o shortStandAloneWeekdays:[Ljava/lang/String;

.field greylist-max-o shortWeekdays:[Ljava/lang/String;

.field private greylist-max-o standAloneMonths:[Ljava/lang/String;

.field private greylist-max-o standAloneWeekdays:[Ljava/lang/String;

.field private greylist-max-o tinyMonths:[Ljava/lang/String;

.field private greylist-max-o tinyStandAloneMonths:[Ljava/lang/String;

.field private greylist-max-o tinyStandAloneWeekdays:[Ljava/lang/String;

.field private greylist-max-o tinyWeekdays:[Ljava/lang/String;

.field greylist-max-o weekdays:[Ljava/lang/String;

.field greylist-max-o zoneStrings:[[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 805
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Ljava/text/DateFormatSymbols;->cachedInstances:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 159
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 168
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 177
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 186
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 194
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 221
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 226
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    .line 275
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 283
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    .line 306
    const/4 v0, 0x1

    iput v0, p0, Ljava/text/DateFormatSymbols;->serialVersionOnStream:I

    .line 808
    iput v1, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    .line 813
    iput v1, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 123
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;->initializeData(Ljava/util/Locale;)V

    .line 124
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 159
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 168
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 177
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 186
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 194
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 221
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 226
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    .line 275
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 283
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    .line 306
    const/4 v0, 0x1

    iput v0, p0, Ljava/text/DateFormatSymbols;->serialVersionOnStream:I

    .line 808
    iput v1, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    .line 813
    iput v1, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 141
    invoke-direct {p0, p1}, Ljava/text/DateFormatSymbols;->initializeData(Ljava/util/Locale;)V

    .line 142
    return-void
.end method

.method private greylist-max-o copyMembers(Ljava/text/DateFormatSymbols;Ljava/text/DateFormatSymbols;)V
    .registers 5
    .param p1, "src"    # Ljava/text/DateFormatSymbols;
    .param p2, "dst"    # Ljava/text/DateFormatSymbols;

    .line 955
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    .line 956
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 957
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 958
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 959
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 960
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 961
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 962
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-eqz v0, :cond_52

    .line 963
    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/text/DateFormatSymbols;->getZoneStringsImpl(Z)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    goto :goto_55

    .line 965
    :cond_52
    const/4 v0, 0x0

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 967
    :goto_55
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 968
    const/4 v0, 0x0

    iput v0, p2, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 971
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    .line 972
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    .line 974
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    .line 975
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    .line 976
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    .line 978
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    .line 979
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    .line 980
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    .line 982
    return-void
.end method

.method public static whitelist test-api getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .line 379
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getCachedInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .registers 7
    .param p0, "locale"    # Ljava/util/Locale;

    .line 431
    invoke-static {p0}, Llibcore/icu/LocaleData;->getCompatibleLocaleForBug159514442(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    .line 432
    .local v0, "cacheKey":Ljava/util/Locale;
    sget-object v1, Ljava/text/DateFormatSymbols;->cachedInstances:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 434
    .local v2, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/DateFormatSymbols;

    move-object v4, v3

    .local v4, "dfs":Ljava/text/DateFormatSymbols;
    if-nez v3, :cond_38

    .line 435
    .end local v4    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_17
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3, p0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    move-object v4, v3

    .line 436
    .restart local v4    # "dfs":Ljava/text/DateFormatSymbols;
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object v2, v3

    .line 437
    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 438
    .local v3, "x":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    if-eqz v3, :cond_38

    .line 439
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/DateFormatSymbols;

    .line 440
    .local v5, "y":Ljava/text/DateFormatSymbols;
    if-eqz v5, :cond_35

    .line 441
    move-object v4, v5

    goto :goto_38

    .line 444
    :cond_35
    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .end local v3    # "x":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    .end local v5    # "y":Ljava/text/DateFormatSymbols;
    :cond_38
    :goto_38
    return-object v4
.end method

.method public static final whitelist test-api getInstance()Ljava/text/DateFormatSymbols;
    .registers 1

    .line 394
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 408
    invoke-static {p0}, Ljava/text/DateFormatSymbols;->getCachedInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    return-object v0
.end method

.method static final greylist-max-o getInstanceRef(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 419
    invoke-static {p0}, Ljava/text/DateFormatSymbols;->getCachedInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getZoneStringsImpl(Z)[[Ljava/lang/String;
    .registers 8
    .param p1, "needsCopy"    # Z

    .line 928
    invoke-direct {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, "zoneStrings":[[Ljava/lang/String;
    if-nez p1, :cond_7

    .line 931
    return-object v0

    .line 934
    :cond_7
    array-length v1, v0

    .line 935
    .local v1, "len":I
    new-array v2, v1, [[Ljava/lang/String;

    .line 936
    .local v2, "aCopy":[[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v1, :cond_1d

    .line 937
    aget-object v4, v0, v3

    aget-object v5, v0, v3

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    aput-object v4, v2, v3

    .line 936
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 939
    .end local v3    # "i":I
    :cond_1d
    return-object v2
.end method

.method private greylist-max-o initializeData(Ljava/util/Locale;)V
    .registers 6
    .param p1, "locale"    # Ljava/util/Locale;

    .line 824
    invoke-static {p1}, Llibcore/icu/LocaleData;->getCompatibleLocaleForBug159514442(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    .line 825
    .local v0, "cacheKey":Ljava/util/Locale;
    sget-object v1, Ljava/text/DateFormatSymbols;->cachedInstances:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 828
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/DateFormatSymbols;

    move-object v3, v2

    .local v3, "dfs":Ljava/text/DateFormatSymbols;
    if-eqz v2, :cond_1b

    .line 829
    invoke-direct {p0, v3, p0}, Ljava/text/DateFormatSymbols;->copyMembers(Ljava/text/DateFormatSymbols;Ljava/text/DateFormatSymbols;)V

    .line 830
    return-void

    .line 834
    .end local v3    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_1b
    invoke-static {p1}, Llibcore/icu/LocaleData;->mapInvalidAndNullLocales(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object p1

    .line 835
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    .line 837
    .local v2, "localeData":Llibcore/icu/LocaleData;
    iput-object p1, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    .line 838
    iget-object v3, v2, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 839
    iget-object v3, v2, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 840
    iget-object v3, v2, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 841
    iget-object v3, v2, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 842
    const-string v3, "GyMdkHmsSEDFwWahKzZYuXLcbB"

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 844
    iget-object v3, v2, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 845
    iget-object v3, v2, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 847
    invoke-direct {p0, v2}, Ljava/text/DateFormatSymbols;->initializeSupplementaryData(Llibcore/icu/LocaleData;)V

    .line 849
    return-void
.end method

.method private greylist-max-o initializeSupplementaryData(Llibcore/icu/LocaleData;)V
    .registers 3
    .param p1, "localeData"    # Llibcore/icu/LocaleData;

    .line 856
    iget-object v0, p1, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    .line 857
    iget-object v0, p1, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    .line 860
    iget-object v0, p1, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    .line 861
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    .line 862
    iget-object v0, p1, Llibcore/icu/LocaleData;->tinyStandAloneMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    .line 865
    iget-object v0, p1, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    .line 866
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    .line 867
    iget-object v0, p1, Llibcore/icu/LocaleData;->tinyStandAloneWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    .line 868
    return-void
.end method

.method private declared-synchronized greylist-max-o internalZoneStrings()[[Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 919
    :try_start_1
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-nez v0, :cond_d

    .line 920
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/TimeZoneNames;->getZoneStrings(Ljava/util/Locale;)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 922
    .end local p0    # "this":Ljava/text/DateFormatSymbols;
    :cond_d
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    .line 918
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private greylist-max-o isSubclassObject()Z
    .registers 3

    .line 943
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.text.DateFormatSymbols"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 986
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 988
    iget v0, p0, Ljava/text/DateFormatSymbols;->serialVersionOnStream:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_11

    .line 989
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 990
    .local v0, "localeData":Llibcore/icu/LocaleData;
    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;->initializeSupplementaryData(Llibcore/icu/LocaleData;)V

    .line 993
    .end local v0    # "localeData":Llibcore/icu/LocaleData;
    :cond_11
    iput v1, p0, Ljava/text/DateFormatSymbols;->serialVersionOnStream:I

    .line 994
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1006
    invoke-direct {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    .line 1007
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1008
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 727
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    .line 728
    .local v0, "other":Ljava/text/DateFormatSymbols;
    invoke-direct {p0, p0, v0}, Ljava/text/DateFormatSymbols;->copyMembers(Ljava/text/DateFormatSymbols;Ljava/text/DateFormatSymbols;)V
    :try_end_9
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_9} :catch_a

    .line 729
    return-object v0

    .line 730
    .end local v0    # "other":Ljava/text/DateFormatSymbols;
    :catch_a
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 764
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 765
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_d8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_d8

    .line 766
    :cond_13
    move-object v2, p1

    check-cast v2, Ljava/text/DateFormatSymbols;

    .line 768
    .local v2, "that":Ljava/text/DateFormatSymbols;
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 769
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 770
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    .line 771
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 772
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 773
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    .line 774
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    .line 775
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    .line 776
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    .line 777
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    .line 778
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    .line 779
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    .line 780
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 781
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    if-eqz v3, :cond_ae

    iget-object v4, v2, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 783
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b7

    :cond_ae
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    if-nez v3, :cond_d7

    iget-object v3, v2, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    if-eqz v3, :cond_b7

    goto :goto_d7

    .line 788
    :cond_b7
    iget-boolean v1, p0, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    if-nez v1, :cond_ca

    iget-boolean v1, v2, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    if-nez v1, :cond_ca

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    iget-object v3, v2, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 789
    return v0

    .line 791
    :cond_ca
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 786
    :cond_d7
    :goto_d7
    return v1

    .line 765
    .end local v2    # "that":Ljava/text/DateFormatSymbols;
    :cond_d8
    :goto_d8
    return v1
.end method

.method public whitelist test-api getAmPmStrings()[Ljava/lang/String;
    .registers 3

    .line 570
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getEras()[Ljava/lang/String;
    .registers 3

    .line 457
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getLocalPatternChars()Ljava/lang/String;
    .registers 2

    .line 672
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMonths()[Ljava/lang/String;
    .registers 3

    .line 485
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getShortMonths()[Ljava/lang/String;
    .registers 3

    .line 513
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getShortStandAloneMonths()[Ljava/lang/String;
    .registers 2

    .line 696
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getShortStandAloneWeekdays()[Ljava/lang/String;
    .registers 2

    .line 712
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getShortWeekdays()[Ljava/lang/String;
    .registers 3

    .line 551
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getStandAloneMonths()[Ljava/lang/String;
    .registers 2

    .line 692
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getStandAloneWeekdays()[Ljava/lang/String;
    .registers 2

    .line 708
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getTinyMonths()[Ljava/lang/String;
    .registers 2

    .line 688
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getTinyStandAloneMonths()[Ljava/lang/String;
    .registers 2

    .line 700
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getTinyStandAloneWeekdays()[Ljava/lang/String;
    .registers 2

    .line 716
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getTinyWeekdays()[Ljava/lang/String;
    .registers 2

    .line 704
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getWeekdays()[Ljava/lang/String;
    .registers 3

    .line 531
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method final greylist-max-o getZoneIndex(Ljava/lang/String;)I
    .registers 6
    .param p1, "ID"    # Ljava/lang/String;

    .line 882
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, "zoneStrings":[[Ljava/lang/String;
    iget v1, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    array-length v2, v0

    const/4 v3, 0x0

    if-ge v1, v2, :cond_17

    aget-object v1, v0, v1

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 890
    iget v1, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    return v1

    .line 894
    :cond_17
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_18
    array-length v2, v0

    if-ge v1, v2, :cond_2b

    .line 895
    aget-object v2, v0, v1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 896
    iput v1, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    .line 897
    return v1

    .line 894
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 901
    .end local v1    # "index":I
    :cond_2b
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist test-api getZoneStrings()[[Ljava/lang/String;
    .registers 2

    .line 620
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;->getZoneStringsImpl(Z)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o getZoneStringsWrapper()[[Ljava/lang/String;
    .registers 2

    .line 910
    invoke-direct {p0}, Ljava/text/DateFormatSymbols;->isSubclassObject()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 911
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 913
    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;->getZoneStringsImpl(Z)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 741
    iget v0, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 742
    .local v0, "hashCode":I
    if-nez v0, :cond_47

    .line 743
    const/4 v0, 0x5

    .line 744
    mul-int/lit8 v1, v0, 0xb

    iget-object v2, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 745
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    mul-int/lit8 v0, v1, 0xb

    iget-object v2, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 746
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0xb

    iget-object v2, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 747
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0xb

    iget-object v2, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 748
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0xb

    iget-object v2, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 749
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0xb

    iget-object v2, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 752
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0xb

    iget-object v2, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 753
    iput v0, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 756
    :cond_47
    return v0
.end method

.method public whitelist test-api setAmPmStrings([Ljava/lang/String;)V
    .registers 3
    .param p1, "newAmpms"    # [Ljava/lang/String;

    .line 578
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 579
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 580
    return-void
.end method

.method public whitelist test-api setEras([Ljava/lang/String;)V
    .registers 3
    .param p1, "newEras"    # [Ljava/lang/String;

    .line 465
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 466
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 467
    return-void
.end method

.method public whitelist test-api setLocalPatternChars(Ljava/lang/String;)V
    .registers 3
    .param p1, "newLocalPatternChars"    # Ljava/lang/String;

    .line 682
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 683
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 684
    return-void
.end method

.method public whitelist test-api setMonths([Ljava/lang/String;)V
    .registers 3
    .param p1, "newMonths"    # [Ljava/lang/String;

    .line 493
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 494
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 495
    return-void
.end method

.method public whitelist test-api setShortMonths([Ljava/lang/String;)V
    .registers 3
    .param p1, "newShortMonths"    # [Ljava/lang/String;

    .line 521
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 522
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 523
    return-void
.end method

.method public whitelist test-api setShortWeekdays([Ljava/lang/String;)V
    .registers 3
    .param p1, "newShortWeekdays"    # [Ljava/lang/String;

    .line 561
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 562
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 563
    return-void
.end method

.method public whitelist test-api setWeekdays([Ljava/lang/String;)V
    .registers 3
    .param p1, "newWeekdays"    # [Ljava/lang/String;

    .line 541
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 542
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 543
    return-void
.end method

.method public whitelist test-api setZoneStrings([[Ljava/lang/String;)V
    .registers 6
    .param p1, "newZoneStrings"    # [[Ljava/lang/String;

    .line 653
    array-length v0, p1

    new-array v0, v0, [[Ljava/lang/String;

    .line 654
    .local v0, "aCopy":[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_20

    .line 655
    aget-object v2, p1, v1

    array-length v2, v2

    .line 656
    .local v2, "len":I
    const/4 v3, 0x5

    if-lt v2, v3, :cond_1a

    .line 659
    aget-object v3, p1, v1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aput-object v3, v0, v1

    .line 654
    .end local v2    # "len":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 657
    .restart local v2    # "len":I
    :cond_1a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 661
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_20
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 662
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    .line 665
    return-void
.end method
