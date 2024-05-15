.class public final Lcom/android/okhttp/internal/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final greylist EMPTY_BYTE_ARRAY:[B

.field public static final blacklist EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final greylist UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 51
    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/android/okhttp/internal/Util;->EMPTY_BYTE_ARRAY:[B

    .line 52
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/okhttp/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 56
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static blacklist checkOffsetAndCount(JJJ)V
    .registers 10
    .param p0, "arrayLength"    # J
    .param p2, "offset"    # J
    .param p4, "count"    # J

    .line 62
    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_13

    cmp-long v0, p2, p0

    if-gtz v0, :cond_13

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-ltz v0, :cond_13

    .line 65
    return-void

    .line 63
    :cond_13
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static greylist closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V
    .registers 4
    .param p0, "a"    # Ljava/io/Closeable;
    .param p1, "b"    # Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "thrown":Ljava/lang/Throwable;
    :try_start_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_5

    .line 131
    goto :goto_7

    .line 129
    :catchall_5
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 133
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_7
    :try_start_7
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    .line 136
    goto :goto_f

    .line 134
    :catchall_b
    move-exception v1

    .line 135
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_f

    move-object v0, v1

    .line 137
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_f
    :goto_f
    if-nez v0, :cond_12

    return-void

    .line 138
    :cond_12
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_2c

    .line 139
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_28

    .line 140
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_22

    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 141
    :cond_22
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 139
    :cond_28
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 138
    :cond_2c
    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method public static greylist closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 78
    if-eqz p0, :cond_a

    .line 80
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 84
    goto :goto_a

    .line 83
    :catch_6
    move-exception v0

    goto :goto_a

    .line 81
    :catch_8
    move-exception v0

    .line 82
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 86
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_a
    :goto_a
    return-void
.end method

.method public static blacklist closeQuietly(Ljava/net/ServerSocket;)V
    .registers 2
    .param p0, "serverSocket"    # Ljava/net/ServerSocket;

    .line 110
    if-eqz p0, :cond_a

    .line 112
    :try_start_2
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 116
    goto :goto_a

    .line 115
    :catch_6
    move-exception v0

    goto :goto_a

    .line 113
    :catch_8
    move-exception v0

    .line 114
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 118
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_a
    :goto_a
    return-void
.end method

.method public static blacklist closeQuietly(Ljava/net/Socket;)V
    .registers 3
    .param p0, "socket"    # Ljava/net/Socket;

    .line 93
    if-eqz p0, :cond_13

    .line 95
    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_5} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 101
    :goto_5
    goto :goto_13

    .line 100
    :catch_6
    move-exception v0

    goto :goto_13

    .line 98
    :catch_8
    move-exception v0

    .line 99
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 96
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_a
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/AssertionError;
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_12

    .end local v0    # "e":Ljava/lang/AssertionError;
    goto :goto_5

    .restart local v0    # "e":Ljava/lang/AssertionError;
    :cond_12
    throw v0

    .line 103
    .end local v0    # "e":Ljava/lang/AssertionError;
    :cond_13
    :goto_13
    return-void
.end method

.method public static blacklist concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 309
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 310
    .local v0, "result":[Ljava/lang/String;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 312
    return-object v0
.end method

.method public static blacklist contains([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 305
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist discard(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p0, "source"    # Lcom/android/okhttp/okio/Source;
    .param p1, "timeout"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 151
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/internal/Util;->skipAll(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 152
    :catch_5
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 69
    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static blacklist getDefaultPort(Ljava/lang/String;)I
    .registers 2
    .param p0, "protocol"    # Ljava/lang/String;

    .line 329
    const-string v0, "http"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x50

    return v0

    .line 330
    :cond_b
    const-string v0, "https"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x1bb

    return v0

    .line 331
    :cond_16
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist getEffectivePort(Ljava/lang/String;I)I
    .registers 3
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "specifiedPort"    # I

    .line 325
    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    move v0, p1

    goto :goto_9

    :cond_5
    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->getDefaultPort(Ljava/lang/String;)I

    move-result v0

    :goto_9
    return v0
.end method

.method public static blacklist getEffectivePort(Ljava/net/URI;)I
    .registers 3
    .param p0, "uri"    # Ljava/net/URI;

    .line 317
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/Util;->getEffectivePort(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getEffectivePort(Ljava/net/URL;)I
    .registers 3
    .param p0, "url"    # Ljava/net/URL;

    .line 321
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/Util;->getEffectivePort(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist hostHeader(Lcom/android/okhttp/HttpUrl;Z)Ljava/lang/String;
    .registers 6
    .param p0, "url"    # Lcom/android/okhttp/HttpUrl;
    .param p1, "includeDefaultPort"    # Z

    .line 270
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 272
    :cond_27
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    nop

    .line 273
    .local v0, "host":Ljava/lang/String;
    if-nez p1, :cond_3f

    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_3d

    goto :goto_3f

    .line 275
    :cond_3d
    move-object v1, v0

    goto :goto_55

    .line 274
    :cond_3f
    :goto_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    :goto_55
    return-object v1
.end method

.method public static blacklist immutableList(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 219
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist immutableList([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 224
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist immutableMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 229
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist intersect([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 257
    .local p0, "first":[Ljava/lang/Object;, "[TT;"
    .local p1, "second":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_22

    aget-object v4, p0, v3

    .line 259
    .local v4, "a":Ljava/lang/Object;, "TT;"
    array-length v5, p1

    move v6, v2

    :goto_e
    if-ge v6, v5, :cond_1f

    aget-object v7, p1, v6

    .line 260
    .local v7, "b":Ljava/lang/Object;, "TT;"
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 261
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    goto :goto_1f

    .line 259
    .end local v7    # "b":Ljava/lang/Object;, "TT;"
    :cond_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 258
    .end local v4    # "a":Ljava/lang/Object;, "TT;"
    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 266
    :cond_22
    return-object v0
.end method

.method public static blacklist intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;[TT;)[TT;"
        }
    .end annotation

    .line 248
    .local p0, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "first":[Ljava/lang/Object;, "[TT;"
    .local p2, "second":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, p2}, Lcom/android/okhttp/internal/Util;->intersect([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 249
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .registers 3
    .param p0, "e"    # Ljava/lang/AssertionError;

    .line 300
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 301
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

    .line 300
    :goto_1b
    return v0
.end method

.method public static blacklist md5Hex(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 187
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 188
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 189
    .local v1, "md5bytes":[B
    invoke-static {v1}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_18} :catch_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_18} :catch_19

    return-object v2

    .line 190
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    .end local v1    # "md5bytes":[B
    :catch_19
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static blacklist sha1(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/ByteString;
    .registers 4
    .param p0, "s"    # Lcom/android/okhttp/okio/ByteString;

    .line 209
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 210
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 211
    .local v1, "sha1Bytes":[B
    invoke-static {v1}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object v2
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v2

    .line 212
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    .end local v1    # "sha1Bytes":[B
    :catch_13
    move-exception v0

    .line 213
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static blacklist shaBase64(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 198
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 199
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 200
    .local v1, "sha1Bytes":[B
    invoke-static {v1}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v2
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_18} :catch_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_18} :catch_19

    return-object v2

    .line 201
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    .end local v1    # "sha1Bytes":[B
    :catch_19
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static blacklist skipAll(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .registers 14
    .param p0, "source"    # Lcom/android/okhttp/okio/Source;
    .param p1, "duration"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 163
    .local v0, "now":J
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/okio/Timeout;->hasDeadline()Z

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v2, :cond_1d

    .line 164
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    goto :goto_1e

    .line 165
    :cond_1d
    move-wide v5, v3

    :goto_1e
    nop

    .line 166
    .local v5, "originalDuration":J
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v2

    int-to-long v7, p1

    invoke-virtual {p2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-long/2addr v7, v0

    invoke-virtual {v2, v7, v8}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;

    .line 168
    :try_start_30
    new-instance v2, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v2}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 169
    .local v2, "skipBuffer":Lcom/android/okhttp/okio/Buffer;
    :goto_35
    const-wide/16 v7, 0x800

    invoke-interface {p0, v2, v7, v8}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_45

    .line 170
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->clear()V
    :try_end_44
    .catch Ljava/io/InterruptedIOException; {:try_start_30 .. :try_end_44} :catch_73
    .catchall {:try_start_30 .. :try_end_44} :catchall_5c

    goto :goto_35

    .line 172
    :cond_45
    const/4 v7, 0x1

    .line 176
    cmp-long v3, v5, v3

    if-nez v3, :cond_52

    .line 177
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/okio/Timeout;->clearDeadline()Lcom/android/okhttp/okio/Timeout;

    goto :goto_5b

    .line 179
    :cond_52
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v3

    add-long v8, v0, v5

    invoke-virtual {v3, v8, v9}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;

    .line 172
    :goto_5b
    return v7

    .line 176
    .end local v2    # "skipBuffer":Lcom/android/okhttp/okio/Buffer;
    :catchall_5c
    move-exception v2

    cmp-long v3, v5, v3

    if-nez v3, :cond_69

    .line 177
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/okio/Timeout;->clearDeadline()Lcom/android/okhttp/okio/Timeout;

    goto :goto_72

    .line 179
    :cond_69
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v3

    add-long v7, v0, v5

    invoke-virtual {v3, v7, v8}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;

    .line 181
    :goto_72
    throw v2

    .line 173
    :catch_73
    move-exception v2

    .line 174
    .local v2, "e":Ljava/io/InterruptedIOException;
    const/4 v7, 0x0

    .line 176
    cmp-long v3, v5, v3

    if-nez v3, :cond_81

    .line 177
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/okio/Timeout;->clearDeadline()Lcom/android/okhttp/okio/Timeout;

    goto :goto_8a

    .line 179
    :cond_81
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v3

    add-long v8, v0, v5

    invoke-virtual {v3, v8, v9}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;

    .line 174
    :goto_8a
    return v7
.end method

.method public static blacklist threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "daemon"    # Z

    .line 233
    new-instance v0, Lcom/android/okhttp/internal/Util$1;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/internal/Util$1;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static blacklist toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "s"    # Ljava/lang/String;

    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "length":I
    :goto_5
    if-ge v0, v1, :cond_3f

    .line 281
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 282
    .local v2, "c":I
    const/16 v3, 0x7f

    const/16 v4, 0x1f

    if-le v2, v4, :cond_19

    if-ge v2, v3, :cond_19

    .line 280
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_5

    .line 284
    :cond_19
    new-instance v5, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v5}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 285
    .local v5, "buffer":Lcom/android/okhttp/okio/Buffer;
    const/4 v6, 0x0

    invoke-virtual {v5, p0, v6, v0}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;

    .line 286
    move v6, v0

    .local v6, "j":I
    :goto_23
    if-ge v6, v1, :cond_3a

    .line 287
    invoke-virtual {p0, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 288
    if-le v2, v4, :cond_2f

    if-ge v2, v3, :cond_2f

    move v7, v2

    goto :goto_31

    :cond_2f
    const/16 v7, 0x3f

    :goto_31
    invoke-virtual {v5, v7}, Lcom/android/okhttp/okio/Buffer;->writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;

    .line 286
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_23

    .line 290
    .end local v6    # "j":I
    :cond_3a
    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 292
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "c":I
    .end local v5    # "buffer":Lcom/android/okhttp/okio/Buffer;
    :cond_3f
    return-object p0
.end method
