.class public final Lcom/android/okhttp/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/Cache$1;,
        Lcom/android/okhttp/Cache$CacheRequestImpl;,
        Lcom/android/okhttp/Cache$CacheResponseBody;,
        Lcom/android/okhttp/Cache$Entry;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field private final cache:Lcom/android/okhttp/internal/DiskLruCache;

.field private hitCount:I

.field final internalCache:Lcom/android/okhttp/internal/InternalCache;

.field private networkCount:I

.field private requestCount:I

.field private writeAbortCount:I

.field private writeSuccessCount:I


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/Cache;)Lcom/android/okhttp/internal/DiskLruCache;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Cache;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/Cache;)I
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Cache;

    .prologue
    iget v0, p0, Lcom/android/okhttp/Cache;->writeAbortCount:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/Cache;)I
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Cache;

    .prologue
    iget v0, p0, Lcom/android/okhttp/Cache;->writeSuccessCount:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/Cache;I)I
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Cache;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/okhttp/Cache;->writeAbortCount:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/okhttp/Cache;I)I
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Cache;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/okhttp/Cache;->writeSuccessCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/okhttp/Cache;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;
    .registers 3
    .param p0, "-this"    # Lcom/android/okhttp/Cache;
    .param p1, "response"    # Lcom/android/okhttp/Response;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/Cache;->put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/okhttp/okio/BufferedSource;)I
    .registers 2
    .param p0, "source"    # Lcom/android/okhttp/okio/BufferedSource;

    .prologue
    invoke-static {p0}, Lcom/android/okhttp/Cache;->readInt(Lcom/android/okhttp/okio/BufferedSource;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/okhttp/Cache;Lcom/android/okhttp/Request;)V
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Cache;
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/Cache;->remove(Lcom/android/okhttp/Request;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/okhttp/Cache;)V
    .registers 1
    .param p0, "-this"    # Lcom/android/okhttp/Cache;

    .prologue
    invoke-direct {p0}, Lcom/android/okhttp/Cache;->trackConditionalCacheHit()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/okhttp/Cache;Lcom/android/okhttp/internal/http/CacheStrategy;)V
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Cache;
    .param p1, "cacheStrategy"    # Lcom/android/okhttp/internal/http/CacheStrategy;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/Cache;->trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/okhttp/Cache;Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V
    .registers 3
    .param p0, "-this"    # Lcom/android/okhttp/Cache;
    .param p1, "cached"    # Lcom/android/okhttp/Response;
    .param p2, "network"    # Lcom/android/okhttp/Response;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/Cache;->update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .registers 6
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J

    .prologue
    .line 168
    sget-object v0, Lcom/android/okhttp/internal/io/FileSystem;->SYSTEM:Lcom/android/okhttp/internal/io/FileSystem;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/okhttp/Cache;-><init>(Ljava/io/File;JLcom/android/okhttp/internal/io/FileSystem;)V

    .line 169
    return-void
.end method

.method constructor <init>(Ljava/io/File;JLcom/android/okhttp/internal/io/FileSystem;)V
    .registers 11
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J
    .param p4, "fileSystem"    # Lcom/android/okhttp/internal/io/FileSystem;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lcom/android/okhttp/Cache$1;

    invoke-direct {v0, p0}, Lcom/android/okhttp/Cache$1;-><init>(Lcom/android/okhttp/Cache;)V

    iput-object v0, p0, Lcom/android/okhttp/Cache;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    .line 172
    const v2, 0x31191

    const/4 v3, 0x2

    move-object v0, p4

    move-object v1, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/internal/DiskLruCache;->create(Lcom/android/okhttp/internal/io/FileSystem;Ljava/io/File;IIJ)Lcom/android/okhttp/internal/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    .line 173
    return-void
.end method

