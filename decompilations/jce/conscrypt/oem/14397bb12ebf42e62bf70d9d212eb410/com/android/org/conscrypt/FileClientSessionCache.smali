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
.field public static final MAX_SIZE:I = 0xc

.field static final caches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Lcom/android/org/conscrypt/FileClientSessionCache$Impl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 316
    sput-object v0, Lcom/android/org/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    .line 41
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized reset()V
    .registers 2

    .prologue
    const-class v1, Lcom/android/org/conscrypt/FileClientSessionCache;

    monitor-enter v1

    .line 341
    :try_start_3
    sget-object v0, Lcom/android/org/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 342
    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized usingDirectory(Ljava/io/File;)Lcom/android/org/conscrypt/SSLClientSessionCache;
    .registers 4
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-class v2, Lcom/android/org/conscrypt/FileClientSessionCache;

    monitor-enter v2

    .line 331
    :try_start_3
    sget-object v1, Lcom/android/org/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;

    .line 332
    .local v0, "cache":Lcom/android/org/conscrypt/FileClientSessionCache$Impl;
    if-nez v0, :cond_17

    .line 333
    new-instance v0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;

    .end local v0    # "cache":Lcom/android/org/conscrypt/FileClientSessionCache$Impl;
    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;-><init>(Ljava/io/File;)V

    .line 334
    .restart local v0    # "cache":Lcom/android/org/conscrypt/FileClientSessionCache$Impl;
    sget-object v1, Lcom/android/org/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit v2

    .line 336
    return-object v0

    .end local v0    # "cache":Lcom/android/org/conscrypt/FileClientSessionCache$Impl;
    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method
