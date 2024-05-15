.class public final Ljava/security/Security;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Security$ProviderProperty;
    }
.end annotation


# static fields
.field private static final props:Ljava/util/Properties;

.field private static final spiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final version:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    .line 52
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v6, Ljava/security/Security;->version:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    sput-object v6, Ljava/security/Security;->props:Ljava/util/Properties;

    .line 89
    const/4 v4, 0x0

    .line 91
    .local v4, "loadedProps":Z
    const/4 v2, 0x0

    .line 96
    .local v2, "is":Ljava/io/InputStream;
    :try_start_10
    const-class v6, Ljava/security/Security;

    const-string/jumbo v7, "security.properties"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 97
    .local v5, "propStream":Ljava/io/InputStream;
    if-nez v5, :cond_33

    .line 98
    const-string/jumbo v6, "Could not find \'security.properties\'."

    invoke-static {v6}, Ljava/lang/System;->logE(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_21} :catch_42
    .catchall {:try_start_10 .. :try_end_21} :catchall_51

    .line 107
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_21
    if-eqz v2, :cond_26

    .line 109
    :try_start_23
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_40

    .line 115
    .end local v5    # "propStream":Ljava/io/InputStream;
    :cond_26
    :goto_26
    if-nez v4, :cond_2b

    .line 116
    invoke-static {}, Ljava/security/Security;->initializeStatic()V

    .line 595
    :cond_2b
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 594
    sput-object v6, Ljava/security/Security;->spiMap:Ljava/util/Map;

    .line 49
    return-void

    .line 100
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v5    # "propStream":Ljava/io/InputStream;
    :cond_33
    :try_start_33
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_42
    .catchall {:try_start_33 .. :try_end_38} :catchall_51

    .line 101
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :try_start_38
    sget-object v6, Ljava/security/Security;->props:Ljava/util/Properties;

    invoke-virtual {v6, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3d} :catch_5d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_5a

    .line 102
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    goto :goto_21

    .line 110
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_40
    move-exception v1

    .local v1, "ignored":Ljava/io/IOException;
    goto :goto_26

    .line 104
    .end local v1    # "ignored":Ljava/io/IOException;
    .end local v5    # "propStream":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :catch_42
    move-exception v0

    .line 105
    .end local v2    # "is":Ljava/io/InputStream;
    .local v0, "ex":Ljava/io/IOException;
    :goto_43
    :try_start_43
    const-string/jumbo v6, "Could not load \'security.properties\'"

    invoke-static {v6, v0}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_51

    .line 107
    if-eqz v2, :cond_26

    .line 109
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_26

    .line 110
    :catch_4f
    move-exception v1

    .restart local v1    # "ignored":Ljava/io/IOException;
    goto :goto_26

    .line 106
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "ignored":Ljava/io/IOException;
    :catchall_51
    move-exception v6

    .line 107
    :goto_52
    if-eqz v2, :cond_57

    .line 109
    :try_start_54
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    .line 106
    :cond_57
    :goto_57
    throw v6

    .line 110
    :catch_58
    move-exception v1

    .restart local v1    # "ignored":Ljava/io/IOException;
    goto :goto_57

    .line 106
    .end local v1    # "ignored":Ljava/io/IOException;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v5    # "propStream":Ljava/io/InputStream;
    :catchall_5a
    move-exception v6

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    goto :goto_52

    .line 104
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_5d
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_43
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    return-void
.end method

.method public static addProvider(Ljava/security/Provider;)I
    .registers 2
    .param p0, "provider"    # Ljava/security/Provider;

    .prologue
    .line 333
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    move-result v0

    return v0
.end method

.method public static getAlgorithmProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "algName"    # Ljava/lang/String;
    .param p1, "propName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Alg."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 235
    const-string/jumbo v2, "."

    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Security;->getProviderProperty(Ljava/lang/String;)Ljava/security/Security$ProviderProperty;

    move-result-object v0

    .line 236
    .local v0, "entry":Ljava/security/Security$ProviderProperty;
    if-eqz v0, :cond_29

    .line 237
    iget-object v1, v0, Ljava/security/Security$ProviderProperty;->className:Ljava/lang/String;

    return-object v1

    .line 239
    :cond_29
    return-object v3
