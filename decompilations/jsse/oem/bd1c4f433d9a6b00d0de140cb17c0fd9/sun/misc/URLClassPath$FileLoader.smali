.class Lsun/misc/URLClassPath$FileLoader;
.super Lsun/misc/URLClassPath$Loader;
.source "URLClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/URLClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileLoader"
.end annotation


# instance fields
.field private dir:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .registers 6
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1256
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$Loader;-><init>(Ljava/net/URL;)V

    .line 1257
    const-string/jumbo v1, "file"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1258
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "url"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1260
    :cond_19
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1261
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1262
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/URLClassPath$FileLoader;->dir:Ljava/io/File;

    .line 1263
    return-void
.end method


# virtual methods
.method findResource(Ljava/lang/String;Z)Ljava/net/URL;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1269
    invoke-virtual {p0, p1, p2}, Lsun/misc/URLClassPath$FileLoader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v0

    .line 1270
    .local v0, "rsc":Lsun/misc/Resource;
    if-eqz v0, :cond_c

    .line 1271
    invoke-virtual {v0}, Lsun/misc/Resource;->getURL()Ljava/net/URL;

    move-result-object v1

    return-object v1

    .line 1273
    :cond_c
    return-object v1
.end method

.method getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .prologue
    const/4 v8, 0x0

    .line 1279
    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0}, Lsun/misc/URLClassPath$FileLoader;->getBaseURL()Ljava/net/URL;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-direct {v2, v4, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 1280
    .local v2, "normalizedBase":Ljava/net/URL;
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p0}, Lsun/misc/URLClassPath$FileLoader;->getBaseURL()Ljava/net/URL;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p1, v5}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 1282
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 1284
    return-object v8

    .line 1287
    :cond_2a
    if-eqz p2, :cond_2f

    .line 1288
    invoke-static {v3}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V

    .line 1291
    :cond_2f
    const-string/jumbo v4, ".."

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5d

    .line 1292
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lsun/misc/URLClassPath$FileLoader;->dir:Ljava/io/File;

    sget-char v6, Ljava/io/File;->separatorChar:C

    const/16 v7, 0x2f

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 1294
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lsun/misc/URLClassPath$FileLoader;->dir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6c

    .line 1296
    return-object v8

    .line 1299
    .end local v1    # "file":Ljava/io/File;
    :cond_5d
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lsun/misc/URLClassPath$FileLoader;->dir:Ljava/io/File;

    sget-char v5, Ljava/io/File;->separatorChar:C

    const/16 v6, 0x2f

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1302
    .restart local v1    # "file":Ljava/io/File;
    :cond_6c
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 1303
    new-instance v4, Lsun/misc/URLClassPath$FileLoader$1;

    invoke-direct {v4, p0, p1, v3, v1}, Lsun/misc/URLClassPath$FileLoader$1;-><init>(Lsun/misc/URLClassPath$FileLoader;Ljava/lang/String;Ljava/net/URL;Ljava/io/File;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_77} :catch_78

    return-object v4

    .line 1313
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "normalizedBase":Ljava/net/URL;
    .end local v3    # "url":Ljava/net/URL;
    :catch_78
    move-exception v0

    .line 1314
    .local v0, "e":Ljava/lang/Exception;
    return-object v8

    .line 1316
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "normalizedBase":Ljava/net/URL;
    .restart local v3    # "url":Ljava/net/URL;
    :cond_7a
    return-object v8
.end method
