.class public Lsun/net/www/protocol/jar/JarURLConnection;
.super Ljava/net/JarURLConnection;
.source "JarURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;
    }
.end annotation


# static fields
.field private static final debug:Z

.field private static final factory:Lsun/net/www/protocol/jar/JarFileFactory;


# instance fields
.field private contentType:Ljava/lang/String;

.field private entryName:Ljava/lang/String;

.field private jarEntry:Ljava/util/jar/JarEntry;

.field private jarFile:Ljava/util/jar/JarFile;

.field private jarFileURL:Ljava/net/URL;

.field private jarFileURLConnection:Ljava/net/URLConnection;

.field private permission:Ljava/security/Permission;


# direct methods
.method static synthetic -get0(Lsun/net/www/protocol/jar/JarURLConnection;)Ljava/util/jar/JarFile;
    .registers 2
    .param p0, "-this"    # Lsun/net/www/protocol/jar/JarURLConnection;

    .prologue
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    invoke-static {}, Lsun/net/www/protocol/jar/JarFileFactory;->getInstance()Lsun/net/www/protocol/jar/JarFileFactory;

    move-result-object v0

    sput-object v0, Lsun/net/www/protocol/jar/JarURLConnection;->factory:Lsun/net/www/protocol/jar/JarFileFactory;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lsun/net/www/protocol/jar/Handler;)V
    .registers 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "handler"    # Lsun/net/www/protocol/jar/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1}, Ljava/net/JarURLConnection;-><init>(Ljava/net/URL;)V

    .line 83
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURL:Ljava/net/URL;

    .line 84
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    .line 85
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getEntryName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public connect()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-boolean v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->connected:Z

    if-nez v2, :cond_7e

    .line 122
    sget-object v2, Lsun/net/www/protocol/jar/JarURLConnection;->factory:Lsun/net/www/protocol/jar/JarFileFactory;

    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getUseCaches()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lsun/net/www/protocol/jar/JarFileFactory;->get(Ljava/net/URL;Z)Ljava/util/jar/JarFile;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    .line 127
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getUseCaches()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 128
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v1

    .line 129
    .local v1, "oldUseCaches":Z
    sget-object v2, Lsun/net/www/protocol/jar/JarURLConnection;->factory:Lsun/net/www/protocol/jar/JarFileFactory;

    iget-object v3, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v2, v3}, Lsun/net/www/protocol/jar/JarFileFactory;->getConnection(Ljava/util/jar/JarFile;)Ljava/net/URLConnection;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    .line 130
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 133
    .end local v1    # "oldUseCaches":Z
    :cond_2f
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    if-eqz v2, :cond_7b

    .line 134
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    iget-object v3, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    check-cast v2, Ljava/util/jar/JarEntry;

    iput-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    .line 135
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v2, :cond_7b

    .line 137
    :try_start_43
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getUseCaches()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 138
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4e} :catch_7f

    .line 142
    :cond_4e
    :goto_4e
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "JAR entry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 143
    const-string/jumbo v4, " not found in "

    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 144
    iget-object v4, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_7b
    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->connected:Z

    .line 149
    :cond_7e
    return-void

    .line 140
    :catch_7f
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_4e
.end method

.method public getAllowUserInteraction()Z
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, "result":Ljava/lang/Object;
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 196
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 197
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    .line 201
    :goto_a
    return-object v0

    .line 199
    :cond_b
    invoke-super {p0}, Ljava/net/JarURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method public getContentLength()I
    .registers 5

    .prologue
    .line 170
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getContentLengthLong()J

    move-result-wide v0

    .line 171
    .local v0, "result":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    .line 172
    const/4 v2, -0x1

    return v2

    .line 173
    :cond_d
    long-to-int v2, v0

    return v2
.end method

.method public getContentLengthLong()J
    .registers 5

    .prologue
    .line 177
    const-wide/16 v2, -0x1

    .line 179
    .local v2, "result":J
    :try_start_2
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 180
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v1, :cond_10

    .line 182
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLengthLong()J

    move-result-wide v2

    .line 189
    :goto_f
    return-wide v2

    .line 185
    :cond_10
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getSize()J
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_17} :catch_19

    move-result-wide v2

    goto :goto_f

    .line 187
    :catch_19
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_f
.end method

.method public getContentType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 205
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    if-nez v2, :cond_22

    .line 206
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    if-nez v2, :cond_25

    .line 207
    const-string/jumbo v2, "x-java/jar"

    iput-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    .line 219
    :goto_d
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    if-nez v2, :cond_19

    .line 220
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    invoke-static {v2}, Lsun/net/www/protocol/jar/JarURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    .line 222
    :cond_19
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    if-nez v2, :cond_22

    .line 223
    const-string/jumbo v2, "content/unknown"

    iput-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    .line 226
    :cond_22
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    return-object v2

    .line 210
    :cond_25
    :try_start_25
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 211
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    iget-object v3, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v2, v3}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 213
    .local v1, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 212
    invoke-static {v2}, Lsun/net/www/protocol/jar/JarURLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    .line 214
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_3e} :catch_3f

    goto :goto_d

    .line 215
    .end local v1    # "in":Ljava/io/InputStream;
    :catch_3f
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_d
.end method

.method public getDefaultUseCaches()Z
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "result":Ljava/io/InputStream;
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 157
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "no entry name specified"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_11
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v1, :cond_42

    .line 160
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "JAR entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 161
    const-string/jumbo v3, " not found in "

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 162
    iget-object v3, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_42
    new-instance v0, Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;

    .end local v0    # "result":Ljava/io/InputStream;
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;-><init>(Lsun/net/www/protocol/jar/JarURLConnection;Ljava/io/InputStream;)V

    .line 166
    .local v0, "result":Ljava/io/InputStream;
    return-object v0
.end method

.method public getJarEntry()Ljava/util/jar/JarEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 95
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public getJarFile()Ljava/util/jar/JarFile;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 90
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 252
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .registers 3
    .param p1, "allowuserinteraction"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 291
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .registers 3
    .param p1, "defaultusecaches"    # Z

    .prologue
    .line 358
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 359
    return-void
.end method

.method public setIfModifiedSince(J)V
    .registers 4
    .param p1, "ifmodifiedsince"    # J

    .prologue
    .line 347
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    .line 348
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public setUseCaches(Z)V
    .registers 3
    .param p1, "usecaches"    # Z

    .prologue
    .line 324
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 325
    return-void
.end method
