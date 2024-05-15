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
.field private static final CANDIDATES_CACHE:Ljava/util/ResourceBundle$Control$CandidateListCache;

.field public static final FORMAT_CLASS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_DEFAULT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_PROPERTIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTANCE:Ljava/util/ResourceBundle$Control;

.field public static final TTL_DONT_CACHE:J = -0x1L

.field public static final TTL_NO_EXPIRATION_CONTROL:J = -0x2L


# direct methods
.method static synthetic -get0()Ljava/util/ResourceBundle$Control;
    .registers 1

    sget-object v0, Ljava/util/ResourceBundle$Control;->INSTANCE:Ljava/util/ResourceBundle$Control;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2021
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "java.class"

    aput-object v1, v0, v2

    .line 2022
    const-string/jumbo v1, "java.properties"

    aput-object v1, v0, v3

    .line 2021
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2020
    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    .line 2032
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "java.class"

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2031
    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS:Ljava/util/List;

    .line 2042
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "java.properties"

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2041
    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES:Ljava/util/List;

    .line 2060
    new-instance v0, Ljava/util/ResourceBundle$Control;

    invoke-direct {v0}, Ljava/util/ResourceBundle$Control;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle$Control;->INSTANCE:Ljava/util/ResourceBundle$Control;

    .line 2366
    new-instance v0, Ljava/util/ResourceBundle$Control$CandidateListCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$Control$CandidateListCache;-><init>(Ljava/util/ResourceBundle$Control$CandidateListCache;)V

    sput-object v0, Ljava/util/ResourceBundle$Control;->CANDIDATES_CACHE:Ljava/util/ResourceBundle$Control$CandidateListCache;

    .line 2011
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 2066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2067
    return-void
.end method

.method public static final getControl(Ljava/util/List;)Ljava/util/ResourceBundle$Control;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ResourceBundle$Control;"
        }
    .end annotation

    .prologue
    .line 2093
    .local p0, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2094
    invoke-static {}, Ljava/util/ResourceBundle$SingleFormatControl;->-get1()Ljava/util/ResourceBundle$Control;

    move-result-object v0

    return-object v0

    .line 2096
    :cond_d
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2097
    invoke-static {}, Ljava/util/ResourceBundle$SingleFormatControl;->-get0()Ljava/util/ResourceBundle$Control;

    move-result-object v0

    return-object v0

    .line 2099
    :cond_1a
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2100
    sget-object v0, Ljava/util/ResourceBundle$Control;->INSTANCE:Ljava/util/ResourceBundle$Control;

    return-object v0

    .line 2102
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static final getNoFallbackControl(Ljava/util/List;)Ljava/util/ResourceBundle$Control;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ResourceBundle$Control;"
        }
    .end annotation

    .prologue
    .line 2128
    .local p0, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2129
    invoke-static {}, Ljava/util/ResourceBundle$NoFallbackControl;->-get1()Ljava/util/ResourceBundle$Control;

    move-result-object v0

    return-object v0

    .line 2131
    :cond_d
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2132
    invoke-static {}, Ljava/util/ResourceBundle$NoFallbackControl;->-get2()Ljava/util/ResourceBundle$Control;

    move-result-object v0

    return-object v0

    .line 2134
    :cond_1a
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2135
    invoke-static {}, Ljava/util/ResourceBundle$NoFallbackControl;->-get0()Ljava/util/ResourceBundle$Control;

    move-result-object v0

    return-object v0

    .line 2137
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private toResourceName0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    .line 2949
    const-string/jumbo v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2950
    const/4 v0, 0x0

    return-object v0

    .line 2952
    :cond_b
    invoke-virtual {p0, p1, p2}, Ljava/util/ResourceBundle$Control;->toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;
    .registers 6
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2360
    if-nez p1, :cond_8

    .line 2361
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2363
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    sget-object v0, Ljava/util/ResourceBundle$Control;->CANDIDATES_CACHE:Ljava/util/ResourceBundle$Control$CandidateListCache;

    invoke-virtual {p2}, Ljava/util/Locale;->getBaseLocale()Lsun/util/locale/BaseLocale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ResourceBundle$Control$CandidateListCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;
    .registers 6
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v1, 0x0

    .line 2524
    if-nez p1, :cond_9

    .line 2525
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2527
    :cond_9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 2528
    .local v0, "defaultLocale":Ljava/util/Locale;
    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object v0, v1

    .end local v0    # "defaultLocale":Ljava/util/Locale;
    :cond_14
    return-object v0
.end method

