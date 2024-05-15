.class public final Ljava/util/Locale$Builder;
.super Ljava/lang/Object;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final localeBuilder:Lsun/util/locale/InternalLocaleBuilder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 2521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2522
    new-instance v0, Lsun/util/locale/InternalLocaleBuilder;

    invoke-direct {v0}, Lsun/util/locale/InternalLocaleBuilder;-><init>()V

    iput-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    .line 2523
    return-void
.end method


# virtual methods
.method public addUnicodeLocaleAttribute(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 2752
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1}, Lsun/util/locale/InternalLocaleBuilder;->addUnicodeLocaleAttribute(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2756
    return-object p0

    .line 2753
    :catch_6
    move-exception v0

    .line 2754
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public build()Ljava/util/Locale;
    .registers 7

    .prologue
    .line 2821
    iget-object v2, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v2}, Lsun/util/locale/InternalLocaleBuilder;->getBaseLocale()Lsun/util/locale/BaseLocale;

    move-result-object v0

    .line 2822
    .local v0, "baseloc":Lsun/util/locale/BaseLocale;
    iget-object v2, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v2}, Lsun/util/locale/InternalLocaleBuilder;->getLocaleExtensions()Lsun/util/locale/LocaleExtensions;

    move-result-object v1

    .line 2823
    .local v1, "extensions":Lsun/util/locale/LocaleExtensions;
    if-nez v1, :cond_2c

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 2824
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 2825
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 2824
    invoke-static {v2, v3, v4, v5}, Ljava/util/Locale;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v1

    .line 2827
    :cond_2c
    invoke-static {v0, v1}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v2

    return-object v2
.end method

.method public clear()Ljava/util/Locale$Builder;
    .registers 2

    .prologue
    .line 2794
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Lsun/util/locale/InternalLocaleBuilder;->clear()Lsun/util/locale/InternalLocaleBuilder;

    .line 2795
    return-object p0
.end method

.method public clearExtensions()Ljava/util/Locale$Builder;
    .registers 2

    .prologue
    .line 2806
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    .line 2807
    return-object p0
.end method

.method public removeUnicodeLocaleAttribute(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 2775
    if-nez p1, :cond_b

    .line 2776
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "attribute == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2781
    :cond_b
    :try_start_b
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1}, Lsun/util/locale/InternalLocaleBuilder;->removeUnicodeLocaleAttribute(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_10
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_b .. :try_end_10} :catch_11

    .line 2785
    return-object p0

    .line 2782
    :catch_11
    move-exception v0

    .line 2783
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;
    .registers 7
    .param p1, "key"    # C
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2701
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1, p2}, Lsun/util/locale/InternalLocaleBuilder;->setExtension(CLjava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2705
    return-object p0

    .line 2702
    :catch_6
    move-exception v0

    .line 2703
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 2596
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1}, Lsun/util/locale/InternalLocaleBuilder;->setLanguage(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2600
    return-object p0

    .line 2597
    :catch_6
    move-exception v0

    .line 2598
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setLanguageTag(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 7
    .param p1, "languageTag"    # Ljava/lang/String;

    .prologue
    .line 2572
    new-instance v0, Lsun/util/locale/ParseStatus;

    invoke-direct {v0}, Lsun/util/locale/ParseStatus;-><init>()V

    .line 2573
    .local v0, "sts":Lsun/util/locale/ParseStatus;
    invoke-static {p1, v0}, Lsun/util/locale/LanguageTag;->parse(Ljava/lang/String;Lsun/util/locale/ParseStatus;)Lsun/util/locale/LanguageTag;

    move-result-object v1

    .line 2574
    .local v1, "tag":Lsun/util/locale/LanguageTag;
    invoke-virtual {v0}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2575
    new-instance v2, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/ParseStatus;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lsun/util/locale/ParseStatus;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 2577
    :cond_1d
    iget-object v2, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v2, v1}, Lsun/util/locale/InternalLocaleBuilder;->setLanguageTag(Lsun/util/locale/LanguageTag;)Lsun/util/locale/InternalLocaleBuilder;

    .line 2578
    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 2547
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-static {p1}, Ljava/util/Locale;->-get0(Ljava/util/Locale;)Lsun/util/locale/BaseLocale;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Locale;->-get1(Ljava/util/Locale;)Lsun/util/locale/LocaleExtensions;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/util/locale/InternalLocaleBuilder;->setLocale(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_d
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_d} :catch_e

    .line 2551
    return-object p0

    .line 2548
    :catch_e
    move-exception v0

    .line 2549
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 2642
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1}, Lsun/util/locale/InternalLocaleBuilder;->setRegion(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2646
    return-object p0

    .line 2643
    :catch_6
    move-exception v0

    .line 2644
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 2617
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1}, Lsun/util/locale/InternalLocaleBuilder;->setScript(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2621
    return-object p0

    .line 2618
    :catch_6
    move-exception v0

    .line 2619
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 2731
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1, p2}, Lsun/util/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2735
    return-object p0

    .line 2732
    :catch_6
    move-exception v0

    .line 2733
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "variant"    # Ljava/lang/String;

    .prologue
    .line 2669
    :try_start_0
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v1, p1}, Lsun/util/locale/InternalLocaleBuilder;->setVariant(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2673
    return-object p0

    .line 2670
    :catch_6
    move-exception v0

    .line 2671
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
