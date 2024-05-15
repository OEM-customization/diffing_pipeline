.class public final Ljava/util/Locale;
.super Ljava/lang/Object;
.source "Locale.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Locale$Builder;,
        Ljava/util/Locale$Cache;,
        Ljava/util/Locale$Category;,
        Ljava/util/Locale$FilteringMode;,
        Ljava/util/Locale$LanguageRange;,
        Ljava/util/Locale$LocaleKey;,
        Ljava/util/Locale$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final synthetic -java-util-Locale$CategorySwitchesValues:[I = null

.field public static final CANADA:Ljava/util/Locale;

.field public static final CANADA_FRENCH:Ljava/util/Locale;

.field public static final CHINA:Ljava/util/Locale;

.field public static final CHINESE:Ljava/util/Locale;

.field private static final DISPLAY_COUNTRY:I = 0x1

.field private static final DISPLAY_LANGUAGE:I = 0x0

.field private static final DISPLAY_SCRIPT:I = 0x3

.field private static final DISPLAY_VARIANT:I = 0x2

.field public static final ENGLISH:Ljava/util/Locale;

.field public static final FRANCE:Ljava/util/Locale;

.field public static final FRENCH:Ljava/util/Locale;

.field public static final GERMAN:Ljava/util/Locale;

.field public static final GERMANY:Ljava/util/Locale;

.field public static final ITALIAN:Ljava/util/Locale;

.field public static final ITALY:Ljava/util/Locale;

.field public static final JAPAN:Ljava/util/Locale;

.field public static final JAPANESE:Ljava/util/Locale;

.field public static final KOREA:Ljava/util/Locale;

.field public static final KOREAN:Ljava/util/Locale;

.field private static final LOCALECACHE:Ljava/util/Locale$Cache;

.field public static final PRC:Ljava/util/Locale;

.field public static final PRIVATE_USE_EXTENSION:C = 'x'

.field public static final ROOT:Ljava/util/Locale;

.field public static final SIMPLIFIED_CHINESE:Ljava/util/Locale;

.field public static final TAIWAN:Ljava/util/Locale;

.field public static final TRADITIONAL_CHINESE:Ljava/util/Locale;

.field public static final UK:Ljava/util/Locale;

.field private static final UNDETERMINED_LANGUAGE:Ljava/lang/String; = "und"

.field public static final UNICODE_LOCALE_EXTENSION:C = 'u'

.field public static final US:Ljava/util/Locale;

.field private static volatile defaultDisplayLocale:Ljava/util/Locale; = null

.field private static volatile defaultFormatLocale:Ljava/util/Locale; = null

.field private static volatile isoCountries:[Ljava/lang/String; = null

.field private static volatile isoLanguages:[Ljava/lang/String; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final serialVersionUID:J = 0x7ef811609c30f9ecL


# instance fields
.field private transient baseLocale:Lsun/util/locale/BaseLocale;

.field private volatile transient hashCodeValue:I

.field private volatile transient languageTag:Ljava/lang/String;

.field private transient localeExtensions:Lsun/util/locale/LocaleExtensions;


# direct methods
.method static synthetic -get0(Ljava/util/Locale;)Lsun/util/locale/BaseLocale;
    .registers 2
    .param p0, "-this"    # Ljava/util/Locale;

    .prologue
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/Locale;)Lsun/util/locale/LocaleExtensions;
    .registers 2
    .param p0, "-this"    # Ljava/util/Locale;

    .prologue
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    return-object v0
.end method

.method private static synthetic -getjava-util-Locale$CategorySwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/util/Locale;->-java-util-Locale$CategorySwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/util/Locale;->-java-util-Locale$CategorySwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Ljava/util/Locale$Category;->values()[Ljava/util/Locale$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-virtual {v1}, Ljava/util/Locale$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_25

    :goto_17
    :try_start_17
    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-virtual {v1}, Ljava/util/Locale$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_23

    :goto_20
    sput-object v0, Ljava/util/Locale;->-java-util-Locale$CategorySwitchesValues:[I

    return-object v0

    :catch_23
    move-exception v1

    goto :goto_20

    :catch_25
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;
    .registers 5
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1, p2, p3}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    const-class v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/Locale;->-assertionsDisabled:Z

    .line 564
    new-instance v0, Ljava/util/Locale$Cache;

    invoke-direct {v0, v4}, Ljava/util/Locale$Cache;-><init>(Ljava/util/Locale$Cache;)V

    sput-object v0, Ljava/util/Locale;->LOCALECACHE:Ljava/util/Locale$Cache;

    .line 568
    const-string/jumbo v0, "en"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 572
    const-string/jumbo v0, "fr"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    .line 576
    const-string/jumbo v0, "de"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    .line 580
    const-string/jumbo v0, "it"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    .line 584
    const-string/jumbo v0, "ja"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    .line 588
    const-string/jumbo v0, "ko"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    .line 592
    const-string/jumbo v0, "zh"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 596
    const-string/jumbo v0, "zh"

    const-string/jumbo v1, "CN"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 600
    const-string/jumbo v0, "zh"

    const-string/jumbo v1, "TW"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 604
    const-string/jumbo v0, "fr"

    const-string/jumbo v1, "FR"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    .line 608
    const-string/jumbo v0, "de"

    const-string/jumbo v1, "DE"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    .line 612
    const-string/jumbo v0, "it"

    const-string/jumbo v1, "IT"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    .line 616
    const-string/jumbo v0, "ja"

    const-string/jumbo v1, "JP"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    .line 620
    const-string/jumbo v0, "ko"

    const-string/jumbo v1, "KR"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    .line 624
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    sput-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 628
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    sput-object v0, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    .line 632
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    sput-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    .line 636
    const-string/jumbo v0, "en"

    const-string/jumbo v1, "GB"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 640
    const-string/jumbo v0, "en"

    const-string/jumbo v1, "US"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 644
    const-string/jumbo v0, "en"

    const-string/jumbo v1, "CA"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    .line 648
    const-string/jumbo v0, "fr"

    const-string/jumbo v1, "CA"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    .line 661
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2205
    sput-object v4, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    .line 2206
    sput-object v4, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    .line 2302
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    .line 2303
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "language"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2304
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "country"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2305
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "variant"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2306
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "hashcode"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2307
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "script"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2308
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "extensions"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 2302
    sput-object v0, Ljava/util/Locale;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 2378
    sput-object v4, Ljava/util/Locale;->isoLanguages:[Ljava/lang/String;

    .line 2380
    sput-object v4, Ljava/util/Locale;->isoCountries:[Ljava/lang/String;

    .line 562
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 782
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    .line 758
    const-string/jumbo v0, ""

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2199
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Locale;->hashCodeValue:I

    .line 728
    if-eqz p1, :cond_a

    if-nez p2, :cond_10

    .line 729
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 728
    :cond_10
    if-eqz p3, :cond_a

    .line 731
    invoke-static {p1}, Ljava/util/Locale;->convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1, p2, p3}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 732
    const-string/jumbo v0, ""

    invoke-static {p1, v0, p2, p3}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    .line 733
    return-void
.end method

.method private constructor <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V
    .registers 4
    .param p1, "baseLocale"    # Lsun/util/locale/BaseLocale;
    .param p2, "extensions"    # Lsun/util/locale/LocaleExtensions;

    .prologue
    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2199
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Locale;->hashCodeValue:I

    .line 697
    iput-object p1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 698
    iput-object p2, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    .line 699
    return-void
.end method

.method synthetic constructor <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale;)V
    .registers 4
    .param p1, "baseLocale"    # Lsun/util/locale/BaseLocale;
    .param p2, "extensions"    # Lsun/util/locale/LocaleExtensions;
    .param p3, "-this2"    # Ljava/util/Locale;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/Locale;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V

    return-void
.end method

.method public static adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 2423
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2426
    .local v0, "adjusted":Ljava/lang/String;
    const-string/jumbo v1, "he"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2427
    const-string/jumbo v0, "iw"

    .line 2434
    :cond_12
    :goto_12
    return-object v0

    .line 2428
    :cond_13
    const-string/jumbo v1, "id"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2429
    const-string/jumbo v0, "in"

    goto :goto_12

    .line 2430
    :cond_20
    const-string/jumbo v1, "yi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2431
    const-string/jumbo v0, "ji"

    goto :goto_12
.end method

.method private static composeList(Ljava/text/MessageFormat;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .param p0, "format"    # Ljava/text/MessageFormat;
    .param p1, "list"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2261
    array-length v3, p1

    const/4 v4, 0x3

    if-gt v3, v4, :cond_8

    return-object p1

    .line 2264
    :cond_8
    new-array v0, v7, [Ljava/lang/String;

    aget-object v3, p1, v5

    aput-object v3, v0, v5

    aget-object v3, p1, v6

    aput-object v3, v0, v6

    .line 2265
    .local v0, "listItems":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2268
    .local v1, "newItem":Ljava/lang/String;
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 2269
    .local v2, "newList":[Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v7, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2270
    aput-object v1, v2, v5

    .line 2273
    invoke-static {p0, v2}, Ljava/util/Locale;->composeList(Ljava/text/MessageFormat;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    .line 2385
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 2386
    const-string/jumbo v0, "he"

    if-ne p0, v0, :cond_11

    .line 2387
    const-string/jumbo v0, "iw"

    return-object v0

    .line 2388
    :cond_11
    const-string/jumbo v0, "yi"

    if-ne p0, v0, :cond_1a

    .line 2389
    const-string/jumbo v0, "ji"

    return-object v0

    .line 2390
    :cond_1a
    const-string/jumbo v0, "id"

    if-ne p0, v0, :cond_23

    .line 2391
    const-string/jumbo v0, "in"

    return-object v0

    .line 2393
    :cond_23
    return-object p0
.end method

.method private static createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .registers 4
    .param p0, "lang"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 790
    invoke-static {p0, p1}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v0

    .line 791
    .local v0, "base":Lsun/util/locale/BaseLocale;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method public static filter(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3350
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "locales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Locale;>;"
    sget-object v0, Ljava/util/Locale$FilteringMode;->AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

    invoke-static {p0, p1, v0}, Ljava/util/Locale;->filter(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static filter(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;
    .registers 4
    .param p2, "mode"    # Ljava/util/Locale$FilteringMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/util/Locale$FilteringMode;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3328
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "locales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Locale;>;"
    invoke-static {p0, p1, p2}, Lsun/util/locale/LocaleMatcher;->filter(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static filterTags(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3397
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/Locale$FilteringMode;->AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

    invoke-static {p0, p1, v0}, Ljava/util/Locale;->filterTags(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static filterTags(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;
    .registers 4
    .param p2, "mode"    # Ljava/util/Locale$FilteringMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Locale$FilteringMode;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3375
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lsun/util/locale/LocaleMatcher;->filterTags(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;
    .registers 9
    .param p0, "languageTag"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1644
    invoke-static {p0, v4}, Lsun/util/locale/LanguageTag;->parse(Ljava/lang/String;Lsun/util/locale/ParseStatus;)Lsun/util/locale/LanguageTag;

    move-result-object v3

    .line 1645
    .local v3, "tag":Lsun/util/locale/LanguageTag;
    new-instance v1, Lsun/util/locale/InternalLocaleBuilder;

    invoke-direct {v1}, Lsun/util/locale/InternalLocaleBuilder;-><init>()V

    .line 1646
    .local v1, "bldr":Lsun/util/locale/InternalLocaleBuilder;
    invoke-virtual {v1, v3}, Lsun/util/locale/InternalLocaleBuilder;->setLanguageTag(Lsun/util/locale/LanguageTag;)Lsun/util/locale/InternalLocaleBuilder;

    .line 1647
    invoke-virtual {v1}, Lsun/util/locale/InternalLocaleBuilder;->getBaseLocale()Lsun/util/locale/BaseLocale;

    move-result-object v0

    .line 1648
    .local v0, "base":Lsun/util/locale/BaseLocale;
    invoke-virtual {v1}, Lsun/util/locale/InternalLocaleBuilder;->getLocaleExtensions()Lsun/util/locale/LocaleExtensions;

    move-result-object v2

    .line 1649
    .local v2, "exts":Lsun/util/locale/LocaleExtensions;
    if-nez v2, :cond_35

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_35

    .line 1650
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v5

    .line 1651
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v7

    .line 1650
    invoke-static {v4, v5, v6, v7}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v2

    .line 1653
    :cond_35
    invoke-static {v0, v2}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v4

    return-object v4
.end method

.method private static formatList([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "stringList"    # [Ljava/lang/String;
    .param p1, "listPattern"    # Ljava/lang/String;
    .param p2, "listCompositionPattern"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2224
    if-eqz p1, :cond_5

    if-nez p2, :cond_22

    .line 2225
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2226
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v4, p0

    if-ge v2, v4, :cond_1d

    .line 2227
    if-lez v2, :cond_15

    .line 2228
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2230
    :cond_15
    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2226
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2232
    :cond_1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2236
    .end local v2    # "i":I
    .end local v3    # "result":Ljava/lang/StringBuilder;
    :cond_22
    array-length v4, p0

    const/4 v5, 0x3

    if-le v4, v5, :cond_2f

    .line 2237
    new-instance v1, Ljava/text/MessageFormat;

    invoke-direct {v1, p2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 2238
    .local v1, "format":Ljava/text/MessageFormat;
    invoke-static {v1, p0}, Ljava/util/Locale;->composeList(Ljava/text/MessageFormat;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2242
    .end local v1    # "format":Ljava/text/MessageFormat;
    :cond_2f
    array-length v4, p0

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    .line 2243
    .local v0, "args":[Ljava/lang/Object;
    array-length v4, p0

    const/4 v5, 0x1

    invoke-static {p0, v6, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2244
    new-instance v4, Ljava/lang/Integer;

    array-length v5, p0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v0, v6

    .line 2247
    new-instance v1, Ljava/text/MessageFormat;

    invoke-direct {v1, p1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 2248
    .restart local v1    # "format":Ljava/text/MessageFormat;
    invoke-virtual {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .prologue
    .line 1092
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;
    .registers 6
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    .line 2401
    const/4 v0, 0x0

    .line 2403
    .local v0, "extensions":Lsun/util/locale/LocaleExtensions;
    const-string/jumbo v1, "ja"

    invoke-static {p0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2404
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_25

    .line 2405
    const-string/jumbo v1, "jp"

    invoke-static {p2, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2403
    if-eqz v1, :cond_25

    .line 2406
    const-string/jumbo v1, "JP"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2403
    if-eqz v1, :cond_25

    .line 2408
    sget-object v0, Lsun/util/locale/LocaleExtensions;->CALENDAR_JAPANESE:Lsun/util/locale/LocaleExtensions;

    .line 2416
    .end local v0    # "extensions":Lsun/util/locale/LocaleExtensions;
    :cond_24
    :goto_24
    return-object v0

    .line 2409
    .restart local v0    # "extensions":Lsun/util/locale/LocaleExtensions;
    :cond_25
    const-string/jumbo v1, "th"

    invoke-static {p0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2410
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_24

    .line 2411
    const-string/jumbo v1, "th"

    invoke-static {p2, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2409
    if-eqz v1, :cond_24

    .line 2412
    const-string/jumbo v1, "TH"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2409
    if-eqz v1, :cond_24

    .line 2414
    sget-object v0, Lsun/util/locale/LocaleExtensions;->NUMBER_THAI:Lsun/util/locale/LocaleExtensions;

    .local v0, "extensions":Lsun/util/locale/LocaleExtensions;
    goto :goto_24
.end method

.method public static getDefault()Ljava/util/Locale;
    .registers 1

    .prologue
    .line 898
    sget-object v0, Ljava/util/Locale$NoImagePreloadHolder;->defaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public static getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;
    .registers 3
    .param p0, "category"    # Ljava/util/Locale$Category;

    .prologue
    .line 919
    invoke-static {}, Ljava/util/Locale;->-getjava-util-Locale$CategorySwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_50

    .line 939
    sget-boolean v0, Ljava/util/Locale;->-assertionsDisabled:Z

    if-nez v0, :cond_4a

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unknown Category"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 921
    :pswitch_1a
    sget-object v0, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    if-nez v0, :cond_2c

    .line 922
    const-class v1, Ljava/util/Locale;

    monitor-enter v1

    .line 923
    :try_start_21
    sget-object v0, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    if-nez v0, :cond_2b

    .line 924
    invoke-static {p0}, Ljava/util/Locale;->initDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_2f

    :cond_2b
    monitor-exit v1

    .line 928
    :cond_2c
    sget-object v0, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    return-object v0

    .line 922
    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 930
    :pswitch_32
    sget-object v0, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    if-nez v0, :cond_44

    .line 931
    const-class v1, Ljava/util/Locale;

    monitor-enter v1

    .line 932
    :try_start_39
    sget-object v0, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    if-nez v0, :cond_43

    .line 933
    invoke-static {p0}, Ljava/util/Locale;->initDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_47

    :cond_43
    monitor-exit v1

    .line 937
    :cond_44
    sget-object v0, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    return-object v0

    .line 931
    :catchall_47
    move-exception v0

    monitor-exit v1

    throw v0

    .line 941
    :cond_4a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 919
    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_32
    .end packed-switch
.end method

.method public static getISOCountries()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 1108
    invoke-static {}, Llibcore/icu/ICU;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getISOLanguages()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 1129
    invoke-static {}, Llibcore/icu/ICU;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .registers 5
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "variant"    # Ljava/lang/String;

    .prologue
    .line 809
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;
    .registers 7
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .param p4, "extensions"    # Lsun/util/locale/LocaleExtensions;

    .prologue
    .line 814
    if-eqz p0, :cond_4

    if-nez p1, :cond_a

    .line 815
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 814
    :cond_a
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 818
    if-nez p4, :cond_14

    .line 819
    invoke-static {p0, p1, p2, p3}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object p4

    .line 822
    :cond_14
    invoke-static {p0, p1, p2, p3}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v0

    .line 823
    .local v0, "baseloc":Lsun/util/locale/BaseLocale;
    invoke-static {v0, p4}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method static getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;
    .registers 4
    .param p0, "baseloc"    # Lsun/util/locale/BaseLocale;
    .param p1, "extensions"    # Lsun/util/locale/LocaleExtensions;

    .prologue
    .line 827
    new-instance v0, Ljava/util/Locale$LocaleKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/util/Locale$LocaleKey;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale$LocaleKey;)V

    .line 828
    .local v0, "key":Ljava/util/Locale$LocaleKey;
    sget-object v1, Ljava/util/Locale;->LOCALECACHE:Ljava/util/Locale$Cache;

    invoke-virtual {v1, v0}, Ljava/util/Locale$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    return-object v1
.end method

.method public static initDefault()Ljava/util/Locale;
    .registers 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 953
    const-string/jumbo v7, "user.locale"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 954
    .local v3, "languageTag":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_17

    .line 955
    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    return-object v7

    .line 960
    :cond_17
    const-string/jumbo v7, "user.language"

    const-string/jumbo v8, "en"

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 962
    .local v2, "language":Ljava/lang/String;
    const-string/jumbo v7, "user.region"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 963
    .local v4, "region":Ljava/lang/String;
    if-eqz v4, :cond_49

    .line 965
    const/16 v7, 0x5f

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 966
    .local v1, "i":I
    if-ltz v1, :cond_44

    .line 967
    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 968
    .local v0, "country":Ljava/lang/String;
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 973
    .local v6, "variant":Ljava/lang/String;
    :goto_3c
    const-string/jumbo v5, ""

    .line 980
    .end local v1    # "i":I
    .local v5, "script":Ljava/lang/String;
    :goto_3f
    invoke-static {v2, v5, v0, v6, v10}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v7

    return-object v7

    .line 970
    .end local v0    # "country":Ljava/lang/String;
    .end local v5    # "script":Ljava/lang/String;
    .end local v6    # "variant":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_44
    move-object v0, v4

    .line 971
    .restart local v0    # "country":Ljava/lang/String;
    const-string/jumbo v6, ""

    .restart local v6    # "variant":Ljava/lang/String;
    goto :goto_3c

    .line 975
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v6    # "variant":Ljava/lang/String;
    :cond_49
    const-string/jumbo v7, "user.script"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 976
    .restart local v5    # "script":Ljava/lang/String;
    const-string/jumbo v7, "user.country"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 977
    .restart local v0    # "country":Ljava/lang/String;
    const-string/jumbo v7, "user.variant"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "variant":Ljava/lang/String;
    goto :goto_3f
.end method

.method private static initDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;
    .registers 7
    .param p0, "category"    # Ljava/util/Locale$Category;

    .prologue
    .line 985
    sget-object v0, Ljava/util/Locale$NoImagePreloadHolder;->defaultLocale:Ljava/util/Locale;

    .line 987
    .local v0, "defaultLocale":Ljava/util/Locale;
    iget-object v1, p0, Ljava/util/Locale$Category;->languageKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 988
    iget-object v2, p0, Ljava/util/Locale$Category;->scriptKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 989
    iget-object v3, p0, Ljava/util/Locale$Category;->countryKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 990
    iget-object v4, p0, Ljava/util/Locale$Category;->variantKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 991
    const/4 v5, 0x0

    .line 986
    invoke-static {v1, v2, v3, v4, v5}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method private static isAsciiAlphaNum(Ljava/lang/String;)Z
    .registers 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 1804
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 1805
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1806
    .local v0, "character":C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_13

    const/16 v2, 0x7a

    if-le v0, v2, :cond_25

    .line 1807
    :cond_13
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1b

    const/16 v2, 0x5a

    if-le v0, v2, :cond_25

    .line 1808
    :cond_1b
    const/16 v2, 0x30

    if-lt v0, v2, :cond_23

    const/16 v2, 0x39

    if-le v0, v2, :cond_25

    .line 1809
    :cond_23
    const/4 v2, 0x0

    return v2

    .line 1804
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1813
    .end local v0    # "character":C
    :cond_28
    const/4 v2, 0x1

    return v2
.end method

.method private static isUnM49AreaCode(Ljava/lang/String;)Z
    .registers 6
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 1945
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_9

    .line 1946
    return v3

    .line 1949
    :cond_9
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v4, :cond_1c

    .line 1950
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1951
    .local v0, "character":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_18

    const/16 v2, 0x39

    if-le v0, v2, :cond_19

    .line 1952
    :cond_18
    return v3

    .line 1949
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1956
    .end local v0    # "character":C
    :cond_1c
    const/4 v2, 0x1

    return v2
.end method

.method private static isUnicodeExtensionKey(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2280
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static isValidBcp47Alpha(Ljava/lang/String;II)Z
    .registers 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    .prologue
    const/4 v4, 0x0

    .line 1925
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1926
    .local v2, "length":I
    if-lt v2, p1, :cond_9

    if-le v2, p2, :cond_a

    .line 1927
    :cond_9
    return v4

    .line 1930
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_25

    .line 1931
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1932
    .local v0, "character":C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_19

    const/16 v3, 0x7a

    if-le v0, v3, :cond_22

    .line 1933
    :cond_19
    const/16 v3, 0x41

    if-lt v0, v3, :cond_21

    const/16 v3, 0x5a

    if-le v0, v3, :cond_22

    .line 1934
    :cond_21
    return v4

    .line 1930
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1938
    .end local v0    # "character":C
    :cond_25
    const/4 v3, 0x1

    return v3
.end method

.method private static isValidVariantSubtag(Ljava/lang/String;)Z
    .registers 6
    .param p0, "subTag"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2032
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_18

    .line 2033
    invoke-static {p0}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2034
    return v4

    .line 2036
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_32

    .line 2037
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2038
    .local v0, "firstChar":C
    const/16 v1, 0x30

    if-lt v0, v1, :cond_32

    const/16 v1, 0x39

    if-gt v0, v1, :cond_32

    invoke-static {p0}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2039
    return v4

    .line 2043
    .end local v0    # "firstChar":C
    :cond_32
    return v3
.end method

.method public static lookup(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Locale;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/Locale;"
        }
    .end annotation

    .prologue
    .line 3416
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "locales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Locale;>;"
    invoke-static {p0, p1}, Lsun/util/locale/LocaleMatcher;->lookup(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static lookupTag(Ljava/util/List;Ljava/util/Collection;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3435
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lsun/util/locale/LocaleMatcher;->lookupTag(Ljava/util/List;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    .prologue
    .line 1784
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1785
    :cond_8
    const-string/jumbo v1, ""

    return-object v1

    .line 1788
    :cond_c
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1789
    .local v0, "lowercaseLanguage":Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Ljava/util/Locale;->isValidBcp47Alpha(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 1790
    if-eqz p1, :cond_36

    .line 1791
    new-instance v1, Ljava/util/IllformedLocaleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid language: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1793
    :cond_36
    const-string/jumbo v1, "und"

    return-object v1

    .line 1797
    :cond_3a
    return-object v0
.end method

.method private static normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p0, "region"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    .prologue
    const/4 v2, 0x2

    .line 1907
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1908
    :cond_9
    const-string/jumbo v1, ""

    return-object v1

    .line 1911
    :cond_d
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1912
    .local v0, "uppercaseRegion":Ljava/lang/String;
    invoke-static {v0, v2, v2}, Ljava/util/Locale;->isValidBcp47Alpha(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_41

    .line 1913
    invoke-static {v0}, Ljava/util/Locale;->isUnM49AreaCode(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1912
    if-eqz v1, :cond_41

    .line 1914
    if-eqz p1, :cond_3d

    .line 1915
    new-instance v1, Ljava/util/IllformedLocaleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid region: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1917
    :cond_3d
    const-string/jumbo v1, ""

    return-object v1

    .line 1921
    :cond_41
    return-object v0
.end method

.method private static normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "variant"    # Ljava/lang/String;

    .prologue
    .line 2010
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2011
    :cond_8
    const-string/jumbo v3, ""

    return-object v3

    .line 2016
    :cond_c
    const/16 v3, 0x2d

    const/16 v4, 0x5f

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 2017
    .local v0, "normalizedVariant":Ljava/lang/String;
    const-string/jumbo v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2019
    .local v2, "subTags":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, v2

    :goto_1d
    if-ge v3, v4, :cond_44

    aget-object v1, v2, v3

    .line 2020
    .local v1, "subTag":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Locale;->isValidVariantSubtag(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 2021
    new-instance v3, Ljava/util/IllformedLocaleException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid variant: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2019
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 2025
    .end local v1    # "subTag":Ljava/lang/String;
    :cond_44
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 13
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 2337
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v4

    .line 2338
    .local v4, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v8, "language"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2339
    .local v5, "language":Ljava/lang/String;
    const-string/jumbo v8, "script"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2340
    .local v6, "script":Ljava/lang/String;
    const-string/jumbo v8, "country"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2341
    .local v1, "country":Ljava/lang/String;
    const-string/jumbo v8, "variant"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2342
    .local v7, "variant":Ljava/lang/String;
    const-string/jumbo v8, "extensions"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2343
    .local v3, "extStr":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/Locale;->convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6, v1, v7}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v8

    iput-object v8, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 2346
    if-eqz v3, :cond_6d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6d

    .line 2348
    :try_start_53
    new-instance v0, Lsun/util/locale/InternalLocaleBuilder;

    invoke-direct {v0}, Lsun/util/locale/InternalLocaleBuilder;-><init>()V

    .line 2349
    .local v0, "bldr":Lsun/util/locale/InternalLocaleBuilder;
    invoke-virtual {v0, v3}, Lsun/util/locale/InternalLocaleBuilder;->setExtensions(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;

    .line 2350
    invoke-virtual {v0}, Lsun/util/locale/InternalLocaleBuilder;->getLocaleExtensions()Lsun/util/locale/LocaleExtensions;

    move-result-object v8

    iput-object v8, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;
    :try_end_61
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_53 .. :try_end_61} :catch_62

    .line 2357
    .end local v0    # "bldr":Lsun/util/locale/InternalLocaleBuilder;
    :goto_61
    return-void

    .line 2351
    :catch_62
    move-exception v2

    .line 2352
    .local v2, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v8, Ljava/util/IllformedLocaleException;

    invoke-virtual {v2}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2355
    .end local v2    # "e":Lsun/util/locale/LocaleSyntaxException;
    :cond_6d
    iput-object v10, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    goto :goto_61
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 2374
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 2375
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    .line 2374
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized setDefault(Ljava/util/Locale$Category;Ljava/util/Locale;)V
    .registers 7
    .param p0, "category"    # Ljava/util/Locale$Category;
    .param p1, "newLocale"    # Ljava/util/Locale;

    .prologue
    const-class v2, Ljava/util/Locale;

    monitor-enter v2

    .line 1063
    if-nez p0, :cond_11

    .line 1064
    :try_start_5
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Category cannot be NULL"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1065
    :cond_11
    if-nez p1, :cond_1c

    .line 1066
    :try_start_13
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Can\'t set default locale to NULL"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1068
    :cond_1c
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1069
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_30

    new-instance v1, Ljava/util/PropertyPermission;

    .line 1070
    const-string/jumbo v3, "user.language"

    const-string/jumbo v4, "write"

    .line 1069
    invoke-direct {v1, v3, v4}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1071
    :cond_30
    invoke-static {}, Ljava/util/Locale;->-getjava-util-Locale$CategorySwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale$Category;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_52

    .line 1079
    sget-boolean v1, Ljava/util/Locale;->-assertionsDisabled:Z

    if-nez v1, :cond_4c

    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Unknown Category"

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1073
    :pswitch_4a
    sput-object p1, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;
    :try_end_4c
    .catchall {:try_start_13 .. :try_end_4c} :catchall_e

    :cond_4c
    :goto_4c
    monitor-exit v2

    .line 1081
    return-void

    .line 1076
    :pswitch_4e
    :try_start_4e
    sput-object p1, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;
    :try_end_50
    .catchall {:try_start_4e .. :try_end_50} :catchall_e

    goto :goto_4c

    .line 1071
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_4e
    .end packed-switch
.end method

.method public static declared-synchronized setDefault(Ljava/util/Locale;)V
    .registers 3
    .param p0, "newLocale"    # Ljava/util/Locale;

    .prologue
    const-class v1, Ljava/util/Locale;

    monitor-enter v1

    .line 1024
    :try_start_3
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0, p0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale$Category;Ljava/util/Locale;)V

    .line 1025
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0, p0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale$Category;Ljava/util/Locale;)V

    .line 1028
    sput-object p0, Ljava/util/Locale$NoImagePreloadHolder;->defaultLocale:Ljava/util/Locale;

    .line 1030
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->setDefaultLocale(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v1

    .line 1031
    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2318
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 2319
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "language"

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2320
    const-string/jumbo v1, "script"

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2321
    const-string/jumbo v1, "country"

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2322
    const-string/jumbo v1, "variant"

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2323
    const-string/jumbo v2, "extensions"

    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v1, :cond_4c

    const-string/jumbo v1, ""

    :goto_3e
    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2324
    const-string/jumbo v1, "hashcode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 2325
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 2326
    return-void

    .line 2323
    :cond_4c
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v1}, Lsun/util/locale/LocaleExtensions;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_3e
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 2141
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    .line 2142
    .local v1, "that":Ljava/util/Locale;
    return-object v1

    .line 2143
    .end local v1    # "that":Ljava/util/Locale;
    :catch_7
    move-exception v0

    .line 2144
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2177
    if-ne p0, p1, :cond_5

    .line 2178
    return v2

    .line 2179
    :cond_5
    instance-of v1, p1, Ljava/util/Locale;

    if-nez v1, :cond_a

    .line 2180
    return v3

    :cond_a
    move-object v1, p1

    .line 2181
    check-cast v1, Ljava/util/Locale;

    iget-object v0, v1, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 2182
    .local v0, "otherBase":Lsun/util/locale/BaseLocale;
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1, v0}, Lsun/util/locale/BaseLocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 2183
    return v3

    .line 2185
    :cond_18
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v1, :cond_26

    .line 2186
    check-cast p1, Ljava/util/Locale;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v1, :cond_24

    move v1, v2

    :goto_23
    return v1

    :cond_24
    move v1, v3

    goto :goto_23

    .line 2188
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_26
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    check-cast p1, Ljava/util/Locale;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p1, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v1, v2}, Lsun/util/locale/LocaleExtensions;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method getBaseLocale()Lsun/util/locale/BaseLocale;
    .registers 2

    .prologue
    .line 1310
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1178
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1878
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1888
    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 1889
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1890
    const-string/jumbo v3, ""

    return-object v3

    .line 1894
    :cond_10
    const/4 v3, 0x0

    .line 1893
    invoke-static {v0, v3}, Ljava/util/Locale;->normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1895
    .local v1, "normalizedRegion":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1896
    return-object v0

    .line 1899
    :cond_1c
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1900
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_2a

    .line 1901
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {p0, v3}, Llibcore/icu/ICU;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1903
    :cond_2a
    return-object v2
.end method

.method public final getDisplayLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1746
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1756
    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1757
    .local v0, "languageCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1758
    const-string/jumbo v3, ""

    return-object v3

    .line 1769
    :cond_10
    const/4 v3, 0x0

    .line 1768
    invoke-static {v0, v3}, Ljava/util/Locale;->normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1770
    .local v1, "normalizedLanguage":Ljava/lang/String;
    const-string/jumbo v3, "und"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1771
    return-object v0

    .line 1776
    :cond_1f
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1777
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_2d

    .line 1778
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {p0, v3}, Llibcore/icu/ICU;->getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1780
    :cond_2d
    return-object v2
.end method

.method public final getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2067
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 15
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 2088
    const/4 v1, 0x0

    .line 2089
    .local v1, "count":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2090
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v10, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v10}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 2091
    .local v7, "languageCode":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_22

    .line 2092
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 2093
    .local v4, "displayLanguage":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_98

    .end local v7    # "languageCode":Ljava/lang/String;
    :goto_1e
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2094
    const/4 v1, 0x1

    .line 2096
    .end local v4    # "displayLanguage":Ljava/lang/String;
    :cond_22
    iget-object v10, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v10}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v8

    .line 2097
    .local v8, "scriptCode":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_45

    .line 2098
    if-ne v1, v11, :cond_36

    .line 2099
    const-string/jumbo v10, " ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2101
    :cond_36
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 2102
    .local v5, "displayScript":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9a

    .end local v8    # "scriptCode":Ljava/lang/String;
    :goto_40
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    add-int/lit8 v1, v1, 0x1

    .line 2105
    .end local v5    # "displayScript":Ljava/lang/String;
    :cond_45
    iget-object v10, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v10}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    .line 2106
    .local v2, "countryCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_68

    .line 2107
    if-ne v1, v11, :cond_9c

    .line 2108
    const-string/jumbo v10, " ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2112
    :cond_59
    :goto_59
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 2113
    .local v3, "displayCountry":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_a5

    .end local v2    # "countryCode":Ljava/lang/String;
    :goto_63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2114
    add-int/lit8 v1, v1, 0x1

    .line 2116
    .end local v3    # "displayCountry":Ljava/lang/String;
    :cond_68
    iget-object v10, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v10}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v9

    .line 2117
    .local v9, "variantCode":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8b

    .line 2118
    if-ne v1, v11, :cond_a7

    .line 2119
    const-string/jumbo v10, " ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2123
    :cond_7c
    :goto_7c
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 2124
    .local v6, "displayVariant":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_b3

    .end local v9    # "variantCode":Ljava/lang/String;
    :goto_86
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2125
    add-int/lit8 v1, v1, 0x1

    .line 2127
    .end local v6    # "displayVariant":Ljava/lang/String;
    :cond_8b
    if-le v1, v11, :cond_93

    .line 2128
    const-string/jumbo v10, ")"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2130
    :cond_93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .restart local v4    # "displayLanguage":Ljava/lang/String;
    .restart local v7    # "languageCode":Ljava/lang/String;
    :cond_98
    move-object v7, v4

    .line 2093
    goto :goto_1e

    .end local v4    # "displayLanguage":Ljava/lang/String;
    .end local v7    # "languageCode":Ljava/lang/String;
    .restart local v5    # "displayScript":Ljava/lang/String;
    .restart local v8    # "scriptCode":Ljava/lang/String;
    :cond_9a
    move-object v8, v5

    .line 2102
    goto :goto_40

    .line 2109
    .end local v5    # "displayScript":Ljava/lang/String;
    .end local v8    # "scriptCode":Ljava/lang/String;
    .restart local v2    # "countryCode":Ljava/lang/String;
    :cond_9c
    if-ne v1, v12, :cond_59

    .line 2110
    const-string/jumbo v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_59

    .restart local v3    # "displayCountry":Ljava/lang/String;
    :cond_a5
    move-object v2, v3

    .line 2113
    goto :goto_63

    .line 2120
    .end local v2    # "countryCode":Ljava/lang/String;
    .end local v3    # "displayCountry":Ljava/lang/String;
    .restart local v9    # "variantCode":Ljava/lang/String;
    :cond_a7
    if-eq v1, v12, :cond_ac

    const/4 v10, 0x3

    if-ne v1, v10, :cond_7c

    .line 2121
    :cond_ac
    const-string/jumbo v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    .restart local v6    # "displayVariant":Ljava/lang/String;
    :cond_b3
    move-object v9, v6

    .line 2124
    goto :goto_86
.end method

.method public getDisplayScript()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1828
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "inLocale"    # Ljava/util/Locale;

    .prologue
    .line 1845
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 1846
    .local v1, "scriptCode":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1847
    const-string/jumbo v2, ""

    return-object v2

    .line 1850
    :cond_10
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1851
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_20

    .line 1852
    sget-object v2, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v2

    invoke-static {p0, v2}, Llibcore/icu/ICU;->getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1855
    :cond_20
    return-object v0
.end method

.method public final getDisplayVariant()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1969
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p1, "inLocale"    # Ljava/util/Locale;

    .prologue
    .line 1983
    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v2

    .line 1984
    .local v2, "variantCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1985
    const-string/jumbo v3, ""

    return-object v3

    .line 1989
    :cond_10
    :try_start_10
    invoke-static {v2}, Ljava/util/Locale;->normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/util/IllformedLocaleException; {:try_start_10 .. :try_end_13} :catch_28

    .line 1994
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1995
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_21

    .line 1996
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {p0, v3}, Llibcore/icu/ICU;->getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2003
    :cond_21
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 2004
    return-object v2

    .line 1990
    .end local v1    # "result":Ljava/lang/String;
    :catch_28
    move-exception v0

    .line 1991
    .local v0, "ilfe":Ljava/util/IllformedLocaleException;
    return-object v2

    .line 2006
    .end local v0    # "ilfe":Ljava/util/IllformedLocaleException;
    .restart local v1    # "result":Ljava/lang/String;
    :cond_2a
    return-object v1
.end method

.method public getExtension(C)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # C

    .prologue
    .line 1231
    invoke-static {p1}, Lsun/util/locale/LocaleExtensions;->isValidKey(C)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ill-formed extension key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1234
    :cond_20
    invoke-virtual {p0}, Ljava/util/Locale;->hasExtensions()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/locale/LocaleExtensions;->getExtensionValue(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object v0

    :goto_30
    return-object v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public getExtensionKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1247
    invoke-virtual {p0}, Ljava/util/Locale;->hasExtensions()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1248
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1250
    :cond_b
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getISO3Country()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 1709
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v1

    .line 1711
    .local v1, "region":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    .line 1712
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1713
    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1714
    const-string/jumbo v2, ""

    return-object v2

    .line 1718
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "en-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/ICU;->getISO3Country(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1719
    .local v0, "country3":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1720
    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t find 3-letter country code for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1721
    iget-object v4, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v4}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    .line 1720
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1721
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FormatData_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ShortCountry"

    .line 1720
    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1724
    :cond_7d
    return-object v0
.end method

.method public getISO3Language()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 1671
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1672
    .local v0, "lang":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_e

    .line 1673
    return-object v0

    .line 1677
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1678
    const-string/jumbo v2, ""

    return-object v2

    .line 1685
    :cond_18
    invoke-static {v0}, Llibcore/icu/ICU;->getISO3Language(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1686
    .local v1, "language3":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5d

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 1688
    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t find 3-letter language code for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1689
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FormatData_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ShortLanguage"

    .line 1688
    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1691
    :cond_5d
    return-object v1
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1152
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLocaleExtensions()Lsun/util/locale/LocaleExtensions;
    .registers 2

    .prologue
    .line 1320
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1166
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleAttributes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1262
    invoke-virtual {p0}, Ljava/util/Locale;->hasExtensions()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1263
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1265
    :cond_b
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1298
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v0, :cond_9

    .line 1299
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1301
    :cond_9
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1283
    invoke-static {p1}, Ljava/util/Locale;->isUnicodeExtensionKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ill-formed Unicode locale key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1286
    :cond_20
    invoke-virtual {p0}, Ljava/util/Locale;->hasExtensions()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0, p1}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public getVariant()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1188
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasExtensions()Z
    .registers 2

    .prologue
    .line 1199
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 2155
    iget v0, p0, Ljava/util/Locale;->hashCodeValue:I

    .line 2156
    .local v0, "hc":I
    if-nez v0, :cond_17

    .line 2157
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->hashCode()I

    move-result v0

    .line 2158
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-eqz v1, :cond_15

    .line 2159
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v1}, Lsun/util/locale/LocaleExtensions;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 2161
    :cond_15
    iput v0, p0, Ljava/util/Locale;->hashCodeValue:I

    .line 2163
    :cond_17
    return v0
.end method

.method public stripExtensions()Ljava/util/Locale;
    .registers 3

    .prologue
    .line 1212
    invoke-virtual {p0}, Ljava/util/Locale;->hasExtensions()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object p0

    .end local p0    # "this":Ljava/util/Locale;
    :cond_d
    return-object p0
.end method

.method public toLanguageTag()Ljava/lang/String;
    .registers 10

    .prologue
    .line 1467
    iget-object v7, p0, Ljava/util/Locale;->languageTag:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 1468
    iget-object v7, p0, Ljava/util/Locale;->languageTag:Ljava/lang/String;

    return-object v7

    .line 1471
    :cond_7
    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    iget-object v8, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-static {v7, v8}, Lsun/util/locale/LanguageTag;->parseLocale(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Lsun/util/locale/LanguageTag;

    move-result-object v6

    .line 1472
    .local v6, "tag":Lsun/util/locale/LanguageTag;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1474
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Lsun/util/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 1475
    .local v4, "subtag":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_25

    .line 1476
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    :cond_25
    invoke-virtual {v6}, Lsun/util/locale/LanguageTag;->getScript()Ljava/lang/String;

    move-result-object v4

    .line 1480
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3c

    .line 1481
    const-string/jumbo v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    :cond_3c
    invoke-virtual {v6}, Lsun/util/locale/LanguageTag;->getRegion()Ljava/lang/String;

    move-result-object v4

    .line 1486
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_53

    .line 1487
    const-string/jumbo v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    :cond_53
    invoke-virtual {v6}, Lsun/util/locale/LanguageTag;->getVariants()Ljava/util/List;

    move-result-object v5

    .line 1492
    .local v5, "subtags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "s$iterator":Ljava/util/Iterator;
    :goto_5b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1493
    .local v2, "s":Ljava/lang/String;
    const-string/jumbo v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5b

    .line 1498
    .end local v2    # "s":Ljava/lang/String;
    :cond_71
    invoke-virtual {v6}, Lsun/util/locale/LanguageTag;->getExtensions()Ljava/util/List;

    move-result-object v5

    .line 1499
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_79
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_93

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1500
    .restart local v2    # "s":Ljava/lang/String;
    const-string/jumbo v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    invoke-static {v2}, Lsun/util/locale/LanguageTag;->canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_79

    .line 1504
    .end local v2    # "s":Ljava/lang/String;
    :cond_93
    invoke-virtual {v6}, Lsun/util/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    move-result-object v4

    .line 1505
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b9

    .line 1506
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_a9

    .line 1507
    const-string/jumbo v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    :cond_a9
    const-string/jumbo v7, "x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    :cond_b9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1515
    .local v1, "langTag":Ljava/lang/String;
    monitor-enter p0

    .line 1516
    :try_start_be
    iget-object v7, p0, Ljava/util/Locale;->languageTag:Ljava/lang/String;

    if-nez v7, :cond_c4

    .line 1517
    iput-object v1, p0, Ljava/util/Locale;->languageTag:Ljava/lang/String;
    :try_end_c4
    .catchall {:try_start_be .. :try_end_c4} :catchall_c8

    :cond_c4
    monitor-exit p0

    .line 1520
    iget-object v7, p0, Ljava/util/Locale;->languageTag:Ljava/lang/String;

    return-object v7

    .line 1515
    :catchall_c8
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public final toString()Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0x5f

    .line 1367
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_b0

    const/4 v1, 0x1

    .line 1368
    .local v1, "l":Z
    :goto_f
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_b3

    const/4 v4, 0x1

    .line 1369
    .local v4, "s":Z
    :goto_1c
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_b6

    const/4 v2, 0x1

    .line 1370
    .local v2, "r":Z
    :goto_29
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_b9

    const/4 v5, 0x1

    .line 1371
    .local v5, "v":Z
    :goto_36
    iget-object v6, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-eqz v6, :cond_bc

    iget-object v6, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v6}, Lsun/util/locale/LocaleExtensions;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_bc

    const/4 v0, 0x1

    .line 1373
    .local v0, "e":Z
    :goto_47
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1374
    .local v3, "result":Ljava/lang/StringBuilder;
    if-nez v2, :cond_5c

    if-eqz v1, :cond_69

    if-nez v5, :cond_5c

    if-nez v4, :cond_5c

    if-eqz v0, :cond_69

    .line 1375
    :cond_5c
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1376
    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v7}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v7

    .line 1375
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    :cond_69
    if-eqz v5, :cond_7c

    if-nez v1, :cond_6f

    if-eqz v2, :cond_7c

    .line 1379
    :cond_6f
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1380
    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v7}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v7

    .line 1379
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    :cond_7c
    if-eqz v4, :cond_92

    if-nez v1, :cond_82

    if-eqz v2, :cond_92

    .line 1384
    :cond_82
    const-string/jumbo v6, "_#"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1385
    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v7}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v7

    .line 1384
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1388
    :cond_92
    if-eqz v0, :cond_ab

    if-nez v1, :cond_98

    if-eqz v2, :cond_ab

    .line 1389
    :cond_98
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1390
    if-nez v4, :cond_a2

    .line 1391
    const/16 v6, 0x23

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1393
    :cond_a2
    iget-object v6, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v6}, Lsun/util/locale/LocaleExtensions;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    :cond_ab
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1367
    .end local v0    # "e":Z
    .end local v1    # "l":Z
    .end local v2    # "r":Z
    .end local v3    # "result":Ljava/lang/StringBuilder;
    .end local v4    # "s":Z
    .end local v5    # "v":Z
    :cond_b0
    const/4 v1, 0x0

    .restart local v1    # "l":Z
    goto/16 :goto_f

    .line 1368
    :cond_b3
    const/4 v4, 0x0

    .restart local v4    # "s":Z
    goto/16 :goto_1c

    .line 1369
    :cond_b6
    const/4 v2, 0x0

    .restart local v2    # "r":Z
    goto/16 :goto_29

    .line 1370
    :cond_b9
    const/4 v5, 0x0

    .restart local v5    # "v":Z
    goto/16 :goto_36

    .line 1371
    :cond_bc
    const/4 v0, 0x0

    .restart local v0    # "e":Z
    goto :goto_47
.end method
