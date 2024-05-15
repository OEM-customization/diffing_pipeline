.class public Lsun/misc/URLClassPath;
.super Ljava/lang/Object;
.source "URLClassPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/URLClassPath$FileLoader;,
        Lsun/misc/URLClassPath$JarLoader;,
        Lsun/misc/URLClassPath$Loader;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_LOOKUP_CACHE:Z

.field private static final DISABLE_ACC_CHECKING:Z

.field private static final DISABLE_JAR_CHECKING:Z

.field static final JAVA_VERSION:Ljava/lang/String;

.field static final USER_AGENT_JAVA_VERSION:Ljava/lang/String; = "UA-Java-Version"

.field private static volatile lookupCacheEnabled:Z


# instance fields
.field private final acc:Ljava/security/AccessControlContext;

.field private closed:Z

.field private jarHandler:Ljava/net/URLStreamHandler;

.field lmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lsun/misc/URLClassPath$Loader;",
            ">;"
        }
    .end annotation
.end field

.field loaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsun/misc/URLClassPath$Loader;",
            ">;"
        }
    .end annotation
.end field

.field private lookupCacheLoader:Ljava/lang/ClassLoader;

.field private lookupCacheURLs:[Ljava/net/URL;

.field private path:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field urls:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lsun/misc/URLClassPath;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Z
    .registers 1

    sget-boolean v0, Lsun/misc/URLClassPath;->DISABLE_JAR_CHECKING:Z

    return v0
.end method

.method static synthetic -get2(Lsun/misc/URLClassPath;)Ljava/security/AccessControlContext;
    .registers 2
    .param p0, "-this"    # Lsun/misc/URLClassPath;

    .prologue
    iget-object v0, p0, Lsun/misc/URLClassPath;->acc:Ljava/security/AccessControlContext;

    return-object v0
.end method

.method static synthetic -get3(Lsun/misc/URLClassPath;)Ljava/net/URLStreamHandler;
    .registers 2
    .param p0, "-this"    # Lsun/misc/URLClassPath;

    .prologue
    iget-object v0, p0, Lsun/misc/URLClassPath;->jarHandler:Ljava/net/URLStreamHandler;

    return-object v0
.end method

.method static synthetic -wrap0(Lsun/misc/URLClassPath;Ljava/lang/String;)[I
    .registers 3
    .param p0, "-this"    # Lsun/misc/URLClassPath;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath;->getLookupCache(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lsun/misc/URLClassPath;[II)Lsun/misc/URLClassPath$Loader;
    .registers 4
    .param p0, "-this"    # Lsun/misc/URLClassPath;
    .param p1, "cache"    # [I
    .param p2, "index"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lsun/misc/URLClassPath;->getNextLoader([II)Lsun/misc/URLClassPath$Loader;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 75
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v4, "java.version"

    invoke-direct {v1, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lsun/misc/URLClassPath;->JAVA_VERSION:Ljava/lang/String;

    .line 77
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v4, "sun.misc.URLClassPath.debug"

    invoke-direct {v1, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7b

    move v1, v2

    :goto_21
    sput-boolean v1, Lsun/misc/URLClassPath;->DEBUG:Z

    .line 79
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v4, "sun.misc.URLClassPath.debugLookupCache"

    invoke-direct {v1, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7d

    move v1, v2

    :goto_32
    sput-boolean v1, Lsun/misc/URLClassPath;->DEBUG_LOOKUP_CACHE:Z

    .line 81
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v4, "sun.misc.URLClassPath.disableJarChecking"

    invoke-direct {v1, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, "p":Ljava/lang/String;
    if-eqz v0, :cond_81

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7f

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_54
    sput-boolean v1, Lsun/misc/URLClassPath;->DISABLE_JAR_CHECKING:Z

    .line 85
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v4, "jdk.net.URLClassPath.disableRestrictedPermissions"

    invoke-direct {v1, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "p":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 86
    .restart local v0    # "p":Ljava/lang/String;
    if-eqz v0, :cond_83

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_76
    :goto_76
    sput-boolean v2, Lsun/misc/URLClassPath;->DISABLE_ACC_CHECKING:Z

    .line 343
    sput-boolean v3, Lsun/misc/URLClassPath;->lookupCacheEnabled:Z

    .line 65
    return-void

    .end local v0    # "p":Ljava/lang/String;
    :cond_7b
    move v1, v3

    .line 76
    goto :goto_21

    :cond_7d
    move v1, v3

    .line 78
    goto :goto_32

    .restart local v0    # "p":Ljava/lang/String;
    :cond_7f
    move v1, v2

    .line 82
    goto :goto_54

    :cond_81
    move v1, v3

    goto :goto_54

    :cond_83
    move v2, v3

    .line 86
    goto :goto_76
.end method

.method public constructor <init>([Ljava/net/URL;)V
    .registers 3
    .param p1, "urls"    # [Ljava/net/URL;

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, v0, v0}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;Ljava/net/URLStreamHandlerFactory;Ljava/security/AccessControlContext;)V

    .line 146
    return-void
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/net/URLStreamHandlerFactory;Ljava/security/AccessControlContext;)V
    .registers 8
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "factory"    # Ljava/net/URLStreamHandlerFactory;
    .param p3, "acc"    # Ljava/security/AccessControlContext;

    .prologue
    const/4 v3, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    .line 93
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lsun/misc/URLClassPath;->lmap:Ljava/util/HashMap;

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/misc/URLClassPath;->closed:Z

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24
    array-length v1, p1

    if-ge v0, v1, :cond_31

    .line 128
    iget-object v1, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 130
    :cond_31
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath;->push([Ljava/net/URL;)V

    .line 131
    if-eqz p2, :cond_3f

    .line 132
    const-string/jumbo v1, "jar"

    invoke-interface {p2, v1}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/URLClassPath;->jarHandler:Ljava/net/URLStreamHandler;

    .line 134
    :cond_3f
    sget-boolean v1, Lsun/misc/URLClassPath;->DISABLE_ACC_CHECKING:Z

    if-eqz v1, :cond_46

    .line 135
    iput-object v3, p0, Lsun/misc/URLClassPath;->acc:Ljava/security/AccessControlContext;

    .line 138
    :goto_45
    return-void

    .line 137
    :cond_46
    iput-object p3, p0, Lsun/misc/URLClassPath;->acc:Ljava/security/AccessControlContext;

    goto :goto_45
.end method

.method public constructor <init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V
    .registers 4
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "acc"    # Ljava/security/AccessControlContext;

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;Ljava/net/URLStreamHandlerFactory;Ljava/security/AccessControlContext;)V

    .line 150
    return-void
.end method

.method static check(Ljava/net/URL;)V
    .registers 9
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 655
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 656
    .local v3, "security":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_14

    .line 657
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 658
    .local v4, "urlConnection":Ljava/net/URLConnection;
    invoke-virtual {v4}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v1

    .line 659
    .local v1, "perm":Ljava/security/Permission;
    if-eqz v1, :cond_14

    .line 661
    :try_start_11
    invoke-virtual {v3, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_14} :catch_15

    .line 683
    .end local v1    # "perm":Ljava/security/Permission;
    .end local v4    # "urlConnection":Ljava/net/URLConnection;
    :cond_14
    :goto_14
    return-void

    .line 662
    .restart local v1    # "perm":Ljava/security/Permission;
    .restart local v4    # "urlConnection":Ljava/net/URLConnection;
    :catch_15
    move-exception v2

    .line 665
    .local v2, "se":Ljava/lang/SecurityException;
    instance-of v5, v1, Ljava/io/FilePermission;

    if-eqz v5, :cond_2f

    .line 666
    invoke-virtual {v1}, Ljava/security/Permission;->getActions()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "read"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v7, :cond_2f

    .line 667
    invoke-virtual {v1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    goto :goto_14

    .line 668
    :cond_2f
    instance-of v5, v1, Ljava/net/SocketPermission;

    if-eqz v5, :cond_57

    .line 670
    invoke-virtual {v1}, Ljava/security/Permission;->getActions()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "connect"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v7, :cond_57

    .line 671
    move-object v0, p0

    .line 672
    .local v0, "locUrl":Ljava/net/URL;
    instance-of v5, v4, Ljava/net/JarURLConnection;

    if-eqz v5, :cond_4b

    .line 673
    check-cast v4, Ljava/net/JarURLConnection;

    .end local v4    # "urlConnection":Ljava/net/URLConnection;
    invoke-virtual {v4}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v0

    .line 675
    :cond_4b
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 676
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v6

    .line 675
    invoke-virtual {v3, v5, v6}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_14

    .line 678
    .end local v0    # "locUrl":Ljava/net/URL;
    .restart local v4    # "urlConnection":Ljava/net/URLConnection;
    :cond_57
    throw v2
.end method

.method static disableAllLookupCaches()V
    .registers 1

    .prologue
    .line 360
    const/4 v0, 0x0

    sput-boolean v0, Lsun/misc/URLClassPath;->lookupCacheEnabled:Z

    .line 361
    return-void
.end method

.method private ensureLoaderOpened(I)Z
    .registers 5
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 435
    iget-object v0, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_43

    .line 437
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath;->getLoader(I)Lsun/misc/URLClassPath$Loader;

    move-result-object v0

    if-nez v0, :cond_10

    .line 438
    return v1

    .line 440
    :cond_10
    sget-boolean v0, Lsun/misc/URLClassPath;->lookupCacheEnabled:Z

    if-nez v0, :cond_15

    .line 442
    return v1

    .line 444
    :cond_15
    sget-boolean v0, Lsun/misc/URLClassPath;->DEBUG_LOOKUP_CACHE:Z

    if-eqz v0, :cond_43

    .line 445
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expanded loaders "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 446
    const-string/jumbo v2, " to index="

    .line 445
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 449
    :cond_43
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized getLoader(I)Lsun/misc/URLClassPath$Loader;
    .registers 12
    .param p1, "index"    # I

    .prologue
    const/4 v9, 0x0

    monitor-enter p0

    .line 513
    :try_start_2
    iget-boolean v6, p0, Lsun/misc/URLClassPath;->closed:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_38

    if-eqz v6, :cond_1d

    monitor-exit p0

    .line 514
    return-object v9

    .line 525
    :cond_8
    :try_start_8
    iget-object v6, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_35

    .local v3, "url":Ljava/net/URL;
    :try_start_10
    monitor-exit v7

    .line 531
    invoke-static {v3}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    .line 532
    .local v4, "urlNoFragString":Ljava/lang/String;
    iget-object v6, p0, Lsun/misc/URLClassPath;->lmap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 518
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "urlNoFragString":Ljava/lang/String;
    :cond_1d
    :goto_1d
    iget-object v6, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v7, p1, 0x1

    if-ge v6, v7, :cond_86

    .line 521
    iget-object v7, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    monitor-enter v7
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_38

    .line 522
    :try_start_2a
    iget-object v6, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->empty()Z
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_35

    move-result v6

    if-eqz v6, :cond_8

    :try_start_32
    monitor-exit v7
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_38

    monitor-exit p0

    .line 523
    return-object v9

    .line 521
    :catchall_35
    move-exception v6

    :try_start_36
    monitor-exit v7

    throw v6
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v6

    monitor-exit p0

    throw v6

    .line 538
    .restart local v3    # "url":Ljava/net/URL;
    .restart local v4    # "urlNoFragString":Ljava/lang/String;
    :cond_3b
    :try_start_3b
    invoke-direct {p0, v3}, Lsun/misc/URLClassPath;->getLoader(Ljava/net/URL;)Lsun/misc/URLClassPath$Loader;

    move-result-object v1

    .line 541
    .local v1, "loader":Lsun/misc/URLClassPath$Loader;
    invoke-virtual {v1}, Lsun/misc/URLClassPath$Loader;->getClassPath()[Ljava/net/URL;

    move-result-object v5

    .line 542
    .local v5, "urls":[Ljava/net/URL;
    if-eqz v5, :cond_48

    .line 543
    invoke-direct {p0, v5}, Lsun/misc/URLClassPath;->push([Ljava/net/URL;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_48} :catch_ad
    .catch Ljava/lang/SecurityException; {:try_start_3b .. :try_end_48} :catch_5c
    .catchall {:try_start_3b .. :try_end_48} :catchall_38

    .line 558
    :cond_48
    :try_start_48
    iget-object v6, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {p0, v6, v4}, Lsun/misc/URLClassPath;->validateLookupCache(ILjava/lang/String;)V

    .line 559
    iget-object v6, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v6, p0, Lsun/misc/URLClassPath;->lmap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 548
    .end local v1    # "loader":Lsun/misc/URLClassPath$Loader;
    .end local v5    # "urls":[Ljava/net/URL;
    :catch_5c
    move-exception v2

    .line 552
    .local v2, "se":Ljava/lang/SecurityException;
    sget-boolean v6, Lsun/misc/URLClassPath;->DEBUG:Z

    if-eqz v6, :cond_1d

    .line 553
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to access "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1d

    .line 562
    .end local v2    # "se":Ljava/lang/SecurityException;
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "urlNoFragString":Ljava/lang/String;
    :cond_86
    sget-boolean v6, Lsun/misc/URLClassPath;->DEBUG_LOOKUP_CACHE:Z

    if-eqz v6, :cond_a3

    .line 563
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "NOCACHE: Loading from : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 565
    :cond_a3
    iget-object v6, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/misc/URLClassPath$Loader;
    :try_end_ab
    .catchall {:try_start_48 .. :try_end_ab} :catchall_38

    monitor-exit p0

    return-object v6

    .line 545
    .restart local v3    # "url":Ljava/net/URL;
    .restart local v4    # "urlNoFragString":Ljava/lang/String;
    :catch_ad
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_1d
.end method

.method private getLoader(Ljava/net/URL;)Lsun/misc/URLClassPath$Loader;
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    :try_start_0
    new-instance v1, Lsun/misc/URLClassPath$3;

    invoke-direct {v1, p0, p1}, Lsun/misc/URLClassPath$3;-><init>(Lsun/misc/URLClassPath;Ljava/net/URL;)V

    .line 587
    iget-object v2, p0, Lsun/misc/URLClassPath;->acc:Ljava/security/AccessControlContext;

    .line 573
    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/URLClassPath$Loader;
    :try_end_d
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v1

    .line 588
    :catch_e
    move-exception v0

    .line 589
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method private declared-synchronized getLookupCache(Ljava/lang/String;)[I
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    monitor-enter p0

    .line 415
    :try_start_2
    iget-object v2, p0, Lsun/misc/URLClassPath;->lookupCacheURLs:[Ljava/net/URL;

    if-eqz v2, :cond_c

    sget-boolean v2, Lsun/misc/URLClassPath;->lookupCacheEnabled:Z
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_56

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_e

    :cond_c
    monitor-exit p0

    .line 416
    return-object v5

    .line 419
    :cond_e
    :try_start_e
    iget-object v2, p0, Lsun/misc/URLClassPath;->lookupCacheLoader:Ljava/lang/ClassLoader;

    invoke-static {v2, p1}, Lsun/misc/URLClassPath;->getLookupCacheForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)[I

    move-result-object v0

    .line 420
    .local v0, "cache":[I
    if-eqz v0, :cond_54

    array-length v2, v0

    if-lez v2, :cond_54

    .line 421
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget v1, v0, v2

    .line 422
    .local v1, "maxindex":I
    invoke-direct {p0, v1}, Lsun/misc/URLClassPath;->ensureLoaderOpened(I)Z

    move-result v2

    if-nez v2, :cond_54

    .line 423
    sget-boolean v2, Lsun/misc/URLClassPath;->DEBUG_LOOKUP_CACHE:Z

    if-eqz v2, :cond_52

    .line 424
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expanded loaders FAILED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 425
    iget-object v4, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 424
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 425
    const-string/jumbo v4, " for maxindex="

    .line 424
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_e .. :try_end_52} :catchall_56

    :cond_52
    monitor-exit p0

    .line 427
    return-object v5

    .end local v1    # "maxindex":I
    :cond_54
    monitor-exit p0

    .line 431
    return-object v0

    .end local v0    # "cache":[I
    :catchall_56
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static getLookupCacheForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)[I
    .registers 3
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 377
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLookupCacheURLs(Ljava/lang/ClassLoader;)[Ljava/net/URL;
    .registers 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 373
    const/4 v0, 0x0

    return-object v0
.end method

.method private declared-synchronized getNextLoader([II)Lsun/misc/URLClassPath$Loader;
    .registers 7
    .param p1, "cache"    # [I
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 488
    :try_start_2
    iget-boolean v1, p0, Lsun/misc/URLClassPath;->closed:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_4f

    if-eqz v1, :cond_8

    monitor-exit p0

    .line 489
    return-object v2

    .line 491
    :cond_8
    if-eqz p1, :cond_49

    .line 492
    :try_start_a
    array-length v1, p1

    if-ge p2, v1, :cond_47

    .line 493
    iget-object v1, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    aget v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/URLClassPath$Loader;

    .line 494
    .local v0, "loader":Lsun/misc/URLClassPath$Loader;
    sget-boolean v1, Lsun/misc/URLClassPath;->DEBUG_LOOKUP_CACHE:Z

    if-eqz v1, :cond_45

    .line 495
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HASCACHE: Loading from : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 496
    const-string/jumbo v3, " = "

    .line 495
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 496
    invoke-virtual {v0}, Lsun/misc/URLClassPath$Loader;->getBaseURL()Ljava/net/URL;

    move-result-object v3

    .line 495
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_a .. :try_end_45} :catchall_4f

    :cond_45
    monitor-exit p0

    .line 498
    return-object v0

    .end local v0    # "loader":Lsun/misc/URLClassPath$Loader;
    :cond_47
    monitor-exit p0

    .line 500
    return-object v2

    .line 503
    :cond_49
    :try_start_49
    invoke-direct {p0, p2}, Lsun/misc/URLClassPath;->getLoader(I)Lsun/misc/URLClassPath$Loader;
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4f

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_4f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static knownToNotExist0(Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .registers 3
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public static pathToURLs(Ljava/lang/String;)[Ljava/net/URL;
    .registers 11
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 611
    new-instance v4, Ljava/util/StringTokenizer;

    sget-object v8, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v4, p0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .local v4, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v8

    new-array v6, v8, [Ljava/net/URL;

    .line 613
    .local v6, "urls":[Ljava/net/URL;
    const/4 v0, 0x0

    .line 614
    .local v0, "count":I
    :goto_f
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_32

    .line 615
    new-instance v2, Ljava/io/File;

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 617
    .local v2, "f":Ljava/io/File;
    :try_start_1e
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_27} :catch_3e

    .end local v2    # "f":Ljava/io/File;
    .local v3, "f":Ljava/io/File;
    move-object v2, v3

    .line 622
    .end local v3    # "f":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    :goto_28
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    :try_start_2a
    invoke-static {v2}, Lsun/net/www/ParseUtil;->fileToEncodedURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v8

    aput-object v8, v6, v0
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_30} :catch_3c

    :goto_30
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_f

    .line 626
    .end local v2    # "f":Ljava/io/File;
    :cond_32
    array-length v8, v6

    if-eq v8, v0, :cond_3b

    .line 627
    new-array v5, v0, [Ljava/net/URL;

    .line 628
    .local v5, "tmp":[Ljava/net/URL;
    invoke-static {v6, v9, v5, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 629
    move-object v6, v5

    .line 631
    .end local v5    # "tmp":[Ljava/net/URL;
    :cond_3b
    return-object v6

    .line 623
    .end local v0    # "count":I
    .restart local v1    # "count":I
    .restart local v2    # "f":Ljava/io/File;
    :catch_3c
    move-exception v7

    .local v7, "x":Ljava/io/IOException;
    goto :goto_30

    .line 618
    .end local v1    # "count":I
    .end local v7    # "x":Ljava/io/IOException;
    .restart local v0    # "count":I
    :catch_3e
    move-exception v7

    .restart local v7    # "x":Ljava/io/IOException;
    goto :goto_28
.end method

.method private push([Ljava/net/URL;)V
    .registers 6
    .param p1, "us"    # [Ljava/net/URL;

    .prologue
    .line 597
    iget-object v2, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    monitor-enter v2

    .line 598
    :try_start_3
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_12

    .line 599
    iget-object v1, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_14

    .line 598
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_12
    monitor-exit v2

    .line 602
    return-void

    .line 597
    .end local v0    # "i":I
    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private declared-synchronized validateLookupCache(ILjava/lang/String;)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "urlNoFragString"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 461
    :try_start_1
    iget-object v0, p0, Lsun/misc/URLClassPath;->lookupCacheURLs:[Ljava/net/URL;

    if-eqz v0, :cond_42

    sget-boolean v0, Lsun/misc/URLClassPath;->lookupCacheEnabled:Z

    if-eqz v0, :cond_42

    .line 462
    iget-object v0, p0, Lsun/misc/URLClassPath;->lookupCacheURLs:[Ljava/net/URL;

    array-length v0, v0

    if-ge p1, v0, :cond_1e

    .line 464
    iget-object v0, p0, Lsun/misc/URLClassPath;->lookupCacheURLs:[Ljava/net/URL;

    aget-object v0, v0, p1

    invoke-static {v0}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_44

    move-result v0

    .line 462
    if-eqz v0, :cond_1e

    monitor-exit p0

    .line 465
    return-void

    .line 467
    :cond_1e
    :try_start_1e
    sget-boolean v0, Lsun/misc/URLClassPath;->DEBUG:Z

    if-nez v0, :cond_26

    sget-boolean v0, Lsun/misc/URLClassPath;->DEBUG_LOOKUP_CACHE:Z

    if-eqz v0, :cond_3f

    .line 468
    :cond_26
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WARNING: resource lookup cache invalidated for lookupCacheLoader at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 471
    :cond_3f
    invoke-static {}, Lsun/misc/URLClassPath;->disableAllLookupCaches()V
    :try_end_42
    .catchall {:try_start_1e .. :try_end_42} :catchall_44

    :cond_42
    monitor-exit p0

    .line 473
    return-void

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addURL(Ljava/net/URL;)V
    .registers 5
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    monitor-enter p0

    .line 176
    :try_start_1
    iget-boolean v0, p0, Lsun/misc/URLClassPath;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2f

    if-eqz v0, :cond_7

    monitor-exit p0

    .line 177
    return-void

    .line 178
    :cond_7
    :try_start_7
    iget-object v1, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_2f

    .line 179
    if-eqz p1, :cond_14

    :try_start_c
    iget-object v0, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_2c

    move-result v0

    if-eqz v0, :cond_17

    :cond_14
    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_2f

    monitor-exit p0

    .line 180
    return-void

    .line 182
    :cond_17
    :try_start_17
    iget-object v0, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/util/Stack;->add(ILjava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lsun/misc/URLClassPath;->lookupCacheURLs:[Ljava/net/URL;

    if-eqz v0, :cond_29

    .line 188
    invoke-static {}, Lsun/misc/URLClassPath;->disableAllLookupCaches()V
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_2c

    :cond_29
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2f

    monitor-exit p0

    .line 191
    return-void

    .line 178
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1

    throw v0
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkURL(Ljava/net/URL;)Ljava/net/URL;
    .registers 4
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 641
    :try_start_0
    invoke-static {p1}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 646
    return-object p1

    .line 642
    :catch_4
    move-exception v0

    .line 643
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public declared-synchronized closeLoaders()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 153
    :try_start_1
    iget-boolean v4, p0, Lsun/misc/URLClassPath;->closed:Z

    if-eqz v4, :cond_b

    .line 154
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2b

    move-result-object v4

    monitor-exit p0

    return-object v4

    .line 156
    :cond_b
    :try_start_b
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 157
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    iget-object v4, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "loader$iterator":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/URLClassPath$Loader;
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_2b

    .line 159
    .local v1, "loader":Lsun/misc/URLClassPath$Loader;
    :try_start_22
    invoke-virtual {v1}, Lsun/misc/URLClassPath$Loader;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26
    .catchall {:try_start_22 .. :try_end_25} :catchall_2b

    goto :goto_16

    .line 160
    :catch_26
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    :try_start_27
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_16

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "loader":Lsun/misc/URLClassPath$Loader;
    .end local v2    # "loader$iterator":Ljava/util/Iterator;
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    :catchall_2b
    move-exception v4

    monitor-exit p0

    throw v4

    .line 164
    .restart local v2    # "loader$iterator":Ljava/util/Iterator;
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    :cond_2e
    const/4 v4, 0x1

    :try_start_2f
    iput-boolean v4, p0, Lsun/misc/URLClassPath;->closed:Z
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_2b

    monitor-exit p0

    .line 165
    return-object v3
.end method

.method public findResource(Ljava/lang/String;Z)Ljava/net/URL;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .prologue
    const/4 v4, 0x0

    .line 213
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath;->getLookupCache(Ljava/lang/String;)[I

    move-result-object v0

    .line 214
    .local v0, "cache":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-direct {p0, v0, v1}, Lsun/misc/URLClassPath;->getNextLoader([II)Lsun/misc/URLClassPath$Loader;

    move-result-object v2

    .local v2, "loader":Lsun/misc/URLClassPath$Loader;
    if-eqz v2, :cond_16

    .line 215
    invoke-virtual {v2, p1, p2}, Lsun/misc/URLClassPath$Loader;->findResource(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v3

    .line 216
    .local v3, "url":Ljava/net/URL;
    if-eqz v3, :cond_13

    .line 217
    return-object v3

    .line 214
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 220
    .end local v3    # "url":Ljava/net/URL;
    :cond_16
    return-object v4
.end method

.method public findResources(Ljava/lang/String;Z)Ljava/util/Enumeration;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Lsun/misc/URLClassPath$1;

    invoke-direct {v0, p0, p1, p2}, Lsun/misc/URLClassPath$1;-><init>(Lsun/misc/URLClassPath;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lsun/misc/Resource;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 292
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsun/misc/URLClassPath;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .prologue
    const/4 v7, 0x0

    .line 232
    sget-boolean v4, Lsun/misc/URLClassPath;->DEBUG:Z

    if-eqz v4, :cond_25

    .line 233
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "URLClassPath.getResource(\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    :cond_25
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath;->getLookupCache(Ljava/lang/String;)[I

    move-result-object v0

    .line 238
    .local v0, "cache":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2a
    invoke-direct {p0, v0, v1}, Lsun/misc/URLClassPath;->getNextLoader([II)Lsun/misc/URLClassPath$Loader;

    move-result-object v2

    .local v2, "loader":Lsun/misc/URLClassPath$Loader;
    if-eqz v2, :cond_3a

    .line 239
    invoke-virtual {v2, p1, p2}, Lsun/misc/URLClassPath$Loader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v3

    .line 240
    .local v3, "res":Lsun/misc/Resource;
    if-eqz v3, :cond_37

    .line 241
    return-object v3

    .line 238
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 244
    .end local v3    # "res":Lsun/misc/Resource;
    :cond_3a
    return-object v7
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Lsun/misc/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsun/misc/URLClassPath;->getResources(Ljava/lang/String;Z)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getResources(Ljava/lang/String;Z)Ljava/util/Enumeration;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Enumeration",
            "<",
            "Lsun/misc/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Lsun/misc/URLClassPath$2;

    invoke-direct {v0, p0, p1, p2}, Lsun/misc/URLClassPath$2;-><init>(Lsun/misc/URLClassPath;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getURLs()[Ljava/net/URL;
    .registers 4

    .prologue
    .line 197
    iget-object v1, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    monitor-enter v1

    .line 198
    :try_start_3
    iget-object v0, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    iget-object v2, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/net/URL;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-object v0

    .line 197
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method declared-synchronized initLookupCache(Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    monitor-enter p0

    .line 351
    :try_start_1
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath;->getLookupCacheURLs(Ljava/lang/ClassLoader;)[Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/URLClassPath;->lookupCacheURLs:[Ljava/net/URL;

    if-eqz v0, :cond_d

    .line 352
    iput-object p1, p0, Lsun/misc/URLClassPath;->lookupCacheLoader:Ljava/lang/ClassLoader;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    :goto_b
    monitor-exit p0

    .line 357
    return-void

    .line 355
    :cond_d
    :try_start_d
    invoke-static {}, Lsun/misc/URLClassPath;->disableAllLookupCaches()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    goto :goto_b

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized knownToNotExist(Ljava/lang/String;)Z
    .registers 3
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 387
    :try_start_1
    iget-object v0, p0, Lsun/misc/URLClassPath;->lookupCacheURLs:[Ljava/net/URL;

    if-eqz v0, :cond_11

    sget-boolean v0, Lsun/misc/URLClassPath;->lookupCacheEnabled:Z

    if-eqz v0, :cond_11

    .line 388
    iget-object v0, p0, Lsun/misc/URLClassPath;->lookupCacheLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, p1}, Lsun/misc/URLClassPath;->knownToNotExist0(Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    move-result v0

    monitor-exit p0

    return v0

    .line 392
    :cond_11
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
