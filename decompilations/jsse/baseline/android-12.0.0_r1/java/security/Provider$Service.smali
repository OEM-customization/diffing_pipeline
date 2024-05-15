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
.field private static final greylist-max-o CLASS0:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o algorithm:Ljava/lang/String;

.field private greylist-max-o aliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/security/Provider$UString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o className:Ljava/lang/String;

.field private volatile greylist-max-o classRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile greylist-max-o hasKeyAttributes:Ljava/lang/Boolean;

.field private final greylist-max-o provider:Ljava/security/Provider;

.field private greylist-max-o registered:Z

.field private greylist-max-o supportedClasses:[Ljava/lang/Class;

.field private greylist-max-o supportedFormats:[Ljava/lang/String;

.field private greylist-max-o type:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1453
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Ljava/security/Provider$Service;->CLASS0:[Ljava/lang/Class;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/security/Provider;)V
    .registers 3
    .param p1, "provider"    # Ljava/security/Provider;

    .line 1458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1459
    iput-object p1, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 1460
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    .line 1461
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 1462
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1498
    .local p5, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1499
    if-eqz p1, :cond_63

    if-eqz p2, :cond_63

    if-eqz p3, :cond_63

    if-eqz p4, :cond_63

    .line 1503
    iput-object p1, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 1504
    # invokes: Ljava/security/Provider;->getEngineName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p2}, Ljava/security/Provider;->access$900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    .line 1505
    iput-object p3, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    .line 1506
    iput-object p4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    .line 1507
    if-nez p5, :cond_20

    .line 1508
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    goto :goto_27

    .line 1510
    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    .line 1512
    :goto_27
    if-nez p6, :cond_30

    .line 1513
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    goto :goto_62

    .line 1515
    :cond_30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 1516
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1517
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    new-instance v3, Ljava/security/Provider$UString;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/security/Provider$UString;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_3f

    .line 1520
    :cond_62
    :goto_62
    return-void

    .line 1501
    :cond_63
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Ljava/security/Provider;Ljava/security/Provider$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/security/Provider;
    .param p2, "x1"    # Ljava/security/Provider$1;

    .line 1428
    invoke-direct {p0, p1}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;)V

    return-void
.end method

.method static synthetic blacklist access$000(Ljava/security/Provider$Service;)Z
    .registers 2
    .param p0, "x0"    # Ljava/security/Provider$Service;

    .line 1428
    invoke-direct {p0}, Ljava/security/Provider$Service;->isValid()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$302(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/security/Provider$Service;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1428
    iput-object p1, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic blacklist access$402(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/security/Provider$Service;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1428
    iput-object p1, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic blacklist access$500(Ljava/security/Provider$Service;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Ljava/security/Provider$Service;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1428
    invoke-direct {p0, p1}, Ljava/security/Provider$Service;->addAlias(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$602(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/security/Provider$Service;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1428
    iput-object p1, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic blacklist access$700(Ljava/security/Provider$Service;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Ljava/security/Provider$Service;

    .line 1428
    invoke-direct {p0}, Ljava/security/Provider$Service;->getAliases()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$800(Ljava/security/Provider$Service;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Ljava/security/Provider$Service;

    .line 1428
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method private greylist-max-o addAlias(Ljava/lang/String;)V
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 1469
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1470
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    .line 1472
    :cond_10
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1473
    return-void
.end method

.method private final greylist-max-o getAliases()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1561
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    return-object v0
.end method

.method private greylist-max-o getImplClass()Ljava/lang/Class;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1669
    const-string v0, " (provider: "

    const-string v1, "class configured for "

    :try_start_4
    iget-object v2, p0, Ljava/security/Provider$Service;->classRef:Ljava/lang/ref/Reference;

    .line 1670
    .local v2, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/Class<*>;>;"
    if-nez v2, :cond_a

    const/4 v3, 0x0

    goto :goto_10

    :cond_a
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 1671
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_10
    if-nez v3, :cond_67

    .line 1672
    iget-object v4, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 1673
    .local v4, "cl":Ljava/lang/ClassLoader;
    if-nez v4, :cond_26

    .line 1674
    iget-object v5, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    goto :goto_2d

    .line 1676
    :cond_26
    iget-object v5, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 1678
    :goto_2d
    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1683
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Ljava/security/Provider$Service;->classRef:Ljava/lang/ref/Reference;

    goto :goto_67

    .line 1679
    :cond_3f
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 1681
    invoke-virtual {v7}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") is not public."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/security/Provider$Service;
    throw v5
    :try_end_67
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_67} :catch_68

    .line 1685
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    .restart local p0    # "this":Ljava/security/Provider$Service;
    :cond_67
    :goto_67
    return-object v3

    .line 1686
    .end local v2    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/Class<*>;>;"
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_68
    move-exception v2

    .line 1687
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 1689
    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") cannot be found."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private greylist-max-o getKeyClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1826
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 1827
    :catch_5
    move-exception v0

    .line 1831
    :try_start_6
    iget-object v0, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1832
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_17

    .line 1833
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_16} :catch_18

    return-object v1

    .line 1837
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_17
    goto :goto_19

    .line 1835
    :catch_18
    move-exception v0

    .line 1838
    :goto_19
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o hasKeyAttributes()Z
    .registers 10

    .line 1793
    iget-object v0, p0, Ljava/security/Provider$Service;->hasKeyAttributes:Ljava/lang/Boolean;

    .line 1794
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_5c

    .line 1795
    monitor-enter p0

    .line 1797
    :try_start_5
    const-string v1, "SupportedKeyFormats"

    invoke-virtual {p0, v1}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1798
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 1799
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    .line 1801
    :cond_15
    const-string v2, "SupportedKeyClasses"

    invoke-virtual {p0, v2}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1802
    const/4 v2, 0x0

    if-eqz v1, :cond_47

    .line 1803
    const-string v3, "\\|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1804
    .local v3, "classNames":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1806
    .local v4, "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    array-length v5, v3

    move v6, v2

    :goto_2d
    if-ge v6, v5, :cond_3d

    aget-object v7, v3, v6

    .line 1807
    .local v7, "className":Ljava/lang/String;
    invoke-direct {p0, v7}, Ljava/security/Provider$Service;->getKeyClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 1808
    .local v8, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v8, :cond_3a

    .line 1809
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1806
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 1812
    :cond_3d
    sget-object v5, Ljava/security/Provider$Service;->CLASS0:[Ljava/lang/Class;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Class;

    iput-object v5, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    .line 1814
    .end local v3    # "classNames":[Ljava/lang/String;
    .end local v4    # "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_47
    iget-object v3, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    if-nez v3, :cond_4f

    iget-object v3, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    if-eqz v3, :cond_50

    :cond_4f
    const/4 v2, 0x1

    .line 1816
    .local v2, "bool":Z
    :cond_50
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    .line 1817
    iput-object v0, p0, Ljava/security/Provider$Service;->hasKeyAttributes:Ljava/lang/Boolean;

    .line 1818
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "bool":Z
    monitor-exit p0

    goto :goto_5c

    :catchall_59
    move-exception v1

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_5 .. :try_end_5b} :catchall_59

    throw v1

    .line 1820
    :cond_5c
    :goto_5c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private greylist-max-o isValid()Z
    .registers 2

    .line 1465
    iget-object v0, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private greylist-max-o newInstanceGeneric(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p1, "constructorParameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1700
    invoke-direct {p0}, Ljava/security/Provider$Service;->getImplClass()Ljava/lang/Class;

    move-result-object v0

    .line 1701
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    if-nez p1, :cond_2e

    .line 1704
    :try_start_7
    new-array v2, v1, [Ljava/lang/Class;

    .line 1705
    .local v2, "empty":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 1706
    .local v3, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_13} :catch_14

    return-object v1

    .line 1707
    .end local v2    # "empty":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_14
    move-exception v1

    .line 1708
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No public no-arg constructor found in class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1712
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1713
    .local v2, "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 1716
    .local v3, "cons":[Ljava/lang/reflect/Constructor;
    array-length v4, v3

    move v5, v1

    :goto_38
    if-ge v5, v4, :cond_5a

    aget-object v6, v3, v5

    .line 1717
    .local v6, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 1718
    .local v7, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v8, v7

    const/4 v9, 0x1

    if-eq v8, v9, :cond_45

    .line 1719
    goto :goto_4e

    .line 1721
    :cond_45
    aget-object v8, v7, v1

    invoke-virtual {v8, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_51

    .line 1722
    nop

    .line 1716
    .end local v6    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 1724
    .restart local v6    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v7    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_51
    new-array v4, v9, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1726
    .end local v6    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_5a
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No public constructor matching "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1727
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " found in class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o supportsKeyClass(Ljava/security/Key;)Z
    .registers 9
    .param p1, "key"    # Ljava/security/Key;

    .line 1858
    iget-object v0, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1859
    return v1

    .line 1861
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1862
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    array-length v3, v2

    move v4, v1

    :goto_e
    if-ge v4, v3, :cond_1d

    aget-object v5, v2, v4

    .line 1863
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1864
    const/4 v1, 0x1

    return v1

    .line 1862
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1867
    :cond_1d
    return v1
.end method

.method private greylist-max-o supportsKeyFormat(Ljava/security/Key;)Z
    .registers 9
    .param p1, "key"    # Ljava/security/Key;

    .line 1842
    iget-object v0, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1843
    return v1

    .line 1845
    :cond_6
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 1846
    .local v0, "format":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 1847
    return v1

    .line 1849
    :cond_d
    iget-object v2, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_11
    if-ge v4, v3, :cond_20

    aget-object v5, v2, v4

    .line 1850
    .local v5, "supportedFormat":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1851
    const/4 v1, 0x1

    return v1

    .line 1849
    .end local v5    # "supportedFormat":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 1854
    :cond_20
    return v1
.end method


# virtual methods
.method greylist-max-o addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1476
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1477
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 1479
    :cond_11
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    new-instance v1, Ljava/security/Provider$UString;

    invoke-direct {v1, p1}, Ljava/security/Provider$UString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    return-void
.end method

.method public final whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 1538
    iget-object v0, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 1576
    if-eqz p1, :cond_10

    .line 1579
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    new-instance v1, Ljava/security/Provider$UString;

    invoke-direct {v1, p1}, Ljava/security/Provider$UString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1577
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api getClassName()Ljava/lang/String;
    .registers 2

    .line 1556
    iget-object v0, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 1547
    iget-object v0, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final whitelist test-api getType()Ljava/lang/String;
    .registers 2

    .line 1528
    iget-object v0, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .param p1, "constructorParameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1610
    const-string v0, ")"

    const-string v1, ", class: "

    const-string v2, ", provider: "

    const-string v3, "Error constructing implementation (algorithm: "

    iget-boolean v4, p0, Ljava/security/Provider$Service;->registered:Z

    const/4 v5, 0x1

    if-nez v4, :cond_41

    .line 1611
    iget-object v4, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    iget-object v6, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    iget-object v7, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v4

    if-ne v4, p0, :cond_1c

    .line 1616
    iput-boolean v5, p0, Ljava/security/Provider$Service;->registered:Z

    goto :goto_41

    .line 1612
    :cond_1c
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service not registered with Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 1614
    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1619
    :cond_41
    :goto_41
    :try_start_41
    # getter for: Ljava/security/Provider;->knownEngines:Ljava/util/Map;
    invoke-static {}, Ljava/security/Provider;->access$1000()Ljava/util/Map;

    move-result-object v4

    iget-object v6, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$EngineDescription;

    .line 1620
    .local v4, "cap":Ljava/security/Provider$EngineDescription;
    if-nez v4, :cond_54

    .line 1624
    invoke-direct {p0, p1}, Ljava/security/Provider$Service;->newInstanceGeneric(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1626
    :cond_54
    iget-object v6, v4, Ljava/security/Provider$EngineDescription;->constructorParameterClassName:Ljava/lang/String;

    const/4 v7, 0x0

    if-nez v6, :cond_8a

    .line 1627
    if-nez p1, :cond_6c

    .line 1632
    invoke-direct {p0}, Ljava/security/Provider$Service;->getImplClass()Ljava/lang/Class;

    move-result-object v5

    .line 1633
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v6, v7, [Ljava/lang/Class;

    .line 1634
    .local v6, "empty":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 1635
    .local v8, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1628
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "empty":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_6c
    new-instance v5, Ljava/security/InvalidParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "constructorParameter not used with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " engines"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/security/Provider$Service;
    .end local p1    # "constructorParameter":Ljava/lang/Object;
    throw v5

    .line 1637
    .restart local p0    # "this":Ljava/security/Provider$Service;
    .restart local p1    # "constructorParameter":Ljava/lang/Object;
    :cond_8a
    invoke-virtual {v4}, Ljava/security/Provider$EngineDescription;->getConstructorParameterClass()Ljava/lang/Class;

    move-result-object v6

    .line 1638
    .local v6, "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_c6

    .line 1639
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 1640
    .local v8, "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_9b

    goto :goto_c6

    .line 1641
    :cond_9b
    new-instance v5, Ljava/security/InvalidParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "constructorParameter must be instanceof "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Ljava/security/Provider$EngineDescription;->constructorParameterClassName:Ljava/lang/String;

    const/16 v10, 0x24

    const/16 v11, 0x2e

    .line 1643
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " for engine type "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/security/Provider$Service;
    .end local p1    # "constructorParameter":Ljava/lang/Object;
    throw v5

    .line 1647
    .end local v8    # "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "this":Ljava/security/Provider$Service;
    .restart local p1    # "constructorParameter":Ljava/lang/Object;
    :cond_c6
    :goto_c6
    invoke-direct {p0}, Ljava/security/Provider$Service;->getImplClass()Ljava/lang/Class;

    move-result-object v8

    .line 1648
    .local v8, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v9, v5, [Ljava/lang/Class;

    aput-object v6, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 1649
    .local v9, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-virtual {v9, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_da
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_41 .. :try_end_da} :catch_13d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_41 .. :try_end_da} :catch_10a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_da} :catch_db

    return-object v0

    .line 1658
    .end local v4    # "cap":Ljava/security/Provider$EngineDescription;
    .end local v6    # "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_db
    move-exception v4

    .line 1659
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 1661
    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1653
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_10a
    move-exception v4

    .line 1654
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 1656
    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1657
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1651
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_13d
    move-exception v0

    .line 1652
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    throw v0
.end method

.method public whitelist test-api supportsParameter(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "parameter"    # Ljava/lang/Object;

    .line 1758
    # getter for: Ljava/security/Provider;->knownEngines:Ljava/util/Map;
    invoke-static {}, Ljava/security/Provider;->access$1000()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider$EngineDescription;

    .line 1759
    .local v0, "cap":Ljava/security/Provider$EngineDescription;
    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 1761
    return v1

    .line 1763
    :cond_10
    iget-boolean v2, v0, Ljava/security/Provider$EngineDescription;->supportsParameter:Z

    if-eqz v2, :cond_51

    .line 1768
    if-eqz p1, :cond_34

    instance-of v2, p1, Ljava/security/Key;

    if-eqz v2, :cond_1b

    goto :goto_34

    .line 1769
    :cond_1b
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameter must be instanceof Key for engine "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1772
    :cond_34
    :goto_34
    invoke-direct {p0}, Ljava/security/Provider$Service;->hasKeyAttributes()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 1773
    return v1

    .line 1775
    :cond_3b
    const/4 v2, 0x0

    if-nez p1, :cond_3f

    .line 1776
    return v2

    .line 1778
    :cond_3f
    move-object v3, p1

    check-cast v3, Ljava/security/Key;

    .line 1779
    .local v3, "key":Ljava/security/Key;
    invoke-direct {p0, v3}, Ljava/security/Provider$Service;->supportsKeyFormat(Ljava/security/Key;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 1780
    return v1

    .line 1782
    :cond_49
    invoke-direct {p0, v3}, Ljava/security/Provider$Service;->supportsKeyClass(Ljava/security/Key;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1783
    return v1

    .line 1785
    :cond_50
    return v2

    .line 1764
    .end local v3    # "key":Ljava/security/Key;
    :cond_51
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supportsParameter() not used with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " engines"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1876
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_c

    .line 1877
    move-object v0, v1

    goto :goto_23

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r\n  aliases: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1878
    .local v0, "aString":Ljava/lang/String;
    :goto_23
    iget-object v2, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1879
    goto :goto_43

    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r\n  attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1880
    .local v1, "attrs":Ljava/lang/String;
    :goto_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
