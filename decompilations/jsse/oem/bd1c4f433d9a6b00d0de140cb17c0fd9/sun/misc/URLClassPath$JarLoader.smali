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
.field private final acc:Ljava/security/AccessControlContext;

.field private closed:Z

.field private final csu:Ljava/net/URL;

.field private handler:Ljava/net/URLStreamHandler;

.field private index:Lsun/misc/JarIndex;

.field private jar:Ljava/util/jar/JarFile;

.field private final lmap:Ljava/util/HashMap;
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

.field private metaIndex:Lsun/misc/MetaIndex;


# direct methods
.method static synthetic -get0(Lsun/misc/URLClassPath$JarLoader;)Ljava/security/AccessControlContext;
    .registers 2
    .param p0, "-this"    # Lsun/misc/URLClassPath$JarLoader;

    .prologue
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->acc:Ljava/security/AccessControlContext;

    return-object v0
.end method

.method static synthetic -get1(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;
    .registers 2
    .param p0, "-this"    # Lsun/misc/URLClassPath$JarLoader;

    .prologue
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic -get2(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URLStreamHandler;
    .registers 2
    .param p0, "-this"    # Lsun/misc/URLClassPath$JarLoader;

    .prologue
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->handler:Ljava/net/URLStreamHandler;

    return-object v0
.end method

.method static synthetic -get3(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/JarIndex;
    .registers 2
    .param p0, "-this"    # Lsun/misc/URLClassPath$JarLoader;

    .prologue
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    return-object v0
.end method

.method static synthetic -get4(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/jar/JarFile;
    .registers 2
    .param p0, "-this"    # Lsun/misc/URLClassPath$JarLoader;

    .prologue
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method static synthetic -get5(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/HashMap;
    .registers 2
    .param p0, "-this"    # Lsun/misc/URLClassPath$JarLoader;

    .prologue
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get6(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/MetaIndex;
    .registers 2
    .param p0, "-this"    # Lsun/misc/URLClassPath$JarLoader;

    .prologue
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    return-object v0
.end method

.method static synthetic -set0(Lsun/misc/URLClassPath$JarLoader;Lsun/misc/JarIndex;)Lsun/misc/JarIndex;
    .registers 2
    .param p0, "-this"    # Lsun/misc/URLClassPath$JarLoader;
    .param p1, "-value"    # Lsun/misc/JarIndex;

    .prologue
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    return-object p1
.end method

.method static synthetic -set1(Lsun/misc/URLClassPath$JarLoader;Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;
    .registers 2
    .param p0, "-this"    # Lsun/misc/URLClassPath$JarLoader;
    .param p1, "-value"    # Ljava/util/jar/JarFile;

    .prologue
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    return-object p1
.end method

.method static synthetic -wrap0(Lsun/misc/URLClassPath$JarLoader;Ljava/net/URL;)Ljava/util/jar/JarFile;
    .registers 3
    .param p0, "-this"    # Lsun/misc/URLClassPath$JarLoader;
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$JarLoader;->getJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Ljava/net/URL;Ljava/net/URLStreamHandler;Ljava/util/HashMap;Ljava/security/AccessControlContext;)V
    .registers 14
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "jarHandler"    # Ljava/net/URLStreamHandler;
    .param p4, "acc"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/net/URLStreamHandler;",
            "Ljava/util/HashMap",
            "<",
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

    .prologue
    .local p3, "loaderMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lsun/misc/URLClassPath$Loader;>;"
    const/4 v8, 0x0

    .line 832
    new-instance v0, Ljava/net/URL;

    const-string/jumbo v1, "jar"

    const-string/jumbo v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "!/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, -0x1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0}, Lsun/misc/URLClassPath$Loader;-><init>(Ljava/net/URL;)V

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

    if-nez v0, :cond_3a

    .line 839
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    .line 864
    :cond_39
    :goto_39
    return-void

    .line 841
    :cond_3a
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v7

    .line 842
    .local v7, "fileName":Ljava/lang/String;
    if-eqz v7, :cond_5d

    .line 843
    invoke-static {v7}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 844
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 845
    .local v6, "f":Ljava/io/File;
    invoke-static {v6}, Lsun/misc/MetaIndex;->forJar(Ljava/io/File;)Lsun/misc/MetaIndex;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    .line 852
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    if-eqz v0, :cond_5d

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5d

    .line 853
    iput-object v8, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    .line 860
    .end local v6    # "f":Ljava/io/File;
    :cond_5d
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    if-nez v0, :cond_39

    .line 861
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    goto :goto_39
.end method

.method static checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;
    .registers 4
    .param p0, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 929
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-static {}, Lsun/misc/URLClassPath;->-get1()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_27

    .line 930
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->startsWithLocHeader()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 929
    if-eqz v2, :cond_27

    .line 931
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid Jar file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 933
    .local v1, "x":Ljava/io/IOException;
    :try_start_1e
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    .line 937
    :goto_21
    throw v1

    .line 934
    :catch_22
    move-exception v0

    .line 935
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_21

    .line 940
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "x":Ljava/io/IOException;
    :cond_27
    return-object p0
.end method

.method private ensureOpen()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    if-nez v1, :cond_e

    .line 889
    :try_start_4
    new-instance v1, Lsun/misc/URLClassPath$JarLoader$1;

    invoke-direct {v1, p0}, Lsun/misc/URLClassPath$JarLoader$1;-><init>(Lsun/misc/URLClassPath$JarLoader;)V

    .line 920
    iget-object v2, p0, Lsun/misc/URLClassPath$JarLoader;->acc:Ljava/security/AccessControlContext;

    .line 888
    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/security/PrivilegedActionException; {:try_start_4 .. :try_end_e} :catch_f

    .line 925
    :cond_e
    return-void

    .line 921
    :catch_f
    move-exception v0

    .line 922
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method private getJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .registers 7
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 945
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$JarLoader;->isOptimizable(Ljava/net/URL;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 946
    new-instance v1, Lsun/misc/FileURLMapper;

    invoke-direct {v1, p1}, Lsun/misc/FileURLMapper;-><init>(Ljava/net/URL;)V

    .line 947
    .local v1, "p":Lsun/misc/FileURLMapper;
    invoke-virtual {v1}, Lsun/misc/FileURLMapper;->exists()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 948
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-virtual {v1}, Lsun/misc/FileURLMapper;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 950
    :cond_1b
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Lsun/misc/FileURLMapper;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lsun/misc/URLClassPath$JarLoader;->checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;

    move-result-object v3

    return-object v3

    .line 952
    .end local v1    # "p":Lsun/misc/FileURLMapper;
    :cond_29
    invoke-virtual {p0}, Lsun/misc/URLClassPath$JarLoader;->getBaseURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 953
    .local v2, "uc":Ljava/net/URLConnection;
    const-string/jumbo v3, "UA-Java-Version"

    sget-object v4, Lsun/misc/URLClassPath;->JAVA_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    check-cast v2, Ljava/net/JarURLConnection;

    .end local v2    # "uc":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v0

    .line 955
    .local v0, "jarFile":Ljava/util/jar/JarFile;
    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;

    move-result-object v3

    return-object v3
.end method

.method private isOptimizable(Ljava/net/URL;)Z
    .registers 4
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 882
    const-string/jumbo v0, "file"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private parseClassPath(Ljava/net/URL;Ljava/lang/String;)[Ljava/net/URL;
    .registers 8
    .param p1, "base"    # Ljava/net/URL;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1235
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1236
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v3, v4, [Ljava/net/URL;

    .line 1237
    .local v3, "urls":[Ljava/net/URL;
    const/4 v0, 0x0

    .line 1238
    .local v0, "i":I
    :goto_c
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1239
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 1240
    .local v1, "path":Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 1241
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1243
    .end local v1    # "path":Ljava/lang/String;
    :cond_20
    return-object v3
.end method

.method private parseExtensionsDependencies()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1226
    return-void
.end method


# virtual methods
.method checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z
    .param p3, "entry"    # Ljava/util/jar/JarEntry;

    .prologue
    const/4 v6, 0x0

    .line 979
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p0}, Lsun/misc/URLClassPath$JarLoader;->getBaseURL()Ljava/net/URL;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p1, v5}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 980
    .local v3, "url":Ljava/net/URL;
    if-eqz p2, :cond_14

    .line 981
    invoke-static {v3}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V
    :try_end_14
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_14} :catch_1e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_1c
    .catch Ljava/security/AccessControlException; {:try_start_1 .. :try_end_14} :catch_1a

    .line 992
    :cond_14
    new-instance v4, Lsun/misc/URLClassPath$JarLoader$2;

    invoke-direct {v4, p0, p1, v3, p3}, Lsun/misc/URLClassPath$JarLoader$2;-><init>(Lsun/misc/URLClassPath$JarLoader;Ljava/lang/String;Ljava/net/URL;Ljava/util/jar/JarEntry;)V

    return-object v4

    .line 988
    .end local v3    # "url":Ljava/net/URL;
    :catch_1a
    move-exception v2

    .line 989
    .local v2, "e":Ljava/security/AccessControlException;
    return-object v6

    .line 986
    .end local v2    # "e":Ljava/security/AccessControlException;
    :catch_1c
    move-exception v0

    .line 987
    .local v0, "e":Ljava/io/IOException;
    return-object v6

    .line 983
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1e
    move-exception v1

    .line 984
    .local v1, "e":Ljava/net/MalformedURLException;
    return-object v6
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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

.method findResource(Ljava/lang/String;Z)Ljava/net/URL;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1040
    invoke-virtual {p0, p1, p2}, Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v0

    .line 1041
    .local v0, "rsc":Lsun/misc/Resource;
    if-eqz v0, :cond_c

    .line 1042
    invoke-virtual {v0}, Lsun/misc/Resource;->getURL()Ljava/net/URL;

    move-result-object v1

    return-object v1

    .line 1044
    :cond_c
    return-object v1
.end method

.method getClassPath()[Ljava/net/URL;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1195
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    if-eqz v3, :cond_6

    .line 1196
    return-object v4

    .line 1199
    :cond_6
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    if-eqz v3, :cond_b

    .line 1200
    return-object v4

    .line 1203
    :cond_b
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    .line 1204
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->parseExtensionsDependencies()V

    .line 1205
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->hasClassPathAttribute()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1206
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v1

    .line 1207
    .local v1, "man":Ljava/util/jar/Manifest;
    if-eqz v1, :cond_36

    .line 1208
    invoke-virtual {v1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    .line 1209
    .local v0, "attr":Ljava/util/jar/Attributes;
    if-eqz v0, :cond_36

    .line 1210
    sget-object v3, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    .line 1211
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_36

    .line 1212
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    invoke-direct {p0, v3, v2}, Lsun/misc/URLClassPath$JarLoader;->parseClassPath(Ljava/net/URL;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v3

    return-object v3

    .line 1217
    .end local v0    # "attr":Ljava/util/jar/Attributes;
    .end local v1    # "man":Ljava/util/jar/Manifest;
    .end local v2    # "value":Ljava/lang/String;
    :cond_36
    return-object v4
.end method

.method getIndex()Lsun/misc/JarIndex;
    .registers 3

    .prologue
    .line 963
    :try_start_0
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_6

    .line 967
    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    return-object v1

    .line 964
    :catch_6
    move-exception v0

    .line 965
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method getJarFile()Ljava/util/jar/JarFile;
    .registers 2

    .prologue
    .line 878
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1051
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    if-eqz v3, :cond_e

    .line 1052
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->metaIndex:Lsun/misc/MetaIndex;

    invoke-virtual {v3, p1}, Lsun/misc/MetaIndex;->mayContain(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1053
    return-object v4

    .line 1058
    :cond_e
    :try_start_e
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_1e

    .line 1062
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v3, p1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v1

    .line 1063
    .local v1, "entry":Ljava/util/jar/JarEntry;
    if-eqz v1, :cond_25

    .line 1064
    invoke-virtual {p0, p1, p2, v1}, Lsun/misc/URLClassPath$JarLoader;->checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;

    move-result-object v3

    return-object v3

    .line 1059
    .end local v1    # "entry":Ljava/util/jar/JarEntry;
    :catch_1e
    move-exception v0

    .line 1060
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1066
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "entry":Ljava/util/jar/JarEntry;
    :cond_25
    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    if-nez v3, :cond_2a

    .line 1067
    return-object v4

    .line 1069
    :cond_2a
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1070
    .local v2, "visited":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, v2}, Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;

    move-result-object v3

    return-object v3
.end method

.method getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;
    .registers 27
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lsun/misc/Resource;"
        }
    .end annotation

    .prologue
    .line 1085
    .local p3, "visited":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1086
    .local v3, "count":I
    const/4 v9, 0x0

    .line 1091
    .local v9, "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lsun/misc/JarIndex;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v9

    .local v9, "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-nez v9, :cond_2c

    .line 1092
    const/16 v20, 0x0

    return-object v20

    .line 1183
    .end local v3    # "count":I
    .local v4, "count":I
    .local v8, "jarFiles":[Ljava/lang/String;
    .local v16, "size":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lsun/misc/JarIndex;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v9

    .line 1186
    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v4, v0, :cond_12c

    move v3, v4

    .line 1095
    .end local v4    # "count":I
    .end local v8    # "jarFiles":[Ljava/lang/String;
    .end local v16    # "size":I
    .restart local v3    # "count":I
    :cond_2c
    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v16

    .line 1096
    .restart local v16    # "size":I
    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .restart local v8    # "jarFiles":[Ljava/lang/String;
    move v4, v3

    .line 1098
    .end local v3    # "count":I
    .restart local v4    # "count":I
    :goto_3f
    move/from16 v0, v16

    if-ge v4, v0, :cond_15

    .line 1099
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    aget-object v10, v8, v4

    .line 1104
    .local v10, "jarName":Ljava/lang/String;
    :try_start_47
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v10}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 1105
    .local v17, "url":Ljava/net/URL;
    invoke-static/range {v17 .. v17}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v18

    .line 1106
    .local v18, "urlNoFragString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lsun/misc/URLClassPath$JarLoader;

    .local v12, "newLoader":Lsun/misc/URLClassPath$JarLoader;
    if-nez v12, :cond_b4

    .line 1111
    new-instance v20, Lsun/misc/URLClassPath$JarLoader$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lsun/misc/URLClassPath$JarLoader$3;-><init>(Lsun/misc/URLClassPath$JarLoader;Ljava/net/URL;)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->acc:Ljava/security/AccessControlContext;

    move-object/from16 v21, v0

    .line 1110
    invoke-static/range {v20 .. v21}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "newLoader":Lsun/misc/URLClassPath$JarLoader;
    check-cast v12, Lsun/misc/URLClassPath$JarLoader;

    .line 1122
    .restart local v12    # "newLoader":Lsun/misc/URLClassPath$JarLoader;
    invoke-virtual {v12}, Lsun/misc/URLClassPath$JarLoader;->getIndex()Lsun/misc/JarIndex;

    move-result-object v11

    .line 1123
    .local v11, "newIndex":Lsun/misc/JarIndex;
    if-eqz v11, :cond_a7

    .line 1124
    const-string/jumbo v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 1125
    .local v14, "pos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->index:Lsun/misc/JarIndex;

    move-object/from16 v21, v0

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_de

    .line 1126
    const/16 v20, 0x0

    .line 1125
    :goto_a0
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lsun/misc/JarIndex;->merge(Lsun/misc/JarIndex;Ljava/lang/String;)V

    .line 1130
    .end local v14    # "pos":I
    :cond_a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b4
    .catch Ljava/security/PrivilegedActionException; {:try_start_47 .. :try_end_b4} :catch_ef
    .catch Ljava/net/MalformedURLException; {:try_start_47 .. :try_end_b4} :catch_eb

    .line 1142
    .end local v11    # "newIndex":Lsun/misc/JarIndex;
    :cond_b4
    invoke-static/range {v17 .. v17}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v20

    xor-int/lit8 v19, v20, 0x1

    .line 1143
    .local v19, "visitedURL":Z
    if-nez v19, :cond_10d

    .line 1145
    :try_start_c4
    invoke-direct {v12}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_f3

    .line 1149
    iget-object v0, v12, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v7

    .line 1150
    .local v7, "entry":Ljava/util/jar/JarEntry;
    if-eqz v7, :cond_fc

    .line 1151
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1, v7}, Lsun/misc/URLClassPath$JarLoader;->checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;

    move-result-object v20

    return-object v20

    .line 1126
    .end local v7    # "entry":Ljava/util/jar/JarEntry;
    .end local v19    # "visitedURL":Z
    .restart local v11    # "newIndex":Lsun/misc/JarIndex;
    .restart local v14    # "pos":I
    :cond_de
    add-int/lit8 v20, v14, 0x1

    const/16 v22, 0x0

    :try_start_e2
    move/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_e9
    .catch Ljava/security/PrivilegedActionException; {:try_start_e2 .. :try_end_e9} :catch_ef
    .catch Ljava/net/MalformedURLException; {:try_start_e2 .. :try_end_e9} :catch_eb

    move-result-object v20

    goto :goto_a0

    .line 1134
    .end local v11    # "newIndex":Lsun/misc/JarIndex;
    .end local v12    # "newLoader":Lsun/misc/URLClassPath$JarLoader;
    .end local v14    # "pos":I
    .end local v17    # "url":Ljava/net/URL;
    .end local v18    # "urlNoFragString":Ljava/lang/String;
    :catch_eb
    move-exception v6

    .local v6, "e":Ljava/net/MalformedURLException;
    move v4, v3

    .line 1135
    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto/16 :goto_3f

    .line 1132
    .end local v4    # "count":I
    .end local v6    # "e":Ljava/net/MalformedURLException;
    .restart local v3    # "count":I
    :catch_ef
    move-exception v13

    .local v13, "pae":Ljava/security/PrivilegedActionException;
    move v4, v3

    .line 1133
    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto/16 :goto_3f

    .line 1146
    .end local v4    # "count":I
    .end local v13    # "pae":Ljava/security/PrivilegedActionException;
    .restart local v3    # "count":I
    .restart local v12    # "newLoader":Lsun/misc/URLClassPath$JarLoader;
    .restart local v17    # "url":Ljava/net/URL;
    .restart local v18    # "urlNoFragString":Ljava/lang/String;
    .restart local v19    # "visitedURL":Z
    :catch_f3
    move-exception v5

    .line 1147
    .local v5, "e":Ljava/io/IOException;
    new-instance v20, Ljava/lang/InternalError;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 1158
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v7    # "entry":Ljava/util/jar/JarEntry;
    :cond_fc
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lsun/misc/URLClassPath$JarLoader;->validIndex(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_10d

    .line 1160
    new-instance v20, Lsun/misc/InvalidJarIndexException;

    const-string/jumbo v21, "Invalid index"

    invoke-direct/range {v20 .. v21}, Lsun/misc/InvalidJarIndexException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1169
    .end local v7    # "entry":Ljava/util/jar/JarEntry;
    :cond_10d
    if-nez v19, :cond_113

    move-object/from16 v0, p0

    if-ne v12, v0, :cond_116

    :cond_113
    move v4, v3

    .line 1171
    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto/16 :goto_3f

    .line 1170
    .end local v4    # "count":I
    .restart local v3    # "count":I
    :cond_116
    invoke-virtual {v12}, Lsun/misc/URLClassPath$JarLoader;->getIndex()Lsun/misc/JarIndex;

    move-result-object v20

    if-eqz v20, :cond_113

    .line 1176
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v12, v0, v1, v2}, Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;

    move-result-object v15

    .local v15, "res":Lsun/misc/Resource;
    if-eqz v15, :cond_129

    .line 1178
    return-object v15

    :cond_129
    move v4, v3

    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto/16 :goto_3f

    .line 1187
    .end local v10    # "jarName":Ljava/lang/String;
    .end local v12    # "newLoader":Lsun/misc/URLClassPath$JarLoader;
    .end local v15    # "res":Lsun/misc/Resource;
    .end local v17    # "url":Ljava/net/URL;
    .end local v18    # "urlNoFragString":Ljava/lang/String;
    .end local v19    # "visitedURL":Z
    :cond_12c
    const/16 v20, 0x0

    return-object v20
.end method

.method validIndex(Ljava/lang/String;)Z
    .registers 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1015
    move-object v3, p1

    .line 1017
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .local v4, "pos":I
    if-eq v4, v7, :cond_10

    .line 1018
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1023
    :cond_10
    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v5}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 1024
    .local v2, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_16
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1025
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 1026
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1027
    .local v1, "entryName":Ljava/lang/String;
    const-string/jumbo v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v7, :cond_33

    .line 1028
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1029
    :cond_33
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1030
    const/4 v5, 0x1

    return v5

    .line 1033
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v1    # "entryName":Ljava/lang/String;
    :cond_3b
    return v6
.end method
