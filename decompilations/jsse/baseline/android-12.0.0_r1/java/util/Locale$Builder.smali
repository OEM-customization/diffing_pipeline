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
.field private final greylist-max-o localeBuilder:Lsun/util/locale/InternalLocaleBuilder;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 2836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2837
    new-instance v0, Lsun/util/locale/InternalLocaleBuilder;

    invoke-direct {v0}, Lsun/util/locale/InternalLocaleBuilder;-><init>()V

    iput-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    .line 2838
    return-void
.end method


# virtual methods
.method public whitelist test-api addUnicodeLocaleAttribute(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "attribute"    # Ljava/lang/String;

    .line 3067
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lsun/util/locale/InternalLocaleBuilder;->addUnicodeLocaleAttribute(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3070
    nop

    .line 3071
    return-object p0

    .line 3068
    :catch_7
    move-exception v0

    .line 3069
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api build()Ljava/util/Locale;
    .registers 7

    .line 3137
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Lsun/util/locale/InternalLocaleBuilder;->getBaseLocale()Lsun/util/locale/BaseLocale;

    move-result-object v0

    .line 3138
    .local v0, "baseloc":Lsun/util/locale/BaseLocale;
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v1}, Lsun/util/locale/InternalLocaleBuilder;->getLocaleExtensions()Lsun/util/locale/LocaleExtensions;

    move-result-object v1

    .line 3139
    .local v1, "extensions":Lsun/util/locale/LocaleExtensions;
    if-nez v1, :cond_2c

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 3140
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 3141
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 3140
    # invokes: Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;
    invoke-static {v2, v3, v4, v5}, Ljava/util/Locale;->access$700(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v1

    .line 3143
    :cond_2c
    invoke-static {v0, v1}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api clear()Ljava/util/Locale$Builder;
    .registers 2

    .line 3110
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Lsun/util/locale/InternalLocaleBuilder;->clear()Lsun/util/locale/InternalLocaleBuilder;

    .line 3111
    return-object p0
.end method

.method public whitelist test-api clearExtensions()Ljava/util/Locale$Builder;
    .registers 2

    .line 3122
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    .line 3123
    return-object p0
.end method

.method public whitelist test-api removeUnicodeLocaleAttribute(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "attribute"    # Ljava/lang/String;

    .line 3091
    if-eqz p1, :cond_18

    .line 3097
    :try_start_2
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lsun/util/locale/InternalLocaleBuilder;->removeUnicodeLocaleAttribute(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_7
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_2 .. :try_end_7} :catch_9

    .line 3100
    nop

    .line 3101
    return-object p0

    .line 3098
    :catch_9
    move-exception v0

    .line 3099
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 3092
    .end local v0    # "e":Lsun/util/locale/LocaleSyntaxException;
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attribute == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;
    .registers 7
    .param p1, "key"    # C
    .param p2, "value"    # Ljava/lang/String;

    .line 3016
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1, p2}, Lsun/util/locale/InternalLocaleBuilder;->setExtension(CLjava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3019
    nop

    .line 3020
    return-object p0

    .line 3017
    :catch_7
    move-exception v0

    .line 3018
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "language"    # Ljava/lang/String;

    .line 2911
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lsun/util/locale/InternalLocaleBuilder;->setLanguage(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2914
    nop

    .line 2915
    return-object p0

    .line 2912
    :catch_7
    move-exception v0

    .line 2913
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api setLanguageTag(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 7
    .param p1, "languageTag"    # Ljava/lang/String;

    .line 2887
    new-instance v0, Lsun/util/locale/ParseStatus;

    invoke-direct {v0}, Lsun/util/locale/ParseStatus;-><init>()V

    .line 2888
    .local v0, "sts":Lsun/util/locale/ParseStatus;
    invoke-static {p1, v0}, Lsun/util/locale/LanguageTag;->parse(Ljava/lang/String;Lsun/util/locale/ParseStatus;)Lsun/util/locale/LanguageTag;

    move-result-object v1

    .line 2889
    .local v1, "tag":Lsun/util/locale/LanguageTag;
    invoke-virtual {v0}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v2

    if-nez v2, :cond_15

    .line 2892
    iget-object v2, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v2, v1}, Lsun/util/locale/InternalLocaleBuilder;->setLanguageTag(Lsun/util/locale/LanguageTag;)Lsun/util/locale/InternalLocaleBuilder;

    .line 2893
    return-object p0

    .line 2890
    :cond_15
    new-instance v2, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/ParseStatus;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lsun/util/locale/ParseStatus;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist test-api setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "locale"    # Ljava/util/Locale;

    .line 2862
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    # getter for: Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;
    invoke-static {p1}, Ljava/util/Locale;->access$500(Ljava/util/Locale;)Lsun/util/locale/BaseLocale;

    move-result-object v1

    # getter for: Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;
    invoke-static {p1}, Ljava/util/Locale;->access$600(Ljava/util/Locale;)Lsun/util/locale/LocaleExtensions;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsun/util/locale/InternalLocaleBuilder;->setLocale(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_d
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_d} :catch_f

    .line 2865
    nop

    .line 2866
    return-object p0

    .line 2863
    :catch_f
    move-exception v0

    .line 2864
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "region"    # Ljava/lang/String;

    .line 2957
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lsun/util/locale/InternalLocaleBuilder;->setRegion(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2960
    nop

    .line 2961
    return-object p0

    .line 2958
    :catch_7
    move-exception v0

    .line 2959
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "script"    # Ljava/lang/String;

    .line 2932
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lsun/util/locale/InternalLocaleBuilder;->setScript(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2935
    nop

    .line 2936
    return-object p0

    .line 2933
    :catch_7
    move-exception v0

    .line 2934
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 3046
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1, p2}, Lsun/util/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3049
    nop

    .line 3050
    return-object p0

    .line 3047
    :catch_7
    move-exception v0

    .line 3048
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "variant"    # Ljava/lang/String;

    .line 2984
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lsun/util/locale/InternalLocaleBuilder;->setVariant(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2987
    nop

    .line 2988
    return-object p0

    .line 2985
    :catch_7
    move-exception v0

    .line 2986
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
