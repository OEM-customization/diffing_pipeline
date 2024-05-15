.class public Lsun/net/www/protocol/jar/URLJarFile;
.super Ljava/util/jar/JarFile;
.source "URLJarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;,
        Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;
    }
.end annotation


# static fields
.field private static BUF_SIZE:I


# instance fields
.field private closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

.field private superAttr:Ljava/util/jar/Attributes;

.field private superEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation
.end field

.field private superMan:Ljava/util/jar/Manifest;


# direct methods
.method static synthetic -get0(Lsun/net/www/protocol/jar/URLJarFile;)Ljava/util/Map;
    .registers 2
    .param p0, "-this"    # Lsun/net/www/protocol/jar/URLJarFile;

    .prologue
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Lsun/net/www/protocol/jar/URLJarFile;)Z
    .registers 2
    .param p0, "-this"    # Lsun/net/www/protocol/jar/URLJarFile;

    .prologue
    invoke-direct {p0}, Lsun/net/www/protocol/jar/URLJarFile;->isSuperMan()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const/16 v0, 0x800

    sput v0, Lsun/net/www/protocol/jar/URLJarFile;->BUF_SIZE:I

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/net/www/protocol/jar/URLJarFile;-><init>(Ljava/io/File;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "closeController"    # Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    .line 90
    iput-object p2, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    .line 91
    return-void
.end method

.method private constructor <init>(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V
    .registers 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "closeController"    # Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    .line 95
    iput-object p2, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    .line 96
    return-void
.end method

.method static getJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .registers 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/net/www/protocol/jar/URLJarFile;->getJarFile(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method static getJarFile(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;
    .registers 3
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "closeController"    # Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {p0}, Lsun/net/www/protocol/jar/URLJarFile;->isFileURL(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 70
    new-instance v0, Lsun/net/www/protocol/jar/URLJarFile;

    invoke-direct {v0, p0, p1}, Lsun/net/www/protocol/jar/URLJarFile;-><init>(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V

    return-object v0

    .line 72
    :cond_c
    invoke-static {p0, p1}, Lsun/net/www/protocol/jar/URLJarFile;->retrieve(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method private static isFileURL(Ljava/net/URL;)Z
    .registers 4
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 104
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_2e

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string/jumbo v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 106
    const-string/jumbo v1, "localhost"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 105
    if-eqz v1, :cond_30

    .line 107
    :cond_2e
    const/4 v1, 0x1

    return v1

    .line 109
    .end local v0    # "host":Ljava/lang/String;
    :cond_30
    const/4 v1, 0x0

    return v1
.end method

.method private declared-synchronized isSuperMan()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 174
    :try_start_1
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    if-nez v0, :cond_b

    .line 175
    invoke-super {p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    .line 178
    :cond_b
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    if-eqz v0, :cond_22

    .line 179
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superAttr:Ljava/util/jar/Attributes;

    .line 180
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_25

    .line 181
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 183
    :cond_22
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static retrieve(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .registers 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/net/www/protocol/jar/URLJarFile;->retrieve(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method

.method private static retrieve(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;
    .registers 10
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "closeController"    # Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 213
    const/4 v3, 0x0

    .line 216
    .local v3, "result":Ljava/util/jar/JarFile;
    const/4 v1, 0x0

    .local v1, "in":Ljava/io/InputStream;
    :try_start_3
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 218
    .local v1, "in":Ljava/io/InputStream;
    new-instance v4, Lsun/net/www/protocol/jar/URLJarFile$1;

    invoke-direct {v4, v1, p1}, Lsun/net/www/protocol/jar/URLJarFile$1;-><init>(Ljava/io/InputStream;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V

    .line 217
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/jar/JarFile;

    move-object v3, v0
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_18} :catch_2a
    .catchall {:try_start_3 .. :try_end_18} :catchall_45

    .line 238
    .local v3, "result":Ljava/util/jar/JarFile;
    if-eqz v1, :cond_1d

    :try_start_1a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_28
    .catch Ljava/security/PrivilegedActionException; {:try_start_1a .. :try_end_1d} :catch_20

    :cond_1d
    :goto_1d
    if-eqz v5, :cond_44

    :try_start_1f
    throw v5
    :try_end_20
    .catch Ljava/security/PrivilegedActionException; {:try_start_1f .. :try_end_20} :catch_20

    .line 236
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "result":Ljava/util/jar/JarFile;
    :catch_20
    move-exception v2

    .line 237
    .local v2, "pae":Ljava/security/PrivilegedActionException;
    invoke-virtual {v2}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v4

    check-cast v4, Ljava/io/IOException;

    throw v4

    .line 238
    .end local v2    # "pae":Ljava/security/PrivilegedActionException;
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v3    # "result":Ljava/util/jar/JarFile;
    :catch_28
    move-exception v5

    goto :goto_1d

    .end local v1    # "in":Ljava/io/InputStream;
    .local v3, "result":Ljava/util/jar/JarFile;
    :catch_2a
    move-exception v4

    :try_start_2b
    throw v4
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_30
    if-eqz v1, :cond_35

    :try_start_32
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_38
    .catch Ljava/security/PrivilegedActionException; {:try_start_32 .. :try_end_35} :catch_20

    :cond_35
    :goto_35
    if-eqz v5, :cond_43

    :try_start_37
    throw v5

    :catch_38
    move-exception v6

    if-nez v5, :cond_3d

    move-object v5, v6

    goto :goto_35

    :cond_3d
    if-eq v5, v6, :cond_35

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_35

    :cond_43
    throw v4
    :try_end_44
    .catch Ljava/security/PrivilegedActionException; {:try_start_37 .. :try_end_44} :catch_20

    .line 240
    .restart local v1    # "in":Ljava/io/InputStream;
    .local v3, "result":Ljava/util/jar/JarFile;
    :cond_44
    return-object v3

    .line 238
    .end local v1    # "in":Ljava/io/InputStream;
    .local v3, "result":Ljava/util/jar/JarFile;
    :catchall_45
    move-exception v4

    goto :goto_30
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
    .line 165
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    if-eqz v0, :cond_9

    .line 166
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    invoke-interface {v0, p0}, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;->close(Ljava/util/jar/JarFile;)V

    .line 168
    :cond_9
    invoke-super {p0}, Ljava/util/jar/JarFile;->close()V

    .line 169
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/URLJarFile;->close()V

    .line 117
    return-void
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-super {p0, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 130
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_39

    .line 131
    instance-of v1, v0, Ljava/util/jar/JarEntry;

    if-eqz v1, :cond_13

    .line 132
    new-instance v1, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;

    check-cast v0, Ljava/util/jar/JarEntry;

    .end local v0    # "ze":Ljava/util/zip/ZipEntry;
    invoke-direct {v1, p0, v0}, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;-><init>(Lsun/net/www/protocol/jar/URLJarFile;Ljava/util/jar/JarEntry;)V

    return-object v1

    .line 134
    .restart local v0    # "ze":Ljava/util/zip/ZipEntry;
    :cond_13
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/util/jar/JarFile;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 135
    const-string/jumbo v3, " returned unexpected entry type "

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 136
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_39
    return-object v1
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 143
    invoke-direct {p0}, Lsun/net/www/protocol/jar/URLJarFile;->isSuperMan()Z

    move-result v6

    if-nez v6, :cond_8

    .line 144
    return-object v7

    .line 147
    :cond_8
    new-instance v5, Ljava/util/jar/Manifest;

    invoke-direct {v5}, Ljava/util/jar/Manifest;-><init>()V

    .line 148
    .local v5, "man":Ljava/util/jar/Manifest;
    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    .line 149
    .local v1, "attr":Ljava/util/jar/Attributes;
    iget-object v6, p0, Lsun/net/www/protocol/jar/URLJarFile;->superAttr:Ljava/util/jar/Attributes;

    invoke-virtual {v6}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-virtual {v1, v6}, Ljava/util/jar/Attributes;->putAll(Ljava/util/Map;)V

    .line 152
    iget-object v6, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;

    if-eqz v6, :cond_4c

    .line 153
    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v2

    .line 154
    .local v2, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    iget-object v6, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "key$iterator":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 155
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    .line 156
    .local v0, "at":Ljava/util/jar/Attributes;
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/Attributes;

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 160
    .end local v0    # "at":Ljava/util/jar/Attributes;
    .end local v2    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "key$iterator":Ljava/util/Iterator;
    :cond_4c
    return-object v5
.end method
