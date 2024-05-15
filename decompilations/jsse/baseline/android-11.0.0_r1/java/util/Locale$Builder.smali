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
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 2854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2855
    new-instance v0, Lsun/util/locale/InternalLocaleBuilder;

    invoke-direct {v0}, Lsun/util/locale/InternalLocaleBuilder;-><init>()V

    iput-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    .line 2856
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api addUnicodeLocaleAttribute(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "attribute"    # Ljava/lang/String;

    .line 3085
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lsun/util/locale/InternalLocaleBuilder;->addUnicodeLocaleAttribute(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3088
    nop

    .line 3089
    return-object p0

    .line 3086
    :catch_7
    move-exception v0

    .line 3087
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist core-platform-api test-api build()Ljava/util/Locale;
    .registers 7

    .line 3155
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Lsun/util/locale/InternalLocaleBuilder;->getBaseLocale()Lsun/util/locale/BaseLocale;

    move-result-object v0

    .line 3156
    .local v0, "baseloc":Lsun/util/locale/BaseLocale;
    iget-object v1, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v1}, Lsun/util/locale/InternalLocaleBuilder;->getLocaleExtensions()Lsun/util/locale/LocaleExtensions;

    move-result-object v1

    .line 3157
    .local v1, "extensions":Lsun/util/locale/LocaleExtensions;
    if-nez v1, :cond_2c

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 3158
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 3159
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 3158
    # invokes: Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;
    invoke-static {v2, v3, v4, v5}, Ljava/util/Locale;->access$700(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v1

    .line 3161
    :cond_2c
    invoke-static {v0, v1}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v2

    return-object v2
.end method

.method public whitelist core-platform-api test-api clear()Ljava/util/Locale$Builder;
    .registers 2

    .line 3128
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Lsun/util/locale/InternalLocaleBuilder;->clear()Lsun/util/locale/InternalLocaleBuilder;

    .line 3129
    return-object p0
.end method

.method public whitelist core-platform-api test-api clearExtensions()Ljava/util/Locale$Builder;
    .registers 2

    .line 3140
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Lsun/util/locale/InternalLocaleBuilder;->clearExtensions()Lsun/util/locale/InternalLocaleBuilder;

    .line 3141
    return-object p0
.end method

.method public whitelist core-platform-api test-api removeUnicodeLocaleAttribute(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "attribute"    # Ljava/lang/String;

    .line 3109
    if-eqz p1, :cond_18

    .line 3115
    :try_start_2
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lsun/util/locale/InternalLocaleBuilder;->removeUnicodeLocaleAttribute(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_7
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_2 .. :try_end_7} :catch_9

    .line 3118
    nop

    .line 3119
    return-object p0

    .line 3116
    :catch_9
    move-exception v0

    .line 3117
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 3110
    .end local v0    # "e":Lsun/util/locale/LocaleSyntaxException;
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attribute == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;
    .registers 7
    .param p1, "key"    # C
    .param p2, "value"    # Ljava/lang/String;

    .line 3034
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1, p2}, Lsun/util/locale/InternalLocaleBuilder;->setExtension(CLjava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3037
    nop

    .line 3038
    return-object p0

    .line 3035
    :catch_7
    move-exception v0

    .line 3036
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist core-platform-api test-api setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "language"    # Ljava/lang/String;

    .line 2929
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lsun/util/locale/InternalLocaleBuilder;->setLanguage(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2932
    nop

    .line 2933
    return-object p0

    .line 2930
    :catch_7
    move-exception v0

    .line 2931
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist core-platform-api test-api setLanguageTag(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 7
    .param p1, "languageTag"    # Ljava/lang/String;

    .line 2905
    new-instance v0, Lsun/util/locale/ParseStatus;

    invoke-direct {v0}, Lsun/util/locale/ParseStatus;-><init>()V

    .line 2906
    .local v0, "sts":Lsun/util/locale/ParseStatus;
    invoke-static {p1, v0}, Lsun/util/locale/LanguageTag;->parse(Ljava/lang/String;Lsun/util/locale/ParseStatus;)Lsun/util/locale/LanguageTag;

    move-result-object v1

    .line 2907
    .local v1, "tag":Lsun/util/locale/LanguageTag;
    invoke-virtual {v0}, Lsun/util/locale/ParseStatus;->isError()Z

    move-result v2

    if-nez v2, :cond_15

    .line 2910
    iget-object v2, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v2, v1}, Lsun/util/locale/InternalLocaleBuilder;->setLanguageTag(Lsun/util/locale/LanguageTag;)Lsun/util/locale/InternalLocaleBuilder;

    .line 2911
    return-object p0

    .line 2908
    :cond_15
    new-instance v2, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/ParseStatus;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lsun/util/locale/ParseStatus;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist core-platform-api test-api setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "locale"    # Ljava/util/Locale;

    .line 2880
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

    .line 2883
    nop

    .line 2884
    return-object p0

    .line 2881
    :catch_f
    move-exception v0

    .line 2882
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist core-platform-api test-api setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "region"    # Ljava/lang/String;

    .line 2975
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lsun/util/locale/InternalLocaleBuilder;->setRegion(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2978
    nop

    .line 2979
    return-object p0

    .line 2976
    :catch_7
    move-exception v0

    .line 2977
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist core-platform-api test-api setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "script"    # Ljava/lang/String;

    .line 2950
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lsun/util/locale/InternalLocaleBuilder;->setScript(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2953
    nop

    .line 2954
    return-object p0

    .line 2951
    :catch_7
    move-exception v0

    .line 2952
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist core-platform-api test-api setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 3064
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1, p2}, Lsun/util/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3067
    nop

    .line 3068
    return-object p0

    .line 3065
    :catch_7
    move-exception v0

    .line 3066
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist core-platform-api test-api setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;
    .registers 6
    .param p1, "variant"    # Ljava/lang/String;

    .line 3002
    :try_start_0
    iget-object v0, p0, Ljava/util/Locale$Builder;->localeBuilder:Lsun/util/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lsun/util/locale/InternalLocaleBuilder;->setVariant(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;
    :try_end_5
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3005
    nop

    .line 3006
    return-object p0

    .line 3003
    :catch_7
    move-exception v0

    .line 3004
    .local v0, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v1, Ljava/util/IllformedLocaleException;

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
