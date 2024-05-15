.class public Ljava/text/DateFormatSymbols;
.super Ljava/lang/Object;
.source "DateFormatSymbols.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final PATTERN_AM_PM:I = 0xe

.field static final PATTERN_DAY_OF_MONTH:I = 0x3

.field static final PATTERN_DAY_OF_WEEK:I = 0x9

.field static final PATTERN_DAY_OF_WEEK_IN_MONTH:I = 0xb

.field static final PATTERN_DAY_OF_YEAR:I = 0xa

.field static final PATTERN_ERA:I = 0x0

.field static final PATTERN_HOUR0:I = 0x10

.field static final PATTERN_HOUR1:I = 0xf

.field static final PATTERN_HOUR_OF_DAY0:I = 0x5

.field static final PATTERN_HOUR_OF_DAY1:I = 0x4

.field static final PATTERN_ISO_DAY_OF_WEEK:I = 0x14

.field static final PATTERN_ISO_ZONE:I = 0x15

.field static final PATTERN_MILLISECOND:I = 0x8

.field static final PATTERN_MINUTE:I = 0x6

.field static final PATTERN_MONTH:I = 0x2

.field static final PATTERN_MONTH_STANDALONE:I = 0x16

.field static final PATTERN_SECOND:I = 0x7

.field static final PATTERN_STANDALONE_DAY_OF_WEEK:I = 0x17

.field static final PATTERN_WEEK_OF_MONTH:I = 0xd

.field static final PATTERN_WEEK_OF_YEAR:I = 0xc

.field static final PATTERN_WEEK_YEAR:I = 0x13

.field static final PATTERN_YEAR:I = 0x1

.field static final PATTERN_ZONE_NAME:I = 0x11

.field static final PATTERN_ZONE_VALUE:I = 0x12

.field private static final cachedInstances:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/text/DateFormatSymbols;",
            ">;>;"
        }
    .end annotation
.end field

.field static final currentSerialVersion:I = 0x1

.field static final millisPerHour:I = 0x36ee80

.field static final patternChars:Ljava/lang/String; = "GyMdkHmsSEDFwWahKzZYuXLc"

.field static final serialVersionUID:J = -0x53198e36cae8e83eL


