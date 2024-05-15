.class final Lcom/android/okhttp/okio/Okio$3;
.super Lcom/android/okhttp/okio/AsyncTimeout;
.source "Okio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/android/okhttp/okio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$socket:Ljava/net/Socket;


# direct methods
.method constructor <init>(Ljava/net/Socket;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/okio/Okio$3;->val$socket:Ljava/net/Socket;

    .line 210
    invoke-direct {p0}, Lcom/android/okhttp/okio/AsyncTimeout;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4
    .param p1, "cause"    # Ljava/io/IOException;

    .prologue
    .line 212
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string/jumbo v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "ioe":Ljava/io/InterruptedIOException;
    if-eqz p1, :cond_d

    .line 214
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 216
    :cond_d
    return-object v0
.end method

.method protected timedOut()V
    .registers 7

    .prologue
    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/okio/Okio$3;->val$socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_2e
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_5} :catch_6

    .line 233
    :goto_5
    return-void

    .line 224
    :catch_6
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/AssertionError;
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->-wrap0(Ljava/lang/AssertionError;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 228
    invoke-static {}, Lcom/android/okhttp/okio/Okio;->-get0()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to close timed out socket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/okhttp/okio/Okio$3;->val$socket:Ljava/net/Socket;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 230
    :cond_2d
    throw v0

    .line 222
    .end local v0    # "e":Ljava/lang/AssertionError;
    :catch_2e
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/okhttp/okio/Okio;->-get0()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to close timed out socket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/okhttp/okio/Okio$3;->val$socket:Ljava/net/Socket;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
