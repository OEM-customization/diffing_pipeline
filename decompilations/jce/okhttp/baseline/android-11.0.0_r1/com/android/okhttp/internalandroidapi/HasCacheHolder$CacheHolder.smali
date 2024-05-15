.class public final Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;
.super Ljava/lang/Object;
.source "HasCacheHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internalandroidapi/HasCacheHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheHolder"
.end annotation


# instance fields
.field private final blacklist okHttpCache:Lcom/android/okhttp/Cache;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private constructor blacklist <init>(Lcom/android/okhttp/Cache;)V
    .registers 2
    .param p1, "okHttpCache"    # Lcom/android/okhttp/Cache;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;->okHttpCache:Lcom/android/okhttp/Cache;

    .line 50
    return-void
.end method

.method public static blacklist core-platform-api create(Ljava/io/File;J)Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;
    .registers 5
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "maxSizeBytes"    # J

    .line 76
    new-instance v0, Lcom/android/okhttp/Cache;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/okhttp/Cache;-><init>(Ljava/io/File;J)V

    .line 77
    .local v0, "cache":Lcom/android/okhttp/Cache;
    new-instance v1, Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;

    invoke-direct {v1, v0}, Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;-><init>(Lcom/android/okhttp/Cache;)V

    return-object v1
.end method


# virtual methods
.method public blacklist getCache()Lcom/android/okhttp/Cache;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;->okHttpCache:Lcom/android/okhttp/Cache;

    return-object v0
.end method

.method public blacklist core-platform-api isEquivalent(Ljava/io/File;J)Z
    .registers 6
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSizeBytes"    # J

    .line 86
    iget-object v0, p0, Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;->okHttpCache:Lcom/android/okhttp/Cache;

    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;->okHttpCache:Lcom/android/okhttp/Cache;

    .line 87
    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getMaxSize()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;->okHttpCache:Lcom/android/okhttp/Cache;

    .line 88
    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->isClosed()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 86
    :goto_21
    return v0
.end method
