.class Ljava/time/format/ZoneName;
.super Ljava/lang/Object;
.source "ZoneName.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toZid(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "zid"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "canonicalCldrId":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 63
    return-object v0

    .line 65
    :cond_7
    return-object p0
.end method

.method public static toZid(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p0, "zid"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 45
    invoke-static {p1}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v1

    .line 46
    .local v1, "tzNames":Landroid/icu/text/TimeZoneNames;
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames;->getAvailableMetaZoneIDs()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 48
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v2

    .line 49
    .local v2, "uLocale":Landroid/icu/util/ULocale;
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "region":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_24

    .line 51
    invoke-static {v2}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_24
    invoke-virtual {v1, p0, v0}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 56
    .end local v0    # "region":Ljava/lang/String;
    .end local v2    # "uLocale":Landroid/icu/util/ULocale;
    :cond_28
    invoke-static {p0}, Ljava/time/format/ZoneName;->toZid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
