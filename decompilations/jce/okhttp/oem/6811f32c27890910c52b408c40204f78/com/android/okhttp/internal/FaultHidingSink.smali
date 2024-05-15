.class Lcom/android/okhttp/internal/FaultHidingSink;
.super Lcom/android/okhttp/okio/ForwardingSink;
.source "FaultHidingSink.java"


# instance fields
.field private hasErrors:Z


# direct methods
.method public constructor <init>(Lcom/android/okhttp/okio/Sink;)V
    .registers 2
    .param p1, "delegate"    # Lcom/android/okhttp/okio/Sink;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/okhttp/okio/ForwardingSink;-><init>(Lcom/android/okhttp/okio/Sink;)V

    .line 14
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-boolean v1, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    if-eqz v1, :cond_5

    return-void

    .line 42
    :cond_5
    :try_start_5
    invoke-super {p0}, Lcom/android/okhttp/okio/ForwardingSink;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    .line 47
    :goto_8
    return-void

    .line 43
    :catch_9
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/FaultHidingSink;->onException(Ljava/io/IOException;)V

    goto :goto_8
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    iget-boolean v1, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    if-eqz v1, :cond_5

    return-void

    .line 32
    :cond_5
    :try_start_5
    invoke-super {p0}, Lcom/android/okhttp/okio/ForwardingSink;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    .line 37
    :goto_8
    return-void

    .line 33
    :catch_9
    move-exception v0

    .line 34
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/FaultHidingSink;->onException(Ljava/io/IOException;)V

    goto :goto_8
.end method

.method protected onException(Ljava/io/IOException;)V
    .registers 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 50
    return-void
.end method

.method public write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 6
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    iget-boolean v1, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    if-eqz v1, :cond_8

    .line 18
    invoke-virtual {p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    .line 19
    return-void

    .line 22
    :cond_8
    :try_start_8
    invoke-super {p0, p1, p2, p3}, Lcom/android/okhttp/okio/ForwardingSink;->write(Lcom/android/okhttp/okio/Buffer;J)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    .line 27
    :goto_b
    return-void

    .line 23
    :catch_c
    move-exception v0

    .line 24
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/okhttp/internal/FaultHidingSink;->hasErrors:Z

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/FaultHidingSink;->onException(Ljava/io/IOException;)V

    goto :goto_b
.end method
