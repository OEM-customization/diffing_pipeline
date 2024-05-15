.class Lcom/android/okhttp/internal/FaultHidingSink;
.super Lcom/android/okhttp/okio/ForwardingSink;
.source "FaultHidingSink.java"


# instance fields
.field private blacklist hasErrors:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/okio/Sink;)V
    .registers 2
    .param p1, "delegate"    # Lcom/android/okhttp/okio/Sink;

    .line 14
    invoke-direct {p0, p1}, Lcom/android/okhttp/okio/ForwardingSink;-><init>(Lcom/android/okhttp/okio/Sink;)V

    .line 15
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-boolean v0, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_5

    return-void

    .line 43
    :cond_5
    :try_start_5
    invoke-super {p0}, Lcom/android/okhttp/okio/ForwardingSink;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    .line 47
    goto :goto_10

    .line 44
    :catch_9
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/FaultHidingSink;->onException(Ljava/io/IOException;)V

    .line 48
    .end local v0    # "e":Ljava/io/IOException;
    :goto_10
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-boolean v0, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_5

    return-void

    .line 33
    :cond_5
    :try_start_5
    invoke-super {p0}, Lcom/android/okhttp/okio/ForwardingSink;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    .line 37
    goto :goto_10

    .line 34
    :catch_9
    move-exception v0

    .line 35
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/FaultHidingSink;->onException(Ljava/io/IOException;)V

    .line 38
    .end local v0    # "e":Ljava/io/IOException;
    :goto_10
    return-void
.end method

.method protected blacklist onException(Ljava/io/IOException;)V
    .registers 2
    .param p1, "e"    # Ljava/io/IOException;

    .line 51
    return-void
.end method

.method public blacklist write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 6
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    iget-boolean v0, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_8

    .line 19
    invoke-virtual {p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    .line 20
    return-void

    .line 23
    :cond_8
    :try_start_8
    invoke-super {p0, p1, p2, p3}, Lcom/android/okhttp/okio/ForwardingSink;->write(Lcom/android/okhttp/okio/Buffer;J)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    .line 27
    goto :goto_13

    .line 24
    :catch_c
    move-exception v0

    .line 25
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/FaultHidingSink;->onException(Ljava/io/IOException;)V

    .line 28
    .end local v0    # "e":Ljava/io/IOException;
    :goto_13
    return-void
.end method
