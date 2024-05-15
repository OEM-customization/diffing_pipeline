.class public final Lcom/android/okhttp/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/Cache$CacheResponseBody;,
        Lcom/android/okhttp/Cache$Entry;,
        Lcom/android/okhttp/Cache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final greylist-max-o ENTRY_BODY:I = 0x1

.field private static final greylist-max-o ENTRY_COUNT:I = 0x2

.field private static final greylist-max-o ENTRY_METADATA:I = 0x0

.field private static final greylist-max-o VERSION:I = 0x31191


# instance fields
.field private final greylist-max-o cache:Lcom/android/okhttp/internal/DiskLruCache;

.field private greylist-max-o hitCount:I

.field public final greylist-max-o internalCache:Lcom/android/okhttp/internal/InternalCache;

.field private greylist-max-o networkCount:I

.field private greylist-max-o requestCount:I

.field private greylist-max-o writeAbortCount:I

.field private greylist-max-o writeSuccessCount:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/io/File;J)V
    .registers 5
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J

    .line 171
    sget-object v0, Lcom/android/okhttp/internal/io/FileSystem;->SYSTEM:Lcom/android/okhttp/internal/io/FileSystem;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/okhttp/Cache;-><init>(Ljava/io/File;JLcom/android/okhttp/internal/io/FileSystem;)V

    .line 172
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/io/File;JLcom/android/okhttp/internal/io/FileSystem;)V
    .registers 12
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J
    .param p4, "fileSystem"    # Lcom/android/okhttp/internal/io/FileSystem;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lcom/android/okhttp/Cache$1;

    invoke-direct {v0, p0}, Lcom/android/okhttp/Cache$1;-><init>(Lcom/android/okhttp/Cache;)V

    iput-object v0, p0, Lcom/android/okhttp/Cache;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    .line 175
    const v3, 0x31191

    const/4 v4, 0x2

    move-object v1, p4

    move-object v2, p1

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/internal/DiskLruCache;->create(Lcom/android/okhttp/internal/io/FileSystem;Ljava/io/File;IIJ)Lcom/android/okhttp/internal/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    .line 176
    return-void
.end method

.method private greylist-max-o abortQuietly(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    .registers 3
    .param p1, "editor"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .line 272
    if-eqz p1, :cond_8

    .line 273
    :try_start_2
    invoke-virtual {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_8

    .line 275
    :catch_6
    move-exception v0

    goto :goto_9

    .line 276
    :cond_8
    :goto_8
    nop

    .line 277
    :goto_9
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/Cache;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/Cache;
    .param p1, "x1"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1}, Lcom/android/okhttp/Cache;->put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/android/okhttp/Cache;Lcom/android/okhttp/Request;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/Cache;
    .param p1, "x1"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1}, Lcom/android/okhttp/Cache;->remove(Lcom/android/okhttp/Request;)V

    return-void
.end method

