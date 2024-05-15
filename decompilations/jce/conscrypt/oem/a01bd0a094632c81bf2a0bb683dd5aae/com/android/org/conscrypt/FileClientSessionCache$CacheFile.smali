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
.field lastModified:J

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 350
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 354
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->lastModified:J

    .line 351
    iput-object p2, p0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->name:Ljava/lang/String;

    .line 352
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/io/File;)I
    .registers 10
    .param p1, "another"    # Ljava/io/File;

    .prologue
    const-wide/16 v6, 0x0

    .line 368
    invoke-virtual {p0}, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->lastModified()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 369
    .local v0, "result":J
    cmp-long v2, v0, v6

    if-nez v2, :cond_15

    .line 370
    invoke-super {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v2

    return v2

    .line 372
    :cond_15
    cmp-long v2, v0, v6

    if-gez v2, :cond_1b

    const/4 v2, -0x1

    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x1

    goto :goto_1a
.end method

.method public lastModified()J
    .registers 5

    .prologue
    .line 358
    iget-wide v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->lastModified:J

    .line 359
    .local v0, "lastModified":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_e

    .line 360
    invoke-super {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .end local v0    # "lastModified":J
    iput-wide v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->lastModified:J

    .line 362
    .restart local v0    # "lastModified":J
    :cond_e
    return-wide v0
.end method
