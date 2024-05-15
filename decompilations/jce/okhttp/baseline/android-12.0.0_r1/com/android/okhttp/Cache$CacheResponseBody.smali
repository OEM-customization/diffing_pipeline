.class Lcom/android/okhttp/Cache$CacheResponseBody;
.super Lcom/android/okhttp/ResponseBody;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheResponseBody"
.end annotation


# instance fields
.field private final greylist-max-o bodySource:Lcom/android/okhttp/okio/BufferedSource;

.field private final greylist-max-o contentLength:Ljava/lang/String;

.field private final greylist-max-o contentType:Ljava/lang/String;

.field private final greylist-max-o snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/okhttp/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "snapshot"    # Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "contentLength"    # Ljava/lang/String;

    .line 702
    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;-><init>()V

    .line 703
    iput-object p1, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .line 704
    iput-object p2, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    .line 705
    iput-object p3, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    .line 707
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->getSource(I)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    .line 708
    .local v0, "source":Lcom/android/okhttp/okio/Source;
    new-instance v1, Lcom/android/okhttp/Cache$CacheResponseBody$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/okhttp/Cache$CacheResponseBody$1;-><init>(Lcom/android/okhttp/Cache$CacheResponseBody;Lcom/android/okhttp/okio/Source;Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)V

    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->bodySource:Lcom/android/okhttp/okio/BufferedSource;

    .line 714
    return-void
.end method

.method static synthetic blacklist access$500(Lcom/android/okhttp/Cache$CacheResponseBody;)Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/Cache$CacheResponseBody;

    .line 695
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o contentLength()J
    .registers 4

    .line 722
    const-wide/16 v0, -0x1

    :try_start_2
    iget-object v2, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_a} :catch_b

    :cond_a
    return-wide v0

    .line 723
    :catch_b
    move-exception v2

    .line 724
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-wide v0
.end method

.method public greylist-max-o contentType()Lcom/android/okhttp/MediaType;
    .registers 2

    .line 717
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public greylist-max-o source()Lcom/android/okhttp/okio/BufferedSource;
    .registers 2

    .line 729
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->bodySource:Lcom/android/okhttp/okio/BufferedSource;

    return-object v0
.end method
