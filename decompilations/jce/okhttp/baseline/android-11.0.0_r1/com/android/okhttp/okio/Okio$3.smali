.class Lcom/android/okhttp/okio/Okio$3;
.super Lcom/android/okhttp/okio/AsyncTimeout;
.source "Okio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/android/okhttp/okio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$socket:Ljava/net/Socket;


# direct methods
.method constructor blacklist <init>(Ljava/net/Socket;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/android/okhttp/okio/Okio$3;->val$socket:Ljava/net/Socket;

    invoke-direct {p0}, Lcom/android/okhttp/okio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4
    .param p1, "cause"    # Ljava/io/IOException;

    .line 214
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "ioe":Ljava/io/InterruptedIOException;
    if-eqz p1, :cond_c

    .line 216
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 218
    :cond_c
    return-object v0
.end method

.method protected blacklist timedOut()V
    .registers 6

    .line 223
    const-string v0, "Failed to close timed out socket "

    :try_start_2
    iget-object v1, p0, Lcom/android/okhttp/okio/Okio$3;->val$socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_2b
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_46

    .line 226
    :catch_8
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/AssertionError;
    # invokes: Lcom/android/okhttp/okio/Okio;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->access$000(Ljava/lang/AssertionError;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 230
    # getter for: Lcom/android/okhttp/okio/Okio;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/okhttp/okio/Okio;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/okhttp/okio/Okio$3;->val$socket:Ljava/net/Socket;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_47

    .line 232
    :cond_2a
    throw v1

    .line 224
    .end local v1    # "e":Ljava/lang/AssertionError;
    :catch_2b
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/okhttp/okio/Okio;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/okhttp/okio/Okio;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/okhttp/okio/Okio$3;->val$socket:Ljava/net/Socket;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_46
    nop

    .line 235
    :goto_47
    return-void
.end method