.method public getFormats(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "baseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2175
    if-nez p1, :cond_8

    .line 2176
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2178
    :cond_8
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    return-object v0
.end method

.method public getTimeToLive(Ljava/lang/String;Ljava/util/Locale;)J
    .registers 5
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 2744
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 2745
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2747
    :cond_a
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public needsReload(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle;J)Z
    .registers 22
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "loader"    # Ljava/lang/ClassLoader;
    .param p5, "bundle"    # Ljava/util/ResourceBundle;
    .param p6, "loadTime"    # J

    .prologue
    .line 2801
    if-nez p5, :cond_8

    .line 2802
    new-instance v11, Ljava/lang/NullPointerException;

    invoke-direct {v11}, Ljava/lang/NullPointerException;-><init>()V

    throw v11

    .line 2804
    :cond_8
    const-string/jumbo v11, "java.class"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1e

    const-string/jumbo v11, "java.properties"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_25

    .line 2805
    :cond_1e
    const/4 v11, 0x5

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 2807
    :cond_25
    const/4 v9, 0x0

    .line 2809
    .local v9, "result":Z
    :try_start_26
    invoke-virtual/range {p0 .. p2}, Ljava/util/ResourceBundle$Control;->toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v0}, Ljava/util/ResourceBundle$Control;->toResourceName0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2810
    .local v8, "resourceName":Ljava/lang/String;
    if-nez v8, :cond_33

    .line 2811
    return v9

    .line 2813
    :cond_33
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v10

    .line 2814
    .local v10, "url":Ljava/net/URL;
    if-eqz v10, :cond_64

    .line 2815
    const-wide/16 v6, 0x0

    .line 2816
    .local v6, "lastModified":J
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 2817
    .local v2, "connection":Ljava/net/URLConnection;
    if-eqz v2, :cond_5f

    .line 2819
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 2820
    instance-of v11, v2, Ljava/net/JarURLConnection;

    if-eqz v11, :cond_65

    .line 2821
    check-cast v2, Ljava/net/JarURLConnection;

    .end local v2    # "connection":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/JarURLConnection;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v4

    .line 2822
    .local v4, "ent":Ljava/util/jar/JarEntry;
    if-eqz v4, :cond_5f

    .line 2823
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getTime()J

    move-result-wide v6

    .line 2824
    const-wide/16 v12, -0x1

    cmp-long v11, v6, v12

    if-nez v11, :cond_5f

    .line 2825
    const-wide/16 v6, 0x0

    .line 2832
    .end local v4    # "ent":Ljava/util/jar/JarEntry;
    :cond_5f
    :goto_5f
    cmp-long v11, v6, p6

    if-ltz v11, :cond_6a

    const/4 v9, 0x1

    .line 2839
    .end local v6    # "lastModified":J
    .end local v8    # "resourceName":Ljava/lang/String;
    .end local v10    # "url":Ljava/net/URL;
    :cond_64
    :goto_64
    return v9

    .line 2829
    .restart local v2    # "connection":Ljava/net/URLConnection;
    .restart local v6    # "lastModified":J
    .restart local v8    # "resourceName":Ljava/lang/String;
    .restart local v10    # "url":Ljava/net/URL;
    :cond_65
    invoke-virtual {v2}, Ljava/net/URLConnection;->getLastModified()J
    :try_end_68
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_68} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_68} :catch_6e

    move-result-wide v6

    goto :goto_5f

    .line 2832
    .end local v2    # "connection":Ljava/net/URLConnection;
    :cond_6a
    const/4 v9, 0x0

    goto :goto_64

    .line 2834
    .end local v6    # "lastModified":J
    .end local v8    # "resourceName":Ljava/lang/String;
    .end local v10    # "url":Ljava/net/URL;
    :catch_6c
    move-exception v5

    .line 2835
    .local v5, "npe":Ljava/lang/NullPointerException;
    throw v5

    .line 2836
    .end local v5    # "npe":Ljava/lang/NullPointerException;
    :catch_6e
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    goto :goto_64
.end method

