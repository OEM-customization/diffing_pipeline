.class public final Ljava/util/Locale;
.super Ljava/lang/Object;
.source "Locale.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Locale$LanguageRange;,
        Ljava/util/Locale$FilteringMode;,
        Ljava/util/Locale$Builder;,
        Ljava/util/Locale$Category;,
        Ljava/util/Locale$NoImagePreloadHolder;,
        Ljava/util/Locale$LocaleKey;,
        Ljava/util/Locale$Cache;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist core-platform-api test-api CANADA:Ljava/util/Locale;

.field public static final whitelist core-platform-api test-api CANADA_FRENCH:Ljava/util/Locale;

.field public static final whitelist core-platform-api test-api CHINA:Ljava/util/Locale;

.field public static final whitelist core-platform-api test-api CHINESE:Ljava/util/Locale;

.field private static final greylist-max-o DISPLAY_COUNTRY:I = 0x1

.field private static final greylist-max-o DISPLAY_LANGUAGE:I = 0x0

.field private static final greylist-max-o DISPLAY_SCRIPT:I = 0x3

.field private static final greylist-max-o DISPLAY_VARIANT:I = 0x2

.field public static final whitelist core-platform-api test-api ENGLISH:Ljava/util/Locale;

.field public static final whitelist core-platform-api test-api FRANCE:Ljava/util/Locale;

.field public static final whitelist core-platform-api test-api FRENCH:Ljava/util/Locale;

.field public static final whitelist core-platform-api test-api GERMAN:Ljava/util/Locale;

.field public static final whitelist core-platform-api test-api GERMANY:Ljava/util/Locale;

.field public static final whitelist core-platform-api test-api ITALIAN:Ljava/util/Locale;

.field public static final whitelist core-platform-api test-api ITALY:Ljava/util/Locale;

.field public static final whitelist core-platform-api test-api JAPAN:Ljava/util/Locale;

.field public static final whitelist core-platform-api test-api JAPANESE:Ljava/util/Locale;

.field public static final whitelist core-platform-api test-api KOREA:Ljava/util/Locale;

.field public static final whitelist core-platform-api test-api KOREAN:Ljava/util/Locale;

.field private static final greylist-max-o LOCALECACHE:Ljava/util/Locale$Cache;

.field public static final whitelist core-platform-api test-api PRC:Ljava/util/Locale;

.field public static final whitelist core-platform-api test-api PRIVATE_USE_EXTENSION:C = 'x'

.field public static final whitelist core-platform-api test-api ROOT:Ljava/util/Locale;

.field public static final whitelist core-platform-api test-api SIMPLIFIED_CHINESE:Ljava/util/Locale;

.field public static final whitelist core-platform-api test-api TAIWAN:Ljava/util/Locale;

.field public static final whitelist core-platform-api test-api TRADITIONAL_CHINESE:Ljava/util/Locale;

.field public static final whitelist core-platform-api test-api UK:Ljava/util/Locale;

.field private static final greylist-max-o UNDETERMINED_LANGUAGE:Ljava/lang/String; = "und"

.field public static final whitelist core-platform-api test-api UNICODE_LOCALE_EXTENSION:C = 'u'

.field public static final whitelist core-platform-api test-api US:Ljava/util/Locale;

.field private static volatile greylist-max-o defaultDisplayLocale:Ljava/util/Locale; = null

.field private static volatile greylist-max-o defaultFormatLocale:Ljava/util/Locale; = null