.method static synthetic blacklist access$1000(Lcom/android/okhttp/okio/BufferedSource;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-static {p0}, Lcom/android/okhttp/Cache;->readInt(Lcom/android/okhttp/okio/BufferedSource;)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$200(Lcom/android/okhttp/Cache;Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/Cache;
    .param p1, "x1"    # Lcom/android/okhttp/Response;
    .param p2, "x2"    # Lcom/android/okhttp/Response;

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/Cache;->update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/Cache;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/okhttp/Cache;

    .line 133
    invoke-direct {p0}, Lcom/android/okhttp/Cache;->trackConditionalCacheHit()V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/android/okhttp/Cache;Lcom/android/okhttp/internal/http/CacheStrategy;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/Cache;
    .param p1, "x1"    # Lcom/android/okhttp/internal/http/CacheStrategy;

    .line 133
    invoke-direct {p0, p1}, Lcom/android/okhttp/Cache;->trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V

    return-void
.end method

.method static synthetic blacklist access$600(Lcom/android/okhttp/Cache;)Lcom/android/okhttp/internal/DiskLruCache;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/Cache;

    .line 133
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    return-object v0
.end method

.method static synthetic blacklist access$808(Lcom/android/okhttp/Cache;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/Cache;

    .line 133
    iget v0, p0, Lcom/android/okhttp/Cache;->writeSuccessCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/okhttp/Cache;->writeSuccessCount:I

    return v0
.end method

.method static synthetic blacklist access$908(Lcom/android/okhttp/Cache;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/Cache;

    .line 133
    iget v0, p0, Lcom/android/okhttp/Cache;->writeAbortCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/okhttp/Cache;->writeAbortCount:I

    return v0
.end method

.method private greylist-max-o put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;
    .registers 8
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "requestMethod":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    .line 218
    :try_start_17
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/okhttp/Cache;->remove(Lcom/android/okhttp/Request;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_1f

    .line 221
    goto :goto_20

    .line 219
    :catch_1f
    move-exception v1

    .line 222
    :goto_20
    return-object v2

    .line 224
    :cond_21
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 228
    return-object v2

    .line 231
    :cond_2a
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->hasVaryAll(Lcom/android/okhttp/Response;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 232
    return-object v2

    .line 235
    :cond_31
    new-instance v1, Lcom/android/okhttp/Cache$Entry;

    invoke-direct {v1, p1}, Lcom/android/okhttp/Cache$Entry;-><init>(Lcom/android/okhttp/Response;)V

    .line 236
    .local v1, "entry":Lcom/android/okhttp/Cache$Entry;
    const/4 v3, 0x0

    .line 238
    .local v3, "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :try_start_37
    iget-object v4, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v5

    invoke-static {v5}, Lcom/android/okhttp/Cache;->urlToKey(Lcom/android/okhttp/Request;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v4

    move-object v3, v4

    .line 239
    if-nez v3, :cond_49

    .line 240
    return-object v2

    .line 242
    :cond_49
    invoke-virtual {v1, v3}, Lcom/android/okhttp/Cache$Entry;->writeTo(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    .line 243
    new-instance v4, Lcom/android/okhttp/Cache$CacheRequestImpl;

    invoke-direct {v4, p0, v3}, Lcom/android/okhttp/Cache$CacheRequestImpl;-><init>(Lcom/android/okhttp/Cache;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_51} :catch_52

    return-object v4

    .line 244
    :catch_52
    move-exception v4

    .line 245
    .local v4, "e":Ljava/io/IOException;
    invoke-direct {p0, v3}, Lcom/android/okhttp/Cache;->abortQuietly(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    .line 246
    return-object v2
.end method

.method private static greylist-max-o readInt(Lcom/android/okhttp/okio/BufferedSource;)I
    .registers 7
    .param p0, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 684
    :try_start_0
    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readDecimalLong()J

    move-result-wide v0

    .line 685
    .local v0, "result":J
    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    .line 686
    .local v2, "line":Ljava/lang/String;
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_1d

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1d

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 689
    long-to-int v3, v0

    return v3

    .line 687
    :cond_1d
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected an int but was \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "source":Lcom/android/okhttp/okio/BufferedSource;
    throw v3
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3c} :catch_3c

    .line 690
    .end local v0    # "result":J
    .end local v2    # "line":Ljava/lang/String;
    .restart local p0    # "source":Lcom/android/okhttp/okio/BufferedSource;
    :catch_3c
    move-exception v0

    .line 691
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o remove(Lcom/android/okhttp/Request;)V
    .registers 4
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {p1}, Lcom/android/okhttp/Cache;->urlToKey(Lcom/android/okhttp/Request;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 252
    return-void
.end method

.method private declared-synchronized greylist-max-o trackConditionalCacheHit()V
    .registers 2

    monitor-enter p0

    .line 411
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/Cache;->hitCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 412
    monitor-exit p0

    return-void

    .line 410
    .end local p0    # "this":Lcom/android/okhttp/Cache;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized greylist-max-o trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V
    .registers 3
    .param p1, "cacheStrategy"    # Lcom/android/okhttp/internal/http/CacheStrategy;

    monitor-enter p0

    .line 398
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Cache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/Cache;->requestCount:I

    .line 400
    iget-object v0, p1, Lcom/android/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/android/okhttp/Request;

    if-eqz v0, :cond_12

    .line 402
    iget v0, p0, Lcom/android/okhttp/Cache;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/Cache;->networkCount:I

    goto :goto_1c

    .line 404
    .end local p0    # "this":Lcom/android/okhttp/Cache;
    :cond_12
    iget-object v0, p1, Lcom/android/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_1c

    .line 406
    iget v0, p0, Lcom/android/okhttp/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/Cache;->hitCount:I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 408
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    .line 397
    .end local p1    # "cacheStrategy":Lcom/android/okhttp/internal/http/CacheStrategy;
    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private greylist-max-o update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V
    .registers 7
    .param p1, "cached"    # Lcom/android/okhttp/Response;
    .param p2, "network"    # Lcom/android/okhttp/Response;

    .line 255
    new-instance v0, Lcom/android/okhttp/Cache$Entry;

    invoke-direct {v0, p2}, Lcom/android/okhttp/Cache$Entry;-><init>(Lcom/android/okhttp/Response;)V

    .line 256
    .local v0, "entry":Lcom/android/okhttp/Cache$Entry;
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/Cache$CacheResponseBody;

    # getter for: Lcom/android/okhttp/Cache$CacheResponseBody;->snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    invoke-static {v1}, Lcom/android/okhttp/Cache$CacheResponseBody;->access$500(Lcom/android/okhttp/Cache$CacheResponseBody;)Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v1

    .line 257
    .local v1, "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    const/4 v2, 0x0

    .line 259
    .local v2, "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :try_start_10
    invoke-virtual {v1}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->edit()Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v3

    move-object v2, v3

    .line 260
    if-eqz v2, :cond_1d

    .line 261
    invoke-virtual {v0, v2}, Lcom/android/okhttp/Cache$Entry;->writeTo(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    .line 262
    invoke-virtual {v2}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->commit()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1d} :catch_1e

    .line 266
    :cond_1d
    goto :goto_22

    .line 264
    :catch_1e
    move-exception v3

    .line 265
    .local v3, "e":Ljava/io/IOException;
    invoke-direct {p0, v2}, Lcom/android/okhttp/Cache;->abortQuietly(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    .line 267
    .end local v3    # "e":Ljava/io/IOException;
    :goto_22
    return-void
.end method

.method private static greylist-max-o urlToKey(Lcom/android/okhttp/Request;)Ljava/lang/String;
    .registers 2
    .param p0, "request"    # Lcom/android/okhttp/Request;

    .line 179
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->close()V

    .line 387
    return-void
.end method

.method public greylist-max-o delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->delete()V

    .line 303
    return-void
.end method

.method public greylist-max-o evictAll()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->evictAll()V

    .line 311
    return-void
.end method

.method public greylist-max-o flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->flush()V

    .line 383
    return-void
.end method

.method greylist-max-o get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .registers 8
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .line 183
    invoke-static {p1}, Lcom/android/okhttp/Cache;->urlToKey(Lcom/android/okhttp/Request;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_5
    iget-object v2, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v2, v0}, Lcom/android/okhttp/internal/DiskLruCache;->get(Ljava/lang/String;)Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_32

    .line 188
    .local v2, "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    if-nez v2, :cond_e

    .line 189
    return-object v1

    .line 194
    :cond_e
    nop

    .line 197
    :try_start_f
    new-instance v3, Lcom/android/okhttp/Cache$Entry;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->getSource(I)Lcom/android/okhttp/okio/Source;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/okhttp/Cache$Entry;-><init>(Lcom/android/okhttp/okio/Source;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_2d

    .line 201
    .local v3, "entry":Lcom/android/okhttp/Cache$Entry;
    nop

    .line 203
    invoke-virtual {v3, p1, v2}, Lcom/android/okhttp/Cache$Entry;->response(Lcom/android/okhttp/Request;Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)Lcom/android/okhttp/Response;

    move-result-object v4

    .line 205
    .local v4, "response":Lcom/android/okhttp/Response;
    invoke-virtual {v3, p1, v4}, Lcom/android/okhttp/Cache$Entry;->matches(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 206
    invoke-virtual {v4}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v5

    invoke-static {v5}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 207
    return-object v1

    .line 210
    :cond_2c
    return-object v4

    .line 198
    .end local v3    # "entry":Lcom/android/okhttp/Cache$Entry;
    .end local v4    # "response":Lcom/android/okhttp/Response;
    :catch_2d
    move-exception v3

    .line 199
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 200
    return-object v1

    .line 191
    .end local v2    # "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_32
    move-exception v2

    .line 193
    .local v2, "e":Ljava/io/IOException;
    return-object v1
.end method

.method public greylist-max-o getDirectory()Ljava/io/File;
    .registers 2

    .line 390
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized greylist-max-o getHitCount()I
    .registers 2

    monitor-enter p0

    .line 419
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Cache;->hitCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 419
    .end local p0    # "this":Lcom/android/okhttp/Cache;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public greylist-max-o getMaxSize()J
    .registers 3

    .line 378
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized greylist-max-o getNetworkCount()I
    .registers 2

    monitor-enter p0

    .line 415
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Cache;->networkCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 415
    .end local p0    # "this":Lcom/android/okhttp/Cache;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o getRequestCount()I
    .registers 2

    monitor-enter p0

    .line 423
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Cache;->requestCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 423
    .end local p0    # "this":Lcom/android/okhttp/Cache;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public greylist-max-o getSize()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized greylist-max-o getWriteAbortCount()I
    .registers 2

    monitor-enter p0

    .line 366
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Cache;->writeAbortCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 366
    .end local p0    # "this":Lcom/android/okhttp/Cache;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o getWriteSuccessCount()I
    .registers 2

    monitor-enter p0

    .line 370
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Cache;->writeSuccessCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 370
    .end local p0    # "this":Lcom/android/okhttp/Cache;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public greylist-max-o initialize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    .line 294
    return-void
.end method

.method public greylist-max-o isClosed()Z
    .registers 2

    .line 394
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->isClosed()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o urls()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    new-instance v0, Lcom/android/okhttp/Cache$2;

    invoke-direct {v0, p0}, Lcom/android/okhttp/Cache$2;-><init>(Lcom/android/okhttp/Cache;)V

    return-object v0
.end method
