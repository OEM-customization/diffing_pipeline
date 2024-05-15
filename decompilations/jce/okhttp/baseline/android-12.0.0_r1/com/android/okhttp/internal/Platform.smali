.class public Lcom/android/okhttp/internal/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final blacklist GET_ALPN_SELECTED_PROTOCOL:Lcom/android/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist INSTANCE_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/okhttp/internal/Platform;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SET_ALPN_PROTOCOLS:Lcom/android/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SET_HOSTNAME:Lcom/android/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SET_USE_SESSION_TICKETS:Lcom/android/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/okhttp/internal/OptionalMethod<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 49
    const-class v0, [B

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/android/okhttp/internal/Platform;

    invoke-direct {v2}, Lcom/android/okhttp/internal/Platform;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/okhttp/internal/Platform;->INSTANCE_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    .line 93
    new-instance v1, Lcom/android/okhttp/internal/OptionalMethod;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const-string v6, "setUseSessionTickets"

    invoke-direct {v1, v4, v6, v3}, Lcom/android/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/android/okhttp/internal/Platform;->SET_USE_SESSION_TICKETS:Lcom/android/okhttp/internal/OptionalMethod;

    .line 96
    new-instance v1, Lcom/android/okhttp/internal/OptionalMethod;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    const-string v6, "setHostname"

    invoke-direct {v1, v4, v6, v3}, Lcom/android/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/android/okhttp/internal/Platform;->SET_HOSTNAME:Lcom/android/okhttp/internal/OptionalMethod;

    .line 99
    new-instance v1, Lcom/android/okhttp/internal/OptionalMethod;

    new-array v3, v5, [Ljava/lang/Class;

    const-string v6, "getAlpnSelectedProtocol"

    invoke-direct {v1, v0, v6, v3}, Lcom/android/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/android/okhttp/internal/Platform;->GET_ALPN_SELECTED_PROTOCOL:Lcom/android/okhttp/internal/OptionalMethod;

    .line 102
    new-instance v1, Lcom/android/okhttp/internal/OptionalMethod;

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v0, v2, v5

    const-string v0, "setAlpnProtocols"

    invoke-direct {v1, v4, v0, v2}, Lcom/android/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/android/okhttp/internal/Platform;->SET_ALPN_PROTOCOLS:Lcom/android/okhttp/internal/OptionalMethod;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method static blacklist concatLengthPrefixed(Ljava/util/List;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/okhttp/Protocol;",
            ">;)[B"
        }
    .end annotation

    .line 257
    .local p0, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/Protocol;>;"
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 258
    .local v0, "result":Lcom/android/okhttp/okio/Buffer;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_a
    if-ge v1, v2, :cond_2c

    .line 259
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/okhttp/Protocol;

    .line 260
    .local v3, "protocol":Lcom/android/okhttp/Protocol;
    sget-object v4, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    if-ne v3, v4, :cond_17

    goto :goto_29

    .line 261
    :cond_17
    invoke-virtual {v3}, Lcom/android/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 262
    invoke-virtual {v3}, Lcom/android/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;

    .line 258
    .end local v3    # "protocol":Lcom/android/okhttp/Protocol;
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 264
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2c
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static greylist get()Lcom/android/okhttp/internal/Platform;
    .registers 1

    .line 58
    sget-object v0, Lcom/android/okhttp/internal/Platform;->INSTANCE_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/Platform;

    return-object v0
.end method

.method public static blacklist getAndSetForTest(Lcom/android/okhttp/internal/Platform;)Lcom/android/okhttp/internal/Platform;
    .registers 2
    .param p0, "platform"    # Lcom/android/okhttp/internal/Platform;

    .line 79
    if-eqz p0, :cond_b

    .line 82
    sget-object v0, Lcom/android/okhttp/internal/Platform;->INSTANCE_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/Platform;

    return-object v0

    .line 80
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static blacklist getProtocolIds(Ljava/util/List;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/okhttp/Protocol;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 245
    .local p0, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/Protocol;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 246
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 247
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/Protocol;

    invoke-virtual {v2}, Lcom/android/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 249
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method private static blacklist isPlatformSocket(Ljavax/net/ssl/SSLSocket;)Z
    .registers 3
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.org.conscrypt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p0, "instance"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 218
    .local p1, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_32

    .line 220
    :try_start_9
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 221
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 222
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 223
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_23

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_23

    .line 224
    :cond_1e
    invoke-virtual {p1, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_22
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_22} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_22} :catch_24

    return-object v2

    .line 223
    :cond_23
    :goto_23
    return-object v2

    .line 226
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "value":Ljava/lang/Object;
    :catch_24
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 225
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2b
    move-exception v1

    .line 228
    nop

    .line 218
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 232
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_32
    const-string v0, "delegate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 233
    const-class v1, Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/android/okhttp/internal/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 234
    .local v0, "delegate":Ljava/lang/Object;
    if-eqz v0, :cond_47

    invoke-static {v0, p1, p2}, Lcom/android/okhttp/internal/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 237
    .end local v0    # "delegate":Ljava/lang/Object;
    :cond_47
    return-object v2
.end method


# virtual methods
.method public blacklist afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .registers 2
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;

    .line 157
    return-void
.end method

.method public blacklist configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/okhttp/Protocol;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/Protocol;>;"
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 122
    .local v0, "sslParams":Ljavax/net/ssl/SSLParameters;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_3c

    .line 124
    invoke-static {p1}, Landroid/net/ssl/SSLSockets;->isSupportedSocket(Ljavax/net/ssl/SSLSocket;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 125
    invoke-static {p1, v2}, Landroid/net/ssl/SSLSockets;->setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V

    goto :goto_1f

    .line 127
    :cond_12
    sget-object v3, Lcom/android/okhttp/internal/Platform;->SET_USE_SESSION_TICKETS:Lcom/android/okhttp/internal/OptionalMethod;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, p1, v4}, Lcom/android/okhttp/internal/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :goto_1f
    :try_start_1f
    new-instance v3, Ljavax/net/ssl/SNIHostName;

    invoke-direct {v3, p2}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 131
    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLParameters;->setServerNames(Ljava/util/List;)V
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_2b} :catch_2c

    .line 136
    goto :goto_2d

    .line 133
    :catch_2c
    move-exception v3

    .line 137
    :goto_2d
    invoke-static {p1}, Lcom/android/okhttp/internal/Platform;->isPlatformSocket(Ljavax/net/ssl/SSLSocket;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 138
    sget-object v3, Lcom/android/okhttp/internal/Platform;->SET_HOSTNAME:Lcom/android/okhttp/internal/OptionalMethod;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-virtual {v3, p1, v4}, Lcom/android/okhttp/internal/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_3c
    invoke-static {p3}, Lcom/android/okhttp/internal/Platform;->getProtocolIds(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLParameters;->setApplicationProtocols([Ljava/lang/String;)V

    .line 145
    invoke-static {p1}, Lcom/android/okhttp/internal/Platform;->isPlatformSocket(Ljavax/net/ssl/SSLSocket;)Z

    move-result v3

    if-nez v3, :cond_5d

    sget-object v3, Lcom/android/okhttp/internal/Platform;->SET_ALPN_PROTOCOLS:Lcom/android/okhttp/internal/OptionalMethod;

    invoke-virtual {v3, p1}, Lcom/android/okhttp/internal/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 146
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/okhttp/internal/Platform;->concatLengthPrefixed(Ljava/util/List;)[B

    move-result-object v4

    aput-object v4, v2, v1

    move-object v1, v2

    .line 147
    .local v1, "parameters":[Ljava/lang/Object;
    invoke-virtual {v3, p1, v1}, Lcom/android/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .end local v1    # "parameters":[Ljava/lang/Object;
    :cond_5d
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 150
    return-void
.end method

.method public blacklist connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .registers 4
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 183
    return-void
.end method

.method public blacklist getPrefix()Ljava/lang/String;
    .registers 2

    .line 187
    const-string v0, "X-Android"

    return-object v0
.end method

.method public blacklist getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 6
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 162
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 163
    :catch_5
    move-exception v0

    .line 167
    sget-object v0, Lcom/android/okhttp/internal/Platform;->GET_ALPN_SELECTED_PROTOCOL:Lcom/android/okhttp/internal/OptionalMethod;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/internal/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    move-result v0

    .line 168
    .local v0, "alpnSupported":Z
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 169
    return-object v1

    .line 172
    :cond_10
    sget-object v2, Lcom/android/okhttp/internal/Platform;->GET_ALPN_SELECTED_PROTOCOL:Lcom/android/okhttp/internal/OptionalMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 173
    invoke-virtual {v2, p1, v3}, Lcom/android/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 174
    .local v2, "alpnResult":[B
    if-eqz v2, :cond_25

    .line 175
    new-instance v1, Ljava/lang/String;

    sget-object v3, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 177
    :cond_25
    return-object v1
.end method

.method public greylist logW(Ljava/lang/String;)V
    .registers 2
    .param p1, "warning"    # Ljava/lang/String;

    .line 107
    invoke-static {p1}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public blacklist tagSocket(Ljava/net/Socket;)V
    .registers 3
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 111
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldalvik/system/SocketTagger;->tag(Ljava/net/Socket;)V

    .line 112
    return-void
.end method

.method public blacklist trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .registers 6
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 199
    :try_start_0
    const-string v0, "com.android.org.conscrypt.SSLParametersImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_18

    .line 202
    .local v0, "sslParametersClass":Ljava/lang/Class;
    nop

    .line 203
    const-string v1, "sslParameters"

    invoke-static {p1, v0, v1}, Lcom/android/okhttp/internal/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 204
    .local v1, "context":Ljava/lang/Object;
    const-class v2, Ljavax/net/ssl/X509TrustManager;

    const-string v3, "x509TrustManager"

    invoke-static {v1, v2, v3}, Lcom/android/okhttp/internal/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    return-object v2

    .line 200
    .end local v0    # "sslParametersClass":Ljava/lang/Class;
    .end local v1    # "context":Ljava/lang/Object;
    :catch_18
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist trustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lcom/android/okhttp/internal/tls/TrustRootIndex;
    .registers 4
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 213
    new-instance v0, Lcom/android/okhttp/internal/tls/RealTrustRootIndex;

    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/tls/RealTrustRootIndex;-><init>([Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method

.method public blacklist untagSocket(Ljava/net/Socket;)V
    .registers 3
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 115
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldalvik/system/SocketTagger;->untag(Ljava/net/Socket;)V

    .line 116
    return-void
.end method