.method public newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    .registers 20
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

    .prologue
    .line 2630
    invoke-virtual/range {p0 .. p2}, Ljava/util/ResourceBundle$Control;->toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 2631
    .local v4, "bundleName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2632
    .local v2, "bundle":Ljava/util/ResourceBundle;
    const-string/jumbo v11, "java.class"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 2636
    :try_start_10
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2640
    .local v3, "bundleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/ResourceBundle;>;"
    const-class v11, Ljava/util/ResourceBundle;

    invoke-virtual {v11, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_27

    .line 2641
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/util/ResourceBundle;

    move-object v2, v0

    .line 2694
    .end local v2    # "bundle":Ljava/util/ResourceBundle;
    .end local v3    # "bundleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/ResourceBundle;>;"
    :cond_26
    :goto_26
    return-object v2

    .line 2643
    .restart local v2    # "bundle":Ljava/util/ResourceBundle;
    .restart local v3    # "bundleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/ResourceBundle;>;"
    :cond_27
    new-instance v11, Ljava/lang/ClassCastException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2644
    const-string/jumbo v13, " cannot be cast to ResourceBundle"

    .line 2643
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_45
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_45} :catch_45

    .line 2646
    .end local v3    # "bundleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/ResourceBundle;>;"
    :catch_45
    move-exception v6

    .local v6, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_26

    .line 2648
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    :cond_47
    const-string/jumbo v11, "java.properties"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8f

    .line 2649
    const-string/jumbo v11, "properties"

    invoke-direct {p0, v4, v11}, Ljava/util/ResourceBundle$Control;->toResourceName0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2650
    .local v9, "resourceName":Ljava/lang/String;
    if-nez v9, :cond_5c

    .line 2651
    return-object v2

    .line 2653
    :cond_5c
    move-object/from16 v5, p4

    .line 2654
    .local v5, "classLoader":Ljava/lang/ClassLoader;
    move/from16 v8, p5

    .line 2655
    .local v8, "reloadFlag":Z
    const/4 v10, 0x0

    .line 2658
    .local v10, "stream":Ljava/io/InputStream;
    :try_start_61
    new-instance v11, Ljava/util/ResourceBundle$Control$1;

    move/from16 v0, p5

    move-object/from16 v1, p4

    invoke-direct {v11, p0, v0, v1, v9}, Ljava/util/ResourceBundle$Control$1;-><init>(Ljava/util/ResourceBundle$Control;ZLjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 2657
    invoke-static {v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "stream":Ljava/io/InputStream;
    check-cast v10, Ljava/io/InputStream;
    :try_end_70
    .catch Ljava/security/PrivilegedActionException; {:try_start_61 .. :try_end_70} :catch_82

    .line 2681
    .local v10, "stream":Ljava/io/InputStream;
    if-eqz v10, :cond_26

    .line 2684
    :try_start_72
    new-instance v2, Ljava/util/PropertyResourceBundle;

    .line 2685
    .end local v2    # "bundle":Ljava/util/ResourceBundle;
    new-instance v11, Ljava/io/InputStreamReader;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v10, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 2684
    invoke-direct {v2, v11}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/Reader;)V
    :try_end_7e
    .catchall {:try_start_72 .. :try_end_7e} :catchall_8a

    .line 2688
    .local v2, "bundle":Ljava/util/ResourceBundle;
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    goto :goto_26

    .line 2678
    .end local v10    # "stream":Ljava/io/InputStream;
    .local v2, "bundle":Ljava/util/ResourceBundle;
    :catch_82
    move-exception v7

    .line 2679
    .local v7, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v7}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v11

    check-cast v11, Ljava/io/IOException;

    throw v11

    .line 2687
    .end local v2    # "bundle":Ljava/util/ResourceBundle;
    .end local v7    # "e":Ljava/security/PrivilegedActionException;
    .restart local v10    # "stream":Ljava/io/InputStream;
    :catchall_8a
    move-exception v11

    .line 2688
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 2687
    throw v11

    .line 2692
    .end local v5    # "classLoader":Ljava/lang/ClassLoader;
    .end local v8    # "reloadFlag":Z
    .end local v9    # "resourceName":Ljava/lang/String;
    .end local v10    # "stream":Ljava/io/InputStream;
    .restart local v2    # "bundle":Ljava/util/ResourceBundle;
    :cond_8f
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unknown format: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 10
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    const/16 v6, 0x5f

    .line 2885
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    if-ne p2, v5, :cond_7

    .line 2886
    return-object p1

    .line 2889
    :cond_7
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 2890
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 2891
    .local v3, "script":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 2892
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .line 2894
    .local v4, "variant":Ljava/lang/String;
    const-string/jumbo v5, ""

    if-ne v1, v5, :cond_27

    const-string/jumbo v5, ""

    if-ne v0, v5, :cond_27

    const-string/jumbo v5, ""

    if-ne v4, v5, :cond_27

    .line 2895
    return-object p1

    .line 2898
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2899
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2900
    const-string/jumbo v5, ""

    if-eq v3, v5, :cond_7e

    .line 2901
    const-string/jumbo v5, ""

    if-eq v4, v5, :cond_59

    .line 2902
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2917
    :goto_54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2903
    :cond_59
    const-string/jumbo v5, ""

    if-eq v0, v5, :cond_72

    .line 2904
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 2906
    :cond_72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 2909
    :cond_7e
    const-string/jumbo v5, ""

    if-eq v4, v5, :cond_97

    .line 2910
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 2911
    :cond_97
    const-string/jumbo v5, ""

    if-eq v0, v5, :cond_a8

    .line 2912
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 2914
    :cond_a8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54
.end method

.method public final toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2e

    .line 2942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2943
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x2f

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2944
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
