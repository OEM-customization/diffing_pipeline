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
.field accessOrder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final directory:Ljava/io/File;

.field initialFiles:[Ljava/lang/String;

.field size:I


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 6
    .param p1, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 82
    .local v0, "exists":Z
    if-eqz v0, :cond_31

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_31

    .line 83
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " exists but is not a directory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_31
    if-eqz v0, :cond_64

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    if-nez v1, :cond_57

    .line 97
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " exists but cannot list contents."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_57
    iget-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 100
    iget-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    .line 109
    :goto_61
    iput-object p1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    .line 110
    return-void

    .line 103
    :cond_64
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_8b

    .line 104
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Creation of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " directory failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_8b
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    goto :goto_61
.end method

.method private delete(Ljava/io/File;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 299
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_29

    .line 300
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FileClientSessionCache: Failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 302
    :cond_29
    iget v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    .line 303
    return-void
.end method

.method private static fileName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 124
    if-nez p0, :cond_b

    .line 125
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private indexFiles()V
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 269
    iget-object v3, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 270
    .local v3, "initialFiles":[Ljava/lang/String;
    if-eqz v3, :cond_4e

    .line 271
    iput-object v6, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 275
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 276
    .local v2, "diskOnly":Ljava/util/Set;, "Ljava/util/Set<Lorg/conscrypt/FileClientSessionCache$CacheFile;>;"
    const/4 v6, 0x0

    array-length v7, v3

    :goto_e
    if-ge v6, v7, :cond_27

    aget-object v4, v3, v6

    .line 278
    .local v4, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_24

    .line 279
    new-instance v8, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;

    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v8, v9, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 283
    .end local v4    # "name":Ljava/lang/String;
    :cond_27
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4e

    .line 286
    invoke-static {}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    move-result-object v5

    .line 287
    .local v5, "newOrder":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cacheFile$iterator":Ljava/util/Iterator;
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;

    .line 288
    .local v0, "cacheFile":Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;
    iget-object v6, v0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->name:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 290
    .end local v0    # "cacheFile":Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;
    :cond_47
    iget-object v6, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 292
    iput-object v5, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    .line 295
    .end local v1    # "cacheFile$iterator":Ljava/util/Iterator;
    .end local v2    # "diskOnly":Ljava/util/Set;, "Ljava/util/Set<Lorg/conscrypt/FileClientSessionCache$CacheFile;>;"
    .end local v5    # "newOrder":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    :cond_4e
    return-void
.end method

.method static logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 185
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FileClientSessionCache: Error reading session data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    return-void
.end method

.method static logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 306
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FileClientSessionCache: Error writing session data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 308
    return-void
.end method

.method private makeRoom()V
    .registers 5

    .prologue
    .line 249
    iget v2, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    const/16 v3, 0xc

    if-gt v2, v3, :cond_7

    .line 250
    return-void

    .line 253
    :cond_7
    invoke-direct {p0}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->indexFiles()V

    .line 256
    iget v2, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v1, v2, -0xc

    .line 257
    .local v1, "removals":I
    iget-object v2, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 259
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 261
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_18

    .line 262
    return-void
.end method

.method private static newAccessOrder()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 117
    const/16 v1, 0xc

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    .line 116
    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getSessionData(Ljava/lang/String;I)[B
    .registers 14
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v10, 0x0

    monitor-enter p0

    .line 138
    :try_start_2
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 141
    .local v3, "file":Ljava/io/File;
    if-nez v3, :cond_2c

    .line 143
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_63

    if-nez v8, :cond_16

    monitor-exit p0

    .line 145
    return-object v10

    .line 149
    :cond_16
    :try_start_16
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    invoke-static {v8, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_63

    move-result v8

    if-gez v8, :cond_20

    monitor-exit p0

    .line 151
    return-object v10

    .line 155
    :cond_20
    :try_start_20
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v3, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    .restart local v3    # "file":Ljava/io/File;
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_63

    .line 161
    :cond_2c
    :try_start_2c
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_31} :catch_47
    .catchall {:try_start_2c .. :try_end_31} :catchall_63

    .line 167
    .local v5, "in":Ljava/io/FileInputStream;
    :try_start_31
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v7, v8

    .line 168
    .local v7, "size":I
    new-array v0, v7, [B

    .line 169
    .local v0, "data":[B
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v8, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_40} :catch_4f
    .catchall {:try_start_31 .. :try_end_40} :catchall_5c

    .line 175
    if-eqz v5, :cond_45

    .line 177
    :try_start_42
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_4d
    .catchall {:try_start_42 .. :try_end_45} :catchall_63

    :cond_45
    :goto_45
    monitor-exit p0

    .line 170
    return-object v0

    .line 162
    .end local v0    # "data":[B
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v7    # "size":I
    :catch_47
    move-exception v1

    .line 163
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_48
    invoke-static {p1, v3, v1}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_63

    monitor-exit p0

    .line 164
    return-object v10

    .line 178
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "data":[B
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "size":I
    :catch_4d
    move-exception v4

    .local v4, "ignored":Ljava/lang/Exception;
    goto :goto_45

    .line 171
    .end local v0    # "data":[B
    .end local v4    # "ignored":Ljava/lang/Exception;
    .end local v7    # "size":I
    :catch_4f
    move-exception v2

    .line 172
    .local v2, "e":Ljava/io/IOException;
    :try_start_50
    invoke-static {p1, v3, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5c

    .line 175
    if-eqz v5, :cond_58

    .line 177
    :try_start_55
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_5a
    .catchall {:try_start_55 .. :try_end_58} :catchall_63

    :cond_58
    :goto_58
    monitor-exit p0

    .line 173
    return-object v10

    .line 178
    :catch_5a
    move-exception v4

    .restart local v4    # "ignored":Ljava/lang/Exception;
    goto :goto_58

    .line 174
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "ignored":Ljava/lang/Exception;
    :catchall_5c
    move-exception v8

    .line 175
    if-eqz v5, :cond_62

    .line 177
    :try_start_5f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_66
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    .line 174
    :cond_62
    :goto_62
    :try_start_62
    throw v8
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v6    # "name":Ljava/lang/String;
    :catchall_63
    move-exception v8

    monitor-exit p0

    throw v8

    .line 178
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "name":Ljava/lang/String;
    :catch_66
    move-exception v4

    .restart local v4    # "ignored":Ljava/lang/Exception;
    goto :goto_62
.end method

.method public declared-synchronized putSessionData(Ljavax/net/ssl/SSLSession;[B)V
    .registers 14
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;
    .param p2, "sessionData"    # [B

    .prologue
    monitor-enter p0

    .line 192
    :try_start_1
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "host":Ljava/lang/String;
    if-nez p2, :cond_13

    .line 194
    new-instance v9, Ljava/lang/NullPointerException;

    const-string/jumbo v10, "sessionData == null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    .end local v5    # "host":Ljava/lang/String;
    :catchall_10
    move-exception v9

    monitor-exit p0

    throw v9

    .line 197
    .restart local v5    # "host":Ljava/lang/String;
    :cond_13
    :try_start_13
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v9

    invoke-static {v5, v9}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, "name":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v4, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_10

    move-result v3

    .line 205
    .local v3, "existedBefore":Z
    :try_start_26
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2b} :catch_49
    .catchall {:try_start_26 .. :try_end_2b} :catchall_10

    .line 213
    .local v7, "out":Ljava/io/FileOutputStream;
    if-nez v3, :cond_36

    .line 214
    :try_start_2d
    iget v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    .line 217
    invoke-direct {p0}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->makeRoom()V
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_10

    .line 220
    :cond_36
    const/4 v8, 0x0

    .line 222
    .local v8, "writeSuccessful":Z
    :try_start_37
    invoke-virtual {v7, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_60
    .catchall {:try_start_37 .. :try_end_3a} :catchall_82

    .line 223
    const/4 v8, 0x1

    .line 227
    const/4 v0, 0x0

    .line 229
    .local v0, "closeSuccessful":Z
    :try_start_3c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_53
    .catchall {:try_start_3c .. :try_end_3f} :catchall_5b

    .line 230
    const/4 v0, 0x1

    .line 234
    if-eqz v8, :cond_4f

    .line 239
    :try_start_42
    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_10

    :goto_47
    monitor-exit p0

    .line 243
    return-void

    .line 206
    .end local v0    # "closeSuccessful":Z
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .end local v8    # "writeSuccessful":Z
    :catch_49
    move-exception v1

    .line 208
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_4a
    invoke-static {v5, v4, v1}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_10

    monitor-exit p0

    .line 209
    return-void

    .line 236
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "closeSuccessful":Z
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "writeSuccessful":Z
    :cond_4f
    :try_start_4f
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_10

    goto :goto_47

    .line 231
    :catch_53
    move-exception v2

    .line 232
    .local v2, "e":Ljava/io/IOException;
    :try_start_54
    invoke-static {v5, v4, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_5b

    .line 236
    :try_start_57
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_47

    .line 233
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_5b
    move-exception v9

    .line 236
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 233
    throw v9
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_10

    .line 224
    .end local v0    # "closeSuccessful":Z
    :catch_60
    move-exception v2

    .line 225
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_61
    invoke-static {v5, v4, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_82

    .line 227
    const/4 v0, 0x0

    .line 229
    .restart local v0    # "closeSuccessful":Z
    :try_start_65
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_75
    .catchall {:try_start_65 .. :try_end_68} :catchall_7d

    .line 230
    const/4 v0, 0x1

    .line 234
    if-eqz v8, :cond_71

    .line 239
    :try_start_6b
    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v9, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 236
    :cond_71
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_10

    goto :goto_47

    .line 231
    :catch_75
    move-exception v2

    .line 232
    :try_start_76
    invoke-static {v5, v4, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7d

    .line 236
    :try_start_79
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_47

    .line 233
    :catchall_7d
    move-exception v9

    .line 236
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 233
    throw v9
    :try_end_82
    .catchall {:try_start_79 .. :try_end_82} :catchall_10

    .line 226
    .end local v0    # "closeSuccessful":Z
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_82
    move-exception v9

    .line 227
    const/4 v0, 0x0

    .line 229
    .restart local v0    # "closeSuccessful":Z
    :try_start_84
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_94
    .catchall {:try_start_84 .. :try_end_87} :catchall_9c

    .line 230
    const/4 v0, 0x1

    .line 234
    if-eqz v8, :cond_90

    .line 239
    :try_start_8a
    iget-object v10, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v10, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :goto_8f
    throw v9

    .line 236
    :cond_90
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_10

    goto :goto_8f

    .line 231
    :catch_94
    move-exception v2

    .line 232
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_95
    invoke-static {v5, v4, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_9c

    .line 236
    :try_start_98
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_8f

    .line 233
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_9c
    move-exception v9

    .line 236
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 233
    throw v9
    :try_end_a1
    .catchall {:try_start_98 .. :try_end_a1} :catchall_10
.end method
