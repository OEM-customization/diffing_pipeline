.class public final Lcom/android/org/conscrypt/FileClientSessionCache;
.super Ljava/lang/Object;
.source "FileClientSessionCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;,
        Lcom/android/org/conscrypt/FileClientSessionCache$Impl;
    }
.end annotation


# static fields
.field public static final blacklist MAX_SIZE:I = 0xc

.field static final blacklist caches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Lcom/android/org/conscrypt/FileClientSessionCache$Impl;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    const-class v0, Lcom/android/org/conscrypt/FileClientSessionCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    .line 321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000()Ljava/util/logging/Logger;
    .registers 1

    .line 45
    sget-object v0, Lcom/android/org/conscrypt/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static declared-synchronized blacklist reset()V
    .registers 2

    const-class v0, Lcom/android/org/conscrypt/FileClientSessionCache;

    monitor-enter v0

    .line 349
    :try_start_3
    sget-object v1, Lcom/android/org/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 350
    monitor-exit v0

    return-void

    .line 348
    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized greylist test-api usingDirectory(Ljava/io/File;)Lcom/android/org/conscrypt/SSLClientSessionCache;
    .registers 5
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/android/org/conscrypt/FileClientSessionCache;

    monitor-enter v0

    .line 339
    :try_start_3
    sget-object v1, Lcom/android/org/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;

    .line 340
    .local v2, "cache":Lcom/android/org/conscrypt/FileClientSessionCache$Impl;
    if-nez v2, :cond_16

    .line 341
    new-instance v3, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;

    invoke-direct {v3, p0}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 342
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    .line 344
    :cond_16
    monitor-exit v0

    return-object v2

    .line 338
    .end local v2    # "cache":Lcom/android/org/conscrypt/FileClientSessionCache$Impl;
    .end local p0    # "directory":Ljava/io/File;
    :catchall_18
    move-exception p0

    monitor-exit v0

    throw p0
.end method