.end method

.method public static getAlgorithms(Ljava/lang/String;)Ljava/util/Set;
    .registers 8
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1035
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_d

    .line 1037
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    return-object v5

    .line 1036
    :cond_d
    const-string/jumbo v5, "."

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 1035
    if-nez v5, :cond_8

    .line 1040
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1041
    .local v4, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v3

    .line 1043
    .local v3, "providers":[Ljava/security/Provider;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    array-length v5, v3

    if-ge v2, v5, :cond_61

    .line 1045
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 1046
    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    .line 1045
    if-eqz v5, :cond_5e

    .line 1048
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1050
    .local v0, "currentKey":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 1049
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1057
    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_29

    .line 1059
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 1058
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 1043
    .end local v0    # "currentKey":Ljava/lang/String;
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 1064
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_61
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    return-object v5
.end method

.method private static getAllQualifyingCandidates(Ljava/lang/String;Ljava/lang/String;[Ljava/security/Provider;)Ljava/util/LinkedHashSet;
    .registers 8
    .param p0, "filterKey"    # Ljava/lang/String;
    .param p1, "filterValue"    # Ljava/lang/String;
    .param p2, "allProviders"    # [Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/Provider;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 823
    invoke-static {p0, p1}, Ljava/security/Security;->getFilterComponents(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 829
    .local v2, "filterComponents":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v3, v2, v4

    .line 830
    .local v3, "serviceName":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v0, v2, v4

    .line 831
    .local v0, "algName":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v1, v2, v4

    .line 833
    .local v1, "attrName":Ljava/lang/String;
    invoke-static {v3, v0, v1, p1, p2}, Ljava/security/Security;->getProvidersNotUsingCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/security/Provider;)Ljava/util/LinkedHashSet;

    move-result-object v4

    return-object v4
.end method

.method static getFilterComponents(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .param p0, "filterKey"    # Ljava/lang/String;
    .param p1, "filterValue"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 958
    const/16 v6, 0x2e

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 960
    .local v0, "algIndex":I
    if-gez v0, :cond_12

    .line 963
    new-instance v6, Ljava/security/InvalidParameterException;

    const-string/jumbo v7, "Invalid filter"

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 966
    :cond_12
    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 967
    .local v5, "serviceName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 968
    .local v1, "algName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 970
    .local v3, "attrName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_37

    .line 973
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 974
    .local v1, "algName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_77

    .line 976
    new-instance v6, Ljava/security/InvalidParameterException;

    const-string/jumbo v7, "Invalid filter"

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 982
    .local v1, "algName":Ljava/lang/String;
    :cond_37
    const/16 v6, 0x20

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 984
    .local v2, "attrIndex":I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_49

    .line 986
    new-instance v6, Ljava/security/InvalidParameterException;

    const-string/jumbo v7, "Invalid filter"

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 988
    :cond_49
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 989
    .local v3, "attrName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_62

    .line 991
    new-instance v6, Ljava/security/InvalidParameterException;

    const-string/jumbo v7, "Invalid filter"

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 996
    :cond_62
    if-lt v2, v0, :cond_68

    .line 997
    add-int/lit8 v6, v2, -0x1

    if-ne v0, v6, :cond_71

    .line 998
    :cond_68
    new-instance v6, Ljava/security/InvalidParameterException;

    const-string/jumbo v7, "Invalid filter"

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1000
    :cond_71
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1004
    .end local v2    # "attrIndex":I
    .end local v3    # "attrName":Ljava/lang/String;
    .local v1, "algName":Ljava/lang/String;
    :cond_77
    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/String;

    .line 1005
    .local v4, "result":[Ljava/lang/String;
    aput-object v5, v4, v7

    .line 1006
    const/4 v6, 0x1

    aput-object v1, v4, v6

    .line 1007
    const/4 v6, 0x2

    aput-object v3, v4, v6

    .line 1009
    return-object v4
.end method

.method static getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .registers 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 626
    if-nez p2, :cond_f

    .line 628
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 627
    invoke-static {p1, v0, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 631
    :cond_f
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 630
    invoke-static {p1, v0, p0, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 638
    if-nez p2, :cond_f

    .line 640
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 639
    invoke-static {p1, v0, p0, p3}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 643
    :cond_f
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 642
    invoke-static {p1, v0, p0, p3, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;
    .registers 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 656
    invoke-static {p1, v0, p0, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "params"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-static {p1}, Ljava/security/Security;->getSpiClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 663
    invoke-static {p1, v0, p0, p3, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/GetInstance$Instance;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 691
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 692
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_22

    .line 693
    new-instance v2, Ljava/security/SecurityPermission;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProperty."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 696
    :cond_22
    sget-object v2, Ljava/security/Security;->props:Ljava/util/Properties;

    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2e

    .line 698
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 699
    :cond_2e
    return-object v0
.end method

.method public static getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 401
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method private static getProviderProperty(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/String;
    .registers 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;

    .prologue
    .line 191
    invoke-virtual {p1, p0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "prop":Ljava/lang/String;
    if-nez v2, :cond_22

    .line 195
    invoke-virtual {p1}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 196
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_22

    if-nez v2, :cond_22

    .line 197
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    .local v1, "matchKey":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 199
    invoke-virtual {p1, v1}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    .end local v1    # "matchKey":Ljava/lang/String;
    :cond_22
    return-object v2
.end method

.method private static getProviderProperty(Ljava/lang/String;)Ljava/security/Security$ProviderProperty;
    .registers 11
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 154
    const/4 v1, 0x0

    .line 156
    .local v1, "entry":Ljava/security/Security$ProviderProperty;
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v8

    invoke-virtual {v8}, Lsun/security/jca/ProviderList;->providers()Ljava/util/List;

    move-result-object v7

    .line 157
    .local v7, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_49

    .line 159
    const/4 v3, 0x0

    .line 160
    .local v3, "matchKey":Ljava/lang/String;
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider;

    .line 161
    .local v6, "prov":Ljava/security/Provider;
    invoke-virtual {v6, p0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, "prop":Ljava/lang/String;
    if-nez v5, :cond_3a

    .line 166
    invoke-virtual {v6}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 167
    .end local v3    # "matchKey":Ljava/lang/String;
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_22
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_3a

    if-nez v5, :cond_3a

    .line 168
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 169
    .local v3, "matchKey":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 170
    invoke-virtual {v6, v3}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 176
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    .end local v3    # "matchKey":Ljava/lang/String;
    :cond_3a
    if-eqz v5, :cond_46

    .line 177
    new-instance v4, Ljava/security/Security$ProviderProperty;

    invoke-direct {v4, v9}, Ljava/security/Security$ProviderProperty;-><init>(Ljava/security/Security$ProviderProperty;)V

    .line 178
    .local v4, "newEntry":Ljava/security/Security$ProviderProperty;
    iput-object v5, v4, Ljava/security/Security$ProviderProperty;->className:Ljava/lang/String;

    .line 179
    iput-object v6, v4, Ljava/security/Security$ProviderProperty;->provider:Ljava/security/Provider;

    .line 180
    return-object v4

    .line 157
    .end local v4    # "newEntry":Ljava/security/Security$ProviderProperty;
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 184
    .end local v5    # "prop":Ljava/lang/String;
    .end local v6    # "prov":Ljava/security/Provider;
    :cond_49
    return-object v1
.end method

.method public static getProviders()[Ljava/security/Provider;
    .registers 1

    .prologue
    .line 385
    invoke-static {}, Lsun/security/jca/Providers;->getFullProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/jca/ProviderList;->toArray()[Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method public static getProviders(Ljava/lang/String;)[Ljava/security/Provider;
    .registers 6
    .param p0, "filter"    # Ljava/lang/String;

    .prologue
    .line 465
    const/4 v2, 0x0

    .line 466
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 467
    .local v3, "value":Ljava/lang/String;
    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 469
    .local v1, "index":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1d

    .line 470
    move-object v2, p0

    .line 471
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 477
    .local v3, "value":Ljava/lang/String;
    :goto_f
    new-instance v0, Ljava/util/Hashtable;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/Hashtable;-><init>(I)V

    .line 478
    .local v0, "hashtableFilter":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-static {v0}, Ljava/security/Security;->getProviders(Ljava/util/Map;)[Ljava/security/Provider;

    move-result-object v4

    return-object v4

    .line 473
    .end local v0    # "hashtableFilter":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .local v2, "key":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    :cond_1d
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "value":Ljava/lang/String;
    goto :goto_f
.end method

.method public static getProviders(Ljava/util/Map;)[Ljava/security/Provider;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/security/Provider;"
        }
    .end annotation

    .prologue
    .local p0, "filter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 538
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    .line 539
    .local v0, "allProviders":[Ljava/security/Provider;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 540
    .local v8, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/LinkedHashSet;

    const/4 v13, 0x5

    invoke-direct {v1, v13}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 544
    .local v1, "candidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    if-eqz v8, :cond_13

    if-nez v0, :cond_14

    .line 545
    :cond_13
    return-object v0

    .line 548
    :cond_14
    const/4 v4, 0x1

    .line 552
    .local v4, "firstSearch":Z
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "ite":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_58

    .line 553
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 554
    .local v7, "key":Ljava/lang/String;
    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 556
    .local v12, "value":Ljava/lang/String;
    invoke-static {v7, v12, v0}, Ljava/security/Security;->getAllQualifyingCandidates(Ljava/lang/String;Ljava/lang/String;[Ljava/security/Provider;)Ljava/util/LinkedHashSet;

    move-result-object v9

    .line 558
    .local v9, "newCandidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    if-eqz v4, :cond_33

    .line 559
    move-object v1, v9

    .line 560
    const/4 v4, 0x0

    .line 563
    :cond_33
    if-eqz v9, :cond_57

    invoke-virtual {v9}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_57

    .line 567
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 568
    .local v3, "cansIte":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider;>;"
    :cond_41
    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    .line 567
    if-eqz v13, :cond_19

    .line 569
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/Provider;

    .line 570
    .local v10, "prov":Ljava/security/Provider;
    invoke-virtual {v9, v10}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_41

    .line 571
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_41

    .line 575
    .end local v3    # "cansIte":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider;>;"
    .end local v10    # "prov":Ljava/security/Provider;
    :cond_57
    const/4 v1, 0x0

    .line 580
    .end local v1    # "candidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "newCandidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    .end local v12    # "value":Ljava/lang/String;
    :cond_58
    if-eqz v1, :cond_60

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_61

    .line 581
    :cond_60
    return-object v14

    .line 583
    :cond_61
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 584
    .local v2, "candidatesArray":[Ljava/lang/Object;
    array-length v13, v2

    new-array v11, v13, [Ljava/security/Provider;

    .line 586
    .local v11, "result":[Ljava/security/Provider;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_69
    array-length v13, v11

    if-ge v5, v13, :cond_75

    .line 587
    aget-object v13, v2, v5

    check-cast v13, Ljava/security/Provider;

    aput-object v13, v11, v5

    .line 586
    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    .line 590
    :cond_75
    return-object v11
.end method

.method private static getProvidersNotUsingCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/security/Provider;)Ljava/util/LinkedHashSet;
    .registers 8
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "algName"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "filterValue"    # Ljava/lang/String;
    .param p4, "allProviders"    # [Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/Provider;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 843
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 844
    .local v0, "candidates":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/security/Provider;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p4

    if-ge v1, v2, :cond_1a

    .line 845
    aget-object v2, p4, v1

    invoke-static {v2, p0, p1, p2, p3}, Ljava/security/Security;->isCriterionSatisfied(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 848
    aget-object v2, p4, v1

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 844
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 851
    :cond_1a
    return-object v0
.end method

.method private static getSpiClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 5
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 603
    sget-object v2, Ljava/security/Security;->spiMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 604
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_b

    .line 605
    return-object v0

    .line 608
    :cond_b
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "java.security."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Spi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 609
    sget-object v2, Ljava/security/Security;->spiMap:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_2f} :catch_30

    .line 610
    return-object v0

    .line 611
    :catch_30
    move-exception v1

    .line 612
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Spi class not found"

    invoke-direct {v2, v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getVersion()I
    .registers 1

    .prologue
    .line 1078
    sget-object v0, Ljava/security/Security;->version:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static increaseVersion()V
    .registers 1

    .prologue
    .line 1072
    sget-object v0, Ljava/security/Security;->version:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1073
    return-void
.end method

.method private static initializeStatic()V
    .registers 3

    .prologue
    .line 134
    sget-object v0, Ljava/security/Security;->props:Ljava/util/Properties;

    const-string/jumbo v1, "security.provider.1"

    const-string/jumbo v2, "com.android.org.conscrypt.OpenSSLProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Ljava/security/Security;->props:Ljava/util/Properties;

    const-string/jumbo v1, "security.provider.2"

    const-string/jumbo v2, "sun.security.provider.CertPathProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Ljava/security/Security;->props:Ljava/util/Properties;

    const-string/jumbo v1, "security.provider.3"

    const-string/jumbo v2, "com.android.org.bouncycastle.jce.provider.BouncyCastleProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Ljava/security/Security;->props:Ljava/util/Properties;

    const-string/jumbo v1, "security.provider.4"

    const-string/jumbo v2, "com.android.org.conscrypt.JSSEProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public static declared-synchronized insertProviderAt(Ljava/security/Provider;I)I
    .registers 7
    .param p0, "provider"    # Ljava/security/Provider;
    .param p1, "position"    # I

    .prologue
    const-class v4, Ljava/security/Security;

    monitor-enter v4

    .line 285
    :try_start_3
    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "providerName":Ljava/lang/String;
    invoke-static {}, Lsun/security/jca/Providers;->getFullProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 289
    .local v0, "list":Lsun/security/jca/ProviderList;
    add-int/lit8 v3, p1, -0x1

    invoke-static {v0, p0, v3}, Lsun/security/jca/ProviderList;->insertAt(Lsun/security/jca/ProviderList;Ljava/security/Provider;I)Lsun/security/jca/ProviderList;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_24

    move-result-object v1

    .line 290
    .local v1, "newList":Lsun/security/jca/ProviderList;
    if-ne v0, v1, :cond_16

    .line 291
    const/4 v3, -0x1

    monitor-exit v4

    return v3

    .line 294
    :cond_16
    :try_start_16
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 295
    invoke-static {v1}, Lsun/security/jca/Providers;->setProviderList(Lsun/security/jca/ProviderList;)V

    .line 296
    invoke-virtual {v1, v2}, Lsun/security/jca/ProviderList;->getIndex(Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_24

    move-result v3

    add-int/lit8 v3, v3, 0x1

    monitor-exit v4

    return v3

    .end local v0    # "list":Lsun/security/jca/ProviderList;
    .end local v1    # "newList":Lsun/security/jca/ProviderList;
    .end local v2    # "providerName":Ljava/lang/String;
    :catchall_24
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static invalidateSMCache(Ljava/lang/String;)V
    .registers 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 745
    const-string/jumbo v2, "package.access"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 746
    .local v0, "pa":Z
    const-string/jumbo v2, "package.definition"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 748
    .local v1, "pd":Z
    if-nez v0, :cond_12

    if-eqz v1, :cond_1a

    .line 749
    :cond_12
    new-instance v2, Ljava/security/Security$1;

    invoke-direct {v2, v0}, Ljava/security/Security$1;-><init>(Z)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 785
    :cond_1a
    return-void
.end method

.method private static isConstraintSatisfied(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "attribute"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "prop"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 938
    const-string/jumbo v2, "KeySize"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 939
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 940
    .local v1, "requestedSize":I
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 941
    .local v0, "maxSize":I
    if-gt v1, v0, :cond_16

    .line 942
    const/4 v2, 0x1

    return v2

    .line 944
    :cond_16
    return v3

    .line 950
    .end local v0    # "maxSize":I
    .end local v1    # "requestedSize":I
    :cond_17
    const-string/jumbo v2, "ImplementedIn"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 951
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 954
    :cond_25
    return v3
.end method

.method private static isCriterionSatisfied(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p0, "prov"    # Ljava/security/Provider;
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "algName"    # Ljava/lang/String;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "filterValue"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x20

    .line 863
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, "key":Ljava/lang/String;
    if-eqz p3, :cond_30

    .line 866
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 870
    :cond_30
    invoke-static {v0, p0}, Ljava/security/Security;->getProviderProperty(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, "propValue":Ljava/lang/String;
    if-nez v1, :cond_92

    .line 875
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Alg.Alias."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 876
    const-string/jumbo v4, "."

    .line 875
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Ljava/security/Security;->getProviderProperty(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/String;

    move-result-object v2

    .line 879
    .local v2, "standardName":Ljava/lang/String;
    if-eqz v2, :cond_8e

    .line 880
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 882
    if-eqz p3, :cond_8a

    .line 883
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 886
    :cond_8a
    invoke-static {v0, p0}, Ljava/security/Security;->getProviderProperty(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/String;

    move-result-object v1

    .line 889
    :cond_8e
    if-nez v1, :cond_92

    .line 892
    const/4 v3, 0x0

    return v3

    .line 900
    .end local v2    # "standardName":Ljava/lang/String;
    :cond_92
    if-nez p3, :cond_96

    .line 901
    const/4 v3, 0x1

    return v3

    .line 906
    :cond_96
    invoke-static {p3}, Ljava/security/Security;->isStandardAttr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 907
    invoke-static {p3, p4, v1}, Ljava/security/Security;->isConstraintSatisfied(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 909
    :cond_a1
    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method private static isStandardAttr(Ljava/lang/String;)Z
    .registers 3
    .param p0, "attribute"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 920
    const-string/jumbo v0, "KeySize"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 921
    return v1

    .line 923
    :cond_b
    const-string/jumbo v0, "ImplementedIn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 924
    return v1

    .line 926
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized removeProvider(Ljava/lang/String;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v3, Ljava/security/Security;

    monitor-enter v3

    .line 371
    :try_start_3
    invoke-static {}, Lsun/security/jca/Providers;->getFullProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 372
    .local v0, "list":Lsun/security/jca/ProviderList;
    invoke-static {v0, p0}, Lsun/security/jca/ProviderList;->remove(Lsun/security/jca/ProviderList;Ljava/lang/String;)Lsun/security/jca/ProviderList;

    move-result-object v1

    .line 373
    .local v1, "newList":Lsun/security/jca/ProviderList;
    invoke-static {v1}, Lsun/security/jca/Providers;->setProviderList(Lsun/security/jca/ProviderList;)V

    .line 375
    invoke-static {}, Ljava/security/Security;->increaseVersion()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v3

    .line 376
    return-void

    .end local v0    # "list":Lsun/security/jca/ProviderList;
    .end local v1    # "newList":Lsun/security/jca/ProviderList;
    :catchall_13
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "datum"    # Ljava/lang/String;

    .prologue
    .line 727
    sget-object v0, Ljava/security/Security;->props:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 730
    invoke-static {p0}, Ljava/security/Security;->invalidateSMCache(Ljava/lang/String;)V

    .line 731
    return-void
.end method
