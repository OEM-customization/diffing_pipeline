.class public Ljava/util/ResourceBundle$Control;
.super Ljava/lang/Object;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Control"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ResourceBundle$Control$CandidateListCache;
    }
.end annotation


# static fields
.field private static final greylist-max-o CANDIDATES_CACHE:Ljava/util/ResourceBundle$Control$CandidateListCache;

.field public static final whitelist test-api FORMAT_CLASS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api FORMAT_DEFAULT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api FORMAT_PROPERTIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o INSTANCE:Ljava/util/ResourceBundle$Control;

.field public static final whitelist test-api TTL_DONT_CACHE:J = -0x1L

.field public static final whitelist test-api TTL_NO_EXPIRATION_CONTROL:J = -0x2L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 2021
    const-string v0, "java.class"

    const-string v1, "java.properties"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 2022
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    .line 2032
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2033
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS:Ljava/util/List;

    .line 2042
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    .line 2043
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES:Ljava/util/List;

    .line 2061
    new-instance v0, Ljava/util/ResourceBundle$Control;

    invoke-direct {v0}, Ljava/util/ResourceBundle$Control;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle$Control;->INSTANCE:Ljava/util/ResourceBundle$Control;

    .line 2367
    new-instance v0, Ljava/util/ResourceBundle$Control$CandidateListCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$Control$CandidateListCache;-><init>(Ljava/util/ResourceBundle$1;)V

    sput-object v0, Ljava/util/ResourceBundle$Control;->CANDIDATES_CACHE:Ljava/util/ResourceBundle$Control$CandidateListCache;

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 2067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2068
    return-void
.end method

.method static synthetic blacklist access$300()Ljava/util/ResourceBundle$Control;
    .registers 1

    .line 2012
    sget-object v0, Ljava/util/ResourceBundle$Control;->INSTANCE:Ljava/util/ResourceBundle$Control;

    return-object v0
.end method

