.class abstract Lcom/android/okhttp/internal/http/AbstractHttpInputStream;
.super Ljava/io/InputStream;
.source "AbstractHttpInputStream.java"


# instance fields
.field protected blacklist closed:Z

.field protected final blacklist httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

.field protected final blacklist in:Ljava/io/InputStream;


# direct methods
.method constructor blacklist <init>(Ljava/io/InputStream;Lcom/android/okhttp/internal/http/HttpEngine;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/okhttp/internal/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    .line 48
    iput-object p2, p0, Lcom/android/okhttp/internal/http/AbstractHttpInputStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 59
    return-void
.end method


# virtual methods
.method protected final blacklist cacheWrite([BII)V
    .registers 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    return-void
.end method

.method protected final blacklist checkNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/AbstractHttpInputStream;->closed:Z

    if-nez v0, :cond_5

    .line 75
    return-void

    .line 73
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final blacklist endOfInput(Z)V
    .registers 3
    .param p1, "streamCancelled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/okhttp/internal/http/AbstractHttpInputStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    .line 92
    return-void
.end method

.method public whitelist core-platform-api test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 67
    .local v1, "buffer":[B
    iget-object v2, p0, Lcom/android/okhttp/internal/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 68
    .local v0, "result":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_11

    aget-byte v2, v1, v3

    and-int/lit16 v2, v2, 0xff

    :cond_11
    return v2
.end method

.method protected final blacklist unexpectedEndOfInput()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/okhttp/internal/http/AbstractHttpInputStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->close()Lcom/android/okhttp/internal/http/StreamAllocation;

    .line 111
    return-void
.end method
