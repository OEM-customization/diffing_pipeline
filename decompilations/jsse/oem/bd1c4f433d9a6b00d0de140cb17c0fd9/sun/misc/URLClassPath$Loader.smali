.class Lsun/misc/URLClassPath$Loader;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/URLClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# instance fields
.field private final base:Ljava/net/URL;

.field private jarfile:Ljava/util/jar/JarFile;


# direct methods
.method static synthetic -get0(Lsun/misc/URLClassPath$Loader;)Ljava/net/URL;
    .registers 2
    .param p0, "-this"    # Lsun/misc/URLClassPath$Loader;

    .prologue
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    return-object v0
.end method

.method constructor <init>(Ljava/net/URL;)V
    .registers 2
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    iput-object p1, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    .line 698
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 794
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader;->jarfile:Ljava/util/jar/JarFile;

    if-eqz v0, :cond_9

    .line 795
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader;->jarfile:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    .line 797
    :cond_9
    return-void
.end method

.method findResource(Ljava/lang/String;Z)Ljava/net/URL;
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .prologue
    const/4 v9, 0x0

    .line 710
    :try_start_1
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    const/4 v8, 0x0

    invoke-static {p1, v8}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_d} :catch_2d

    .line 716
    .local v6, "url":Ljava/net/URL;
    if-eqz p2, :cond_12

    .line 717
    :try_start_f
    invoke-static {v6}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V

    .line 724
    :cond_12
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .line 725
    .local v5, "uc":Ljava/net/URLConnection;
    instance-of v7, v5, Ljava/net/HttpURLConnection;

    if-eqz v7, :cond_37

    .line 726
    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 727
    .local v3, "hconn":Ljava/net/HttpURLConnection;
    const-string/jumbo v7, "HEAD"

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_27} :catch_43

    move-result v7

    const/16 v8, 0x190

    if-lt v7, v8, :cond_42

    .line 729
    return-object v9

    .line 711
    .end local v3    # "hconn":Ljava/net/HttpURLConnection;
    .end local v5    # "uc":Ljava/net/URLConnection;
    .end local v6    # "url":Ljava/net/URL;
    :catch_2d
    move-exception v2

    .line 712
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "name"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 733
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .restart local v5    # "uc":Ljava/net/URLConnection;
    .restart local v6    # "url":Ljava/net/URL;
    :cond_37
    const/4 v7, 0x0

    :try_start_38
    invoke-virtual {v5, v7}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 734
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 735
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_42} :catch_43

    .line 737
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_42
    return-object v6

    .line 738
    .end local v5    # "uc":Ljava/net/URLConnection;
    :catch_43
    move-exception v1

    .line 739
    .local v1, "e":Ljava/lang/Exception;
    return-object v9
.end method

.method getBaseURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 704
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    return-object v0
.end method

.method getClassPath()[Ljava/net/URL;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 803
    const/4 v0, 0x0

    return-object v0
.end method

.method getResource(Ljava/lang/String;)Lsun/misc/Resource;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 786
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsun/misc/URLClassPath$Loader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v0

    return-object v0
.end method

.method getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .prologue
    .line 746
    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lsun/misc/URLClassPath$Loader;->base:Ljava/net/URL;

    const/4 v8, 0x0

    invoke-static {p1, v8}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_c} :catch_31

    .line 752
    .local v6, "url":Ljava/net/URL;
    if-eqz p2, :cond_11

    .line 753
    :try_start_e
    invoke-static {v6}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V

    .line 755
    :cond_11
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .line 756
    .local v5, "uc":Ljava/net/URLConnection;
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 757
    .local v3, "in":Ljava/io/InputStream;
    instance-of v7, v5, Ljava/net/JarURLConnection;

    if-eqz v7, :cond_2b

    .line 761
    move-object v0, v5

    check-cast v0, Ljava/net/JarURLConnection;

    move-object v4, v0

    .line 762
    .local v4, "juc":Ljava/net/JarURLConnection;
    invoke-virtual {v4}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v7

    invoke-static {v7}, Lsun/misc/URLClassPath$JarLoader;->checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;

    move-result-object v7

    iput-object v7, p0, Lsun/misc/URLClassPath$Loader;->jarfile:Ljava/util/jar/JarFile;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2b} :catch_3b

    .line 767
    .end local v4    # "juc":Ljava/net/JarURLConnection;
    :cond_2b
    new-instance v7, Lsun/misc/URLClassPath$Loader$1;

    invoke-direct {v7, p0, p1, v6, v5}, Lsun/misc/URLClassPath$Loader$1;-><init>(Lsun/misc/URLClassPath$Loader;Ljava/lang/String;Ljava/net/URL;Ljava/net/URLConnection;)V

    return-object v7

    .line 747
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v5    # "uc":Ljava/net/URLConnection;
    .end local v6    # "url":Ljava/net/URL;
    :catch_31
    move-exception v2

    .line 748
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "name"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 764
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .restart local v6    # "url":Ljava/net/URL;
    :catch_3b
    move-exception v1

    .line 765
    .local v1, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    return-object v7
.end method
