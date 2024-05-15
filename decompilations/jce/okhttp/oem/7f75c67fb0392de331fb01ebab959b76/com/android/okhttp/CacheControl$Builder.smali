.class public final Lcom/android/okhttp/CacheControl$Builder;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field greylist-max-o maxAgeSeconds:I

.field greylist-max-o maxStaleSeconds:I

.field greylist-max-o minFreshSeconds:I

.field greylist-max-o noCache:Z

.field greylist-max-o noStore:Z

.field greylist-max-o noTransform:Z

.field greylist-max-o onlyIfCached:Z


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/okhttp/CacheControl$Builder;->maxAgeSeconds:I

    .line 279
    iput v0, p0, Lcom/android/okhttp/CacheControl$Builder;->maxStaleSeconds:I

    .line 280
    iput v0, p0, Lcom/android/okhttp/CacheControl$Builder;->minFreshSeconds:I

    return-void
.end method


# virtual methods
.method public greylist-max-o build()Lcom/android/okhttp/CacheControl;
    .registers 3

    .line 366
    new-instance v0, Lcom/android/okhttp/CacheControl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/CacheControl;-><init>(Lcom/android/okhttp/CacheControl$Builder;Lcom/android/okhttp/CacheControl$1;)V

    return-object v0
.end method

.method public greylist-max-o maxAge(ILjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/CacheControl$Builder;
    .registers 7
    .param p1, "maxAge"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 305
    if-ltz p1, :cond_16

    .line 306
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 307
    .local v0, "maxAgeSecondsLong":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_12

    .line 308
    const v2, 0x7fffffff

    goto :goto_13

    .line 309
    :cond_12
    long-to-int v2, v0

    :goto_13
    iput v2, p0, Lcom/android/okhttp/CacheControl$Builder;->maxAgeSeconds:I

    .line 310
    return-object p0

    .line 305
    .end local v0    # "maxAgeSecondsLong":J
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxAge < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o maxStale(ILjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/CacheControl$Builder;
    .registers 7
    .param p1, "maxStale"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 323
    if-ltz p1, :cond_16

    .line 324
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 325
    .local v0, "maxStaleSecondsLong":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_12

    .line 326
    const v2, 0x7fffffff

    goto :goto_13

    .line 327
    :cond_12
    long-to-int v2, v0

    :goto_13
    iput v2, p0, Lcom/android/okhttp/CacheControl$Builder;->maxStaleSeconds:I

    .line 328
    return-object p0

    .line 323
    .end local v0    # "maxStaleSecondsLong":J
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxStale < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o minFresh(ILjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/CacheControl$Builder;
    .registers 7
    .param p1, "minFresh"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 342
    if-ltz p1, :cond_16

    .line 343
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 344
    .local v0, "minFreshSecondsLong":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_12

    .line 345
    const v2, 0x7fffffff

    goto :goto_13

    .line 346
    :cond_12
    long-to-int v2, v0

    :goto_13
    iput v2, p0, Lcom/android/okhttp/CacheControl$Builder;->minFreshSeconds:I

    .line 347
    return-object p0

    .line 342
    .end local v0    # "minFreshSecondsLong":J
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minFresh < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o noCache()Lcom/android/okhttp/CacheControl$Builder;
    .registers 2

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl$Builder;->noCache:Z

    .line 287
    return-object p0
.end method

.method public greylist-max-o noStore()Lcom/android/okhttp/CacheControl$Builder;
    .registers 2

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl$Builder;->noStore:Z

    .line 293
    return-object p0
.end method

.method public greylist-max-o noTransform()Lcom/android/okhttp/CacheControl$Builder;
    .registers 2

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl$Builder;->noTransform:Z

    .line 362
    return-object p0
.end method

.method public greylist-max-o onlyIfCached()Lcom/android/okhttp/CacheControl$Builder;
    .registers 2

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl$Builder;->onlyIfCached:Z

    .line 356
    return-object p0
.end method
