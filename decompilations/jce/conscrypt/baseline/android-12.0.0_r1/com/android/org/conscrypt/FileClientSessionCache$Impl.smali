.class Lcom/android/org/conscrypt/FileClientSessionCache$Impl;
.super Ljava/lang/Object;
.source "FileClientSessionCache.java"

# interfaces
.implements Lcom/android/org/conscrypt/SSLClientSessionCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/FileClientSessionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Impl"
.end annotation


# instance fields
.field blacklist accessOrder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist directory:Ljava/io/File;

.field blacklist initialFiles:[Ljava/lang/String;

.field blacklist size:I


# direct methods
.method constructor blacklist <init>(Ljava/io/File;)V
    .registers 6
    .param p1, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    .line 86
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 87
    .local v0, "exists":Z
    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_2d

    .line 88
    :cond_16
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " exists but is not a directory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_2d
    :goto_2d
    if-eqz v0, :cond_57

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 99
    if-eqz v1, :cond_40

    .line 104
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    goto :goto_60

    .line 102
    :cond_40
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " exists but cannot list contents."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_57
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 111
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    .line 114
    :goto_60
    iput-object p1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    .line 115
    return-void

    .line 109
    :cond_63
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creation of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " directory failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist delete(Ljava/io/File;)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;

    .line 300
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 301
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileClientSessionCache: Failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/org/conscrypt/FileClientSessionCache;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/org/conscrypt/FileClientSessionCache;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2e
    iget v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    .line 306
    return-void
.end method

.method private static blacklist fileName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .line 128
    if-eqz p0, :cond_17

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 129
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist indexFiles()V
    .registers 8

    .line 270
    iget-object v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 271
    .local v0, "initialFiles":[Ljava/lang/String;
    if-eqz v0, :cond_4e

    .line 272
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 276
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 277
    .local v1, "diskOnly":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_27

    aget-object v4, v0, v3

    .line 279
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 280
    new-instance v5, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;

    iget-object v6, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v4    # "name":Ljava/lang/String;
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 284
    :cond_27
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 287
    invoke-static {}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    move-result-object v2

    .line 288
    .local v2, "newOrder":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;

    .line 289
    .local v4, "cacheFile":Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;
    iget-object v5, v4, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->name:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .end local v4    # "cacheFile":Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;
    goto :goto_35

    .line 291
    :cond_47
    iget-object v3, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 293
    iput-object v2, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    .line 296
    .end local v1    # "diskOnly":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;>;"
    .end local v2    # "newOrder":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    :cond_4e
    return-void
.end method

.method static blacklist logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    .registers 7
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 185
    # getter for: Lcom/android/org/conscrypt/FileClientSessionCache;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/org/conscrypt/FileClientSessionCache;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileClientSessionCache: Error reading session data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    return-void
.end method

.method static blacklist logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    .registers 7
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 309
    # getter for: Lcom/android/org/conscrypt/FileClientSessionCache;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/org/conscrypt/FileClientSessionCache;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileClientSessionCache: Error writing session data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    return-void
.end method

.method private blacklist makeRoom()V
    .registers 4

    .line 250
    iget v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    const/16 v1, 0xc

    if-gt v0, v1, :cond_7

    .line 251
    return-void

    .line 254
    :cond_7
    invoke-direct {p0}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->indexFiles()V

    .line 257
    iget v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    sub-int/2addr v0, v1

    .line 258
    .local v0, "removals":I
    iget-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 260
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 261
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 262
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_28

    .line 263
    return-void

    .line 262
    :cond_28
    goto :goto_17
.end method

.method private static blacklist newAccessOrder()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xc

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized greylist getSessionData(Ljava/lang/String;I)[B
    .registers 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    monitor-enter p0

    .line 143
    :try_start_1
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 146
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    if-nez v1, :cond_2b

    .line 148
    iget-object v3, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_5c

    if-nez v3, :cond_16

    .line 150
    monitor-exit p0

    return-object v2

    .line 154
    :cond_16
    :try_start_16
    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_5c

    if-gez v3, :cond_1e

    .line 156
    monitor-exit p0

    return-object v2

    .line 160
    :cond_1e
    :try_start_1e
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    .line 161
    iget-object v3, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_5c

    .line 166
    .end local p0    # "this":Lcom/android/org/conscrypt/FileClientSessionCache$Impl;
    :cond_2b
    :try_start_2b
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_30} :catch_56
    .catchall {:try_start_2b .. :try_end_30} :catchall_5c

    .line 170
    .local v3, "in":Ljava/io/FileInputStream;
    nop

    .line 172
    :try_start_31
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    .line 173
    .local v4, "size":I
    new-array v5, v4, [B

    .line 174
    .local v5, "data":[B
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v6, v5}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_40} :catch_48
    .catchall {:try_start_31 .. :try_end_40} :catchall_46

    .line 175
    nop

    .line 180
    :try_start_41
    invoke-static {v3}, Lcom/android/org/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_5c

    .line 175
    monitor-exit p0

    return-object v5

    .line 180
    .end local v4    # "size":I
    .end local v5    # "data":[B
    :catchall_46
    move-exception v2

    goto :goto_52

    .line 176
    :catch_48
    move-exception v4

    .line 177
    .local v4, "e":Ljava/io/IOException;
    :try_start_49
    invoke-static {p1, v1, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_46

    .line 178
    nop

    .line 180
    :try_start_4d
    invoke-static {v3}, Lcom/android/org/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_5c

    .line 178
    monitor-exit p0

    return-object v2

    .line 180
    .end local v4    # "e":Ljava/io/IOException;
    :goto_52
    :try_start_52
    invoke-static {v3}, Lcom/android/org/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 181
    throw v2

    .line 167
    .end local v3    # "in":Ljava/io/FileInputStream;
    :catch_56
    move-exception v3

    .line 168
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-static {p1, v1, v3}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_5c

    .line 169
    monitor-exit p0

    return-object v2

    .line 142
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "port":I
    :catchall_5c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist putSessionData(Ljavax/net/ssl/SSLSession;[B)V
    .registers 12
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;
    .param p2, "sessionData"    # [B

    monitor-enter p0

    .line 193
    :try_start_1
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "host":Ljava/lang/String;
    if-eqz p2, :cond_d3

    .line 198
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 202
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_db

    .line 206
    .local v3, "existedBefore":Z
    :try_start_1a
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1f} :catch_cd
    .catchall {:try_start_1a .. :try_end_1f} :catchall_db

    .line 211
    .local v4, "out":Ljava/io/FileOutputStream;
    nop

    .line 214
    if-nez v3, :cond_2b

    .line 215
    :try_start_22
    iget v5, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    .line 218
    invoke-direct {p0}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->makeRoom()V
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_db

    .line 221
    .end local p0    # "this":Lcom/android/org/conscrypt/FileClientSessionCache$Impl;
    :cond_2b
    const/4 v5, 0x0

    .line 223
    .local v5, "writeSuccessful":Z
    :try_start_2c
    invoke-virtual {v4, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_64
    .catchall {:try_start_2c .. :try_end_2f} :catchall_62

    .line 224
    const/4 v5, 0x1

    .line 228
    const/4 v6, 0x0

    .line 230
    .local v6, "closeSuccessful":Z
    :try_start_31
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_46
    .catchall {:try_start_31 .. :try_end_34} :catchall_44

    .line 231
    const/4 v6, 0x1

    .line 235
    if-eqz v5, :cond_40

    if-nez v6, :cond_3a

    goto :goto_40

    .line 240
    :cond_3a
    :try_start_3a
    iget-object v7, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    :goto_3c
    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :goto_3f
    goto :goto_52

    .line 237
    :cond_40
    :goto_40
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_db

    goto :goto_52

    .line 235
    :catchall_44
    move-exception v7

    goto :goto_53

    .line 232
    :catch_46
    move-exception v7

    .line 233
    .local v7, "e":Ljava/io/IOException;
    :try_start_47
    invoke-static {v0, v2, v7}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_44

    .line 235
    .end local v7    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_40

    if-nez v6, :cond_4f

    goto :goto_40

    .line 240
    :cond_4f
    :try_start_4f
    iget-object v7, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    goto :goto_3c

    .line 243
    .end local v6    # "closeSuccessful":Z
    :goto_52
    goto :goto_8a

    .line 235
    .restart local v6    # "closeSuccessful":Z
    :goto_53
    if-eqz v5, :cond_5e

    if-nez v6, :cond_58

    goto :goto_5e

    .line 240
    :cond_58
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    .line 237
    :cond_5e
    :goto_5e
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 242
    :goto_61
    throw v7
    :try_end_62
    .catchall {:try_start_4f .. :try_end_62} :catchall_db

    .line 228
    .end local v6    # "closeSuccessful":Z
    :catchall_62
    move-exception v6

    goto :goto_9b

    .line 225
    :catch_64
    move-exception v6

    .line 226
    .local v6, "e":Ljava/io/IOException;
    :try_start_65
    invoke-static {v0, v2, v6}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_62

    .line 228
    .end local v6    # "e":Ljava/io/IOException;
    const/4 v6, 0x0

    .line 230
    .local v6, "closeSuccessful":Z
    :try_start_69
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_7e
    .catchall {:try_start_69 .. :try_end_6c} :catchall_7c

    .line 231
    const/4 v6, 0x1

    .line 235
    if-eqz v5, :cond_78

    if-nez v6, :cond_72

    goto :goto_78

    .line 240
    :cond_72
    :try_start_72
    iget-object v7, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    :goto_74
    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    .line 237
    :cond_78
    :goto_78
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_db

    goto :goto_52

    .line 235
    :catchall_7c
    move-exception v7

    goto :goto_8c

    .line 232
    :catch_7e
    move-exception v7

    .line 233
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_7f
    invoke-static {v0, v2, v7}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_7c

    .line 235
    .end local v7    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_78

    if-nez v6, :cond_87

    goto :goto_78

    .line 240
    :cond_87
    :try_start_87
    iget-object v7, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;
    :try_end_89
    .catchall {:try_start_87 .. :try_end_89} :catchall_db

    goto :goto_74

    .line 244
    .end local v6    # "closeSuccessful":Z
    :goto_8a
    monitor-exit p0

    return-void

    .line 235
    .restart local v6    # "closeSuccessful":Z
    :goto_8c
    if-eqz v5, :cond_97

    if-nez v6, :cond_91

    goto :goto_97

    .line 240
    :cond_91
    :try_start_91
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    .line 237
    :cond_97
    :goto_97
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_9a
    .catchall {:try_start_91 .. :try_end_9a} :catchall_db

    goto :goto_61

    .line 228
    .end local v6    # "closeSuccessful":Z
    :goto_9b
    const/4 v7, 0x0

    .line 230
    .local v7, "closeSuccessful":Z
    :try_start_9c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_b1
    .catchall {:try_start_9c .. :try_end_9f} :catchall_af

    .line 231
    const/4 v7, 0x1

    .line 235
    if-eqz v5, :cond_ab

    if-nez v7, :cond_a5

    goto :goto_ab

    .line 240
    :cond_a5
    :try_start_a5
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    :goto_a7
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    goto :goto_bd

    .line 237
    :cond_ab
    :goto_ab
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_ae
    .catchall {:try_start_a5 .. :try_end_ae} :catchall_db

    goto :goto_bd

    .line 235
    :catchall_af
    move-exception v6

    goto :goto_be

    .line 232
    :catch_b1
    move-exception v8

    .line 233
    .local v8, "e":Ljava/io/IOException;
    :try_start_b2
    invoke-static {v0, v2, v8}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_af

    .line 235
    .end local v8    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_ab

    if-nez v7, :cond_ba

    goto :goto_ab

    .line 240
    :cond_ba
    :try_start_ba
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    goto :goto_a7

    .line 243
    .end local v7    # "closeSuccessful":Z
    :goto_bd
    throw v6

    .line 235
    .restart local v7    # "closeSuccessful":Z
    :goto_be
    if-eqz v5, :cond_c9

    if-nez v7, :cond_c3

    goto :goto_c9

    .line 240
    :cond_c3
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cc

    .line 237
    :cond_c9
    :goto_c9
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 242
    :goto_cc
    throw v6

    .line 207
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "writeSuccessful":Z
    .end local v7    # "closeSuccessful":Z
    :catch_cd
    move-exception v4

    .line 209
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-static {v0, v2, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_d1
    .catchall {:try_start_ba .. :try_end_d1} :catchall_db

    .line 210
    monitor-exit p0

    return-void

    .line 195
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "existedBefore":Z
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :cond_d3
    :try_start_d3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "sessionData == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_db
    .catchall {:try_start_d3 .. :try_end_db} :catchall_db

    .line 192
    .end local v0    # "host":Ljava/lang/String;
    .end local p1    # "session":Ljavax/net/ssl/SSLSession;
    .end local p2    # "sessionData":[B
    :catchall_db
    move-exception p1

    monitor-exit p0

    throw p1
.end method
