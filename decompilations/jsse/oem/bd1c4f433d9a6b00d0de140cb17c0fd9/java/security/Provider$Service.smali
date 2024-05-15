.class public Ljava/security/Provider$Service;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Service"
.end annotation


# static fields
.field private static final CLASS0:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private algorithm:Ljava/lang/String;

.field private aliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/security/Provider$UString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private className:Ljava/lang/String;

.field private volatile classRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private volatile hasKeyAttributes:Ljava/lang/Boolean;

.field private final provider:Ljava/security/Provider;

.field private registered:Z

.field private supportedClasses:[Ljava/lang/Class;

.field private supportedFormats:[Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Ljava/security/Provider$Service;)Ljava/util/Map;
    .registers 2
    .param p0, "-this"    # Ljava/security/Provider$Service;

    .prologue
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -set0(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Ljava/security/Provider$Service;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Ljava/security/Provider$Service;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Ljava/security/Provider$Service;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Ljava/security/Provider$Service;)Z
    .registers 2
    .param p0, "-this"    # Ljava/security/Provider$Service;

    .prologue
    invoke-direct {p0}, Ljava/security/Provider$Service;->isValid()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/security/Provider$Service;)Ljava/util/List;
    .registers 2
    .param p0, "-this"    # Ljava/security/Provider$Service;

    .prologue
    invoke-direct {p0}, Ljava/security/Provider$Service;->getAliases()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/security/Provider$Service;Ljava/lang/String;)V
    .registers 2
    .param p0, "-this"    # Ljava/security/Provider$Service;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Ljava/security/Provider$Service;->addAlias(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1452
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Ljava/security/Provider$Service;->CLASS0:[Ljava/lang/Class;

    .line 1427
    return-void
.end method

.method private constructor <init>(Ljava/security/Provider;)V
    .registers 3
    .param p1, "provider"    # Ljava/security/Provider;

    .prologue
    .line 1457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1458
    iput-object p1, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 1459
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    .line 1460
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 1461
    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .registers 12
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Provider;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1495
    .local p5, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1498
    if-eqz p1, :cond_7

    if-nez p2, :cond_d

    .line 1500
    :cond_7
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1499
    :cond_d
    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    .line 1502
    iput-object p1, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 1503
    invoke-static {p2}, Ljava/security/Provider;->-wrap0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    .line 1504
    iput-object p3, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    .line 1505
    iput-object p4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    .line 1506
    if-nez p5, :cond_2e

    .line 1507
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    .line 1511
    :goto_25
    if-nez p6, :cond_36

    .line 1512
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 1519
    :cond_2d
    return-void

    .line 1509
    :cond_2e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    goto :goto_25

    .line 1514
    :cond_36
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 1515
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1516
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    new-instance v4, Ljava/security/Provider$UString;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/security/Provider$UString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45
.end method

.method synthetic constructor <init>(Ljava/security/Provider;Ljava/security/Provider$Service;)V
    .registers 3
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "-this1"    # Ljava/security/Provider$Service;

    .prologue
    invoke-direct {p0, p1}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;)V

    return-void
.end method

.method private addAlias(Ljava/lang/String;)V
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 1468
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1469
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    .line 1471
    :cond_10
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1472
    return-void
.end method

.method private final getAliases()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1560
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    return-object v0
.end method

