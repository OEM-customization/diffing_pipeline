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
.field private final bodySource:Lcom/android/okhttp/okio/BufferedSource;

.field private final contentLength:Ljava/lang/String;

.field private final contentType:Ljava/lang/String;

.field private final snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/Cache$CacheResponseBody;)Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Cache$CacheResponseBody;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/okhttp/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "snapshot"    # Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "contentLength"    # Ljava/lang/String;

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;-><init>()V

    .line 700
    iput-object p1, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .line 701
    iput-object p2, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    .line 702
    iput-object p3, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    .line 704
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->getSource(I)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    .line 705
    .local v0, "source":Lcom/android/okhttp/okio/Source;
    new-instance v1, Lcom/android/okhttp/Cache$CacheResponseBody$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/okhttp/Cache$CacheResponseBody$1;-><init>(Lcom/android/okhttp/Cache$CacheResponseBody;Lcom/android/okhttp/okio/Source;Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)V

    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->bodySource:Lcom/android/okhttp/okio/BufferedSource;

    .line 711
    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 719
    :try_start_2
    iget-object v1, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_b} :catch_d

    move-result-wide v2

    :cond_c
    return-wide v2

    .line 720
    :catch_d
    move-exception v0

    .line 721
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide v2
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 714
    iget-object v1, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public source()Lcom/android/okhttp/okio/BufferedSource;
    .registers 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheResponseBody;->bodySource:Lcom/android/okhttp/okio/BufferedSource;

    return-object v0
.end method