.method private abortQuietly(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    .registers 3
    .param p1, "editor"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .prologue
    .line 269
    if-eqz p1, :cond_5

    .line 270
    :try_start_2
    invoke-virtual {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 274
    :cond_5
    :goto_5
    return-void

    .line 272
    :catch_6
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_5
.end method

.method private put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;
    .registers 10
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 211
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "requestMethod":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/okhttp/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 215
    :try_start_17
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/okhttp/Cache;->remove(Lcom/android/okhttp/Request;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_55

    .line 219
    :goto_1e
    return-object v7

    .line 221
    :cond_1f
    const-string/jumbo v5, "GET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 225
    return-object v7

    .line 228
    :cond_29
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->hasVaryAll(Lcom/android/okhttp/Response;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 229
    return-object v7

    .line 232
    :cond_30
    new-instance v2, Lcom/android/okhttp/Cache$Entry;

    invoke-direct {v2, p1}, Lcom/android/okhttp/Cache$Entry;-><init>(Lcom/android/okhttp/Response;)V

    .line 233
    .local v2, "entry":Lcom/android/okhttp/Cache$Entry;
    const/4 v1, 0x0

    .line 235
    .local v1, "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :try_start_36
    iget-object v5, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v6

    invoke-static {v6}, Lcom/android/okhttp/Cache;->urlToKey(Lcom/android/okhttp/Request;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    .line 236
    .local v1, "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    if-nez v1, :cond_47

    .line 237
    return-object v7

    .line 239
    :cond_47
    invoke-virtual {v2, v1}, Lcom/android/okhttp/Cache$Entry;->writeTo(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    .line 240
    new-instance v5, Lcom/android/okhttp/Cache$CacheRequestImpl;

    invoke-direct {v5, p0, v1}, Lcom/android/okhttp/Cache$CacheRequestImpl;-><init>(Lcom/android/okhttp/Cache;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_4f} :catch_50

    return-object v5

    .line 241
    .end local v1    # "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :catch_50
    move-exception v0

    .line 242
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/android/okhttp/Cache;->abortQuietly(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    .line 243
    return-object v7

    .line 216
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "entry":Lcom/android/okhttp/Cache$Entry;
    :catch_55
    move-exception v3

    .local v3, "ignored":Ljava/io/IOException;
    goto :goto_1e
.end method

.method private static readInt(Lcom/android/okhttp/okio/BufferedSource;)I
    .registers 8
    .param p0, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    :try_start_0
    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readDecimalLong()J

    move-result-wide v2

    .line 682
    .local v2, "result":J
    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, "line":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_15

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-lez v4, :cond_45

    .line 684
    :cond_15
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "expected an int but was \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3a} :catch_3a

    .line 687
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "result":J
    :catch_3a
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 683
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "result":J
    :cond_45
    :try_start_45
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_48} :catch_3a

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_15

    .line 686
    long-to-int v4, v2

    return v4
.end method

.method private remove(Lcom/android/okhttp/Request;)V
    .registers 4
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {p1}, Lcom/android/okhttp/Cache;->urlToKey(Lcom/android/okhttp/Request;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 249
    return-void
.end method

.method private declared-synchronized trackConditionalCacheHit()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 408
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/Cache;->hitCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 409
    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V
    .registers 3
    .param p1, "cacheStrategy"    # Lcom/android/okhttp/internal/http/CacheStrategy;

    .prologue
    monitor-enter p0

    .line 395
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Cache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/Cache;->requestCount:I

    .line 397
    iget-object v0, p1, Lcom/android/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/android/okhttp/Request;

    if-eqz v0, :cond_13

    .line 399
    iget v0, p0, Lcom/android/okhttp/Cache;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/Cache;->networkCount:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1e

    :cond_11
    :goto_11
    monitor-exit p0

    .line 405
    return-void

    .line 401
    :cond_13
    :try_start_13
    iget-object v0, p1, Lcom/android/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/android/okhttp/Response;

    if-eqz v0, :cond_11

    .line 403
    iget v0, p0, Lcom/android/okhttp/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/Cache;->hitCount:I
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1e

    goto :goto_11

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V
    .registers 8
    .param p1, "cached"    # Lcom/android/okhttp/Response;
    .param p2, "network"    # Lcom/android/okhttp/Response;

    .prologue
    .line 252
    new-instance v2, Lcom/android/okhttp/Cache$Entry;

    invoke-direct {v2, p2}, Lcom/android/okhttp/Cache$Entry;-><init>(Lcom/android/okhttp/Response;)V

    .line 253
    .local v2, "entry":Lcom/android/okhttp/Cache$Entry;
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v4

    check-cast v4, Lcom/android/okhttp/Cache$CacheResponseBody;

    invoke-static {v4}, Lcom/android/okhttp/Cache$CacheResponseBody;->-get0(Lcom/android/okhttp/Cache$CacheResponseBody;)Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v3

    .line 254
    .local v3, "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    const/4 v1, 0x0

    .line 256
    .local v1, "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :try_start_10
    invoke-virtual {v3}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->edit()Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    .line 257
    .local v1, "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    if-eqz v1, :cond_1c

    .line 258
    invoke-virtual {v2, v1}, Lcom/android/okhttp/Cache$Entry;->writeTo(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    .line 259
    invoke-virtual {v1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->commit()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1c} :catch_1d

    .line 264
    .end local v1    # "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :cond_1c
    :goto_1c
    return-void

    .line 261
    :catch_1d
    move-exception v0

    .line 262
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/android/okhttp/Cache;->abortQuietly(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    goto :goto_1c
.end method

.method private static urlToKey(Lcom/android/okhttp/Request;)Ljava/lang/String;
    .registers 2
    .param p0, "request"    # Lcom/android/okhttp/Request;

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 383
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->close()V

    .line 384
    return-void
.end method

.method public delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->delete()V

    .line 300
    return-void
.end method

.method public evictAll()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->evictAll()V

    .line 308
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->flush()V

    .line 380
    return-void
.end method

.method get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .registers 9
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .prologue
    const/4 v6, 0x0

    .line 180
    invoke-static {p1}, Lcom/android/okhttp/Cache;->urlToKey(Lcom/android/okhttp/Request;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "key":Ljava/lang/String;
    :try_start_5
    iget-object v5, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v5, v2}, Lcom/android/okhttp/internal/DiskLruCache;->get(Ljava/lang/String;)Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_e

    move-result-object v4

    .line 185
    .local v4, "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    if-nez v4, :cond_10

    .line 186
    return-object v6

    .line 188
    .end local v4    # "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :catch_e
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/IOException;
    return-object v6

    .line 194
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :cond_10
    :try_start_10
    new-instance v1, Lcom/android/okhttp/Cache$Entry;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->getSource(I)Lcom/android/okhttp/okio/Source;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/okhttp/Cache$Entry;-><init>(Lcom/android/okhttp/okio/Source;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_2c

    .line 200
    .local v1, "entry":Lcom/android/okhttp/Cache$Entry;
    invoke-virtual {v1, p1, v4}, Lcom/android/okhttp/Cache$Entry;->response(Lcom/android/okhttp/Request;Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)Lcom/android/okhttp/Response;

    move-result-object v3

    .line 202
    .local v3, "response":Lcom/android/okhttp/Response;
    invoke-virtual {v1, p1, v3}, Lcom/android/okhttp/Cache$Entry;->matches(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;)Z

    move-result v5

    if-nez v5, :cond_31

    .line 203
    invoke-virtual {v3}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object v5

    invoke-static {v5}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 204
    return-object v6

    .line 195
    .end local v1    # "entry":Lcom/android/okhttp/Cache$Entry;
    .end local v3    # "response":Lcom/android/okhttp/Response;
    :catch_2c
    move-exception v0

    .line 196
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 197
    return-object v6

    .line 207
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "entry":Lcom/android/okhttp/Cache$Entry;
    .restart local v3    # "response":Lcom/android/okhttp/Response;
    :cond_31
    return-object v3
.end method

.method public getDirectory()Ljava/io/File;
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getHitCount()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 416
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Cache;->hitCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxSize()J
    .registers 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getNetworkCount()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 412
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Cache;->networkCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestCount()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 420
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Cache;->requestCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSize()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getWriteAbortCount()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 363
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Cache;->writeAbortCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWriteSuccessCount()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 367
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Cache;->writeSuccessCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initialize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    .line 291
    return-void
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->isClosed()Z

    move-result v0

    return v0
.end method

.method public urls()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Lcom/android/okhttp/Cache$2;

    invoke-direct {v0, p0}, Lcom/android/okhttp/Cache$2;-><init>(Lcom/android/okhttp/Cache;)V

    return-object v0
.end method