.method private getImplClass()Ljava/lang/Class;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1668
    :try_start_0
    iget-object v3, p0, Ljava/security/Provider$Service;->classRef:Ljava/lang/ref/Reference;

    .line 1669
    .local v3, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/Class<*>;>;"
    if-nez v3, :cond_8c

    const/4 v1, 0x0

    .line 1670
    :goto_5
    if-nez v1, :cond_a3

    .line 1671
    iget-object v4, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v4}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1672
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_94

    .line 1673
    iget-object v4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1677
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_19
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_9c

    .line 1678
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    .line 1679
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "class configured for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1680
    iget-object v6, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v6}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1679
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1680
    const-string/jumbo v6, ") is not public."

    .line 1679
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1678
    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_57
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_57} :catch_57

    .line 1685
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/Class<*>;>;"
    :catch_57
    move-exception v2

    .line 1686
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    .line 1687
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "class configured for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1688
    iget-object v6, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v6}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1687
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1688
    const-string/jumbo v6, ") cannot be found."

    .line 1687
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1686
    invoke-direct {v4, v5, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1669
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/Class<*>;>;"
    :cond_8c
    :try_start_8c
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_5

    .line 1675
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_94
    iget-object v4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_19

    .line 1682
    :cond_9c
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Ljava/security/Provider$Service;->classRef:Ljava/lang/ref/Reference;
    :try_end_a3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8c .. :try_end_a3} :catch_57

    .line 1684
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a3
    return-object v1
.end method

.method private getKeyClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
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
    const/4 v3, 0x0

    .line 1825
    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v2

    return-object v2

    .line 1826
    :catch_6
    move-exception v1

    .line 1830
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_7
    iget-object v2, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v2}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1831
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_19

    .line 1832
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_16} :catch_18

    move-result-object v2

    return-object v2

    .line 1834
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :catch_18
    move-exception v1

    .line 1837
    :cond_19
    return-object v3
.end method

