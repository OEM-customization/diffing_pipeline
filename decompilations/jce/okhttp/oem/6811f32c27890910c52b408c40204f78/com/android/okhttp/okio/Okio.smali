.class public final Lcom/android/okhttp/okio/Okio;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static synthetic -get0()Ljava/util/logging/Logger;
    .registers 1

    sget-object v0, Lcom/android/okhttp/okio/Okio;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/AssertionError;)Z
    .registers 2
    .param p0, "e"    # Ljava/lang/AssertionError;

    .prologue
    invoke-static {p0}, Lcom/android/okhttp/okio/Okio;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/android/okhttp/okio/Okio;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/okio/Okio;->logger:Ljava/util/logging/Logger;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static appendingSink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 184
    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_b
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public static buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .param p0, "sink"    # Lcom/android/okhttp/okio/Sink;

    .prologue
    .line 56
    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_b
    new-instance v0, Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/RealBufferedSink;-><init>(Lcom/android/okhttp/okio/Sink;)V

    return-object v0
.end method

.method public static buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;
    .registers 3
    .param p0, "source"    # Lcom/android/okhttp/okio/Source;

    .prologue
    .line 46
    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_b
    new-instance v0, Lcom/android/okhttp/okio/RealBufferedSource;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/RealBufferedSource;-><init>(Lcom/android/okhttp/okio/Source;)V

    return-object v0
.end method

.method private static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .registers 3
    .param p0, "e"    # Ljava/lang/AssertionError;

    .prologue
    .line 242
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 243
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 242
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static sink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 178
    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_b
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public static sink(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Sink;
    .registers 2
    .param p0, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 62
    new-instance v0, Lcom/android/okhttp/okio/Timeout;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method private static sink(Ljava/io/OutputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Sink;
    .registers 4
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "timeout"    # Lcom/android/okhttp/okio/Timeout;

    .prologue
    .line 66
    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_b
    if-nez p1, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_16
    new-instance v0, Lcom/android/okhttp/okio/Okio$1;

    invoke-direct {v0, p1, p0}, Lcom/android/okhttp/okio/Okio$1;-><init>(Lcom/android/okhttp/okio/Timeout;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static sink(Ljava/net/Socket;)Lcom/android/okhttp/okio/Sink;
    .registers 5
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    if-nez p0, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "socket == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_b
    invoke-static {p0}, Lcom/android/okhttp/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/android/okhttp/okio/AsyncTimeout;

    move-result-object v1

    .line 115
    .local v1, "timeout":Lcom/android/okhttp/okio/AsyncTimeout;
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    .line 116
    .local v0, "sink":Lcom/android/okhttp/okio/Sink;
    invoke-virtual {v1, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->sink(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/Sink;

    move-result-object v2

    return-object v2
.end method

.method public static source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 163
    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_b
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/InputStream;)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    return-object v0
.end method

.method public static source(Ljava/io/InputStream;)Lcom/android/okhttp/okio/Source;
    .registers 2
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 121
    new-instance v0, Lcom/android/okhttp/okio/Timeout;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/InputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    return-object v0
.end method

.method private static source(Ljava/io/InputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Source;
    .registers 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "timeout"    # Lcom/android/okhttp/okio/Timeout;

    .prologue
    .line 125
    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_b
    if-nez p1, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_16
    new-instance v0, Lcom/android/okhttp/okio/Okio$2;

    invoke-direct {v0, p1, p0}, Lcom/android/okhttp/okio/Okio$2;-><init>(Lcom/android/okhttp/okio/Timeout;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static source(Ljava/net/Socket;)Lcom/android/okhttp/okio/Source;
    .registers 5
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    if-nez p0, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "socket == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_b
    invoke-static {p0}, Lcom/android/okhttp/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/android/okhttp/okio/AsyncTimeout;

    move-result-object v1

    .line 205
    .local v1, "timeout":Lcom/android/okhttp/okio/AsyncTimeout;
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/InputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    .line 206
    .local v0, "source":Lcom/android/okhttp/okio/Source;
    invoke-virtual {v1, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->source(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/Source;

    move-result-object v2

    return-object v2
.end method

.method private static timeout(Ljava/net/Socket;)Lcom/android/okhttp/okio/AsyncTimeout;
    .registers 2
    .param p0, "socket"    # Ljava/net/Socket;

    .prologue
    .line 210
    new-instance v0, Lcom/android/okhttp/okio/Okio$3;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/Okio$3;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
