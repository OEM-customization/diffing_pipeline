.class public Lsun/util/locale/LanguageTag;
.super Ljava/lang/Object;
.source "LanguageTag.java"


# static fields
.field private static final greylist-max-o GRANDFATHERED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist PRIVATEUSE:Ljava/lang/String; = "x"

.field public static final blacklist PRIVUSE_VARIANT_PREFIX:Ljava/lang/String; = "lvariant"

.field public static final blacklist SEP:Ljava/lang/String; = "-"

.field public static final blacklist UNDETERMINED:Ljava/lang/String; = "und"


# instance fields
.field private greylist-max-o extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o extlangs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o language:Ljava/lang/String;

.field private greylist-max-o privateuse:Ljava/lang/String;

.field private greylist-max-o region:Ljava/lang/String;

.field private greylist-max-o script:Ljava/lang/String;

.field private greylist-max-o variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/util/locale/LanguageTag;->GRANDFATHERED:Ljava/util/Map;

    .line 99
    const/16 v0, 0x1a

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "art-lojban"

    const-string v2, "jbo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "cel-gaulish"

    const-string v3, "xtg-x-cel-gaulish"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "en-GB-oed"

    const-string v3, "en-GB-x-oed"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "i-ami"

    const-string v3, "ami"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "i-bnn"

    const-string v3, "bnn"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "i-default"

    const-string v3, "en-x-i-default"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "i-enochian"

    const-string v3, "und-x-i-enochian"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "i-hak"

    const-string v3, "hak"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v0, v4

    const-string v1, "i-klingon"

    const-string v4, "tlh"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8

    aput-object v1, v0, v4

    const-string v1, "i-lux"

    const-string v4, "lb"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9

    aput-object v1, v0, v4

    const-string v1, "i-mingo"

    const-string v4, "see-x-i-mingo"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa

    aput-object v1, v0, v4

    const-string v1, "i-navajo"

    const-string v4, "nv"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb

    aput-object v1, v0, v4

    const-string v1, "i-pwn"

    const-string v4, "pwn"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xc

    aput-object v1, v0, v4

    const-string v1, "i-tao"

    const-string v4, "tao"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xd

    aput-object v1, v0, v4

    const-string v1, "i-tay"

    const-string v4, "tay"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xe

    aput-object v1, v0, v4

    const-string v1, "i-tsu"

    const-string v4, "tsu"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xf

    aput-object v1, v0, v4

    const-string v1, "no-bok"

    const-string v4, "nb"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    aput-object v1, v0, v4

    const-string v1, "no-nyn"

    const-string v4, "nn"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x11

    aput-object v1, v0, v4

    const-string v1, "sgn-BE-FR"

    const-string v4, "sfb"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x12

    aput-object v1, v0, v4

    const-string v1, "sgn-BE-NL"

    const-string v4, "vgt"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x13

    aput-object v1, v0, v4

    const-string v1, "sgn-CH-DE"

    const-string v4, "sgg"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x14

    aput-object v1, v0, v4

    const-string v1, "zh-guoyu"

    const-string v4, "cmn"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x15

    aput-object v1, v0, v4

    const-string v1, "zh-hakka"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x16

    aput-object v1, v0, v3

    const-string v1, "zh-min"

    const-string v3, "nan-x-zh-min"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x17

    aput-object v1, v0, v3

    const-string v1, "zh-min-nan"

    const-string v3, "nan"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x18

    aput-object v1, v0, v3

    const-string v1, "zh-xiang"

    const-string v3, "hsn"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x19

    aput-object v1, v0, v3

    .line 128
    .local v0, "entries":[[Ljava/lang/String;
    array-length v1, v0

    move v3, v2

    :goto_13b
    if-ge v3, v1, :cond_14d

    aget-object v4, v0, v3

    .line 129
    .local v4, "e":[Ljava/lang/String;
    sget-object v5, Lsun/util/locale/LanguageTag;->GRANDFATHERED:Ljava/util/Map;

    aget-object v6, v4, v2

    invoke-static {v6}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local v4    # "e":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_13b

    .line 131
    .end local v0    # "entries":[[Ljava/lang/String;
    :cond_14d
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    .line 134
    return-void
.end method

.method public static blacklist canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 694
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizeExtensionSingleton(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 698
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizeExtensionSubtag(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 702
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizeExtlang(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 678
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 674
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizePrivateuse(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 706
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizePrivateuseSubtag(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 710
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 686
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 682
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 690
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isExtensionSingleton(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 638
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 639
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 640
    const-string v0, "x"

    invoke-static {v0, p0}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 638
    :goto_17
    return v1
.end method

.method public static blacklist isExtensionSingletonChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 644
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/util/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isExtensionSubtag(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 649
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 650
    .local v0, "len":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_13

    const/16 v1, 0x8

    if-gt v0, v1, :cond_13

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public static blacklist isExtlang(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 600
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static blacklist isLanguage(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 593
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 594
    .local v0, "len":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_13

    const/16 v1, 0x8

    if-gt v0, v1, :cond_13

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public static blacklist isPrivateusePrefix(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 655
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 656
    const-string v0, "x"

    invoke-static {v0, p0}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 655
    :goto_11
    return v1
.end method

.method public static blacklist isPrivateusePrefixChar(C)Z
    .registers 3
    .param p0, "c"    # C

    .line 660
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x"

    invoke-static {v1, v0}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isPrivateuseSubtag(Ljava/lang/String;)Z
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 665
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 666
    .local v0, "len":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    const/16 v2, 0x8

    if-gt v0, v2, :cond_12

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public static blacklist isRegion(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 611
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 612
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isNumericString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 611
    :goto_1d
    return v0
.end method

.method public static blacklist isScript(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 605
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static blacklist isVariant(Ljava/lang/String;)Z
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .line 618
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 619
    .local v0, "len":I
    const/4 v1, 0x5

    if-lt v0, v1, :cond_10

    const/16 v1, 0x8

    if-gt v0, v1, :cond_10

    .line 620
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 622
    :cond_10
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_43

    .line 623
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->isNumeric(C)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_41

    .line 624
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->isAlphaNumeric(C)Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x2

    .line 625
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->isAlphaNumeric(C)Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x3

    .line 626
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->isAlphaNumeric(C)Z

    move-result v1

    if-eqz v1, :cond_41

    move v2, v3

    goto :goto_42

    :cond_41
    nop

    .line 623
    :goto_42
    return v2

    .line 628
    :cond_43
    return v2
.end method

.method public static blacklist parse(Ljava/lang/String;Lsun/util/locale/ParseStatus;)Lsun/util/locale/LanguageTag;
    .registers 8
    .param p0, "languageTag"    # Ljava/lang/String;
    .param p1, "sts"    # Lsun/util/locale/ParseStatus;

    .line 182
    if-nez p1, :cond_9

    .line 183
    new-instance v0, Lsun/util/locale/ParseStatus;

    invoke-direct {v0}, Lsun/util/locale/ParseStatus;-><init>()V

    move-object p1, v0

    goto :goto_c

    .line 185
    :cond_9
    invoke-virtual {p1}, Lsun/util/locale/ParseStatus;->reset()V

    .line 191
    :goto_c
    sget-object v0, Lsun/util/locale/LanguageTag;->GRANDFATHERED:Ljava/util/Map;

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 192
    .local v0, "gfmap":[Ljava/lang/String;
    const-string v1, "-"

    if-eqz v0, :cond_26

    .line 194
    new-instance v2, Lsun/util/locale/StringTokenIterator;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {v2, v3, v1}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .local v1, "itr":Lsun/util/locale/StringTokenIterator;
    goto :goto_2c

    .line 196
    .end local v1    # "itr":Lsun/util/locale/StringTokenIterator;
    :cond_26
    new-instance v2, Lsun/util/locale/StringTokenIterator;

    invoke-direct {v2, p0, v1}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 199
    .restart local v1    # "itr":Lsun/util/locale/StringTokenIterator;
    :goto_2c
    new-instance v2, Lsun/util/locale/LanguageTag;

    invoke-direct {v2}, Lsun/util/locale/LanguageTag;-><init>()V

    .line 202
    .local v2, "tag":Lsun/util/locale/LanguageTag;
    invoke-direct {v2, v1, p1}, Lsun/util/locale/LanguageTag;->parseLanguage(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 203
    invoke-direct {v2, v1, p1}, Lsun/util/locale/LanguageTag;->parseExtlangs(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    .line 204
    invoke-direct {v2, v1, p1}, Lsun/util/locale/LanguageTag;->parseScript(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    .line 205
    invoke-direct {v2, v1, p1}, Lsun/util/locale/LanguageTag;->parseRegion(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    .line 206
    invoke-direct {v2, v1, p1}, Lsun/util/locale/LanguageTag;->parseVariants(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    .line 207
    invoke-direct {v2, v1, p1}, Lsun/util/locale/LanguageTag;->parseExtensions(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    .line 209
    :cond_46
    invoke-direct {v2, v1, p1}, Lsun/util/locale/LanguageTag;->parsePrivateuse(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z

    .line 211
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v3

    if-nez v3, :cond_7d

    invoke-virtual {p1}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v3

    if-nez v3, :cond_7d

    .line 212
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v4

    iput v4, p1, Lsun/util/locale/ParseStatus;->errorIndex:I

    .line 214
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6a

    .line 215
    const-string v4, "Empty subtag"

    iput-object v4, p1, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    goto :goto_7d

    .line 217
    :cond_6a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid subtag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    .line 221
    .end local v3    # "s":Ljava/lang/String;
    :cond_7d
    :goto_7d
    return-object v2
.end method

.method private greylist-max-o parseExtensions(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .registers 10
    .param p1, "itr"    # Lsun/util/locale/StringTokenIterator;
    .param p2, "sts"    # Lsun/util/locale/ParseStatus;

    .line 336
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_89

    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_89

    .line 340
    :cond_e
    const/4 v0, 0x0

    .line 342
    .local v0, "found":Z
    :goto_f
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_88

    .line 343
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 345
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v2

    .line 346
    .local v2, "start":I
    move-object v3, v1

    .line 347
    .local v3, "singleton":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 350
    :goto_2c
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_4e

    .line 351
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 353
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v5

    iput v5, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    .line 358
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_2c

    .line 361
    :cond_4e
    iget v5, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    if-gt v5, v2, :cond_6d

    .line 362
    iput v2, p2, Lsun/util/locale/ParseStatus;->errorIndex:I

    .line 363
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incomplete extension \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    .line 364
    goto :goto_88

    .line 367
    :cond_6d
    iget-object v5, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 368
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    .line 370
    :cond_7d
    iget-object v5, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    const/4 v0, 0x1

    .line 375
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "start":I
    .end local v3    # "singleton":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    goto :goto_f

    .line 376
    :cond_88
    :goto_88
    return v0

    .line 337
    .end local v0    # "found":Z
    :cond_89
    :goto_89
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o parseExtlangs(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .registers 7
    .param p1, "itr"    # Lsun/util/locale/StringTokenIterator;
    .param p2, "sts"    # Lsun/util/locale/ParseStatus;

    .line 247
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_49

    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_49

    .line 251
    :cond_d
    const/4 v0, 0x0

    .line 253
    .local v0, "found":Z
    :goto_e
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_48

    .line 254
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isExtlang(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 256
    goto :goto_48

    .line 258
    :cond_1f
    const/4 v0, 0x1

    .line 259
    iget-object v2, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_30

    .line 260
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    .line 262
    :cond_30
    iget-object v2, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    .line 264
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 266
    iget-object v2, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_47

    .line 268
    goto :goto_48

    .line 270
    .end local v1    # "s":Ljava/lang/String;
    :cond_47
    goto :goto_e

    .line 272
    :cond_48
    :goto_48
    return v0

    .line 248
    .end local v0    # "found":Z
    :cond_49
    :goto_49
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o parseLanguage(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .registers 6
    .param p1, "itr"    # Lsun/util/locale/StringTokenIterator;
    .param p2, "sts"    # Lsun/util/locale/ParseStatus;

    .line 229
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_25

    .line 233
    :cond_d
    const/4 v0, 0x0

    .line 235
    .local v0, "found":Z
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 237
    const/4 v0, 0x1

    .line 238
    iput-object v1, p0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    .line 240
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 243
    :cond_24
    return v0

    .line 230
    .end local v0    # "found":Z
    .end local v1    # "s":Ljava/lang/String;
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist parseLocale(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Lsun/util/locale/LanguageTag;
    .registers 19
    .param p0, "baseLocale"    # Lsun/util/locale/BaseLocale;
    .param p1, "localeExtensions"    # Lsun/util/locale/LocaleExtensions;

    .line 417
    move-object/from16 v0, p1

    new-instance v1, Lsun/util/locale/LanguageTag;

    invoke-direct {v1}, Lsun/util/locale/LanguageTag;-><init>()V

    .line 419
    .local v1, "tag":Lsun/util/locale/LanguageTag;
    invoke-virtual/range {p0 .. p0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "language":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, "script":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    .line 422
    .local v4, "region":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 424
    .local v5, "variant":Ljava/lang/String;
    const/4 v6, 0x0

    .line 426
    .local v6, "hasSubtag":Z
    const/4 v7, 0x0

    .line 428
    .local v7, "privuseVar":Ljava/lang/String;
    invoke-static {v2}, Lsun/util/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_41

    .line 430
    const-string v8, "iw"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 431
    const-string v2, "he"

    goto :goto_3f

    .line 432
    :cond_2a
    const-string v8, "ji"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 433
    const-string v2, "yi"

    goto :goto_3f

    .line 434
    :cond_35
    const-string v8, "in"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 435
    const-string v2, "id"

    .line 437
    :cond_3f
    :goto_3f
    iput-object v2, v1, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    .line 440
    :cond_41
    invoke-static {v3}, Lsun/util/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 441
    invoke-static {v3}, Lsun/util/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    .line 442
    const/4 v6, 0x1

    .line 445
    :cond_4e
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 446
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    .line 447
    const/4 v6, 0x1

    .line 451
    :cond_5b
    iget-object v8, v1, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    const-string v9, "no"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7d

    iget-object v8, v1, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    const-string v9, "NO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7d

    const-string v8, "NY"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 452
    const-string v8, "nn"

    iput-object v8, v1, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    .line 453
    const-string v5, ""

    .line 456
    :cond_7d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "_"

    const-string v10, "-"

    if-lez v8, :cond_e8

    .line 457
    const/4 v8, 0x0

    .line 458
    .local v8, "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Lsun/util/locale/StringTokenIterator;

    invoke-direct {v11, v5, v9}, Lsun/util/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .local v11, "varitr":Lsun/util/locale/StringTokenIterator;
    :goto_8d
    invoke-virtual {v11}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v12

    if-nez v12, :cond_ad

    .line 460
    invoke-virtual {v11}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v12

    .line 461
    .local v12, "var":Ljava/lang/String;
    invoke-static {v12}, Lsun/util/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9e

    .line 462
    goto :goto_ad

    .line 464
    :cond_9e
    if-nez v8, :cond_a6

    .line 465
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v13

    .line 467
    :cond_a6
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-virtual {v11}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 469
    .end local v12    # "var":Ljava/lang/String;
    goto :goto_8d

    .line 470
    :cond_ad
    :goto_ad
    if-eqz v8, :cond_b2

    .line 471
    iput-object v8, v1, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    .line 472
    const/4 v6, 0x1

    .line 474
    :cond_b2
    invoke-virtual {v11}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v12

    if-nez v12, :cond_e8

    .line 476
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .local v12, "buf":Ljava/lang/StringBuilder;
    :goto_bd
    invoke-virtual {v11}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v13

    if-nez v13, :cond_de

    .line 478
    invoke-virtual {v11}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v13

    .line 479
    .local v13, "prvv":Ljava/lang/String;
    invoke-static {v13}, Lsun/util/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_ce

    .line 481
    goto :goto_de

    .line 483
    :cond_ce
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_d7

    .line 484
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_d7
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v11}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 488
    .end local v13    # "prvv":Ljava/lang/String;
    goto :goto_bd

    .line 489
    :cond_de
    :goto_de
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_e8

    .line 490
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 495
    .end local v8    # "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "varitr":Lsun/util/locale/StringTokenIterator;
    .end local v12    # "buf":Ljava/lang/StringBuilder;
    :cond_e8
    const/4 v8, 0x0

    .line 496
    .local v8, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 498
    .local v11, "privateuse":Ljava/lang/String;
    if-eqz v0, :cond_145

    .line 499
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v12

    .line 500
    .local v12, "locextKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_f4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_142

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Character;

    .line 501
    .local v14, "locextKey":Ljava/lang/Character;
    invoke-virtual {v0, v14}, Lsun/util/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Lsun/util/locale/Extension;

    move-result-object v15

    .line 502
    .local v15, "ext":Lsun/util/locale/Extension;
    invoke-virtual {v14}, Ljava/lang/Character;->charValue()C

    move-result v16

    invoke-static/range {v16 .. v16}, Lsun/util/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v16

    if-eqz v16, :cond_115

    .line 503
    invoke-virtual {v15}, Lsun/util/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v2

    goto :goto_13d

    .line 505
    :cond_115
    if-nez v8, :cond_11e

    .line 506
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v8, v16

    .line 508
    :cond_11e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    .end local v2    # "language":Ljava/lang/String;
    .local v16, "language":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lsun/util/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    .end local v14    # "locextKey":Ljava/lang/Character;
    .end local v15    # "ext":Lsun/util/locale/Extension;
    :goto_13d
    move-object/from16 v0, p1

    move-object/from16 v2, v16

    goto :goto_f4

    .line 500
    .end local v16    # "language":Ljava/lang/String;
    .restart local v2    # "language":Ljava/lang/String;
    :cond_142
    move-object/from16 v16, v2

    .end local v2    # "language":Ljava/lang/String;
    .restart local v16    # "language":Ljava/lang/String;
    goto :goto_147

    .line 498
    .end local v12    # "locextKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    .end local v16    # "language":Ljava/lang/String;
    .restart local v2    # "language":Ljava/lang/String;
    :cond_145
    move-object/from16 v16, v2

    .line 513
    .end local v2    # "language":Ljava/lang/String;
    .restart local v16    # "language":Ljava/lang/String;
    :goto_147
    if-eqz v8, :cond_14c

    .line 514
    iput-object v8, v1, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    .line 515
    const/4 v6, 0x1

    .line 519
    :cond_14c
    if-eqz v7, :cond_180

    .line 520
    if-nez v11, :cond_162

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lvariant-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_180

    .line 523
    :cond_162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "lvariant"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 528
    :cond_180
    :goto_180
    if-eqz v11, :cond_184

    .line 529
    iput-object v11, v1, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    .line 532
    :cond_184
    iget-object v0, v1, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_194

    if-nez v6, :cond_190

    if-nez v11, :cond_194

    .line 536
    :cond_190
    const-string v0, "und"

    iput-object v0, v1, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    .line 539
    :cond_194
    return-object v1
.end method

.method private greylist-max-o parsePrivateuse(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .registers 8
    .param p1, "itr"    # Lsun/util/locale/StringTokenIterator;
    .param p2, "sts"    # Lsun/util/locale/ParseStatus;

    .line 380
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5a

    .line 384
    :cond_d
    const/4 v0, 0x0

    .line 386
    .local v0, "found":Z
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isPrivateusePrefix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 388
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentStart()I

    move-result v2

    .line 389
    .local v2, "start":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 392
    :goto_24
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v4

    if-nez v4, :cond_47

    .line 393
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 395
    goto :goto_47

    .line 397
    :cond_35
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v4

    iput v4, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    .line 400
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_24

    .line 403
    :cond_47
    :goto_47
    iget v4, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    if-gt v4, v2, :cond_52

    .line 405
    iput v2, p2, Lsun/util/locale/ParseStatus;->errorIndex:I

    .line 406
    const-string v4, "Incomplete privateuse"

    iput-object v4, p2, Lsun/util/locale/ParseStatus;->errorMsg:Ljava/lang/String;

    goto :goto_59

    .line 408
    :cond_52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    .line 409
    const/4 v0, 0x1

    .line 413
    .end local v2    # "start":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_59
    :goto_59
    return v0

    .line 381
    .end local v0    # "found":Z
    .end local v1    # "s":Ljava/lang/String;
    :cond_5a
    :goto_5a
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o parseRegion(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .registers 6
    .param p1, "itr"    # Lsun/util/locale/StringTokenIterator;
    .param p2, "sts"    # Lsun/util/locale/ParseStatus;

    .line 294
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_25

    .line 298
    :cond_d
    const/4 v0, 0x0

    .line 300
    .local v0, "found":Z
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 302
    const/4 v0, 0x1

    .line 303
    iput-object v1, p0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    .line 304
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    .line 305
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 308
    :cond_24
    return v0

    .line 295
    .end local v0    # "found":Z
    .end local v1    # "s":Ljava/lang/String;
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o parseScript(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .registers 6
    .param p1, "itr"    # Lsun/util/locale/StringTokenIterator;
    .param p2, "sts"    # Lsun/util/locale/ParseStatus;

    .line 276
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_25

    .line 280
    :cond_d
    const/4 v0, 0x0

    .line 282
    .local v0, "found":Z
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 284
    const/4 v0, 0x1

    .line 285
    iput-object v1, p0, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    .line 287
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 290
    :cond_24
    return v0

    .line 277
    .end local v0    # "found":Z
    .end local v1    # "s":Ljava/lang/String;
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o parseVariants(Lsun/util/locale/StringTokenIterator;Lsun/util/locale/ParseStatus;)Z
    .registers 7
    .param p1, "itr"    # Lsun/util/locale/StringTokenIterator;
    .param p2, "sts"    # Lsun/util/locale/ParseStatus;

    .line 312
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {p2}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_40

    .line 316
    :cond_d
    const/4 v0, 0x0

    .line 318
    .local v0, "found":Z
    :goto_e
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 319
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lsun/util/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 321
    goto :goto_3f

    .line 323
    :cond_1f
    const/4 v0, 0x1

    .line 324
    iget-object v2, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 325
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    .line 327
    :cond_30
    iget-object v2, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    iput v2, p2, Lsun/util/locale/ParseStatus;->parseLength:I

    .line 329
    invoke-virtual {p1}, Lsun/util/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 330
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_e

    .line 332
    :cond_3f
    :goto_3f
    return v0

    .line 313
    .end local v0    # "found":Z
    :cond_40
    :goto_40
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist getExtensions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 574
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 576
    :cond_d
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtlangs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 552
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 554
    :cond_d
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLanguage()Ljava/lang/String;
    .registers 2

    .line 547
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPrivateuse()Ljava/lang/String;
    .registers 2

    .line 580
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRegion()Ljava/lang/String;
    .registers 2

    .line 562
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getScript()Ljava/lang/String;
    .registers 2

    .line 558
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVariants()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 566
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 567
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 569
    :cond_d
    iget-object v0, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 717
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "-"

    if-lez v1, :cond_7f

    .line 718
    iget-object v1, p0, Lsun/util/locale/LanguageTag;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    iget-object v1, p0, Lsun/util/locale/LanguageTag;->extlangs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 721
    .local v3, "extlang":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .end local v3    # "extlang":Ljava/lang/String;
    goto :goto_1a

    .line 724
    :cond_2d
    iget-object v1, p0, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3d

    .line 725
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/util/locale/LanguageTag;->script:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    :cond_3d
    iget-object v1, p0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4d

    .line 729
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/util/locale/LanguageTag;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    :cond_4d
    iget-object v1, p0, Lsun/util/locale/LanguageTag;->variants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 733
    .local v3, "variant":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .end local v3    # "variant":Ljava/lang/String;
    goto :goto_53

    .line 736
    :cond_66
    iget-object v1, p0, Lsun/util/locale/LanguageTag;->extensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 737
    .local v3, "extension":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    .end local v3    # "extension":Ljava/lang/String;
    goto :goto_6c

    .line 740
    :cond_7f
    iget-object v1, p0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_95

    .line 741
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_90

    .line 742
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    :cond_90
    iget-object v1, p0, Lsun/util/locale/LanguageTag;->privateuse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    :cond_95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
