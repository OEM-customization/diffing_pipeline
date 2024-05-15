.class public Ljava/lang/Package;
.super Ljava/lang/Object;
.source "Package.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;


# static fields
.field private static mans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Manifest;",
            ">;"
        }
    .end annotation
.end field

.field private static pkgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Package;",
            ">;"
        }
    .end annotation
.end field

.field private static urls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final implTitle:Ljava/lang/String;

.field private final implVendor:Ljava/lang/String;

.field private final implVersion:Ljava/lang/String;

.field private final transient loader:Ljava/lang/ClassLoader;

.field private transient packageInfo:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final pkgName:Ljava/lang/String;

.field private final sealBase:Ljava/net/URL;

.field private final specTitle:Ljava/lang/String;

.field private final specVendor:Ljava/lang/String;

.field private final specVersion:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/util/Map;
    .registers 1

    sget-object v0, Ljava/lang/Package;->mans:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/Map;
    .registers 1

    sget-object v0, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2()Ljava/util/Map;
    .registers 1

    sget-object v0, Ljava/lang/Package;->urls:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Ljava/util/jar/Manifest;
    .registers 2
    .param p0, "fn"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Ljava/lang/Package;->loadManifest(Ljava/lang/String;)Ljava/util/jar/Manifest;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0xa

    .line 633
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    .line 636
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/lang/Package;->urls:Ljava/util/Map;

    .line 639
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/lang/Package;->mans:Ljava/util/Map;

    .line 113
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "spectitle"    # Ljava/lang/String;
    .param p3, "specversion"    # Ljava/lang/String;
    .param p4, "specvendor"    # Ljava/lang/String;
    .param p5, "impltitle"    # Ljava/lang/String;
    .param p6, "implversion"    # Ljava/lang/String;
    .param p7, "implvendor"    # Ljava/lang/String;
    .param p8, "sealbase"    # Ljava/net/URL;
    .param p9, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput-object p1, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    .line 474
    iput-object p5, p0, Ljava/lang/Package;->implTitle:Ljava/lang/String;

    .line 475
    iput-object p6, p0, Ljava/lang/Package;->implVersion:Ljava/lang/String;

    .line 476
    iput-object p7, p0, Ljava/lang/Package;->implVendor:Ljava/lang/String;

    .line 477
    iput-object p2, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    .line 478
    iput-object p3, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    .line 479
    iput-object p4, p0, Ljava/lang/Package;->specVendor:Ljava/lang/String;

    .line 480
    iput-object p8, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    .line 481
    iput-object p9, p0, Ljava/lang/Package;->loader:Ljava/lang/ClassLoader;

    .line 482
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .registers 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "man"    # Ljava/util/jar/Manifest;
    .param p3, "url"    # Ljava/net/URL;
    .param p4, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    const/16 v11, 0x2e

    const/16 v12, 0x2f

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 493
    .local v5, "path":Ljava/lang/String;
    const/4 v7, 0x0

    .line 494
    .local v7, "sealed":Ljava/lang/String;
    const/4 v8, 0x0

    .line 495
    .local v8, "specTitle":Ljava/lang/String;
    const/4 v10, 0x0

    .line 496
    .local v10, "specVersion":Ljava/lang/String;
    const/4 v9, 0x0

    .line 497
    .local v9, "specVendor":Ljava/lang/String;
    const/4 v2, 0x0

    .line 498
    .local v2, "implTitle":Ljava/lang/String;
    const/4 v4, 0x0

    .line 499
    .local v4, "implVersion":Ljava/lang/String;
    const/4 v3, 0x0

    .line 500
    .local v3, "implVendor":Ljava/lang/String;
    const/4 v6, 0x0

    .line 501
    .local v6, "sealBase":Ljava/net/URL;
    invoke-virtual {p2, v5}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v1

    .line 502
    .local v1, "attr":Ljava/util/jar/Attributes;
    if-eqz v1, :cond_4a

    .line 503
    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v8

    .line 504
    .local v8, "specTitle":Ljava/lang/String;
    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v10

    .line 505
    .local v10, "specVersion":Ljava/lang/String;
    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v9

    .line 506
    .local v9, "specVendor":Ljava/lang/String;
    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, "implTitle":Ljava/lang/String;
    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    .line 508
    .local v4, "implVersion":Ljava/lang/String;
    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 509
    .local v3, "implVendor":Ljava/lang/String;
    sget-object v11, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 511
    .end local v2    # "implTitle":Ljava/lang/String;
    .end local v3    # "implVendor":Ljava/lang/String;
    .end local v4    # "implVersion":Ljava/lang/String;
    .end local v7    # "sealed":Ljava/lang/String;
    .end local v8    # "specTitle":Ljava/lang/String;
    .end local v9    # "specVendor":Ljava/lang/String;
    .end local v10    # "specVersion":Ljava/lang/String;
    :cond_4a
    invoke-virtual {p2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    .line 512
    if-eqz v1, :cond_88

    .line 513
    if-nez v8, :cond_58

    .line 514
    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v8

    .line 516
    :cond_58
    if-nez v10, :cond_60

    .line 517
    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v10

    .line 519
    :cond_60
    if-nez v9, :cond_68

    .line 520
    sget-object v11, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v9

    .line 522
    :cond_68
    if-nez v2, :cond_70

    .line 523
    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 525
    :cond_70
    if-nez v4, :cond_78

    .line 526
    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    .line 528
    :cond_78
    if-nez v3, :cond_80

    .line 529
    sget-object v11, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 531
    :cond_80
    if-nez v7, :cond_88

    .line 532
    sget-object v11, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 535
    :cond_88
    const-string/jumbo v11, "true"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_93

    .line 536
    move-object/from16 v6, p3

    .line 538
    .end local v6    # "sealBase":Ljava/net/URL;
    :cond_93
    iput-object p1, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    .line 539
    iput-object v8, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    .line 540
    iput-object v10, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    .line 541
    iput-object v9, p0, Ljava/lang/Package;->specVendor:Ljava/lang/String;

    .line 542
    iput-object v2, p0, Ljava/lang/Package;->implTitle:Ljava/lang/String;

    .line 543
    iput-object v4, p0, Ljava/lang/Package;->implVersion:Ljava/lang/String;

    .line 544
    iput-object v3, p0, Ljava/lang/Package;->implVendor:Ljava/lang/String;

    .line 545
    iput-object v6, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    .line 546
    move-object/from16 v0, p4

    iput-object v0, p0, Ljava/lang/Package;->loader:Ljava/lang/ClassLoader;

    .line 547
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/lang/Package;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "man"    # Ljava/util/jar/Manifest;
    .param p3, "url"    # Ljava/net/URL;
    .param p4, "loader"    # Ljava/lang/ClassLoader;
    .param p5, "-this4"    # Ljava/lang/Package;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/lang/Package;-><init>(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private static defineSystemPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Package;
    .registers 3
    .param p0, "iname"    # Ljava/lang/String;
    .param p1, "fn"    # Ljava/lang/String;

    .prologue
    .line 583
    new-instance v0, Ljava/lang/Package$1;

    invoke-direct {v0, p0, p1}, Ljava/lang/Package$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Package;

    return-object v0
.end method

.method static getPackage(Ljava/lang/Class;)Ljava/lang/Package;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Package;"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 330
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "name":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 332
    .local v1, "i":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_23

    .line 333
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 335
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_1e

    .line 336
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v3

    return-object v3

    .line 338
    :cond_1e
    invoke-static {v2}, Ljava/lang/Package;->getSystemPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v3

    return-object v3

    .line 341
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_23
    return-object v4
.end method

.method public static getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 282
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 283
    .local v0, "l":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_b

    .line 284
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v1

    return-object v1

    .line 286
    :cond_b
    invoke-static {p0}, Ljava/lang/Package;->getSystemPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v1

    return-object v1
.end method

.method private getPackageInfo()Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v1, p0, Ljava/lang/Package;->packageInfo:Ljava/lang/Class;

    if-nez v1, :cond_23

    .line 388
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".package-info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/Package;->loader:Ljava/lang/ClassLoader;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/Package;->packageInfo:Ljava/lang/Class;
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_23} :catch_26

    .line 395
    :cond_23
    :goto_23
    iget-object v1, p0, Ljava/lang/Package;->packageInfo:Ljava/lang/Class;

    return-object v1

    .line 389
    :catch_26
    move-exception v0

    .line 392
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-class v1, Ljava/lang/Package$1PackageInfoProxy;

    iput-object v1, p0, Ljava/lang/Package;->packageInfo:Ljava/lang/Class;

    goto :goto_23
