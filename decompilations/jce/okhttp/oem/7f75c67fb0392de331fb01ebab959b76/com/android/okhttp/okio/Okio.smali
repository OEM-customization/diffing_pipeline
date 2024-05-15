.class public final Lcom/android/okhttp/okio/Okio;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field private static final blacklist logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    const-class v0, Lcom/android/okhttp/okio/Okio;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/okio/Okio;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/lang/AssertionError;)Z
    .registers 2
    .param p0, "x0"    # Ljava/lang/AssertionError;

    .line 40
    invoke-static {p0}, Lcom/android/okhttp/okio/Okio;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$100()Ljava/util/logging/Logger;
    .registers 1

    .line 40
    sget-object v0, Lcom/android/okhttp/okio/Okio;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static blacklist appendingSink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 197
    if-eqz p0, :cond_d

    .line 198
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    return-object v0

    .line 197
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .param p0, "sink"    # Lcom/android/okhttp/okio/Sink;

    .line 65
    if-eqz p0, :cond_8

    .line 66
    new-instance v0, Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/RealBufferedSink;-><init>(Lcom/android/okhttp/okio/Sink;)V

    return-object v0

    .line 65
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;
    .registers 3
    .param p0, "source"    # Lcom/android/okhttp/okio/Source;

    .line 52
    if-eqz p0, :cond_16

    .line 54
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOGVV:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "create BufferedSource"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->debug(Ljava/lang/Throwable;)V

    .line 56
    :cond_10
    new-instance v0, Lcom/android/okhttp/okio/RealBufferedSource;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/RealBufferedSource;-><init>(Lcom/android/okhttp/okio/Source;)V

    return-object v0

    .line 52
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .registers 3
    .param p0, "e"    # Ljava/lang/AssertionError;

    .line 255
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 256
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 255
    :goto_1b
    return v0
.end method

.method public static blacklist sink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 191
    if-eqz p0, :cond_c

    .line 192
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    return-object v0

    .line 191
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist sink(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Sink;
    .registers 2
    .param p0, "out"    # Ljava/io/OutputStream;

    .line 71
    new-instance v0, Lcom/android/okhttp/okio/Timeout;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist sink(Ljava/io/OutputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Sink;
    .registers 4
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "timeout"    # Lcom/android/okhttp/okio/Timeout;

    .line 75
    if-eqz p0, :cond_12

    .line 76
    if-eqz p1, :cond_a

    .line 78
    new-instance v0, Lcom/android/okhttp/okio/Okio$1;

    invoke-direct {v0, p1, p0}, Lcom/android/okhttp/okio/Okio$1;-><init>(Lcom/android/okhttp/okio/Timeout;Ljava/io/OutputStream;)V

    return-object v0

    .line 76
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist sink(Ljava/net/Socket;)Lcom/android/okhttp/okio/Sink;
    .registers 4
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    if-eqz p0, :cond_13

    .line 123
    invoke-static {p0}, Lcom/android/okhttp/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/android/okhttp/okio/AsyncTimeout;

    move-result-object v0

    .line 124
    .local v0, "timeout":Lcom/android/okhttp/okio/AsyncTimeout;
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Sink;

    move-result-object v1

    .line 125
    .local v1, "sink":Lcom/android/okhttp/okio/Sink;
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->sink(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/Sink;

    move-result-object v2

    return-object v2

    .line 122
    .end local v0    # "timeout":Lcom/android/okhttp/okio/AsyncTimeout;
    .end local v1    # "sink":Lcom/android/okhttp/okio/Sink;
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 176
    if-eqz p0, :cond_c

    .line 177
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/InputStream;)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    return-object v0

    .line 176
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist source(Ljava/io/InputStream;)Lcom/android/okhttp/okio/Source;
    .registers 2
    .param p0, "in"    # Ljava/io/InputStream;

    .line 130
    new-instance v0, Lcom/android/okhttp/okio/Timeout;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/InputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist source(Ljava/io/InputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Source;
    .registers 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "timeout"    # Lcom/android/okhttp/okio/Timeout;

    .line 134
    if-eqz p0, :cond_12

    .line 135
    if-eqz p1, :cond_a

    .line 137
    new-instance v0, Lcom/android/okhttp/okio/Okio$2;

    invoke-direct {v0, p1, p0}, Lcom/android/okhttp/okio/Okio$2;-><init>(Lcom/android/okhttp/okio/Timeout;Ljava/io/InputStream;)V

    return-object v0

    .line 135
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist source(Ljava/net/Socket;)Lcom/android/okhttp/okio/Source;
    .registers 4
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    if-eqz p0, :cond_13

    .line 217
    invoke-static {p0}, Lcom/android/okhttp/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/android/okhttp/okio/AsyncTimeout;

    move-result-object v0

    .line 218
    .local v0, "timeout":Lcom/android/okhttp/okio/AsyncTimeout;
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/InputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Source;

    move-result-object v1

    .line 219
    .local v1, "source":Lcom/android/okhttp/okio/Source;
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->source(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/Source;

    move-result-object v2

    return-object v2

    .line 216
    .end local v0    # "timeout":Lcom/android/okhttp/okio/AsyncTimeout;
    .end local v1    # "source":Lcom/android/okhttp/okio/Source;
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist timeout(Ljava/net/Socket;)Lcom/android/okhttp/okio/AsyncTimeout;
    .registers 2
    .param p0, "socket"    # Ljava/net/Socket;

    .line 223
    new-instance v0, Lcom/android/okhttp/okio/Okio$3;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/Okio$3;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