.method private hasKeyAttributes()Z
    .registers 10

    .prologue
    .line 1792
    iget-object v0, p0, Ljava/security/Provider$Service;->hasKeyAttributes:Ljava/lang/Boolean;

    .line 1793
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_59

    .line 1794
    monitor-enter p0

    .line 1796
    :try_start_5
    const-string/jumbo v7, "SupportedKeyFormats"

    invoke-virtual {p0, v7}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1797
    .local v6, "s":Ljava/lang/String;
    if-eqz v6, :cond_17

    .line 1798
    const-string/jumbo v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    .line 1800
    :cond_17
    const-string/jumbo v7, "SupportedKeyClasses"

    invoke-virtual {p0, v7}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1801
    if-eqz v6, :cond_49

    .line 1802
    const-string/jumbo v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1804
    .local v4, "classNames":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    array-length v7, v4

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1805
    .local v2, "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v7, 0x0

    array-length v8, v4

    :goto_2f
    if-ge v7, v8, :cond_3f

    aget-object v3, v4, v7

    .line 1806
    .local v3, "className":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljava/security/Provider$Service;->getKeyClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 1807
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_3c

    .line 1808
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1805
    :cond_3c
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    .line 1811
    .end local v3    # "className":Ljava/lang/String;
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3f
    sget-object v7, Ljava/security/Provider$Service;->CLASS0:[Ljava/lang/Class;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Class;

    iput-object v7, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    .line 1813
    .end local v2    # "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v4    # "classNames":[Ljava/lang/String;
    :cond_49
    iget-object v7, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    if-nez v7, :cond_5e

    .line 1814
    iget-object v7, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    if-eqz v7, :cond_60

    const/4 v1, 0x1

    .line 1815
    .local v1, "bool":Z
    :goto_52
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1816
    iput-object v0, p0, Ljava/security/Provider$Service;->hasKeyAttributes:Ljava/lang/Boolean;
    :try_end_58
    .catchall {:try_start_5 .. :try_end_58} :catchall_62

    monitor-exit p0

    .line 1819
    .end local v1    # "bool":Z
    .end local v6    # "s":Ljava/lang/String;
    :cond_59
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    return v7

    .line 1813
    .restart local v6    # "s":Ljava/lang/String;
    :cond_5e
    const/4 v1, 0x1

    .restart local v1    # "bool":Z
    goto :goto_52

    .line 1814
    .end local v1    # "bool":Z
    :cond_60
    const/4 v1, 0x0

    .restart local v1    # "bool":Z
    goto :goto_52

    .line 1794
    .end local v1    # "bool":Z
    .end local v6    # "s":Ljava/lang/String;
    :catchall_62
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private isValid()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1464
    iget-object v1, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private newInstanceGeneric(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .param p1, "constructorParameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 1699
    invoke-direct {p0}, Ljava/security/Provider$Service;->getImplClass()Ljava/lang/Class;

    move-result-object v1

    .line 1700
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_34

    .line 1703
    const/4 v7, 0x0

    :try_start_9
    new-array v5, v7, [Ljava/lang/Class;

    .line 1704
    .local v5, "empty":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1705
    .local v2, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_15} :catch_17

    move-result-object v7

    return-object v7

    .line 1706
    .end local v2    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "empty":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_17
    move-exception v4

    .line 1707
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    new-instance v7, Ljava/security/NoSuchAlgorithmException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No public no-arg constructor found in class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1708
    iget-object v9, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    .line 1707
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1711
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :cond_34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1712
    .local v0, "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 1715
    .local v3, "cons":[Ljava/lang/reflect/Constructor;
    array-length v9, v3

    move v7, v8

    :goto_3e
    if-ge v7, v9, :cond_5d

    aget-object v2, v3, v7

    .line 1716
    .restart local v2    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 1717
    .local v6, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v10, v6

    if-eq v10, v11, :cond_4c

    .line 1715
    :cond_49
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    .line 1720
    :cond_4c
    aget-object v10, v6, v8

    invoke-virtual {v10, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_49

    .line 1723
    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    return-object v7

    .line 1725
    .end local v2    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v6    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_5d
    new-instance v7, Ljava/security/NoSuchAlgorithmException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No public constructor matching "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1726
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1725
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1726
    const-string/jumbo v9, " found in class "

    .line 1725
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1726
    iget-object v9, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    .line 1725
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private supportsKeyClass(Ljava/security/Key;)Z
    .registers 9
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    const/4 v3, 0x0

    .line 1857
    iget-object v2, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    if-nez v2, :cond_6

    .line 1858
    return v3

    .line 1860
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1861
    .local v1, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    array-length v5, v4

    move v2, v3

    :goto_e
    if-ge v2, v5, :cond_1d

    aget-object v0, v4, v2

    .line 1862
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1863
    const/4 v2, 0x1

    return v2

    .line 1861
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1866
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1d
    return v3
.end method

.method private supportsKeyFormat(Ljava/security/Key;)Z
    .registers 9
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    const/4 v3, 0x0

    .line 1841
    iget-object v2, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    if-nez v2, :cond_6

    .line 1842
    return v3

    .line 1844
    :cond_6
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 1845
    .local v0, "format":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 1846
    return v3

    .line 1848
    :cond_d
    iget-object v4, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_11
    if-ge v2, v5, :cond_20

    aget-object v1, v4, v2

    .line 1849
    .local v1, "supportedFormat":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1850
    const/4 v2, 0x1

    return v2

    .line 1848
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1853
    .end local v1    # "supportedFormat":Ljava/lang/String;
    :cond_20
    return v3
.end method


# virtual methods
.method addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1475
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1476
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 1478
    :cond_11
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    new-instance v1, Ljava/security/Provider$UString;

    invoke-direct {v1, p1}, Ljava/security/Provider$UString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    return-void
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1537
    iget-object v0, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1575
    if-nez p1, :cond_8

    .line 1576
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1578
    :cond_8
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    new-instance v1, Ljava/security/Provider$UString;

    invoke-direct {v1, p1}, Ljava/security/Provider$UString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1555
    iget-object v0, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 1546
    iget-object v0, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1527
    iget-object v0, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    return-object v0
.end method

.method public newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 17
    .param p1, "constructorParameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1609
    iget-boolean v10, p0, Ljava/security/Provider$Service;->registered:Z

    if-nez v10, :cond_3e

    .line 1610
    iget-object v10, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    iget-object v11, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    iget-object v12, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v10

    if-eq v10, p0, :cond_3b

    .line 1611
    new-instance v10, Ljava/security/NoSuchAlgorithmException;

    .line 1612
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Service not registered with Provider "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1613
    iget-object v12, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v12}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1612
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1613
    const-string/jumbo v12, ": "

    .line 1612
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1611
    invoke-direct {v10, v11}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1615
    :cond_3b
    const/4 v10, 0x1

    iput-boolean v10, p0, Ljava/security/Provider$Service;->registered:Z

    .line 1618
    :cond_3e
    :try_start_3e
    invoke-static {}, Ljava/security/Provider;->-get0()Ljava/util/Map;

    move-result-object v10

    iget-object v11, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$EngineDescription;

    .line 1619
    .local v1, "cap":Ljava/security/Provider$EngineDescription;
    if-nez v1, :cond_51

    .line 1623
    invoke-direct/range {p0 .. p1}, Ljava/security/Provider$Service;->newInstanceGeneric(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    return-object v10

    .line 1625
    :cond_51
    iget-object v10, v1, Ljava/security/Provider$EngineDescription;->constructorParameterClassName:Ljava/lang/String;

    if-nez v10, :cond_8f

    .line 1626
    if-eqz p1, :cond_7c

    .line 1627
    new-instance v10, Ljava/security/InvalidParameterException;

    .line 1628
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "constructorParameter not used with "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1629
    const-string/jumbo v12, " engines"

    .line 1628
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1627
    invoke-direct {v10, v11}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_7a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3e .. :try_end_7a} :catch_7a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3e .. :try_end_7a} :catch_d0
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_7a} :catch_12f

    .line 1650
    .end local v1    # "cap":Ljava/security/Provider$EngineDescription;
    :catch_7a
    move-exception v7

    .line 1651
    .local v7, "e":Ljava/security/NoSuchAlgorithmException;
    throw v7

    .line 1631
    .end local v7    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "cap":Ljava/security/Provider$EngineDescription;
    :cond_7c
    :try_start_7c
    invoke-direct {p0}, Ljava/security/Provider$Service;->getImplClass()Ljava/lang/Class;

    move-result-object v2

    .line 1632
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x0

    new-array v8, v10, [Ljava/lang/Class;

    .line 1633
    .local v8, "empty":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v2, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 1634
    .local v3, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    return-object v10

    .line 1636
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "empty":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_8f
    invoke-virtual {v1}, Ljava/security/Provider$EngineDescription;->getConstructorParameterClass()Ljava/lang/Class;

    move-result-object v9

    .line 1637
    .local v9, "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_116

    .line 1638
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1639
    .local v0, "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_116

    .line 1640
    new-instance v10, Ljava/security/InvalidParameterException;

    .line 1641
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "constructorParameter must be instanceof "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1642
    iget-object v12, v1, Ljava/security/Provider$EngineDescription;->constructorParameterClassName:Ljava/lang/String;

    const/16 v13, 0x24

    const/16 v14, 0x2e

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    .line 1641
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1643
    const-string/jumbo v12, " for engine type "

    .line 1641
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1643
    iget-object v12, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    .line 1641
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1640
    invoke-direct {v10, v11}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_d0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7c .. :try_end_d0} :catch_7a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7c .. :try_end_d0} :catch_d0
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_d0} :catch_12f

    .line 1652
    .end local v0    # "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cap":Ljava/security/Provider$EngineDescription;
    .end local v9    # "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_d0
    move-exception v6

    .line 1653
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v10, Ljava/security/NoSuchAlgorithmException;

    .line 1654
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error constructing implementation (algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1655
    iget-object v12, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    .line 1654
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1655
    const-string/jumbo v12, ", provider: "

    .line 1654
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1655
    iget-object v12, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v12}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1654
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1656
    const-string/jumbo v12, ", class: "

    .line 1654
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1656
    iget-object v12, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    .line 1654
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1656
    const-string/jumbo v12, ")"

    .line 1654
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1656
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    .line 1653
    invoke-direct {v10, v11, v12}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 1646
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "cap":Ljava/security/Provider$EngineDescription;
    .restart local v9    # "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_116
    :try_start_116
    invoke-direct {p0}, Ljava/security/Provider$Service;->getImplClass()Ljava/lang/Class;

    move-result-object v2

    .line 1647
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    invoke-virtual {v2, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 1648
    .local v4, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_116 .. :try_end_12d} :catch_7a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_116 .. :try_end_12d} :catch_d0
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_12d} :catch_12f

    move-result-object v10

    return-object v10

    .line 1657
    .end local v1    # "cap":Ljava/security/Provider$EngineDescription;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v9    # "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_12f
    move-exception v5

    .line 1658
    .local v5, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/security/NoSuchAlgorithmException;

    .line 1659
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error constructing implementation (algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1660
    iget-object v12, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    .line 1659
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1660
    const-string/jumbo v12, ", provider: "

    .line 1659
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1660
    iget-object v12, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v12}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1659
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1661
    const-string/jumbo v12, ", class: "

    .line 1659
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1661
    iget-object v12, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    .line 1659
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1661
    const-string/jumbo v12, ")"

    .line 1659
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1658
    invoke-direct {v10, v11, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method public supportsParameter(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "parameter"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1757
    invoke-static {}, Ljava/security/Provider;->-get0()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider$EngineDescription;

    .line 1758
    .local v0, "cap":Ljava/security/Provider$EngineDescription;
    if-nez v0, :cond_11

    .line 1760
    return v4

    .line 1762
    :cond_11
    iget-boolean v2, v0, Ljava/security/Provider$EngineDescription;->supportsParameter:Z

    if-nez v2, :cond_38

    .line 1763
    new-instance v2, Ljava/security/InvalidParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "supportsParameter() not used with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1764
    iget-object v4, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    .line 1763
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1764
    const-string/jumbo v4, " engines"

    .line 1763
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1767
    :cond_38
    if-eqz p1, :cond_5a

    instance-of v2, p1, Ljava/security/Key;

    if-nez v2, :cond_5a

    .line 1768
    new-instance v2, Ljava/security/InvalidParameterException;

    .line 1769
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parameter must be instanceof Key for engine "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1768
    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1771
    :cond_5a
    invoke-direct {p0}, Ljava/security/Provider$Service;->hasKeyAttributes()Z

    move-result v2

    if-nez v2, :cond_61

    .line 1772
    return v4

    .line 1774
    :cond_61
    if-nez p1, :cond_64

    .line 1775
    return v5

    :cond_64
    move-object v1, p1

    .line 1777
    check-cast v1, Ljava/security/Key;

    .line 1778
    .local v1, "key":Ljava/security/Key;
    invoke-direct {p0, v1}, Ljava/security/Provider$Service;->supportsKeyFormat(Ljava/security/Key;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1779
    return v4

    .line 1781
    :cond_6e
    invoke-direct {p0, v1}, Ljava/security/Provider$Service;->supportsKeyClass(Ljava/security/Key;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 1782
    return v4

    .line 1784
    :cond_75
    return v5
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1875
    iget-object v2, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 1876
    const-string/jumbo v0, ""

    .line 1877
    .local v0, "aString":Ljava/lang/String;
    :goto_b
    iget-object v2, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 1878
    const-string/jumbo v1, ""

    .line 1879
    .local v1, "attrs":Ljava/lang/String;
    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1880
    const-string/jumbo v3, " -> "

    .line 1879
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1880
    iget-object v3, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    .line 1879
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1880
    const-string/jumbo v3, "\r\n"

    .line 1879
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1876
    .end local v0    # "aString":Ljava/lang/String;
    .end local v1    # "attrs":Ljava/lang/String;
    :cond_60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\r\n  aliases: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "aString":Ljava/lang/String;
    goto :goto_b

    .line 1878
    :cond_7b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\r\n  attributes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "attrs":Ljava/lang/String;
    goto :goto_16
.end method
