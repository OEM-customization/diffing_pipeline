.class public final Lcom/android/okhttp/okio/Okio;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field private static final blacklist logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/lang/AssertionError;)Z
    .registers 2
    .param p0, "x0"    # Ljava/lang/AssertionError;

    .line 36
    invoke-static {p0}, Lcom/android/okhttp/okio/Okio;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$100()Ljava/util/logging/Logger;
    .registers 1

    .line 36
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

    .line 186
    if-eqz p0, :cond_d

    .line 187
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    return-object v0

    .line 186
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .param p0, "sink"    # Lcom/android/okhttp/okio/Sink;

    .line 58
    if-eqz p0, :cond_8

    .line 59
    new-instance v0, Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/RealBufferedSink;-><init>(Lcom/android/okhttp/okio/Sink;)V

    return-object v0

    .line 58
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;
    .registers 3
    .param p0, "source"    # Lcom/android/okhttp/okio/Source;

    .line 48
    if-eqz p0, :cond_8

    .line 49
    new-instance v0, Lcom/android/okhttp/okio/RealBufferedSource;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/RealBufferedSource;-><init>(Lcom/android/okhttp/okio/Source;)V

    return-object v0

    .line 48
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .registers 3
    .param p0, "e"    # Ljava/lang/AssertionError;

    .line 244
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 245
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

    .line 244
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

    .line 180
    if-eqz p0, :cond_c

    .line 181
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    return-object v0

    .line 180
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist sink(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Sink;
    .registers 2
    .param p0, "out"    # Ljava/io/OutputStream;

    .line 64
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

    .line 68
    if-eqz p0, :cond_12

    .line 69
    if-eqz p1, :cond_a

    .line 71
    new-instance v0, Lcom/android/okhttp/okio/Okio$1;

    invoke-direct {v0, p1, p0}, Lcom/android/okhttp/okio/Okio$1;-><init>(Lcom/android/okhttp/okio/Timeout;Ljava/io/OutputStream;)V

    return-object v0

    .line 69
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
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

    .line 115
    if-eqz p0, :cond_13

    .line 116
    invoke-static {p0}, Lcom/android/okhttp/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/android/okhttp/okio/AsyncTimeout;

    move-result-object v0

    .line 117
    .local v0, "timeout":Lcom/android/okhttp/okio/AsyncTimeout;
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Sink;

    move-result-object v1

    .line 118
    .local v1, "sink":Lcom/android/okhttp/okio/Sink;
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->sink(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/Sink;

    move-result-object v2

    return-object v2

    .line 115
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

    .line 165
    if-eqz p0, :cond_c

    .line 166
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/InputStream;)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    return-object v0

    .line 165
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist source(Ljava/io/InputStream;)Lcom/android/okhttp/okio/Source;
    .registers 2
    .param p0, "in"    # Ljava/io/InputStream;

    .line 123
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

    .line 127
    if-eqz p0, :cond_12

    .line 128
    if-eqz p1, :cond_a

    .line 130
    new-instance v0, Lcom/android/okhttp/okio/Okio$2;

    invoke-direct {v0, p1, p0}, Lcom/android/okhttp/okio/Okio$2;-><init>(Lcom/android/okhttp/okio/Timeout;Ljava/io/InputStream;)V

    return-object v0

    .line 128
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
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

    .line 205
    if-eqz p0, :cond_13

    .line 206
    invoke-static {p0}, Lcom/android/okhttp/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/android/okhttp/okio/AsyncTimeout;

    move-result-object v0

    .line 207
    .local v0, "timeout":Lcom/android/okhttp/okio/AsyncTimeout;
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/InputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Source;

    move-result-object v1

    .line 208
    .local v1, "source":Lcom/android/okhttp/okio/Source;
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->source(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/Source;

    move-result-object v2

    return-object v2

    .line 205
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

    .line 212
    new-instance v0, Lcom/android/okhttp/okio/Okio$3;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/Okio$3;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