.field private static volatile greylist-max-o isoCountries:[Ljava/lang/String; = null

.field private static volatile greylist-max-o isoLanguages:[Ljava/lang/String; = null

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final whitelist serialVersionUID:J = 0x7ef811609c30f9ecL


# instance fields
.field private transient greylist-max-o baseLocale:Lsun/util/locale/BaseLocale;

.field private volatile transient greylist-max-o hashCodeValue:I

.field private volatile transient greylist-max-o languageTag:Ljava/lang/String;

.field private transient greylist-max-o localeExtensions:Lsun/util/locale/LocaleExtensions;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    .line 571
    nop

    .line 573
    new-instance v0, Ljava/util/Locale$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Locale$Cache;-><init>(Ljava/util/Locale$1;)V

    sput-object v0, Ljava/util/Locale;->LOCALECACHE:Ljava/util/Locale$Cache;

    .line 577
    const-string v0, "en"

    const-string v2, ""

    invoke-static {v0, v2}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    sput-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 581
    const-string v3, "fr"

    invoke-static {v3, v2}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    sput-object v4, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    .line 585
    const-string v4, "de"

    invoke-static {v4, v2}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    sput-object v5, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    .line 589
    const-string v5, "it"

    invoke-static {v5, v2}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    sput-object v6, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    .line 593
    const-string v6, "ja"

    invoke-static {v6, v2}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    sput-object v7, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    .line 597
    const-string v7, "ko"

    invoke-static {v7, v2}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v8

    sput-object v8, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    .line 601
    const-string v8, "zh"

    invoke-static {v8, v2}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v9

    sput-object v9, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 605
    const-string v9, "CN"

    invoke-static {v8, v9}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v9

    sput-object v9, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 609
    const-string v9, "TW"

    invoke-static {v8, v9}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v8

    sput-object v8, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 613
    const-string v8, "FR"

    invoke-static {v3, v8}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v8

    sput-object v8, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    .line 617
    const-string v8, "DE"

    invoke-static {v4, v8}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    sput-object v4, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    .line 621
    const-string v4, "IT"

    invoke-static {v5, v4}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    sput-object v4, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    .line 625
    const-string v4, "JP"

    invoke-static {v6, v4}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    sput-object v4, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    .line 629
    const-string v4, "KR"

    invoke-static {v7, v4}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    sput-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    .line 633
    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    sput-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 637
    sput-object v4, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    .line 641
    sget-object v4, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    sput-object v4, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    .line 645
    const-string v4, "GB"

    invoke-static {v0, v4}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    sput-object v4, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 649
    const-string v4, "US"

    invoke-static {v0, v4}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    sput-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 653
    const-string v4, "CA"

    invoke-static {v0, v4}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    .line 657
    invoke-static {v3, v4}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    .line 670
    invoke-static {v2, v2}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2478
    sput-object v1, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    .line 2479
    sput-object v1, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    .line 2599
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v2, 0x0

    new-instance v3, Ljava/io/ObjectStreamField;

    const-class v4, Ljava/lang/String;

    const-string v5, "language"

    invoke-direct {v3, v5, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v0, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/io/ObjectStreamField;

    const-class v4, Ljava/lang/String;

    const-string v5, "country"

    invoke-direct {v3, v5, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v0, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/io/ObjectStreamField;

    const-class v4, Ljava/lang/String;

    const-string v5, "variant"

    invoke-direct {v3, v5, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v0, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/io/ObjectStreamField;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "hashcode"

    invoke-direct {v3, v5, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v0, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/io/ObjectStreamField;

    const-class v4, Ljava/lang/String;

    const-string v5, "script"

    invoke-direct {v3, v5, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v0, v2

    const/4 v2, 0x5

    new-instance v3, Ljava/io/ObjectStreamField;

    const-class v4, Ljava/lang/String;

    const-string v5, "extensions"

    invoke-direct {v3, v5, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v0, v2

    sput-object v0, Ljava/util/Locale;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 2675
    sput-object v1, Ljava/util/Locale;->isoLanguages:[Ljava/lang/String;

    .line 2677
    sput-object v1, Ljava/util/Locale;->isoCountries:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "language"    # Ljava/lang/String;

    .line 791
    const-string v0, ""

    invoke-direct {p0, p1, v0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .line 767
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2471
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Locale;->hashCodeValue:I

    .line 737
    if-eqz p1, :cond_1f

    if-eqz p2, :cond_1f

    if-eqz p3, :cond_1f

    .line 740
    invoke-static {p1}, Ljava/util/Locale;->convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p2, p3}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 741
    invoke-static {p1, v1, p2, p3}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    .line 742
    return-void

    .line 738
    :cond_1f
    const/4 v0, 0x0

    throw v0
.end method

.method private constructor greylist-max-o <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V
    .registers 4
    .param p1, "baseLocale"    # Lsun/util/locale/BaseLocale;
    .param p2, "extensions"    # Lsun/util/locale/LocaleExtensions;

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2471
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Locale;->hashCodeValue:I

    .line 706
    iput-object p1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 707
    iput-object p2, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    .line 708
    return-void
.end method

.method synthetic constructor blacklist <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale$1;)V
    .registers 4
    .param p1, "x0"    # Lsun/util/locale/BaseLocale;
    .param p2, "x1"    # Lsun/util/locale/LocaleExtensions;
    .param p3, "x2"    # Ljava/util/Locale$1;

    .line 571
    invoke-direct {p0, p1, p2}, Ljava/util/Locale;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V

    return-void
.end method

.method static synthetic blacklist access$500(Ljava/util/Locale;)Lsun/util/locale/BaseLocale;
    .registers 2
    .param p0, "x0"    # Ljava/util/Locale;

    .line 571
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    return-object v0
.end method

.method static synthetic blacklist access$600(Ljava/util/Locale;)Lsun/util/locale/LocaleExtensions;
    .registers 2
    .param p0, "x0"    # Ljava/util/Locale;

    .line 571
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    return-object v0
.end method

.method static synthetic blacklist access$700(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;
    .registers 5
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 571
    invoke-static {p0, p1, p2, p3}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o core-platform-api adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "languageCode"    # Ljava/lang/String;

    .line 2756
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2759
    .local v0, "adjusted":Ljava/lang/String;
    const-string v1, "he"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2760
    const-string v0, "iw"

    goto :goto_26

    .line 2761
    :cond_11
    const-string v1, "id"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2762
    const-string v0, "in"

    goto :goto_26

    .line 2763
    :cond_1c
    const-string v1, "yi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2764
    const-string v0, "ji"

    .line 2767
    :cond_26
    :goto_26
    return-object v0
.end method

.method private static greylist-max-o composeList(Ljava/text/MessageFormat;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .param p0, "format"    # Ljava/text/MessageFormat;
    .param p1, "list"    # [Ljava/lang/String;

    .line 2558
    array-length v0, p1

    const/4 v1, 0x3

    if-gt v0, v1, :cond_5

    return-object p1

    .line 2561
    :cond_5
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    aput-object v3, v1, v2

    const/4 v3, 0x1

    aget-object v4, p1, v3

    aput-object v4, v1, v3

    .line 2562
    .local v1, "listItems":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2565
    .local v4, "newItem":Ljava/lang/String;
    array-length v5, p1

    sub-int/2addr v5, v3

    new-array v5, v5, [Ljava/lang/String;

    .line 2566
    .local v5, "newList":[Ljava/lang/String;
    array-length v6, v5

    sub-int/2addr v6, v3

    invoke-static {p1, v0, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2567
    aput-object v4, v5, v2

    .line 2570
    invoke-static {p0, v5}, Ljava/util/Locale;->composeList(Ljava/text/MessageFormat;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "language"    # Ljava/lang/String;

    .line 2682
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 2683
    const-string v0, "he"

    if-ne p0, v0, :cond_f

    .line 2684
    const-string v0, "iw"

    return-object v0

    .line 2685
    :cond_f
    const-string v0, "yi"

    if-ne p0, v0, :cond_16

    .line 2686
    const-string v0, "ji"

    return-object v0

    .line 2687
    :cond_16
    const-string v0, "id"

    if-ne p0, v0, :cond_1d

    .line 2688
    const-string v0, "in"

    return-object v0

    .line 2690
    :cond_1d
    return-object p0
.end method

.method private static greylist createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .registers 4
    .param p0, "lang"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;

    .line 799
    invoke-static {p0, p1}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v0

    .line 800
    .local v0, "base":Lsun/util/locale/BaseLocale;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist core-platform-api test-api filter(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 3684
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "locales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Locale;>;"
    sget-object v0, Ljava/util/Locale$FilteringMode;->AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

    invoke-static {p0, p1, v0}, Ljava/util/Locale;->filter(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api filter(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;
    .registers 4
    .param p2, "mode"    # Ljava/util/Locale$FilteringMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/util/Locale$FilteringMode;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 3662
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "locales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Locale;>;"
    invoke-static {p0, p1, p2}, Lsun/util/locale/LocaleMatcher;->filter(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api filterTags(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3731
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/Locale$FilteringMode;->AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

    invoke-static {p0, p1, v0}, Ljava/util/Locale;->filterTags(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api filterTags(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;
    .registers 4
    .param p2, "mode"    # Ljava/util/Locale$FilteringMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Locale$FilteringMode;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3709
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lsun/util/locale/LocaleMatcher;->filterTags(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;
    .registers 9
    .param p0, "languageTag"    # Ljava/lang/String;

    .line 1698
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/util/locale/LanguageTag;->parse(Ljava/lang/String;Lsun/util/locale/ParseStatus;)Lsun/util/locale/LanguageTag;

    move-result-object v0

    .line 1699
    .local v0, "tag":Lsun/util/locale/LanguageTag;
    new-instance v1, Lsun/util/locale/InternalLocaleBuilder;

    invoke-direct {v1}, Lsun/util/locale/InternalLocaleBuilder;-><init>()V

    .line 1700
    .local v1, "bldr":Lsun/util/locale/InternalLocaleBuilder;
    invoke-virtual {v1, v0}, Lsun/util/locale/InternalLocaleBuilder;->setLanguageTag(Lsun/util/locale/LanguageTag;)Lsun/util/locale/InternalLocaleBuilder;

    .line 1701
    invoke-virtual {v1}, Lsun/util/locale/InternalLocaleBuilder;->getBaseLocale()Lsun/util/locale/BaseLocale;

    move-result-object v2

    .line 1702
    .local v2, "base":Lsun/util/locale/BaseLocale;
    invoke-virtual {v1}, Lsun/util/locale/InternalLocaleBuilder;->getLocaleExtensions()Lsun/util/locale/LocaleExtensions;

    move-result-object v3

    .line 1703
    .local v3, "exts":Lsun/util/locale/LocaleExtensions;
    if-nez v3, :cond_35

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_35

    .line 1704
    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v5

    .line 1705
    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v7

    .line 1704
    invoke-static {v4, v5, v6, v7}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v3

    .line 1707
    :cond_35
    invoke-static {v2, v3}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v4

    return-object v4
.end method

.method private static greylist-max-o formatList([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "stringList"    # [Ljava/lang/String;
    .param p1, "listPattern"    # Ljava/lang/String;
    .param p2, "listCompositionPattern"    # Ljava/lang/String;

    .line 2521
    if-eqz p1, :cond_2e

    if-nez p2, :cond_5

    goto :goto_2e

    .line 2533
    :cond_5
    array-length v0, p0

    const/4 v1, 0x3

    if-le v0, v1, :cond_12

    .line 2534
    new-instance v0, Ljava/text/MessageFormat;

    invoke-direct {v0, p2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 2535
    .local v0, "format":Ljava/text/MessageFormat;
    invoke-static {v0, p0}, Ljava/util/Locale;->composeList(Ljava/text/MessageFormat;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2539
    .end local v0    # "format":Ljava/text/MessageFormat;
    :cond_12
    array-length v0, p0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2540
    .local v0, "args":[Ljava/lang/Object;
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2541
    new-instance v1, Ljava/lang/Integer;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v3

    .line 2544
    new-instance v1, Ljava/text/MessageFormat;

    invoke-direct {v1, p1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 2545
    .local v1, "format":Ljava/text/MessageFormat;
    invoke-virtual {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2522
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "format":Ljava/text/MessageFormat;
    :cond_2e
    :goto_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2523
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_34
    array-length v2, p0

    if-ge v1, v2, :cond_46

    .line 2524
    if-lez v1, :cond_3e

    .line 2525
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2527
    :cond_3e
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2523
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 2529
    .end local v1    # "i":I
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist core-platform-api test-api getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .line 1117
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;
    .registers 7
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .line 2698
    const/4 v0, 0x0

    .line 2700
    .local v0, "extensions":Lsun/util/locale/LocaleExtensions;
    const-string v1, "ja"

    invoke-static {p0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2701
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_22

    .line 2702
    const-string v1, "jp"

    invoke-static {p2, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2703
    const-string v1, "JP"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2705
    sget-object v0, Lsun/util/locale/LocaleExtensions;->CALENDAR_JAPANESE:Lsun/util/locale/LocaleExtensions;

    goto :goto_40

    .line 2706
    :cond_22
    const-string v1, "th"

    invoke-static {p0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 2707
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_40

    .line 2708
    invoke-static {p2, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 2709
    const-string v1, "TH"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 2711
    sget-object v0, Lsun/util/locale/LocaleExtensions;->NUMBER_THAI:Lsun/util/locale/LocaleExtensions;

    .line 2713
    :cond_40
    :goto_40
    return-object v0
.end method

.method public static whitelist core-platform-api test-api getDefault()Ljava/util/Locale;
    .registers 1

    .line 907
    sget-object v0, Ljava/util/Locale$NoImagePreloadHolder;->defaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;
    .registers 4
    .param p0, "category"    # Ljava/util/Locale$Category;

    .line 928
    const-class v0, Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale$1;->$SwitchMap$java$util$Locale$Category:[I

    invoke-virtual {p0}, Ljava/util/Locale$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_16

    .line 948
    nop

    .line 950
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 939
    :cond_16
    sget-object v1, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    if-nez v1, :cond_2a

    .line 940
    monitor-enter v0

    .line 941
    :try_start_1b
    sget-object v1, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    if-nez v1, :cond_25

    .line 942
    invoke-static {p0}, Ljava/util/Locale;->initDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    .line 944
    :cond_25
    monitor-exit v0

    goto :goto_2a

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_27

    throw v1

    .line 946
    :cond_2a
    :goto_2a
    sget-object v0, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    return-object v0

    .line 930
    :cond_2d
    sget-object v1, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    if-nez v1, :cond_41

    .line 931
    monitor-enter v0

    .line 932
    :try_start_32
    sget-object v1, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    if-nez v1, :cond_3c

    .line 933
    invoke-static {p0}, Ljava/util/Locale;->initDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    .line 935
    :cond_3c
    monitor-exit v0

    goto :goto_41

    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_3e

    throw v1

    .line 937
    :cond_41
    :goto_41
    sget-object v0, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api getISOCountries()[Ljava/lang/String;
    .registers 1

    .line 1141
    invoke-static {}, Llibcore/icu/ICU;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api getISOLanguages()[Ljava/lang/String;
    .registers 1

    .line 1170
    invoke-static {}, Llibcore/icu/ICU;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .registers 5
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "variant"    # Ljava/lang/String;

    .line 818
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;
    .registers 7
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .param p4, "extensions"    # Lsun/util/locale/LocaleExtensions;

    .line 823
    if-eqz p0, :cond_17

    if-eqz p1, :cond_17

    if-eqz p2, :cond_17

    if-eqz p3, :cond_17

    .line 827
    if-nez p4, :cond_e

    .line 828
    invoke-static {p0, p1, p2, p3}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object p4

    .line 831
    :cond_e
    invoke-static {p0, p1, p2, p3}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v0

    .line 832
    .local v0, "baseloc":Lsun/util/locale/BaseLocale;
    invoke-static {v0, p4}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v1

    return-object v1

    .line 824
    .end local v0    # "baseloc":Lsun/util/locale/BaseLocale;
    :cond_17
    const/4 v0, 0x0

    throw v0
.end method

.method static greylist getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;
    .registers 4
    .param p0, "baseloc"    # Lsun/util/locale/BaseLocale;
    .param p1, "extensions"    # Lsun/util/locale/LocaleExtensions;

    .line 836
    new-instance v0, Ljava/util/Locale$LocaleKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/util/Locale$LocaleKey;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale$1;)V

    .line 837
    .local v0, "key":Ljava/util/Locale$LocaleKey;
    sget-object v1, Ljava/util/Locale;->LOCALECACHE:Ljava/util/Locale$Cache;

    invoke-virtual {v1, v0}, Ljava/util/Locale$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    return-object v1
.end method

.method public static greylist-max-o initDefault()Ljava/util/Locale;
    .registers 8

    .line 961
    const-string v0, "user.locale"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, "languageTag":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 963
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    return-object v1

    .line 971
    :cond_13
    const-string v2, "user.language"

    const-string v3, "en"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 973
    .local v2, "language":Ljava/lang/String;
    const-string v3, "user.region"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 974
    .local v3, "region":Ljava/lang/String;
    if-eqz v3, :cond_3d

    .line 976
    const/16 v1, 0x5f

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 977
    .local v1, "i":I
    if-ltz v1, :cond_37

    .line 978
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 979
    .local v4, "country":Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "variant":Ljava/lang/String;
    goto :goto_3a

    .line 981
    .end local v4    # "country":Ljava/lang/String;
    .end local v5    # "variant":Ljava/lang/String;
    :cond_37
    move-object v4, v3

    .line 982
    .restart local v4    # "country":Ljava/lang/String;
    const-string v5, ""

    .line 984
    .restart local v5    # "variant":Ljava/lang/String;
    :goto_3a
    const-string v1, ""

    .line 985
    .local v1, "script":Ljava/lang/String;
    goto :goto_53

    .line 986
    .end local v1    # "script":Ljava/lang/String;
    .end local v4    # "country":Ljava/lang/String;
    .end local v5    # "variant":Ljava/lang/String;
    :cond_3d
    const-string v4, "user.script"

    invoke-static {v4, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 987
    .local v4, "script":Ljava/lang/String;
    const-string v5, "user.country"

    invoke-static {v5, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 988
    .local v5, "country":Ljava/lang/String;
    const-string v6, "user.variant"

    invoke-static {v6, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v5

    move-object v5, v1

    move-object v1, v4

    move-object v4, v7

    .line 992
    .restart local v1    # "script":Ljava/lang/String;
    .local v4, "country":Ljava/lang/String;
    .local v5, "variant":Ljava/lang/String;
    :goto_53
    const/4 v6, 0x0

    invoke-static {v2, v1, v4, v5, v6}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v6

    return-object v6
.end method

.method private static greylist-max-o initDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;
    .registers 7
    .param p0, "category"    # Ljava/util/Locale$Category;

    .line 997
    sget-object v0, Ljava/util/Locale$NoImagePreloadHolder;->defaultLocale:Ljava/util/Locale;

    .line 1011
    .local v0, "defaultLocale":Ljava/util/Locale;
    iget-object v1, p0, Ljava/util/Locale$Category;->languageKey:Ljava/lang/String;

    .line 1012
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Locale$Category;->scriptKey:Ljava/lang/String;

    .line 1013
    invoke-virtual {v0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Locale$Category;->countryKey:Ljava/lang/String;

    .line 1014
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Locale$Category;->variantKey:Ljava/lang/String;

    .line 1015
    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1011
    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o isAsciiAlphaNum(Ljava/lang/String;)Z
    .registers 4
    .param p0, "string"    # Ljava/lang/String;

    .line 1906
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 1907
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1908
    .local v1, "character":C
    const/16 v2, 0x61

    if-lt v1, v2, :cond_13

    const/16 v2, 0x7a

    if-le v1, v2, :cond_24

    :cond_13
    const/16 v2, 0x41

    if-lt v1, v2, :cond_1b

    const/16 v2, 0x5a

    if-le v1, v2, :cond_24

    :cond_1b
    const/16 v2, 0x30

    if-lt v1, v2, :cond_27

    const/16 v2, 0x39

    if-le v1, v2, :cond_24

    goto :goto_27

    .line 1906
    .end local v1    # "character":C
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1911
    .restart local v1    # "character":C
    :cond_27
    :goto_27
    const/4 v2, 0x0

    return v2

    .line 1915
    .end local v0    # "i":I
    .end local v1    # "character":C
    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o isUnM49AreaCode(Ljava/lang/String;)Z
    .registers 6
    .param p0, "code"    # Ljava/lang/String;

    .line 2093
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    .line 2094
    return v1

    .line 2097
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v2, :cond_1d

    .line 2098
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2099
    .local v3, "character":C
    const/16 v4, 0x30

    if-lt v3, v4, :cond_1c

    const/16 v4, 0x39

    if-le v3, v4, :cond_19

    goto :goto_1c

    .line 2097
    .end local v3    # "character":C
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2100
    .restart local v3    # "character":C
    :cond_1c
    :goto_1c
    return v1

    .line 2104
    .end local v0    # "i":I
    .end local v3    # "character":C
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o isUnicodeExtensionKey(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 2577
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private static greylist-max-o isValidBcp47Alpha(Ljava/lang/String;II)Z
    .registers 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    .line 2073
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2074
    .local v0, "length":I
    const/4 v1, 0x0

    if-lt v0, p1, :cond_28

    if-le v0, p2, :cond_a

    goto :goto_28

    .line 2078
    :cond_a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_26

    .line 2079
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2080
    .local v3, "character":C
    const/16 v4, 0x61

    if-lt v3, v4, :cond_19

    const/16 v4, 0x7a

    if-le v3, v4, :cond_22

    :cond_19
    const/16 v4, 0x41

    if-lt v3, v4, :cond_25

    const/16 v4, 0x5a

    if-le v3, v4, :cond_22

    goto :goto_25

    .line 2078
    .end local v3    # "character":C
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2082
    .restart local v3    # "character":C
    :cond_25
    :goto_25
    return v1

    .line 2086
    .end local v2    # "i":I
    .end local v3    # "character":C
    :cond_26
    const/4 v1, 0x1

    return v1

    .line 2075
    :cond_28
    :goto_28
    return v1
.end method

.method private static greylist-max-o isValidVariantSubtag(Ljava/lang/String;)Z
    .registers 5
    .param p0, "subTag"    # Ljava/lang/String;

    .line 2196
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x8

    if-gt v0, v3, :cond_18

    .line 2197
    invoke-static {p0}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2198
    return v1

    .line 2200
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_32

    .line 2201
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2202
    .local v0, "firstChar":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_32

    const/16 v3, 0x39

    if-gt v0, v3, :cond_32

    invoke-static {p0}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 2203
    return v1

    .line 2207
    .end local v0    # "firstChar":C
    :cond_32
    return v2
.end method

.method public static whitelist core-platform-api test-api lookup(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Locale;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/Locale;"
        }
    .end annotation

    .line 3750
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "locales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Locale;>;"
    invoke-static {p0, p1}, Lsun/util/locale/LocaleMatcher;->lookup(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api lookupTag(Ljava/util/List;Ljava/util/Collection;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3769
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lsun/util/locale/LocaleMatcher;->lookupTag(Ljava/util/List;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    .line 1886
    if-eqz p0, :cond_34

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_34

    .line 1890
    :cond_9
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1891
    .local v0, "lowercaseLanguage":Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Ljava/util/Locale;->isValidBcp47Alpha(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1892
    if-nez p1, :cond_1c

    .line 1895
    const-string v1, "und"

    return-object v1

    .line 1893
    :cond_1c
    new-instance v1, Ljava/util/IllformedLocaleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid language: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1899
    :cond_33
    return-object v0

    .line 1887
    .end local v0    # "lowercaseLanguage":Ljava/lang/String;
    :cond_34
    :goto_34
    const-string v0, ""

    return-object v0
.end method

.method private static greylist-max-o normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p0, "region"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    .line 2055
    const-string v0, ""

    if-eqz p0, :cond_39

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_39

    .line 2059
    :cond_b
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2060
    .local v1, "uppercaseRegion":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-static {v1, v2, v2}, Ljava/util/Locale;->isValidBcp47Alpha(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_38

    .line 2061
    invoke-static {v1}, Ljava/util/Locale;->isUnM49AreaCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 2062
    if-nez p1, :cond_21

    .line 2065
    return-object v0

    .line 2063
    :cond_21
    new-instance v0, Ljava/util/IllformedLocaleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid region: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2069
    :cond_38
    return-object v1

    .line 2056
    .end local v1    # "uppercaseRegion":Ljava/lang/String;
    :cond_39
    :goto_39
    return-object v0
.end method

.method private static greylist-max-o normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "variant"    # Ljava/lang/String;

    .line 2174
    if-eqz p0, :cond_3e

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3e

    .line 2180
    :cond_9
    const/16 v0, 0x2d

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 2181
    .local v0, "normalizedVariant":Ljava/lang/String;
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2183
    .local v1, "subTags":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_3d

    aget-object v4, v1, v3

    .line 2184
    .local v4, "subTag":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Locale;->isValidVariantSubtag(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 2183
    .end local v4    # "subTag":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 2185
    .restart local v4    # "subTag":Ljava/lang/String;
    :cond_26
    new-instance v2, Ljava/util/IllformedLocaleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid variant: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2189
    .end local v4    # "subTag":Ljava/lang/String;
    :cond_3d
    return-object v0

    .line 2175
    .end local v0    # "normalizedVariant":Ljava/lang/String;
    .end local v1    # "subTags":[Ljava/lang/String;
    :cond_3e
    :goto_3e
    const-string v0, ""

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 11
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2634
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 2635
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "language"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2636
    .local v1, "language":Ljava/lang/String;
    const-string v3, "script"

    invoke-virtual {v0, v3, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2637
    .local v3, "script":Ljava/lang/String;
    const-string v4, "country"

    invoke-virtual {v0, v4, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2638
    .local v4, "country":Ljava/lang/String;
    const-string v5, "variant"

    invoke-virtual {v0, v5, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2639
    .local v5, "variant":Ljava/lang/String;
    const-string v6, "extensions"

    invoke-virtual {v0, v6, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2640
    .local v2, "extStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Locale;->convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3, v4, v5}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v6

    iput-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 2643
    if-eqz v2, :cond_5a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5a

    .line 2645
    :try_start_40
    new-instance v6, Lsun/util/locale/InternalLocaleBuilder;

    invoke-direct {v6}, Lsun/util/locale/InternalLocaleBuilder;-><init>()V

    .line 2646
    .local v6, "bldr":Lsun/util/locale/InternalLocaleBuilder;
    invoke-virtual {v6, v2}, Lsun/util/locale/InternalLocaleBuilder;->setExtensions(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;

    .line 2647
    invoke-virtual {v6}, Lsun/util/locale/InternalLocaleBuilder;->getLocaleExtensions()Lsun/util/locale/LocaleExtensions;

    move-result-object v7

    iput-object v7, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;
    :try_end_4e
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_40 .. :try_end_4e} :catch_4f

    .line 2650
    .end local v6    # "bldr":Lsun/util/locale/InternalLocaleBuilder;
    goto :goto_5d

    .line 2648
    :catch_4f
    move-exception v6

    .line 2649
    .local v6, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v7, Ljava/util/IllformedLocaleException;

    invoke-virtual {v6}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2652
    .end local v6    # "e":Lsun/util/locale/LocaleSyntaxException;
    :cond_5a
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    .line 2654
    :goto_5d
    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 2671
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 2672
    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    .line 2671
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized whitelist core-platform-api test-api setDefault(Ljava/util/Locale$Category;Ljava/util/Locale;)V
    .registers 7
    .param p0, "category"    # Ljava/util/Locale$Category;
    .param p1, "newLocale"    # Ljava/util/Locale;

    const-class v0, Ljava/util/Locale;

    monitor-enter v0

    .line 1088
    if-eqz p0, :cond_38

    .line 1090
    if-eqz p1, :cond_30

    .line 1093
    :try_start_7
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 1094
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_19

    new-instance v2, Ljava/util/PropertyPermission;

    const-string v3, "user.language"

    const-string v4, "write"

    invoke-direct {v2, v3, v4}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1096
    :cond_19
    sget-object v2, Ljava/util/Locale$1;->$SwitchMap$java$util$Locale$Category:[I

    invoke-virtual {p0}, Ljava/util/Locale$Category;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_28

    .line 1104
    goto :goto_2e

    .line 1101
    :cond_28
    sput-object p1, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    .line 1102
    goto :goto_2e

    .line 1098
    :cond_2b
    sput-object p1, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_40

    .line 1099
    nop

    .line 1106
    :goto_2e
    monitor-exit v0

    return-void

    .line 1091
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    :cond_30
    :try_start_30
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Can\'t set default locale to NULL"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1089
    :cond_38
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Category cannot be NULL"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_40

    .line 1087
    .end local p0    # "category":Ljava/util/Locale$Category;
    .end local p1    # "newLocale":Ljava/util/Locale;
    :catchall_40
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized whitelist core-platform-api test-api setDefault(Ljava/util/Locale;)V
    .registers 3
    .param p0, "newLocale"    # Ljava/util/Locale;

    const-class v0, Ljava/util/Locale;

    monitor-enter v0

    .line 1049
    :try_start_3
    sget-object v1, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v1, p0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale$Category;Ljava/util/Locale;)V

    .line 1050
    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1, p0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale$Category;Ljava/util/Locale;)V

    .line 1053
    sput-object p0, Ljava/util/Locale$NoImagePreloadHolder;->defaultLocale:Ljava/util/Locale;

    .line 1055
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/ICU;->setDefaultLocale(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    .line 1056
    monitor-exit v0

    return-void

    .line 1048
    .end local p0    # "newLocale":Ljava/util/Locale;
    :catchall_18
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2615
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 2616
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2617
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v1

    const-string v2, "script"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2618
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "country"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2619
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v1

    const-string v2, "variant"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2620
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v1, :cond_37

    const-string v1, ""

    goto :goto_3b

    :cond_37
    invoke-virtual {v1}, Lsun/util/locale/LocaleExtensions;->getID()Ljava/lang/String;

    move-result-object v1

    :goto_3b
    const-string v2, "extensions"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2621
    const/4 v1, -0x1

    const-string v2, "hashcode"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 2622
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 2623
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 3

    .line 2413
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    .line 2414
    .local v0, "that":Ljava/util/Locale;
    return-object v0

    .line 2415
    .end local v0    # "that":Ljava/util/Locale;
    :catch_7
    move-exception v0

    .line 2416
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2449
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2450
    return v0

    .line 2451
    :cond_4
    instance-of v1, p1, Ljava/util/Locale;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2452
    return v2

    .line 2453
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/Locale;

    iget-object v1, v1, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 2454
    .local v1, "otherBase":Lsun/util/locale/BaseLocale;
    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3, v1}, Lsun/util/locale/BaseLocale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 2455
    return v2

    .line 2457
    :cond_18
    iget-object v3, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v3, :cond_26

    .line 2458
    move-object v3, p1

    check-cast v3, Ljava/util/Locale;

    iget-object v3, v3, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    :goto_25
    return v0

    .line 2460
    :cond_26
    move-object v0, p1

    check-cast v0, Ljava/util/Locale;

    iget-object v0, v0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v3, v0}, Lsun/util/locale/LocaleExtensions;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o getBaseLocale()Lsun/util/locale/BaseLocale;
    .registers 2

    .line 1364
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getCountry()Ljava/lang/String;
    .registers 2

    .line 1232
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getDisplayCountry()Ljava/lang/String;
    .registers 2

    .line 1981
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p1, "locale"    # Ljava/util/Locale;

    .line 2036
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 2037
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2038
    const-string v1, ""

    return-object v1

    .line 2041
    :cond_f
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Locale;->normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2043
    .local v1, "normalizedRegion":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2044
    return-object v0

    .line 2047
    :cond_1b
    invoke-static {p0, p1}, Lcom/android/icu/util/LocaleNative;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 2048
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_29

    .line 2049
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/icu/util/LocaleNative;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 2051
    :cond_29
    return-object v2
.end method

.method public final whitelist core-platform-api test-api getDisplayLanguage()Ljava/lang/String;
    .registers 2

    .line 1826
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p1, "locale"    # Ljava/util/Locale;

    .line 1858
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1859
    .local v0, "languageCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1860
    const-string v1, ""

    return-object v1

    .line 1870
    :cond_f
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Locale;->normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1872
    .local v1, "normalizedLanguage":Ljava/lang/String;
    const-string v2, "und"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1873
    return-object v0

    .line 1878
    :cond_1d
    invoke-static {p0, p1}, Lcom/android/icu/util/LocaleNative;->getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1879
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_2b

    .line 1880
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/icu/util/LocaleNative;->getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1882
    :cond_2b
    return-object v2
.end method

.method public final whitelist core-platform-api test-api getDisplayName()Ljava/lang/String;
    .registers 2

    .line 2231
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 13
    .param p1, "locale"    # Ljava/util/Locale;

    .line 2360
    const/4 v0, 0x0

    .line 2361
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2362
    .local v1, "buffer":Ljava/lang/StringBuilder;
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 2363
    .local v2, "languageCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_24

    .line 2364
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 2365
    .local v3, "displayLanguage":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object v4, v2

    goto :goto_1f

    :cond_1e
    move-object v4, v3

    :goto_1f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2366
    add-int/lit8 v0, v0, 0x1

    .line 2368
    .end local v3    # "displayLanguage":Ljava/lang/String;
    :cond_24
    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 2369
    .local v3, "scriptCode":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const-string v5, " ("

    const/4 v6, 0x1

    if-nez v4, :cond_4a

    .line 2370
    if-ne v0, v6, :cond_38

    .line 2371
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2373
    :cond_38
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 2374
    .local v4, "displayScript":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_44

    move-object v7, v3

    goto :goto_45

    :cond_44
    move-object v7, v4

    :goto_45
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2375
    add-int/lit8 v0, v0, 0x1

    .line 2377
    .end local v4    # "displayScript":Ljava/lang/String;
    :cond_4a
    iget-object v4, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v4}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    .line 2378
    .local v4, "countryCode":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    const-string v8, ","

    const/4 v9, 0x2

    if-nez v7, :cond_76

    .line 2379
    if-ne v0, v6, :cond_5f

    .line 2380
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 2381
    :cond_5f
    if-ne v0, v9, :cond_64

    .line 2382
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2384
    :cond_64
    :goto_64
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 2385
    .local v7, "displayCountry":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_70

    move-object v10, v4

    goto :goto_71

    :cond_70
    move-object v10, v7

    :goto_71
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2386
    add-int/lit8 v0, v0, 0x1

    .line 2388
    .end local v7    # "displayCountry":Ljava/lang/String;
    :cond_76
    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v7}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v7

    .line 2389
    .local v7, "variantCode":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a2

    .line 2390
    if-ne v0, v6, :cond_88

    .line 2391
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_90

    .line 2392
    :cond_88
    if-eq v0, v9, :cond_8d

    const/4 v5, 0x3

    if-ne v0, v5, :cond_90

    .line 2393
    :cond_8d
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2395
    :cond_90
    :goto_90
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 2396
    .local v5, "displayVariant":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9c

    move-object v8, v7

    goto :goto_9d

    :cond_9c
    move-object v8, v5

    :goto_9d
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2397
    add-int/lit8 v0, v0, 0x1

    .line 2399
    .end local v5    # "displayVariant":Ljava/lang/String;
    :cond_a2
    if-le v0, v6, :cond_a9

    .line 2400
    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2402
    :cond_a9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public whitelist core-platform-api test-api getDisplayScript()Ljava/lang/String;
    .registers 2

    .line 1930
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "inLocale"    # Ljava/util/Locale;

    .line 1948
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 1949
    .local v0, "scriptCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1950
    const-string v1, ""

    return-object v1

    .line 1953
    :cond_f
    invoke-static {p0, p1}, Lcom/android/icu/util/LocaleNative;->getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1954
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_1f

    .line 1955
    sget-object v2, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/icu/util/LocaleNative;->getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1958
    :cond_1f
    return-object v1
.end method

.method public final whitelist core-platform-api test-api getDisplayVariant()Ljava/lang/String;
    .registers 2

    .line 2117
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "inLocale"    # Ljava/util/Locale;

    .line 2147
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    .line 2148
    .local v0, "variantCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2149
    const-string v1, ""

    return-object v1

    .line 2153
    :cond_f
    :try_start_f
    invoke-static {v0}, Ljava/util/Locale;->normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/util/IllformedLocaleException; {:try_start_f .. :try_end_12} :catch_29

    .line 2156
    nop

    .line 2158
    invoke-static {p0, p1}, Lcom/android/icu/util/LocaleNative;->getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2159
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_21

    .line 2160
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/icu/util/LocaleNative;->getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2167
    :cond_21
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2168
    return-object v0

    .line 2170
    :cond_28
    return-object v1

    .line 2154
    .end local v1    # "result":Ljava/lang/String;
    :catch_29
    move-exception v1

    .line 2155
    .local v1, "ilfe":Ljava/util/IllformedLocaleException;
    return-object v0
.end method

.method public whitelist core-platform-api test-api getExtension(C)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # C

    .line 1285
    invoke-static {p1}, Lsun/util/locale/LocaleExtensions;->isValidKey(C)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1288
    invoke-virtual {p0}, Ljava/util/Locale;->hasExtensions()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/locale/LocaleExtensions;->getExtensionValue(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return-object v0

    .line 1286
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed extension key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getExtensionKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 1301
    invoke-virtual {p0}, Ljava/util/Locale;->hasExtensions()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1302
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1304
    :cond_b
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getISO3Country()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 1764
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 1766
    .local v0, "region":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 1767
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1768
    :cond_14
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1769
    const-string v1, ""

    return-object v1

    .line 1773
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "en-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/ICU;->getISO3Country(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1774
    .local v1, "country3":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_73

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3f

    goto :goto_73

    .line 1776
    :cond_3f
    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find 3-letter country code for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 1777
    invoke-virtual {v4}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FormatData_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ShortCountry"

    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1779
    :cond_73
    :goto_73
    return-object v1
.end method

.method public whitelist core-platform-api test-api getISO3Language()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 1725
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1726
    .local v0, "lang":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    .line 1727
    return-object v0

    .line 1730
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1731
    const-string v1, ""

    return-object v1

    .line 1738
    :cond_17
    invoke-static {v0}, Llibcore/icu/ICU;->getISO3Language(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1739
    .local v1, "language3":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_56

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_56

    .line 1741
    :cond_28
    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find 3-letter language code for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FormatData_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1742
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ShortLanguage"

    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1744
    :cond_56
    :goto_56
    return-object v1
.end method

.method public whitelist core-platform-api test-api getLanguage()Ljava/lang/String;
    .registers 2

    .line 1206
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getLocaleExtensions()Lsun/util/locale/LocaleExtensions;
    .registers 2

    .line 1374
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getScript()Ljava/lang/String;
    .registers 2

    .line 1220
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getUnicodeLocaleAttributes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1316
    invoke-virtual {p0}, Ljava/util/Locale;->hasExtensions()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1317
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1319
    :cond_b
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getUnicodeLocaleKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1352
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v0, :cond_9

    .line 1353
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1355
    :cond_9
    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 1337
    invoke-static {p1}, Ljava/util/Locale;->isUnicodeExtensionKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1340
    invoke-virtual {p0}, Ljava/util/Locale;->hasExtensions()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0, p1}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0

    .line 1338
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed Unicode locale key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getVariant()Ljava/lang/String;
    .registers 2

    .line 1242
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api hasExtensions()Z
    .registers 2

    .line 1253
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

    .line 2427
    iget v0, p0, Ljava/util/Locale;->hashCodeValue:I

    .line 2428
    .local v0, "hc":I
    if-nez v0, :cond_15

    .line 2429
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->hashCode()I

    move-result v0

    .line 2430
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-eqz v1, :cond_13

    .line 2431
    invoke-virtual {v1}, Lsun/util/locale/LocaleExtensions;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 2433
    :cond_13
    iput v0, p0, Ljava/util/Locale;->hashCodeValue:I

    .line 2435
    :cond_15
    return v0
.end method

.method public whitelist core-platform-api test-api stripExtensions()Ljava/util/Locale;
    .registers 3

    .line 1266
    invoke-virtual {p0}, Ljava/util/Locale;->hasExtensions()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, p0

    :goto_f
    return-object v0
.end method

.method public whitelist core-platform-api test-api toLanguageTag()Ljava/lang/String;
    .registers 8

    .line 1521
    iget-object v0, p0, Ljava/util/Locale;->languageTag:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1522
    iget-object v0, p0, Ljava/util/Locale;->languageTag:Ljava/lang/String;

    return-object v0

    .line 1525
    :cond_7
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-static {v0, v1}, Lsun/util/locale/LanguageTag;->parseLocale(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Lsun/util/locale/LanguageTag;

    move-result-object v0

    .line 1526
    .local v0, "tag":Lsun/util/locale/LanguageTag;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1528
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lsun/util/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 1529
    .local v2, "subtag":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_25

    .line 1530
    invoke-static {v2}, Lsun/util/locale/LanguageTag;->canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    :cond_25
    invoke-virtual {v0}, Lsun/util/locale/LanguageTag;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 1534
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3b

    .line 1535
    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    invoke-static {v2}, Lsun/util/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    :cond_3b
    invoke-virtual {v0}, Lsun/util/locale/LanguageTag;->getRegion()Ljava/lang/String;

    move-result-object v2

    .line 1540
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_51

    .line 1541
    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    invoke-static {v2}, Lsun/util/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    :cond_51
    invoke-virtual {v0}, Lsun/util/locale/LanguageTag;->getVariants()Ljava/util/List;

    move-result-object v3

    .line 1546
    .local v3, "subtags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_59
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1547
    .local v5, "s":Ljava/lang/String;
    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    .end local v5    # "s":Ljava/lang/String;
    goto :goto_59

    .line 1552
    :cond_6e
    invoke-virtual {v0}, Lsun/util/locale/LanguageTag;->getExtensions()Ljava/util/List;

    move-result-object v3

    .line 1553
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_76
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1554
    .restart local v5    # "s":Ljava/lang/String;
    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    invoke-static {v5}, Lsun/util/locale/LanguageTag;->canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    .end local v5    # "s":Ljava/lang/String;
    goto :goto_76

    .line 1558
    :cond_8f
    invoke-virtual {v0}, Lsun/util/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    move-result-object v2

    .line 1559
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b1

    .line 1560
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_a4

    .line 1561
    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    :cond_a4
    const-string v4, "x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    :cond_b1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1569
    .local v4, "langTag":Ljava/lang/String;
    monitor-enter p0

    .line 1570
    :try_start_b6
    iget-object v5, p0, Ljava/util/Locale;->languageTag:Ljava/lang/String;

    if-nez v5, :cond_bc

    .line 1571
    iput-object v4, p0, Ljava/util/Locale;->languageTag:Ljava/lang/String;

    .line 1573
    :cond_bc
    monitor-exit p0
    :try_end_bd
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_c0

    .line 1574
    iget-object v5, p0, Ljava/util/Locale;->languageTag:Ljava/lang/String;

    return-object v5

    .line 1573
    :catchall_c0
    move-exception v5

    :try_start_c1
    monitor-exit p0
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    throw v5
.end method

.method public final whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 9

    .line 1421
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    .line 1422
    .local v0, "l":Z
    :goto_11
    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1f

    move v3, v1

    goto :goto_20

    :cond_1f
    move v3, v2

    .line 1423
    .local v3, "s":Z
    :goto_20
    iget-object v4, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v4}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2e

    move v4, v1

    goto :goto_2f

    :cond_2e
    move v4, v2

    .line 1424
    .local v4, "r":Z
    :goto_2f
    iget-object v5, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v5}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3d

    move v5, v1

    goto :goto_3e

    :cond_3d
    move v5, v2

    .line 1425
    .local v5, "v":Z
    :goto_3e
    iget-object v6, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-eqz v6, :cond_4d

    invoke-virtual {v6}, Lsun/util/locale/LocaleExtensions;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4d

    goto :goto_4e

    :cond_4d
    move v1, v2

    .line 1427
    .local v1, "e":Z
    :goto_4e
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1428
    .local v2, "result":Ljava/lang/StringBuilder;
    const/16 v6, 0x5f

    if-nez v4, :cond_65

    if-eqz v0, :cond_71

    if-nez v5, :cond_65

    if-nez v3, :cond_65

    if-eqz v1, :cond_71

    .line 1429
    :cond_65
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 1430
    invoke-virtual {v7}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    :cond_71
    if-eqz v5, :cond_83

    if-nez v0, :cond_77

    if-eqz v4, :cond_83

    .line 1433
    :cond_77
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 1434
    invoke-virtual {v7}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    :cond_83
    if-eqz v3, :cond_97

    if-nez v0, :cond_89

    if-eqz v4, :cond_97

    .line 1438
    :cond_89
    const-string v7, "_#"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 1439
    invoke-virtual {v7}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    :cond_97
    if-eqz v1, :cond_b0

    if-nez v0, :cond_9d

    if-eqz v4, :cond_b0

    .line 1443
    :cond_9d
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1444
    if-nez v3, :cond_a7

    .line 1445
    const/16 v6, 0x23

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1447
    :cond_a7
    iget-object v6, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v6}, Lsun/util/locale/LocaleExtensions;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    :cond_b0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
