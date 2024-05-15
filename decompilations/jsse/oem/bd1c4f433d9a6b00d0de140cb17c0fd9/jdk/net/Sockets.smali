.class public Ljdk/net/Sockets;
.super Ljava/lang/Object;
.source "Sockets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdk/net/Sockets$1;
    }
.end annotation


# static fields
.field private static dsiGetOption:Ljava/lang/reflect/Method;

.field private static dsiSetOption:Ljava/lang/reflect/Method;

.field private static final options:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/net/SocketOption",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private static siGetOption:Ljava/lang/reflect/Method;

.field private static siSetOption:Ljava/lang/reflect/Method;


# direct methods
.method static synthetic -wrap0()V
    .registers 0

    invoke-static {}, Ljdk/net/Sockets;->initMethods()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljdk/net/Sockets;->options:Ljava/util/HashMap;

    .line 65
    invoke-static {}, Ljdk/net/Sockets;->initOptionSets()V

    .line 67
    new-instance v0, Ljdk/net/Sockets$1;

    invoke-direct {v0}, Ljdk/net/Sockets$1;-><init>()V

    .line 66
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOption(Ljava/net/DatagramSocket;Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 4
    .param p0, "s"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/DatagramSocket;",
            "Ljava/net/SocketOption",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljdk/net/Sockets;->isSupported(Ljava/lang/Class;Ljava/net/SocketOption;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 322
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-interface {p1}, Ljava/net/SocketOption;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_14
    sget-object v0, Ljdk/net/Sockets;->dsiGetOption:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1}, Ljdk/net/Sockets;->invokeGet(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getOption(Ljava/net/ServerSocket;Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 4
    .param p0, "s"    # Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/ServerSocket;",
            "Ljava/net/SocketOption",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    const-class v0, Ljava/net/ServerSocket;

    invoke-static {v0, p1}, Ljdk/net/Sockets;->isSupported(Ljava/lang/Class;Ljava/net/SocketOption;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 262
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-interface {p1}, Ljava/net/SocketOption;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_12
    sget-object v0, Ljdk/net/Sockets;->siGetOption:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1}, Ljdk/net/Sockets;->invokeGet(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getOption(Ljava/net/Socket;Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 4
    .param p0, "s"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/Socket;",
            "Ljava/net/SocketOption",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    const-class v0, Ljava/net/Socket;

    invoke-static {v0, p1}, Ljdk/net/Sockets;->isSupported(Ljava/lang/Class;Ljava/net/SocketOption;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 204
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-interface {p1}, Ljava/net/SocketOption;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_12
    sget-object v0, Ljdk/net/Sockets;->siGetOption:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1}, Ljdk/net/Sockets;->invokeGet(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static initMethods()V
    .registers 6

    .prologue
    .line 83
    :try_start_0
    const-string/jumbo v2, "java.net.SocketSecrets"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 86
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v2, "setOption"

    .line 85
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    .line 86
    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 87
    const-class v4, Ljava/net/SocketOption;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 85
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Ljdk/net/Sockets;->siSetOption:Ljava/lang/reflect/Method;

    .line 89
    sget-object v2, Ljdk/net/Sockets;->siSetOption:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 92
    const-string/jumbo v2, "getOption"

    .line 91
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    .line 92
    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/net/SocketOption;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 91
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Ljdk/net/Sockets;->siGetOption:Ljava/lang/reflect/Method;

    .line 94
    sget-object v2, Ljdk/net/Sockets;->siGetOption:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 97
    const-string/jumbo v2, "setOption"

    .line 96
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    .line 97
    const-class v4, Ljava/net/DatagramSocket;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 98
    const-class v4, Ljava/net/SocketOption;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 96
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Ljdk/net/Sockets;->dsiSetOption:Ljava/lang/reflect/Method;

    .line 100
    sget-object v2, Ljdk/net/Sockets;->dsiSetOption:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 103
    const-string/jumbo v2, "getOption"

    .line 102
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    .line 103
    const-class v4, Ljava/net/DatagramSocket;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/net/SocketOption;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 102
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Ljdk/net/Sockets;->dsiGetOption:Ljava/lang/reflect/Method;

    .line 105
    sget-object v2, Ljdk/net/Sockets;->dsiGetOption:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_81
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_81} :catch_82

    .line 109
    return-void

    .line 106
    :catch_82
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static initOptionSets()V
    .registers 4

    .prologue
    .line 351
    invoke-static {}, Lsun/net/ExtendedOptionsImpl;->flowSupported()Z

    move-result v0

    .line 355
    .local v0, "flowsupported":Z
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 356
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 358
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 359
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v2, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v2, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 363
    if-eqz v0, :cond_33

    .line 364
    sget-object v2, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_33
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 367
    sget-object v2, Ljdk/net/Sockets;->options:Ljava/util/HashMap;

    const-class v3, Ljava/net/Socket;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 372
    .restart local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v2, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 376
    sget-object v2, Ljdk/net/Sockets;->options:Ljava/util/HashMap;

    const-class v3, Ljava/net/ServerSocket;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 381
    .restart local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 383
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 384
    sget-object v2, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 385
    if-eqz v0, :cond_7d

    .line 386
    sget-object v2, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_7d
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 389
    sget-object v2, Ljdk/net/Sockets;->options:Ljava/util/HashMap;

    const-class v3, Ljava/net/DatagramSocket;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 394
    .restart local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v2, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 397
    sget-object v2, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v2, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 399
    sget-object v2, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v2, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 401
    if-eqz v0, :cond_b7

    .line 402
    sget-object v2, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_b7
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 405
    sget-object v2, Ljdk/net/Sockets;->options:Ljava/util/HashMap;

    const-class v3, Ljava/net/MulticastSocket;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    return-void
.end method

.method private static invokeGet(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 7
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "socket"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "Ljava/net/SocketOption",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    .local p2, "option":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    const/4 v2, 0x2

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v2

    return-object v2

    .line 135
    :catch_f
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    instance-of v2, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v2, :cond_29

    move-object v2, v0

    .line 137
    check-cast v2, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 138
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_22

    .line 139
    check-cast v1, Ljava/io/IOException;

    .end local v1    # "t":Ljava/lang/Throwable;
    throw v1

    .line 140
    .restart local v1    # "t":Ljava/lang/Throwable;
    :cond_22
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_29

    .line 141
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "t":Ljava/lang/Throwable;
    throw v1

    .line 144
    :cond_29
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static invokeSet(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 8
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "socket"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    .local p2, "option":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x3

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    .line 128
    return-void

    .line 117
    :catch_11
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    instance-of v2, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v2, :cond_2b

    move-object v2, v0

    .line 119
    check-cast v2, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 120
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_24

    .line 121
    check-cast v1, Ljava/io/IOException;

    .end local v1    # "t":Ljava/lang/Throwable;
    throw v1

    .line 122
    .restart local v1    # "t":Ljava/lang/Throwable;
    :cond_24
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2b

    .line 123
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "t":Ljava/lang/Throwable;
    throw v1

    .line 126
    :cond_2b
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static isSupported(Ljava/lang/Class;Ljava/net/SocketOption;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/net/SocketOption",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "option":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    invoke-static {p0}, Ljdk/net/Sockets;->supportedOptions(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 347
    .local v0, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static setOption(Ljava/net/DatagramSocket;Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 5
    .param p0, "s"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/DatagramSocket;",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljdk/net/Sockets;->isSupported(Ljava/lang/Class;Ljava/net/SocketOption;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 293
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-interface {p1}, Ljava/net/SocketOption;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_14
    sget-object v0, Ljdk/net/Sockets;->dsiSetOption:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1, p2}, Ljdk/net/Sockets;->invokeSet(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/net/SocketOption;Ljava/lang/Object;)V

    .line 296
    return-void
.end method

.method public static setOption(Ljava/net/ServerSocket;Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 5
    .param p0, "s"    # Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/ServerSocket;",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-class v0, Ljava/net/ServerSocket;

    invoke-static {v0, p1}, Ljdk/net/Sockets;->isSupported(Ljava/lang/Class;Ljava/net/SocketOption;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-interface {p1}, Ljava/net/SocketOption;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_12
    sget-object v0, Ljdk/net/Sockets;->siSetOption:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1, p2}, Ljdk/net/Sockets;->invokeSet(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/net/SocketOption;Ljava/lang/Object;)V

    .line 237
    return-void
.end method

.method public static setOption(Ljava/net/Socket;Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 5
    .param p0, "s"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/Socket;",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-class v0, Ljava/net/Socket;

    invoke-static {v0, p1}, Ljdk/net/Sockets;->isSupported(Ljava/lang/Class;Ljava/net/SocketOption;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 176
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-interface {p1}, Ljava/net/SocketOption;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_12
    sget-object v0, Ljdk/net/Sockets;->siSetOption:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, p1, p2}, Ljdk/net/Sockets;->invokeSet(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/net/SocketOption;Ljava/lang/Object;)V

    .line 179
    return-void
.end method

.method public static supportedOptions(Ljava/lang/Class;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/net/SocketOption",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "socketType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljdk/net/Sockets;->options:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 339
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    if-nez v0, :cond_13

    .line 340
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "unknown socket type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_13
    return-object v0
.end method
