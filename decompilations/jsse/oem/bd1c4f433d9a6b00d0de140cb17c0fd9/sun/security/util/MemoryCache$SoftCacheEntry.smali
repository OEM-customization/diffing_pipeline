.class Lsun/security/util/MemoryCache$SoftCacheEntry;
.super Ljava/lang/ref/SoftReference;
.source "Cache.java"

# interfaces
.implements Lsun/security/util/MemoryCache$CacheEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/MemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoftCacheEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference",
        "<TV;>;",
        "Lsun/security/util/MemoryCache$CacheEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private expirationTime:J

.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)V
    .registers 7
    .param p3, "expirationTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 524
    .local p0, "this":Lsun/security/util/MemoryCache$SoftCacheEntry;, "Lsun/security/util/MemoryCache$SoftCacheEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p5, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    invoke-direct {p0, p2, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 525
    iput-object p1, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->key:Ljava/lang/Object;

    .line 526
    iput-wide p3, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->expirationTime:J

    .line 527
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 530
    .local p0, "this":Lsun/security/util/MemoryCache$SoftCacheEntry;, "Lsun/security/util/MemoryCache$SoftCacheEntry<TK;TV;>;"
    iget-object v0, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 534
    .local p0, "this":Lsun/security/util/MemoryCache$SoftCacheEntry;, "Lsun/security/util/MemoryCache$SoftCacheEntry<TK;TV;>;"
    invoke-virtual {p0}, Lsun/security/util/MemoryCache$SoftCacheEntry;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .registers 3

    .prologue
    .line 546
    .local p0, "this":Lsun/security/util/MemoryCache$SoftCacheEntry;, "Lsun/security/util/MemoryCache$SoftCacheEntry<TK;TV;>;"
    invoke-virtual {p0}, Lsun/security/util/MemoryCache$SoftCacheEntry;->clear()V

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->key:Ljava/lang/Object;

    .line 548
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->expirationTime:J

    .line 549
    return-void
.end method

.method public isValid(J)Z
    .registers 8
    .param p1, "currentTime"    # J

    .prologue
    .line 538
    .local p0, "this":Lsun/security/util/MemoryCache$SoftCacheEntry;, "Lsun/security/util/MemoryCache$SoftCacheEntry<TK;TV;>;"
    iget-wide v2, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->expirationTime:J

    cmp-long v1, p1, v2

    if-gtz v1, :cond_13

    invoke-virtual {p0}, Lsun/security/util/MemoryCache$SoftCacheEntry;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    .line 539
    .local v0, "valid":Z
    :goto_d
    if-nez v0, :cond_12

    .line 540
    invoke-virtual {p0}, Lsun/security/util/MemoryCache$SoftCacheEntry;->invalidate()V

    .line 542
    :cond_12
    return v0

    .line 538
    .end local v0    # "valid":Z
    :cond_13
    const/4 v0, 0x0

    .restart local v0    # "valid":Z
    goto :goto_d
.end method