# instance fields
.field ampms:[Ljava/lang/String;

.field volatile transient cachedHashCode:I

.field eras:[Ljava/lang/String;

.field transient isZoneStringsSet:Z

.field private transient lastZoneIndex:I

.field localPatternChars:Ljava/lang/String;

.field locale:Ljava/util/Locale;

.field months:[Ljava/lang/String;

.field private serialVersionOnStream:I

.field shortMonths:[Ljava/lang/String;

.field private shortStandAloneMonths:[Ljava/lang/String;

.field private shortStandAloneWeekdays:[Ljava/lang/String;

.field shortWeekdays:[Ljava/lang/String;

.field private standAloneMonths:[Ljava/lang/String;

.field private standAloneWeekdays:[Ljava/lang/String;

.field private tinyMonths:[Ljava/lang/String;

.field private tinyStandAloneMonths:[Ljava/lang/String;

.field private tinyStandAloneWeekdays:[Ljava/lang/String;

.field private tinyWeekdays:[Ljava/lang/String;

.field weekdays:[Ljava/lang/String;

.field zoneStrings:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 768
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 767
    sput-object v0, Ljava/text/DateFormatSymbols;->cachedInstances:Ljava/util/concurrent/ConcurrentMap;

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 158
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 167
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 176
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 185
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 193
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 220
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 225
    iput-boolean v1, p0, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    .line 271
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 279
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    .line 301
    const/4 v0, 0x1

    iput v0, p0, Ljava/text/DateFormatSymbols;->serialVersionOnStream:I

    .line 770
    iput v1, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    .line 775
    iput v1, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 124
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;->initializeData(Ljava/util/Locale;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 158
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 167
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 176
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 185
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 193
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 220
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 225
    iput-boolean v1, p0, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    .line 271
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 279
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    .line 301
    const/4 v0, 0x1

    iput v0, p0, Ljava/text/DateFormatSymbols;->serialVersionOnStream:I

    .line 770
    iput v1, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    .line 775
    iput v1, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 142
    invoke-direct {p0, p1}, Ljava/text/DateFormatSymbols;->initializeData(Ljava/util/Locale;)V

    .line 143
    return-void
.end method

.method private copyMembers(Ljava/text/DateFormatSymbols;Ljava/text/DateFormatSymbols;)V
    .registers 6
    .param p1, "src"    # Ljava/text/DateFormatSymbols;
    .param p2, "dst"    # Ljava/text/DateFormatSymbols;

    .prologue
    const/4 v2, 0x0

    .line 904
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v1, p1, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 905
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v1, p1, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 906
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iget-object v1, p1, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 907
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v1, p1, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 908
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iget-object v1, p1, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 909
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v1, p1, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 910
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-eqz v0, :cond_82

    .line 911
    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/text/DateFormatSymbols;->getZoneStringsImpl(Z)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 915
    :goto_5a
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 916
    const/4 v0, 0x0

    iput v0, p2, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 918
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    .line 919
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    .line 921
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    .line 922
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    .line 923
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    .line 925
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    .line 926
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    .line 927
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    iput-object v0, p2, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    .line 928
    return-void

    .line 913
    :cond_82
    iput-object v2, p2, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    goto :goto_5a
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .prologue
    .line 371
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static getCachedInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .registers 6
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 420
    sget-object v4, Ljava/text/DateFormatSymbols;->cachedInstances:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 421
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    const/4 v0, 0x0

    .line 422
    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "dfs":Ljava/text/DateFormatSymbols;
    check-cast v0, Ljava/text/DateFormatSymbols;

    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    if-nez v0, :cond_30

    .line 423
    .end local v0    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_13
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 424
    .restart local v0    # "dfs":Ljava/text/DateFormatSymbols;
    new-instance v1, Ljava/lang/ref/SoftReference;

    .end local v1    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 425
    .restart local v1    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    sget-object v4, Ljava/text/DateFormatSymbols;->cachedInstances:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 426
    .local v2, "x":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    if-eqz v2, :cond_30

    .line 427
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/DateFormatSymbols;

    .line 428
    .local v3, "y":Ljava/text/DateFormatSymbols;
    if-eqz v3, :cond_31

    .line 429
    move-object v0, v3

    .line 436
    .end local v2    # "x":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    .end local v3    # "y":Ljava/text/DateFormatSymbols;
    :cond_30
    :goto_30
    return-object v0

    .line 432
    .restart local v2    # "x":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    .restart local v3    # "y":Ljava/text/DateFormatSymbols;
    :cond_31
    sget-object v4, Ljava/text/DateFormatSymbols;->cachedInstances:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30
.end method

.method public static final getInstance()Ljava/text/DateFormatSymbols;
    .registers 1

    .prologue
    .line 386
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 400
    invoke-static {p0}, Ljava/text/DateFormatSymbols;->getCachedInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    return-object v0
.end method

.method static final getInstanceRef(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 411
    invoke-static {p0}, Ljava/text/DateFormatSymbols;->getCachedInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method private final getZoneStringsImpl(Z)[[Ljava/lang/String;
    .registers 8
    .param p1, "needsCopy"    # Z

    .prologue
    .line 877
    invoke-direct {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v3

    .line 880
    .local v3, "zoneStrings":[[Ljava/lang/String;
    if-nez p1, :cond_7

    .line 881
    return-object v3

    .line 884
    :cond_7
    array-length v2, v3

    .line 885
    .local v2, "len":I
    new-array v0, v2, [[Ljava/lang/String;

    .line 886
    .local v0, "aCopy":[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_1d

    .line 887
    aget-object v4, v3, v1

    aget-object v5, v3, v1

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    aput-object v4, v0, v1

    .line 886
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 889
    :cond_1d
    return-object v0
.end method

.method private initializeData(Ljava/util/Locale;)V
    .registers 7
    .param p1, "desiredLocale"    # Ljava/util/Locale;

    .prologue
    .line 778
    iput-object p1, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    .line 781
    sget-object v3, Ljava/text/DateFormatSymbols;->cachedInstances:Ljava/util/concurrent/ConcurrentMap;

    iget-object v4, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 783
    .local v2, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    if-eqz v0, :cond_1a

    .line 784
    invoke-direct {p0, v0, p0}, Ljava/text/DateFormatSymbols;->copyMembers(Ljava/text/DateFormatSymbols;Ljava/text/DateFormatSymbols;)V

    .line 785
    return-void

    .line 787
    .end local v0    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_1a
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-static {v3}, Llibcore/icu/LocaleData;->mapInvalidAndNullLocales(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v3

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    .line 788
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-static {v3}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 790
    .local v1, "localeData":Llibcore/icu/LocaleData;
    iget-object v3, v1, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 793
    iget-object v3, v1, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 794
    iget-object v3, v1, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 796
    iget-object v3, v1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 797
    const-string/jumbo v3, "GyMdkHmsSEDFwWahKzZYuXLc"

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 800
    iget-object v3, v1, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 801
    iget-object v3, v1, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 803
    invoke-direct {p0, v1}, Ljava/text/DateFormatSymbols;->initializeSupplementaryData(Llibcore/icu/LocaleData;)V

    .line 804
    return-void
.end method

.method private initializeSupplementaryData(Llibcore/icu/LocaleData;)V
    .registers 3
    .param p1, "localeData"    # Llibcore/icu/LocaleData;

    .prologue
    .line 808
    iget-object v0, p1, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    .line 809
    iget-object v0, p1, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    .line 812
    iget-object v0, p1, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    .line 813
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    .line 814
    iget-object v0, p1, Llibcore/icu/LocaleData;->tinyStandAloneMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    .line 817
    iget-object v0, p1, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    .line 818
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    .line 819
    iget-object v0, p1, Llibcore/icu/LocaleData;->tinyStandAloneWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    .line 820
    return-void
.end method

.method private final declared-synchronized internalZoneStrings()[[Ljava/lang/String;
    .registers 2

    .prologue
    monitor-enter p0

    .line 870
    :try_start_1
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-nez v0, :cond_d

    .line 871
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/TimeZoneNames;->getZoneStrings(Ljava/util/Locale;)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 873
    :cond_d
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isSubclassObject()Z
    .registers 3

    .prologue
    .line 893
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "java.text.DateFormatSymbols"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 931
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 933
    iget v1, p0, Ljava/text/DateFormatSymbols;->serialVersionOnStream:I

    if-ge v1, v2, :cond_11

    .line 934
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 935
    .local v0, "localeData":Llibcore/icu/LocaleData;
    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;->initializeSupplementaryData(Llibcore/icu/LocaleData;)V

    .line 938
    .end local v0    # "localeData":Llibcore/icu/LocaleData;
    :cond_11
    iput v2, p0, Ljava/text/DateFormatSymbols;->serialVersionOnStream:I

    .line 939
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 950
    invoke-direct {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    .line 951
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 952
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 690
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormatSymbols;

    .line 691
    .local v1, "other":Ljava/text/DateFormatSymbols;
    invoke-direct {p0, p0, v1}, Ljava/text/DateFormatSymbols;->copyMembers(Ljava/text/DateFormatSymbols;Ljava/text/DateFormatSymbols;)V
    :try_end_9
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_9} :catch_a

    .line 692
    return-object v1

    .line 693
    .end local v1    # "other":Ljava/text/DateFormatSymbols;
    :catch_a
    move-exception v0

    .line 694
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 727
    if-ne p0, p1, :cond_5

    return v2

    .line 728
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v1, v4, :cond_12

    :cond_11
    return v3

    :cond_12
    move-object v0, p1

    .line 729
    check-cast v0, Ljava/text/DateFormatSymbols;

    .line 730
    .local v0, "that":Ljava/text/DateFormatSymbols;
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 731
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 730
    if-eqz v1, :cond_c1

    .line 732
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 730
    if-eqz v1, :cond_c1

    .line 733
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 730
    if-eqz v1, :cond_c1

    .line 734
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 730
    if-eqz v1, :cond_c1

    .line 735
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 730
    if-eqz v1, :cond_c1

    .line 736
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 730
    if-eqz v1, :cond_c1

    .line 737
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 730
    if-eqz v1, :cond_c1

    .line 738
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 730
    if-eqz v1, :cond_c1

    .line 739
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 730
    if-eqz v1, :cond_c1

    .line 740
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 730
    if-eqz v1, :cond_c1

    .line 741
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 730
    if-eqz v1, :cond_c1

    .line 742
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 730
    if-eqz v1, :cond_c1

    .line 743
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 730
    if-eqz v1, :cond_c1

    .line 744
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    if-eqz v1, :cond_af

    .line 745
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 744
    if-nez v1, :cond_bb

    .line 746
    :cond_af
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    if-nez v1, :cond_bf

    .line 747
    iget-object v1, v0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    if-nez v1, :cond_bd

    move v1, v2

    .line 730
    :goto_b8
    if-nez v1, :cond_c3

    .line 748
    return v3

    :cond_bb
    move v1, v2

    .line 744
    goto :goto_b8

    :cond_bd
    move v1, v3

    .line 747
    goto :goto_b8

    :cond_bf
    move v1, v3

    .line 746
    goto :goto_b8

    :cond_c1
    move v1, v3

    .line 730
    goto :goto_b8

    .line 751
    :cond_c3
    iget-boolean v1, p0, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    if-nez v1, :cond_d8

    iget-boolean v1, v0, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_d8

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    iget-object v3, v0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 752
    return v2

    .line 754
    :cond_d8
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAmPmStrings()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 535
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getEras()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 444
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPatternChars()Ljava/lang/String;
    .registers 2

    .prologue
    .line 637
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    return-object v0
.end method

.method public getMonths()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 461
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getShortMonths()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 478
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getShortStandAloneMonths()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 660
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    return-object v0
.end method

.method getShortStandAloneWeekdays()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 676
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    return-object v0
.end method

.method public getShortWeekdays()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 516
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getStandAloneMonths()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 656
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    return-object v0
.end method

.method getStandAloneWeekdays()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 672
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    return-object v0
.end method

.method getTinyMonths()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 652
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    return-object v0
.end method

.method getTinyStandAloneMonths()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 664
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    return-object v0
.end method

.method getTinyStandAloneWeekdays()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 680
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    return-object v0
.end method

.method getTinyWeekdays()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 668
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    return-object v0
.end method

.method public getWeekdays()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 496
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method final getZoneIndex(Ljava/lang/String;)I
    .registers 7
    .param p1, "ID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 833
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    move-result-object v1

    .line 840
    .local v1, "zoneStrings":[[Ljava/lang/String;
    iget v2, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    array-length v3, v1

    if-ge v2, v3, :cond_19

    iget v2, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    aget-object v2, v1, v2

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 841
    iget v2, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    return v2

    .line 845
    :cond_19
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1a
    array-length v2, v1

    if-ge v0, v2, :cond_2d

    .line 846
    aget-object v2, v1, v0

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 847
    iput v0, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    .line 848
    return v0

    .line 845
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 852
    :cond_2d
    const/4 v2, -0x1

    return v2
.end method

.method public getZoneStrings()[[Ljava/lang/String;
    .registers 2

    .prologue
    .line 585
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;->getZoneStringsImpl(Z)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getZoneStringsWrapper()[[Ljava/lang/String;
    .registers 2

    .prologue
    .line 861
    invoke-direct {p0}, Ljava/text/DateFormatSymbols;->isSubclassObject()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 862
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 864
    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;->getZoneStringsImpl(Z)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 704
    iget v0, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 705
    .local v0, "hashCode":I
    if-nez v0, :cond_4b

    .line 706
    const/4 v0, 0x5

    .line 707
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v0, v1, 0x37

    .line 708
    mul-int/lit8 v1, v0, 0xb

    iget-object v2, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 709
    mul-int/lit8 v1, v0, 0xb

    iget-object v2, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 710
    mul-int/lit8 v1, v0, 0xb

    iget-object v2, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 711
    mul-int/lit8 v1, v0, 0xb

    iget-object v2, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 712
    mul-int/lit8 v1, v0, 0xb

    iget-object v2, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 715
    mul-int/lit8 v1, v0, 0xb

    iget-object v2, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 716
    iput v0, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 719
    :cond_4b
    return v0
.end method

.method public setAmPmStrings([Ljava/lang/String;)V
    .registers 3
    .param p1, "newAmpms"    # [Ljava/lang/String;

    .prologue
    .line 543
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 544
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 545
    return-void
.end method

.method public setEras([Ljava/lang/String;)V
    .registers 3
    .param p1, "newEras"    # [Ljava/lang/String;

    .prologue
    .line 452
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 454
    return-void
.end method

.method public setLocalPatternChars(Ljava/lang/String;)V
    .registers 3
    .param p1, "newLocalPatternChars"    # Ljava/lang/String;

    .prologue
    .line 647
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 648
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 649
    return-void
.end method

.method public setMonths([Ljava/lang/String;)V
    .registers 3
    .param p1, "newMonths"    # [Ljava/lang/String;

    .prologue
    .line 469
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 470
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 471
    return-void
.end method

.method public setShortMonths([Ljava/lang/String;)V
    .registers 3
    .param p1, "newShortMonths"    # [Ljava/lang/String;

    .prologue
    .line 486
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 487
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 488
    return-void
.end method

.method public setShortWeekdays([Ljava/lang/String;)V
    .registers 3
    .param p1, "newShortWeekdays"    # [Ljava/lang/String;

    .prologue
    .line 526
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 527
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 528
    return-void
.end method

.method public setWeekdays([Ljava/lang/String;)V
    .registers 3
    .param p1, "newWeekdays"    # [Ljava/lang/String;

    .prologue
    .line 506
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 507
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DateFormatSymbols;->cachedHashCode:I

    .line 508
    return-void
.end method

.method public setZoneStrings([[Ljava/lang/String;)V
    .registers 6
    .param p1, "newZoneStrings"    # [[Ljava/lang/String;

    .prologue
    .line 618
    array-length v3, p1

    new-array v0, v3, [[Ljava/lang/String;

    .line 619
    .local v0, "aCopy":[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v3, p1

    if-ge v1, v3, :cond_20

    .line 620
    aget-object v3, p1, v1

    array-length v2, v3

    .line 621
    .local v2, "len":I
    const/4 v3, 0x5

    if-ge v2, v3, :cond_13

    .line 622
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 624
    :cond_13
    aget-object v3, p1, v1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aput-object v3, v0, v1

    .line 619
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 626
    .end local v2    # "len":I
    :cond_20
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 627
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    .line 630
    return-void
.end method
