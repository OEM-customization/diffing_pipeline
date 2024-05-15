.class Lcom/android/org/bouncycastle/asn1/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field static blacklist EN_Locale:Ljava/util/Locale;

.field private static blacklist ZERO:Ljava/lang/Long;

.field private static final blacklist localeCache:Ljava/util/Map;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 13
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/DateUtil;->longValueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DateUtil;->ZERO:Ljava/lang/Long;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DateUtil;->localeCache:Ljava/util/Map;

    .line 17
    invoke-static {}, Lcom/android/org/bouncycastle/asn1/DateUtil;->forEN()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DateUtil;->EN_Locale:Ljava/util/Locale;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist epochAdjust(Ljava/util/Date;)Ljava/util/Date;
    .registers 9
    .param p0, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 41
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 42
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_7

    .line 44
    return-object p0

    .line 47
    :cond_7
    sget-object v1, Lcom/android/org/bouncycastle/asn1/DateUtil;->localeCache:Ljava/util/Map;

    monitor-enter v1

    .line 49
    :try_start_a
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 51
    .local v2, "adj":Ljava/lang/Long;
    if-nez v2, :cond_35

    .line 53
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmssz"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 54
    .local v3, "dateF":Ljava/text/SimpleDateFormat;
    const-string v4, "19700101000000GMT+00:00"

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 56
    .local v4, "v":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_2d

    .line 58
    sget-object v6, Lcom/android/org/bouncycastle/asn1/DateUtil;->ZERO:Ljava/lang/Long;

    move-object v2, v6

    goto :goto_32

    .line 62
    :cond_2d
    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/asn1/DateUtil;->longValueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v2, v6

    .line 65
    :goto_32
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .end local v3    # "dateF":Ljava/text/SimpleDateFormat;
    .end local v4    # "v":J
    :cond_35
    sget-object v3, Lcom/android/org/bouncycastle/asn1/DateUtil;->ZERO:Ljava/lang/Long;

    if-eq v2, v3, :cond_49

    .line 70
    new-instance v3, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    monitor-exit v1

    return-object v3

    .line 73
    :cond_49
    monitor-exit v1

    return-object p0

    .line 74
    .end local v2    # "adj":Ljava/lang/Long;
    :catchall_4b
    move-exception v2

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_a .. :try_end_4d} :catchall_4b

    throw v2
.end method

.method private static blacklist forEN()Ljava/util/Locale;
    .registers 4

    .line 21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 26
    :cond_15
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    .line 27
    .local v0, "locales":[Ljava/util/Locale;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    array-length v3, v0

    if-eq v2, v3, :cond_2f

    .line 29
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 31
    aget-object v1, v0, v2

    return-object v1

    .line 27
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 35
    .end local v2    # "i":I
    :cond_2f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist longValueOf(J)Ljava/lang/Long;
    .registers 3
    .param p0, "v"    # J

    .line 79
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
