.class final Lcom/android/okhttp/internal/huc/JavaApiConverter$5;
.super Lcom/android/okhttp/ResponseBody;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkBody(Ljava/net/URLConnection;)Lcom/android/okhttp/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private body:Lcom/android/okhttp/okio/BufferedSource;

.field final synthetic val$urlConnection:Ljava/net/URLConnection;


# direct methods
.method constructor <init>(Ljava/net/URLConnection;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;->val$urlConnection:Ljava/net/URLConnection;

    .line 504
    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 5

    .prologue
    .line 512
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;->val$urlConnection:Ljava/net/URLConnection;

    const-string/jumbo v2, "Content-Length"

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap3(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 508
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;->val$urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "contentTypeHeader":Ljava/lang/String;
    if-nez v0, :cond_a

    :goto_9
    return-object v1

    :cond_a
    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v1

    goto :goto_9
.end method

.method public source()Lcom/android/okhttp/okio/BufferedSource;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;->body:Lcom/android/okhttp/okio/BufferedSource;

    if-nez v1, :cond_14

    .line 517
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;->val$urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 518
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/InputStream;)Lcom/android/okhttp/okio/Source;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;->body:Lcom/android/okhttp/okio/BufferedSource;

    .line 520
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_14
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$5;->body:Lcom/android/okhttp/okio/BufferedSource;

    return-object v1
.end method