.end method

.method public static getPackages()[Ljava/lang/Package;
    .registers 2
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 304
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 305
    .local v0, "l":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_b

    .line 306
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getPackages()[Ljava/lang/Package;

    move-result-object v1

    return-object v1

    .line 308
    :cond_b
    invoke-static {}, Ljava/lang/Package;->getSystemPackages()[Ljava/lang/Package;

    move-result-object v1

    return-object v1
.end method

.method static getSystemPackage(Ljava/lang/String;)Ljava/lang/Package;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 553
    sget-object v3, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    monitor-enter v3

    .line 554
    :try_start_3
    sget-object v2, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Package;

    .line 555
    .local v1, "pkg":Ljava/lang/Package;
    if-nez v1, :cond_26

    .line 556
    const/16 v2, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 557
    invoke-static {p0}, Ljava/lang/Package;->getSystemPackage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "fn":Ljava/lang/String;
    if-eqz v0, :cond_26

    .line 559
    invoke-static {p0, v0}, Ljava/lang/Package;->defineSystemPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Package;
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_28

    move-result-object v1

    .end local v0    # "fn":Ljava/lang/String;
    :cond_26
    monitor-exit v3

    .line 562
    return-object v1

    .line 553
    .end local v1    # "pkg":Ljava/lang/Package;
    :catchall_28
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static native getSystemPackage0(Ljava/lang/String;)Ljava/lang/String;
.end method

.method static getSystemPackages()[Ljava/lang/Package;
    .registers 5

    .prologue
    .line 571
    invoke-static {}, Ljava/lang/Package;->getSystemPackages0()[Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "names":[Ljava/lang/String;
    sget-object v3, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    monitor-enter v3

    .line 573
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    :try_start_8
    array-length v2, v1

    if-ge v0, v2, :cond_19

    .line 574
    aget-object v2, v1, v0

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Package;->getSystemPackage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/Package;->defineSystemPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Package;

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 576
    :cond_19
    sget-object v2, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    sget-object v4, Ljava/lang/Package;->pkgs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Package;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Package;
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_2f

    monitor-exit v3

    return-object v2

    .line 572
    :catchall_2f
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static native getSystemPackages0()[Ljava/lang/String;
.end method

.method private static loadManifest(Ljava/lang/String;)Ljava/util/jar/Manifest;
    .registers 11
    .param p0, "fn"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 623
    const/4 v1, 0x0

    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .local v3, "jis":Ljava/util/jar/JarInputStream;
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_32
    .catchall {:try_start_3 .. :try_end_8} :catchall_5e

    .line 624
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_8
    new-instance v4, Ljava/util/jar/JarInputStream;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;Z)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_e} :catch_6a
    .catchall {:try_start_8 .. :try_end_e} :catchall_61

    .line 626
    .local v4, "jis":Ljava/util/jar/JarInputStream;
    :try_start_e
    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->getManifest()Ljava/util/jar/Manifest;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_6d
    .catchall {:try_start_e .. :try_end_11} :catchall_65

    .end local v3    # "jis":Ljava/util/jar/JarInputStream;
    move-result-object v8

    .line 629
    if-eqz v4, :cond_17

    :try_start_14
    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_25
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_21

    :cond_17
    move-object v6, v7

    :goto_18
    if-eqz v2, :cond_1d

    :try_start_1a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_27
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_21

    :cond_1d
    move-object v5, v6

    :cond_1e
    :goto_1e
    if-eqz v5, :cond_31

    :try_start_20
    throw v5

    .line 627
    :catch_21
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "jis":Ljava/util/jar/JarInputStream;
    .local v3, "jis":Ljava/util/jar/JarInputStream;
    move-object v1, v2

    .line 628
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "jis":Ljava/util/jar/JarInputStream;
    :goto_24
    return-object v7

    .line 629
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "jis":Ljava/util/jar/JarInputStream;
    :catch_25
    move-exception v6

    goto :goto_18

    :catch_27
    move-exception v5

    if-eqz v6, :cond_1e

    if-eq v6, v5, :cond_1d

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2f} :catch_21

    move-object v5, v6

    goto :goto_1e

    .line 626
    :cond_31
    return-object v8

    .line 629
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "jis":Ljava/util/jar/JarInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .local v3, "jis":Ljava/util/jar/JarInputStream;
    :catch_32
    move-exception v5

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "jis":Ljava/util/jar/JarInputStream;
    :goto_33
    :try_start_33
    throw v5
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_38
    if-eqz v3, :cond_3d

    :try_start_3a
    invoke-virtual {v3}, Ljava/util/jar/JarInputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3d} :catch_49
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_47

    :cond_3d
    move-object v8, v6

    :cond_3e
    :goto_3e
    if-eqz v1, :cond_43

    :try_start_40
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_53
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_47

    :cond_43
    move-object v6, v8

    :cond_44
    :goto_44
    if-eqz v6, :cond_5d

    :try_start_46
    throw v6

    .line 627
    :catch_47
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_24

    .line 629
    .end local v0    # "e":Ljava/io/IOException;
    :catch_49
    move-exception v8

    if-eqz v6, :cond_3e

    if-eq v6, v8, :cond_3d

    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v8, v6

    goto :goto_3e

    :catch_53
    move-exception v6

    if-eqz v8, :cond_44

    if-eq v8, v6, :cond_43

    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v6, v8

    goto :goto_44

    :cond_5d
    throw v5
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_5e} :catch_47

    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "jis":Ljava/util/jar/JarInputStream;
    :catchall_5e
    move-exception v5

    move-object v6, v7

    goto :goto_38

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_61
    move-exception v5

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v1, "fis":Ljava/io/FileInputStream;
    move-object v6, v7

    goto :goto_38

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "jis":Ljava/util/jar/JarInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "jis":Ljava/util/jar/JarInputStream;
    :catchall_65
    move-exception v5

    move-object v3, v4

    .end local v4    # "jis":Ljava/util/jar/JarInputStream;
    .local v3, "jis":Ljava/util/jar/JarInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    move-object v6, v7

    goto :goto_38

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "jis":Ljava/util/jar/JarInputStream;
    :catch_6a
    move-exception v5

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_33

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "jis":Ljava/util/jar/JarInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "jis":Ljava/util/jar/JarInputStream;
    :catch_6d
    move-exception v5

    move-object v3, v4

    .end local v4    # "jis":Ljava/util/jar/JarInputStream;
    .local v3, "jis":Ljava/util/jar/JarInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_33
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)[TA;"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 438
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)[TA;"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Ljava/lang/Package;->getPackageInfo()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getImplementationTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Ljava/lang/Package;->implTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVendor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Ljava/lang/Package;->implVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Ljava/lang/Package;->implVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationVendor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Ljava/lang/Package;->specVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 413
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-super {p0, p1}, Ljava/lang/reflect/AnnotatedElement;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isCompatibleWith(Ljava/lang/String;)Z
    .registers 15
    .param p1, "desired"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 232
    iget-object v8, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    if-eqz v8, :cond_f

    iget-object v8, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v11, :cond_18

    .line 233
    :cond_f
    new-instance v8, Ljava/lang/NumberFormatException;

    const-string/jumbo v9, "Empty version string"

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 236
    :cond_18
    iget-object v8, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    const-string/jumbo v9, "\\."

    invoke-virtual {v8, v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, "sa":[Ljava/lang/String;
    array-length v8, v6

    new-array v7, v8, [I

    .line 238
    .local v7, "si":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    array-length v8, v6

    if-ge v3, v8, :cond_52

    .line 239
    aget-object v8, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v3

    .line 240
    aget v8, v7, v3

    if-gez v8, :cond_4f

    .line 241
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v7, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v8

    throw v8

    .line 238
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 244
    :cond_52
    const-string/jumbo v8, "\\."

    invoke-virtual {p1, v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "da":[Ljava/lang/String;
    array-length v8, v1

    new-array v2, v8, [I

    .line 246
    .local v2, "di":[I
    const/4 v3, 0x0

    :goto_5d
    array-length v8, v1

    if-ge v3, v8, :cond_8a

    .line 247
    aget-object v8, v1, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v2, v3

    .line 248
    aget v8, v2, v3

    if-gez v8, :cond_87

    .line 249
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v8

    throw v8

    .line 246
    :cond_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    .line 252
    :cond_8a
    array-length v8, v2

    array-length v9, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 253
    .local v4, "len":I
    const/4 v3, 0x0

    :goto_91
    if-ge v3, v4, :cond_aa

    .line 254
    array-length v8, v2

    if-ge v3, v8, :cond_a0

    aget v0, v2, v3

    .line 255
    .local v0, "d":I
    :goto_98
    array-length v8, v7

    if-ge v3, v8, :cond_a2

    aget v5, v7, v3

    .line 256
    .local v5, "s":I
    :goto_9d
    if-ge v5, v0, :cond_a4

    .line 257
    return v10

    .line 254
    .end local v0    # "d":I
    .end local v5    # "s":I
    :cond_a0
    const/4 v0, 0x0

    .restart local v0    # "d":I
    goto :goto_98

    .line 255
    :cond_a2
    const/4 v5, 0x0

    .restart local v5    # "s":I
    goto :goto_9d

    .line 258
    :cond_a4
    if-le v5, v0, :cond_a7

    .line 259
    return v11

    .line 253
    :cond_a7
    add-int/lit8 v3, v3, 0x1

    goto :goto_91

    .line 261
    .end local v0    # "d":I
    .end local v5    # "s":I
    :cond_aa
    return v11
.end method

.method public isSealed()Z
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSealed(Ljava/net/URL;)Z
    .registers 3
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 204
    iget-object v0, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    invoke-virtual {p1, v0}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 366
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v1

    .line 367
    .local v1, "targetSdkVersion":I
    if-lez v1, :cond_25

    const/16 v3, 0x18

    if-gt v1, v3, :cond_25

    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 372
    :cond_25
    iget-object v0, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    .line 373
    .local v0, "spec":Ljava/lang/String;
    iget-object v2, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    .line 374
    .local v2, "ver":Ljava/lang/String;
    if-eqz v0, :cond_80

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_80

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    :goto_45
    if-eqz v2, :cond_84

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_84

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ", version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 382
    :goto_61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/lang/Package;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 377
    :cond_80
    const-string/jumbo v0, ""

    goto :goto_45

    .line 381
    :cond_84
    const-string/jumbo v2, ""

    goto :goto_61
.end method