.method public static final whitelist test-api getControl(Ljava/util/List;)Ljava/util/ResourceBundle$Control;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ResourceBundle$Control;"
        }
    .end annotation

    .line 2094
    .local p0, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2095
    # getter for: Ljava/util/ResourceBundle$SingleFormatControl;->PROPERTIES_ONLY:Ljava/util/ResourceBundle$Control;
    invoke-static {}, Ljava/util/ResourceBundle$SingleFormatControl;->access$800()Ljava/util/ResourceBundle$Control;

    move-result-object v0

    return-object v0

    .line 2097
    :cond_d
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2098
    # getter for: Ljava/util/ResourceBundle$SingleFormatControl;->CLASS_ONLY:Ljava/util/ResourceBundle$Control;
    invoke-static {}, Ljava/util/ResourceBundle$SingleFormatControl;->access$900()Ljava/util/ResourceBundle$Control;

    move-result-object v0

    return-object v0

    .line 2100
    :cond_1a
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2101
    sget-object v0, Ljava/util/ResourceBundle$Control;->INSTANCE:Ljava/util/ResourceBundle$Control;

    return-object v0

    .line 2103
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static final whitelist test-api getNoFallbackControl(Ljava/util/List;)Ljava/util/ResourceBundle$Control;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ResourceBundle$Control;"
        }
    .end annotation

    .line 2129
    .local p0, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2130
    # getter for: Ljava/util/ResourceBundle$NoFallbackControl;->NO_FALLBACK:Ljava/util/ResourceBundle$Control;
    invoke-static {}, Ljava/util/ResourceBundle$NoFallbackControl;->access$1000()Ljava/util/ResourceBundle$Control;

    move-result-object v0

    return-object v0

    .line 2132
    :cond_d
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2133
    # getter for: Ljava/util/ResourceBundle$NoFallbackControl;->PROPERTIES_ONLY_NO_FALLBACK:Ljava/util/ResourceBundle$Control;
    invoke-static {}, Ljava/util/ResourceBundle$NoFallbackControl;->access$1100()Ljava/util/ResourceBundle$Control;

    move-result-object v0

    return-object v0

    .line 2135
    :cond_1a
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2136
    # getter for: Ljava/util/ResourceBundle$NoFallbackControl;->CLASS_ONLY_NO_FALLBACK:Ljava/util/ResourceBundle$Control;
    invoke-static {}, Ljava/util/ResourceBundle$NoFallbackControl;->access$1200()Ljava/util/ResourceBundle$Control;

    move-result-object v0

    return-object v0

    .line 2138
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private greylist-max-o toResourceName0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .line 2950
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2951
    const/4 v0, 0x0

    return-object v0

    .line 2953
    :cond_a
    invoke-virtual {p0, p1, p2}, Ljava/util/ResourceBundle$Control;->toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;
    .registers 6
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 2361
    if-eqz p1, :cond_14

    .line 2364
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Ljava/util/ResourceBundle$Control;->CANDIDATES_CACHE:Ljava/util/ResourceBundle$Control$CandidateListCache;

    invoke-virtual {p2}, Ljava/util/Locale;->getBaseLocale()Lsun/util/locale/BaseLocale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle$Control$CandidateListCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 2362
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;
    .registers 5
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 2525
    if-eqz p1, :cond_10

    .line 2528
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 2529
    .local v0, "defaultLocale":Ljava/util/Locale;
    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_f

    :cond_e
    move-object v1, v0

    :goto_f
    return-object v1

    .line 2526
    .end local v0    # "defaultLocale":Ljava/util/Locale;
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getFormats(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "baseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2176
    if-eqz p1, :cond_5

    .line 2179
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    return-object v0

    .line 2177
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getTimeToLive(Ljava/lang/String;Ljava/util/Locale;)J
    .registers 5
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 2745
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 2748
    const-wide/16 v0, -0x2

    return-wide v0

    .line 2746
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api needsReload(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle;J)Z
    .registers 21
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "loader"    # Ljava/lang/ClassLoader;
    .param p5, "bundle"    # Ljava/util/ResourceBundle;
    .param p6, "loadTime"    # J

    .line 2802
    move-object/from16 v0, p3

    if-eqz p5, :cond_77

    .line 2805
    const-string v1, "java.class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "java.properties"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    move-object v1, v0

    goto :goto_1d

    .line 2806
    :cond_17
    :goto_17
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2808
    .end local p3    # "format":Ljava/lang/String;
    .local v1, "format":Ljava/lang/String;
    :goto_1d
    const/4 v2, 0x0

    .line 2810
    .local v2, "result":Z
    :try_start_1e
    invoke-virtual {p0, p1, p2}, Ljava/util/ResourceBundle$Control;->toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_22} :catch_72
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_6d

    move-object v3, p0

    :try_start_23
    invoke-direct {p0, v0, v1}, Ljava/util/ResourceBundle$Control;->toResourceName0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_27
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_27} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_27} :catch_69

    .line 2811
    .local v0, "resourceName":Ljava/lang/String;
    if-nez v0, :cond_2a

    .line 2812
    return v2

    .line 2814
    :cond_2a
    move-object/from16 v4, p4

    :try_start_2c
    invoke-virtual {v4, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    .line 2815
    .local v5, "url":Ljava/net/URL;
    if-eqz v5, :cond_64

    .line 2816
    const-wide/16 v6, 0x0

    .line 2817
    .local v6, "lastModified":J
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .line 2818
    .local v8, "connection":Ljava/net/URLConnection;
    const/4 v9, 0x0

    if-eqz v8, :cond_5e

    .line 2820
    invoke-virtual {v8, v9}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 2821
    instance-of v10, v8, Ljava/net/JarURLConnection;

    if-eqz v10, :cond_59

    .line 2822
    move-object v10, v8

    check-cast v10, Ljava/net/JarURLConnection;

    invoke-virtual {v10}, Ljava/net/JarURLConnection;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v10

    .line 2823
    .local v10, "ent":Ljava/util/jar/JarEntry;
    if-eqz v10, :cond_58

    .line 2824
    invoke-virtual {v10}, Ljava/util/jar/JarEntry;->getTime()J

    move-result-wide v11

    move-wide v6, v11

    .line 2825
    const-wide/16 v11, -0x1

    cmp-long v11, v6, v11

    if-nez v11, :cond_58

    .line 2826
    const-wide/16 v6, 0x0

    .line 2829
    .end local v10    # "ent":Ljava/util/jar/JarEntry;
    :cond_58
    goto :goto_5e

    .line 2830
    :cond_59
    invoke-virtual {v8}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v10
    :try_end_5d
    .catch Ljava/lang/NullPointerException; {:try_start_2c .. :try_end_5d} :catch_67
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_5d} :catch_65

    move-wide v6, v10

    .line 2833
    :cond_5e
    :goto_5e
    cmp-long v10, v6, p6

    if-ltz v10, :cond_63

    const/4 v9, 0x1

    :cond_63
    move v2, v9

    .line 2839
    .end local v0    # "resourceName":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "lastModified":J
    .end local v8    # "connection":Ljava/net/URLConnection;
    :cond_64
    goto :goto_71

    .line 2837
    :catch_65
    move-exception v0

    goto :goto_71

    .line 2835
    :catch_67
    move-exception v0

    goto :goto_76

    .line 2837
    :catch_69
    move-exception v0

    goto :goto_6f

    .line 2835
    :catch_6b
    move-exception v0

    goto :goto_74

    .line 2837
    :catch_6d
    move-exception v0

    move-object v3, p0

    :goto_6f
    move-object/from16 v4, p4

    .line 2840
    :goto_71
    return v2

    .line 2835
    :catch_72
    move-exception v0

    move-object v3, p0

    :goto_74
    move-object/from16 v4, p4

    .line 2836
    .local v0, "npe":Ljava/lang/NullPointerException;
    :goto_76
    throw v0

    .line 2803
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    .end local v1    # "format":Ljava/lang/String;
    .end local v2    # "result":Z
    .restart local p3    # "format":Ljava/lang/String;
    :cond_77
    move-object v3, p0

    move-object/from16 v4, p4

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public whitelist test-api newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    .registers 15
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "loader"    # Ljava/lang/ClassLoader;
    .param p5, "reload"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2631
    invoke-virtual {p0, p1, p2}, Ljava/util/ResourceBundle$Control;->toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2632
    .local v0, "bundleName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2633
    .local v1, "bundle":Ljava/util/ResourceBundle;
    const-string v2, "java.class"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2636
    nop

    .line 2637
    :try_start_e
    invoke-virtual {p4, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2641
    .local v2, "bundleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/ResourceBundle;>;"
    const-class v3, Ljava/util/ResourceBundle;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2642
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ResourceBundle;

    move-object v1, v3

    goto :goto_3e

    .line 2644
    :cond_22
    new-instance v3, Ljava/lang/ClassCastException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " cannot be cast to ResourceBundle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bundleName":Ljava/lang/String;
    .end local v1    # "bundle":Ljava/util/ResourceBundle;
    .end local p0    # "this":Ljava/util/ResourceBundle$Control;
    .end local p1    # "baseName":Ljava/lang/String;
    .end local p2    # "locale":Ljava/util/Locale;
    .end local p3    # "format":Ljava/lang/String;
    .end local p4    # "loader":Ljava/lang/ClassLoader;
    .end local p5    # "reload":Z
    throw v3
    :try_end_3d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_3d} :catch_3d

    .line 2647
    .end local v2    # "bundleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/ResourceBundle;>;"
    .restart local v0    # "bundleName":Ljava/lang/String;
    .restart local v1    # "bundle":Ljava/util/ResourceBundle;
    .restart local p0    # "this":Ljava/util/ResourceBundle$Control;
    .restart local p1    # "baseName":Ljava/lang/String;
    .restart local p2    # "locale":Ljava/util/Locale;
    .restart local p3    # "format":Ljava/lang/String;
    .restart local p4    # "loader":Ljava/lang/ClassLoader;
    .restart local p5    # "reload":Z
    :catch_3d
    move-exception v2

    .line 2648
    :goto_3e
    goto :goto_79

    .line 2649
    :cond_3f
    const-string v2, "java.properties"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 2650
    const-string v2, "properties"

    invoke-direct {p0, v0, v2}, Ljava/util/ResourceBundle$Control;->toResourceName0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2651
    .local v2, "resourceName":Ljava/lang/String;
    if-nez v2, :cond_50

    .line 2652
    return-object v1

    .line 2654
    :cond_50
    move-object v3, p4

    .line 2655
    .local v3, "classLoader":Ljava/lang/ClassLoader;
    move v4, p5

    .line 2656
    .local v4, "reloadFlag":Z
    const/4 v5, 0x0

    .line 2658
    .local v5, "stream":Ljava/io/InputStream;
    :try_start_53
    new-instance v6, Ljava/util/ResourceBundle$Control$1;

    invoke-direct {v6, p0, v4, v3, v2}, Ljava/util/ResourceBundle$Control$1;-><init>(Ljava/util/ResourceBundle$Control;ZLjava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/InputStream;
    :try_end_5e
    .catch Ljava/security/PrivilegedActionException; {:try_start_53 .. :try_end_5e} :catch_7a

    move-object v5, v6

    .line 2681
    nop

    .line 2682
    if-eqz v5, :cond_78

    .line 2686
    :try_start_62
    new-instance v6, Ljava/util/PropertyResourceBundle;

    new-instance v7, Ljava/io/InputStreamReader;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v7}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/Reader;)V
    :try_end_6e
    .catchall {:try_start_62 .. :try_end_6e} :catchall_73

    move-object v1, v6

    .line 2689
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 2690
    goto :goto_78

    .line 2689
    :catchall_73
    move-exception v6

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 2690
    throw v6

    .line 2692
    .end local v2    # "resourceName":Ljava/lang/String;
    .end local v3    # "classLoader":Ljava/lang/ClassLoader;
    .end local v4    # "reloadFlag":Z
    .end local v5    # "stream":Ljava/io/InputStream;
    :cond_78
    :goto_78
    nop

    .line 2695
    :goto_79
    return-object v1

    .line 2679
    .restart local v2    # "resourceName":Ljava/lang/String;
    .restart local v3    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v4    # "reloadFlag":Z
    .restart local v5    # "stream":Ljava/io/InputStream;
    :catch_7a
    move-exception v6

    .line 2680
    .local v6, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v6}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v7

    check-cast v7, Ljava/io/IOException;

    throw v7

    .line 2693
    .end local v2    # "resourceName":Ljava/lang/String;
    .end local v3    # "classLoader":Ljava/lang/ClassLoader;
    .end local v4    # "reloadFlag":Z
    .end local v5    # "stream":Ljava/io/InputStream;
    .end local v6    # "e":Ljava/security/PrivilegedActionException;
    :cond_82
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 10
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 2886
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    if-ne p2, v0, :cond_5

    .line 2887
    return-object p1

    .line 2890
    :cond_5
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2891
    .local v0, "language":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 2892
    .local v1, "script":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 2893
    .local v2, "country":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 2895
    .local v3, "variant":Ljava/lang/String;
    const-string v4, ""

    if-ne v0, v4, :cond_1e

    if-ne v2, v4, :cond_1e

    if-ne v3, v4, :cond_1e

    .line 2896
    return-object p1

    .line 2899
    :cond_1e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2900
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/16 v6, 0x5f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2901
    if-eq v1, v4, :cond_5e

    .line 2902
    if-eq v3, v4, :cond_42

    .line 2903
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7f

    .line 2904
    :cond_42
    if-eq v2, v4, :cond_54

    .line 2905
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7f

    .line 2907
    :cond_54
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7f

    .line 2910
    :cond_5e
    if-eq v3, v4, :cond_70

    .line 2911
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7f

    .line 2912
    :cond_70
    if-eq v2, v4, :cond_7c

    .line 2913
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7f

    .line 2915
    :cond_7c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2918
    :goto_7f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public final whitelist test-api toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .line 2943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2944
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2945
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
