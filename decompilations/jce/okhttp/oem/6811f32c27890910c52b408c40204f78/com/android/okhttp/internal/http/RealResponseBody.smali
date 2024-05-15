.class public final Lcom/android/okhttp/internal/http/RealResponseBody;
.super Lcom/android/okhttp/ResponseBody;
.source "RealResponseBody.java"


# instance fields
.field private final headers:Lcom/android/okhttp/Headers;

.field private final source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/okio/BufferedSource;)V
    .registers 3
    .param p1, "headers"    # Lcom/android/okhttp/Headers;
    .param p2, "source"    # Lcom/android/okhttp/okio/BufferedSource;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/okhttp/internal/http/RealResponseBody;->headers:Lcom/android/okhttp/Headers;

    .line 29
    iput-object p2, p0, Lcom/android/okhttp/internal/http/RealResponseBody;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 30
    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RealResponseBody;->headers:Lcom/android/okhttp/Headers;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v2, p0, Lcom/android/okhttp/internal/http/RealResponseBody;->headers:Lcom/android/okhttp/Headers;

    const-string/jumbo v3, "Content-Type"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_10

    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v1

    :cond_10
    return-object v1
.end method

.method public source()Lcom/android/okhttp/okio/BufferedSource;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RealResponseBody;->source:Lcom/android/okhttp/okio/BufferedSource;

    return-object v0
.end method
