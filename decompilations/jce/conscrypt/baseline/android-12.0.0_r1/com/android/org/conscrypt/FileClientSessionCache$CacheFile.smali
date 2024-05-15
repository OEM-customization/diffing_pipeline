.class Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;
.super Ljava/io/File;
.source "FileClientSessionCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/FileClientSessionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheFile"
.end annotation


# instance fields
.field blacklist lastModified:J

.field final blacklist name:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 358
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 362
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->lastModified:J

    .line 359
    iput-object p2, p0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->name:Ljava/lang/String;

    .line 360
    return-void
.end method


# virtual methods
.method public whitelist test-api compareTo(Ljava/io/File;)I
    .registers 7
    .param p1, "another"    # Ljava/io/File;

    .line 376
    invoke-virtual {p0}, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 377
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    .line 378
    invoke-super {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v2

    return v2

    .line 380
    :cond_14
    cmp-long v2, v0, v2

    if-gez v2, :cond_1a

    const/4 v2, -0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x1

    :goto_1b
    return v2
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 353
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->compareTo(Ljava/io/File;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api lastModified()J
    .registers 5

    .line 366
    iget-wide v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->lastModified:J

    .line 367
    .local v0, "lastModified":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    .line 368
    invoke-super {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->lastModified:J

    move-wide v0, v2

    .line 370
    :cond_f
    return-wide v0
.end method
