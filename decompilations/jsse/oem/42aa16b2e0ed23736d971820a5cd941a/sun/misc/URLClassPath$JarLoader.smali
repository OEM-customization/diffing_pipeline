.class Lsun/misc/URLClassPath$JarLoader;
.super Lsun/misc/URLClassPath$Loader;
.source "URLClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/URLClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JarLoader"
.end annotation


# instance fields
.field private final greylist-max-o acc:Ljava/security/AccessControlContext;

.field private greylist-max-o closed:Z

.field private final greylist-max-o csu:Ljava/net/URL;

.field private greylist-max-o handler:Ljava/net/URLStreamHandler;

.field private greylist-max-o index:Lsun/misc/JarIndex;

.field private greylist-max-o jar:Ljava/util/jar/JarFile;

.field private final greylist-max-o lmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lsun/misc/URLClassPath$Loader;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o metaIndex:Lsun/misc/MetaIndex;


# direct methods
.method constructor greylist-max-o <init>(Ljava/net/URL;Ljava/net/URLStreamHandler;Ljava/util/HashMap;Ljava/security/AccessControlContext;)V
    .registers 12
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "jarHandler"    # Ljava/net/URLStreamHandler;
    .param p4, "acc"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/net/URLStreamHandler;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lsun/misc/URLClassPath$Loader;",
            ">;",
            "Ljava/security/AccessControlContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 832
    .local p3, "loaderMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lsun/misc/URLClassPath$Loader;>;"
    new-instance v6, Ljava/net/URL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "jar"

    const-string v2, ""

    const/4 v3, -0x1

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v6}, Lsun/misc/URLClassPath$Loader;-><init>(Ljava/net/URL;)V

    .line 818
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/misc/URLClassPath$JarLoader;->closed:Z

    .line 833
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    .line 834
    iput-object p2, p0, Lsun/misc/URLClassPath$JarLoader;->handler:Ljava/net/URLStreamHandler;

    .line 835
    iput-object p3, p0, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    .line 836
    iput-object p4, p0, Lsun/misc/URLClassPath$JarLoader;->acc:Ljava/security/AccessControlContext;

    .line 838
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$JarLoader;->isOptimizable(Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 839
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    goto :goto_5c

    .line 841
    :cond_35
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_55

    .line 843
    invoke-static {v0}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 844
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 845
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Lsun/misc/MetaIndex;->forJar(Ljava/io/File;)Lsun/misc/MetaIndex;

    move-result-object v2

    iput-object v2, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    .line 852
    if-eqz v2, :cond_55

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_55

    .line 853
    const/4 v2, 0x0

    iput-object v2, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    .line 860
    .end local v1    # "f":Ljava/io/File;
    :cond_55
    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    if-nez v1, :cond_5c

    .line 861
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    .line 864
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_5c
    :goto_5c
    return-void
.end method

.method static synthetic blacklist access$1000(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/MetaIndex;
    .registers 2
    .param p0, "x0"    # Lsun/misc/URLClassPath$JarLoader;

    .line 810
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    return-object v0
.end method

.method static synthetic blacklist access$1100(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lsun/misc/URLClassPath$JarLoader;

    .line 810
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic blacklist access$1300(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URLStreamHandler;
    .registers 2
    .param p0, "x0"    # Lsun/misc/URLClassPath$JarLoader;

    .line 810
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->handler:Ljava/net/URLStreamHandler;

    return-object v0
.end method

.method static synthetic blacklist access$1400(Lsun/misc/URLClassPath$JarLoader;)Ljava/security/AccessControlContext;
    .registers 2
    .param p0, "x0"    # Lsun/misc/URLClassPath$JarLoader;

    .line 810
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->acc:Ljava/security/AccessControlContext;

    return-object v0
.end method

.method static synthetic blacklist access$600(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;
    .registers 2
    .param p0, "x0"    # Lsun/misc/URLClassPath$JarLoader;

    .line 810
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic blacklist access$700(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/jar/JarFile;
    .registers 2
    .param p0, "x0"    # Lsun/misc/URLClassPath$JarLoader;

    .line 810
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method static synthetic blacklist access$702(Lsun/misc/URLClassPath$JarLoader;Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;
    .registers 2
    .param p0, "x0"    # Lsun/misc/URLClassPath$JarLoader;
    .param p1, "x1"    # Ljava/util/jar/JarFile;

    .line 810
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    return-object p1
.end method

.method static synthetic blacklist access$800(Lsun/misc/URLClassPath$JarLoader;Ljava/net/URL;)Ljava/util/jar/JarFile;
    .registers 3
    .param p0, "x0"    # Lsun/misc/URLClassPath$JarLoader;
    .param p1, "x1"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 810
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$JarLoader;->getJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$900(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/JarIndex;
    .registers 2
    .param p0, "x0"    # Lsun/misc/URLClassPath$JarLoader;

    .line 810
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    return-object v0
.end method

.method static synthetic blacklist access$902(Lsun/misc/URLClassPath$JarLoader;Lsun/misc/JarIndex;)Lsun/misc/JarIndex;
    .registers 2
    .param p0, "x0"    # Lsun/misc/URLClassPath$JarLoader;
    .param p1, "x1"    # Lsun/misc/JarIndex;

    .line 810
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    return-object p1
.end method

.method static greylist-max-o checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;
    .registers 3
    .param p0, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 929
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_23

    # getter for: Lsun/misc/URLClassPath;->DISABLE_JAR_CHECKING:Z
    invoke-static {}, Lsun/misc/URLClassPath;->access$1200()Z

    move-result v0

    if-nez v0, :cond_23

    .line 930
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->startsWithLocHeader()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_23

    .line 931
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Jar file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 933
    .local v0, "x":Ljava/io/IOException;
    :try_start_1a
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 936
    goto :goto_22

    .line 934
    :catch_1e
    move-exception v1

    .line 935
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 937
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_22
    throw v0

    .line 940
    .end local v0    # "x":Ljava/io/IOException;
    :cond_23
    :goto_23
    return-object p0
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 886
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    if-nez v0, :cond_17

    .line 888
    :try_start_4
    new-instance v0, Lsun/misc/URLClassPath$JarLoader$1;

    invoke-direct {v0, p0}, Lsun/misc/URLClassPath$JarLoader$1;-><init>(Lsun/misc/URLClassPath$JarLoader;)V

    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader;->acc:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/security/PrivilegedActionException; {:try_start_4 .. :try_end_e} :catch_f

    .line 923
    goto :goto_17

    .line 921
    :catch_f
    move-exception v0

    .line 922
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 925
    .end local v0    # "pae":Ljava/security/PrivilegedActionException;
    :cond_17
    :goto_17
    return-void
.end method

.method private greylist-max-o getJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 945
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$JarLoader;->isOptimizable(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 946
    new-instance v0, Lsun/misc/FileURLMapper;

    invoke-direct {v0, p1}, Lsun/misc/FileURLMapper;-><init>(Ljava/net/URL;)V

    .line 947
    .local v0, "p":Lsun/misc/FileURLMapper;
    invoke-virtual {v0}, Lsun/misc/FileURLMapper;->exists()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 950
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Lsun/misc/FileURLMapper;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lsun/misc/URLClassPath$JarLoader;->checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;

    move-result-object v1

    return-object v1

    .line 948
    :cond_1f
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Lsun/misc/FileURLMapper;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 952
    .end local v0    # "p":Lsun/misc/FileURLMapper;
    :cond_29
    invoke-virtual {p0}, Lsun/misc/URLClassPath$JarLoader;->getBaseURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 953
    .local v0, "uc":Ljava/net/URLConnection;
    sget-object v1, Lsun/misc/URLClassPath;->JAVA_VERSION:Ljava/lang/String;

    const-string v2, "UA-Java-Version"

    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    move-object v1, v0

    check-cast v1, Ljava/net/JarURLConnection;

    invoke-virtual {v1}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v1

    .line 955
    .local v1, "jarFile":Ljava/util/jar/JarFile;
    invoke-static {v1}, Lsun/misc/URLClassPath$JarLoader;->checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o isOptimizable(Ljava/net/URL;)Z
    .registers 4
    .param p1, "url"    # Ljava/net/URL;

    .line 882
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o parseClassPath(Ljava/net/URL;Ljava/lang/String;)[Ljava/net/URL;
    .registers 8
    .param p1, "base"    # Ljava/net/URL;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 1235
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1236
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [Ljava/net/URL;

    .line 1237
    .local v1, "urls":[Ljava/net/URL;
    const/4 v2, 0x0

    .line 1238
    .local v2, "i":I
    :goto_c
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1239
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1240
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    aput-object v4, v1, v2

    .line 1241
    nop

    .end local v3    # "path":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 1242
    goto :goto_c

    .line 1243
    :cond_21
    return-object v1
.end method

.method private greylist-max-o parseExtensionsDependencies()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1226
    return-void
.end method


# virtual methods
.method greylist-max-o checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z
    .param p3, "entry"    # Ljava/util/jar/JarEntry;

    .line 979
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Lsun/misc/URLClassPath$JarLoader;->getBaseURL()Ljava/net/URL;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 980
    .local v1, "url":Ljava/net/URL;
    if-eqz p2, :cond_14

    .line 981
    invoke-static {v1}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V
    :try_end_14
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_14} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_1d
    .catch Ljava/security/AccessControlException; {:try_start_1 .. :try_end_14} :catch_1b

    .line 990
    :cond_14
    nop

    .line 992
    new-instance v0, Lsun/misc/URLClassPath$JarLoader$2;

    invoke-direct {v0, p0, p1, v1, p3}, Lsun/misc/URLClassPath$JarLoader$2;-><init>(Lsun/misc/URLClassPath$JarLoader;Ljava/lang/String;Ljava/net/URL;Ljava/util/jar/JarEntry;)V

    return-object v0

    .line 988
    .end local v1    # "url":Ljava/net/URL;
    :catch_1b
    move-exception v1

    .line 989
    .local v1, "e":Ljava/security/AccessControlException;
    return-object v0

    .line 986
    .end local v1    # "e":Ljava/security/AccessControlException;
    :catch_1d
    move-exception v1

    .line 987
    .local v1, "e":Ljava/io/IOException;
    return-object v0

    .line 983
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1f
    move-exception v1

    .line 984
    .local v1, "e":Ljava/net/MalformedURLException;
    return-object v0
.end method

.method public whitelist core-platform-api test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 869
    iget-boolean v0, p0, Lsun/misc/URLClassPath$JarLoader;->closed:Z

    if-nez v0, :cond_f

    .line 870
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/misc/URLClassPath$JarLoader;->closed:Z

    .line 872
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    .line 873
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    .line 875
    :cond_f
    return-void
.end method

.method greylist-max-o findResource(Ljava/lang/String;Z)Ljava/net/URL;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .line 1040
    invoke-virtual {p0, p1, p2}, Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v0

    .line 1041
    .local v0, "rsc":Lsun/misc/Resource;
    if-eqz v0, :cond_b

    .line 1042
    invoke-virtual {v0}, Lsun/misc/Resource;->getURL()Ljava/net/URL;

    move-result-object v1

    return-object v1

    .line 1044
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method greylist-max-o getClassPath()[Ljava/net/URL;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1195
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1196
    return-object v1

    .line 1199
    :cond_6
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    if-eqz v0, :cond_b

    .line 1200
    return-object v1

    .line 1203
    :cond_b
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    .line 1204
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->parseExtensionsDependencies()V

    .line 1205
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->hasClassPathAttribute()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1206
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 1207
    .local v0, "man":Ljava/util/jar/Manifest;
    if-eqz v0, :cond_36

    .line 1208
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v2

    .line 1209
    .local v2, "attr":Ljava/util/jar/Attributes;
    if-eqz v2, :cond_36

    .line 1210
    sget-object v3, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v2, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 1211
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_36

    .line 1212
    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    invoke-direct {p0, v1, v3}, Lsun/misc/URLClassPath$JarLoader;->parseClassPath(Ljava/net/URL;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v1

    return-object v1

    .line 1217
    .end local v0    # "man":Ljava/util/jar/Manifest;
    .end local v2    # "attr":Ljava/util/jar/Attributes;
    .end local v3    # "value":Ljava/lang/String;
    :cond_36
    return-object v1
.end method

.method greylist-max-o getIndex()Lsun/misc/JarIndex;
    .registers 3

    .line 963
    :try_start_0
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_7

    .line 966
    nop

    .line 967
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    return-object v0

    .line 964
    :catch_7
    move-exception v0

    .line 965
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method greylist getJarFile()Ljava/util/jar/JarFile;
    .registers 2

    .line 878
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method greylist-max-o getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .line 1051
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 1052
    invoke-virtual {v0, p1}, Lsun/misc/MetaIndex;->mayContain(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1053
    return-object v1

    .line 1058
    :cond_c
    :try_start_c
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_2c

    .line 1061
    nop

    .line 1062
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v0, p1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 1063
    .local v0, "entry":Ljava/util/jar/JarEntry;
    if-eqz v0, :cond_1d

    .line 1064
    invoke-virtual {p0, p1, p2, v0}, Lsun/misc/URLClassPath$JarLoader;->checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;

    move-result-object v1

    return-object v1

    .line 1066
    :cond_1d
    iget-object v2, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    if-nez v2, :cond_22

    .line 1067
    return-object v1

    .line 1069
    :cond_22
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1070
    .local v1, "visited":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, v1}, Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;

    move-result-object v2

    return-object v2

    .line 1059
    .end local v0    # "entry":Ljava/util/jar/JarEntry;
    .end local v1    # "visited":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_2c
    move-exception v0

    .line 1060
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method greylist-max-o getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;
    .registers 21
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lsun/misc/Resource;"
        }
    .end annotation

    .line 1085
    .local p3, "visited":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    const/4 v0, 0x0

    .line 1086
    .local v0, "count":I
    const/4 v5, 0x0

    .line 1091
    .local v5, "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v6, v1, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    invoke-virtual {v6, v2}, Lsun/misc/JarIndex;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v6

    move-object v5, v6

    const/4 v7, 0x0

    if-nez v6, :cond_15

    .line 1092
    return-object v7

    .line 1095
    :cond_15
    :goto_15
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    .line 1096
    .local v6, "size":I
    new-array v8, v6, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 1098
    .local v8, "jarFiles":[Ljava/lang/String;
    :goto_21
    if-ge v0, v6, :cond_d5

    .line 1099
    add-int/lit8 v9, v0, 0x1

    .end local v0    # "count":I
    .local v9, "count":I
    aget-object v10, v8, v0

    .line 1104
    .local v10, "jarName":Ljava/lang/String;
    :try_start_27
    new-instance v0, Ljava/net/URL;

    iget-object v11, v1, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    invoke-direct {v0, v11, v10}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v11, v0

    .line 1105
    .local v11, "url":Ljava/net/URL;
    invoke-static {v11}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 1106
    .local v0, "urlNoFragString":Ljava/lang/String;
    iget-object v12, v1, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lsun/misc/URLClassPath$JarLoader;

    move-object v13, v12

    .local v13, "newLoader":Lsun/misc/URLClassPath$JarLoader;
    if-nez v12, :cond_7a

    .line 1110
    new-instance v12, Lsun/misc/URLClassPath$JarLoader$3;

    invoke-direct {v12, v1, v11}, Lsun/misc/URLClassPath$JarLoader$3;-><init>(Lsun/misc/URLClassPath$JarLoader;Ljava/net/URL;)V

    iget-object v14, v1, Lsun/misc/URLClassPath$JarLoader;->acc:Ljava/security/AccessControlContext;

    invoke-static {v12, v14}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lsun/misc/URLClassPath$JarLoader;

    move-object v13, v12

    .line 1122
    invoke-virtual {v13}, Lsun/misc/URLClassPath$JarLoader;->getIndex()Lsun/misc/JarIndex;

    move-result-object v12

    .line 1123
    .local v12, "newIndex":Lsun/misc/JarIndex;
    if-eqz v12, :cond_6e

    .line 1124
    const-string v14, "/"

    invoke-virtual {v10, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 1125
    .local v14, "pos":I
    iget-object v15, v1, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;
    :try_end_5a
    .catch Ljava/security/PrivilegedActionException; {:try_start_27 .. :try_end_5a} :catch_cb
    .catch Ljava/net/MalformedURLException; {:try_start_27 .. :try_end_5a} :catch_c7

    const/4 v7, -0x1

    if-ne v14, v7, :cond_61

    .line 1126
    move-object/from16 v16, v5

    const/4 v5, 0x0

    goto :goto_6a

    :cond_61
    const/4 v7, 0x0

    move-object/from16 v16, v5

    .end local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .local v16, "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    add-int/lit8 v5, v14, 0x1

    :try_start_66
    invoke-virtual {v10, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1125
    :goto_6a
    invoke-virtual {v12, v15, v5}, Lsun/misc/JarIndex;->merge(Lsun/misc/JarIndex;Ljava/lang/String;)V

    goto :goto_70

    .line 1123
    .end local v14    # "pos":I
    .end local v16    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_6e
    move-object/from16 v16, v5

    .line 1130
    .end local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v16    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_70
    iget-object v5, v1, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catch Ljava/security/PrivilegedActionException; {:try_start_66 .. :try_end_75} :catch_78
    .catch Ljava/net/MalformedURLException; {:try_start_66 .. :try_end_75} :catch_76

    goto :goto_7c

    .line 1134
    .end local v0    # "urlNoFragString":Ljava/lang/String;
    .end local v11    # "url":Ljava/net/URL;
    .end local v12    # "newIndex":Lsun/misc/JarIndex;
    .end local v13    # "newLoader":Lsun/misc/URLClassPath$JarLoader;
    :catch_76
    move-exception v0

    goto :goto_ca

    .line 1132
    :catch_78
    move-exception v0

    goto :goto_ce

    .line 1106
    .end local v16    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v0    # "urlNoFragString":Ljava/lang/String;
    .restart local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v11    # "url":Ljava/net/URL;
    .restart local v13    # "newLoader":Lsun/misc/URLClassPath$JarLoader;
    :cond_7a
    move-object/from16 v16, v5

    .line 1136
    .end local v0    # "urlNoFragString":Ljava/lang/String;
    .end local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v16    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_7c
    nop

    .line 1142
    invoke-static {v11}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    move v5, v0

    .line 1143
    .local v5, "visitedURL":Z
    if-nez v5, :cond_b3

    .line 1145
    :try_start_8a
    invoke-direct {v13}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_aa

    .line 1148
    nop

    .line 1149
    iget-object v0, v13, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v0, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 1150
    .local v0, "entry":Ljava/util/jar/JarEntry;
    if-eqz v0, :cond_9b

    .line 1151
    invoke-virtual {v13, v2, v3, v0}, Lsun/misc/URLClassPath$JarLoader;->checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;

    move-result-object v7

    return-object v7

    .line 1158
    :cond_9b
    invoke-virtual {v13, v2}, Lsun/misc/URLClassPath$JarLoader;->validIndex(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a2

    goto :goto_b3

    .line 1160
    :cond_a2
    new-instance v7, Lsun/misc/InvalidJarIndexException;

    const-string v12, "Invalid index"

    invoke-direct {v7, v12}, Lsun/misc/InvalidJarIndexException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1146
    .end local v0    # "entry":Ljava/util/jar/JarEntry;
    :catch_aa
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 1147
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/InternalError;

    invoke-direct {v7, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 1169
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b3
    :goto_b3
    if-nez v5, :cond_cf

    if-eq v13, v1, :cond_cf

    .line 1170
    invoke-virtual {v13}, Lsun/misc/URLClassPath$JarLoader;->getIndex()Lsun/misc/JarIndex;

    move-result-object v0

    if-nez v0, :cond_be

    .line 1171
    goto :goto_cf

    .line 1176
    :cond_be
    invoke-virtual {v13, v2, v3, v4}, Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;

    move-result-object v0

    move-object v7, v0

    .local v7, "res":Lsun/misc/Resource;
    if-eqz v0, :cond_c6

    .line 1178
    return-object v7

    .line 1180
    .end local v5    # "visitedURL":Z
    .end local v10    # "jarName":Ljava/lang/String;
    .end local v11    # "url":Ljava/net/URL;
    .end local v13    # "newLoader":Lsun/misc/URLClassPath$JarLoader;
    :cond_c6
    goto :goto_cf

    .line 1134
    .end local v7    # "res":Lsun/misc/Resource;
    .end local v16    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .local v5, "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v10    # "jarName":Ljava/lang/String;
    :catch_c7
    move-exception v0

    move-object/from16 v16, v5

    .line 1135
    .end local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .local v0, "e":Ljava/net/MalformedURLException;
    .restart local v16    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_ca
    goto :goto_cf

    .line 1132
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .end local v16    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :catch_cb
    move-exception v0

    move-object/from16 v16, v5

    .line 1133
    .end local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    .restart local v16    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_ce
    nop

    .line 1098
    .end local v0    # "pae":Ljava/security/PrivilegedActionException;
    .end local v10    # "jarName":Ljava/lang/String;
    :cond_cf
    :goto_cf
    move v0, v9

    move-object/from16 v5, v16

    const/4 v7, 0x0

    goto/16 :goto_21

    .line 1183
    .end local v9    # "count":I
    .end local v16    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .local v0, "count":I
    .restart local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_d5
    move-object/from16 v16, v5

    .end local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v16    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v5, v1, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    invoke-virtual {v5, v2}, Lsun/misc/JarIndex;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v5

    .line 1186
    .end local v6    # "size":I
    .end local v16    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lt v0, v6, :cond_e5

    .line 1187
    const/4 v6, 0x0

    return-object v6

    .line 1186
    :cond_e5
    const/4 v6, 0x0

    move-object v7, v6

    goto/16 :goto_15
.end method

.method greylist-max-o validIndex(Ljava/lang/String;)Z
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .line 1015
    move-object v0, p1

    .line 1017
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    move v3, v2

    .local v3, "pos":I
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_10

    .line 1018
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1023
    :cond_10
    iget-object v2, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v2}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 1024
    .local v2, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_16
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 1025
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 1026
    .local v6, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1027
    .local v7, "entryName":Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    move v3, v8

    if-eq v8, v4, :cond_31

    .line 1028
    invoke-virtual {v7, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1029
    :cond_31
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1030
    const/4 v1, 0x1

    return v1

    .line 1033
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "entryName":Ljava/lang/String;
    :cond_39
    return v5
.end method
