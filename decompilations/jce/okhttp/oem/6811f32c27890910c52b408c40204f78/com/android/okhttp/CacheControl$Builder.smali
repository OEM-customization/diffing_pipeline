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
.field maxAgeSeconds:I

.field maxStaleSeconds:I

.field minFreshSeconds:I

.field noCache:Z

.field noStore:Z

.field noTransform:Z

.field onlyIfCached:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput v0, p0, Lcom/android/okhttp/CacheControl$Builder;->maxAgeSeconds:I

    .line 276
    iput v0, p0, Lcom/android/okhttp/CacheControl$Builder;->maxStaleSeconds:I

    .line 277
    iput v0, p0, Lcom/android/okhttp/CacheControl$Builder;->minFreshSeconds:I

    .line 272
    return-void
.end method


# virtual methods
.method public build()Lcom/android/okhttp/CacheControl;
    .registers 3

    .prologue
    .line 363
    new-instance v0, Lcom/android/okhttp/CacheControl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/CacheControl;-><init>(Lcom/android/okhttp/CacheControl$Builder;Lcom/android/okhttp/CacheControl;)V

    return-object v0
.end method

.method public maxAge(ILjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/CacheControl$Builder;
    .registers 8
    .param p1, "maxAge"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 302
    if-gez p1, :cond_1c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maxAge < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 303
    :cond_1c
    int-to-long v2, p1

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 304
    .local v0, "maxAgeSecondsLong":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2e

    .line 305
    const v2, 0x7fffffff

    .line 304
    :goto_2b
    iput v2, p0, Lcom/android/okhttp/CacheControl$Builder;->maxAgeSeconds:I

    .line 307
    return-object p0

    .line 306
    :cond_2e
    long-to-int v2, v0

    goto :goto_2b
.end method

.method public maxStale(ILjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/CacheControl$Builder;
    .registers 8
    .param p1, "maxStale"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 320
    if-gez p1, :cond_1c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maxStale < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 321
    :cond_1c
    int-to-long v2, p1

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 322
    .local v0, "maxStaleSecondsLong":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2e

    .line 323
    const v2, 0x7fffffff

    .line 322
    :goto_2b
    iput v2, p0, Lcom/android/okhttp/CacheControl$Builder;->maxStaleSeconds:I

    .line 325
    return-object p0

    .line 324
    :cond_2e
    long-to-int v2, v0

    goto :goto_2b
.end method

.method public minFresh(ILjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/CacheControl$Builder;
    .registers 8
    .param p1, "minFresh"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 339
    if-gez p1, :cond_1c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "minFresh < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 340
    :cond_1c
    int-to-long v2, p1

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 341
    .local v0, "minFreshSecondsLong":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2e

    .line 342
    const v2, 0x7fffffff

    .line 341
    :goto_2b
    iput v2, p0, Lcom/android/okhttp/CacheControl$Builder;->minFreshSeconds:I

    .line 344
    return-object p0

    .line 343
    :cond_2e
    long-to-int v2, v0

    goto :goto_2b
.end method

.method public noCache()Lcom/android/okhttp/CacheControl$Builder;
    .registers 2

    .prologue
    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl$Builder;->noCache:Z

    .line 284
    return-object p0
.end method

.method public noStore()Lcom/android/okhttp/CacheControl$Builder;
    .registers 2

    .prologue
    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl$Builder;->noStore:Z

    .line 290
    return-object p0
.end method

.method public noTransform()Lcom/android/okhttp/CacheControl$Builder;
    .registers 2

    .prologue
    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl$Builder;->noTransform:Z

    .line 359
    return-object p0
.end method

.method public onlyIfCached()Lcom/android/okhttp/CacheControl$Builder;
    .registers 2

    .prologue
    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/CacheControl$Builder;->onlyIfCached:Z

    .line 353
    return-object p0
.end method
