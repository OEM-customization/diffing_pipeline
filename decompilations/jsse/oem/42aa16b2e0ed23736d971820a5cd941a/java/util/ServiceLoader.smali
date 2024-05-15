.class public final Ljava/util/ServiceLoader;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ServiceLoader$LazyIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TS;>;"
    }
.end annotation


# static fields
.field private static final greylist-max-o PREFIX:Ljava/lang/String; = "META-INF/services/"


# instance fields
.field private final greylist-max-o loader:Ljava/lang/ClassLoader;

.field private greylist-max-o lookupIterator:Ljava/util/ServiceLoader$LazyIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ServiceLoader<",
            "TS;>.",
            "LazyIterator;"
        }
    .end annotation
.end field

.field private greylist-max-o providers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "TS;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o service:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p2, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 221
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    .local p1, "svc":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljava/util/ServiceLoader;->providers:Ljava/util/LinkedHashMap;

    .line 222
    const-string v0, "Service interface cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    .line 223
    if-nez p2, :cond_1b

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    move-object v0, p2

    :goto_1c
    iput-object v0, p0, Ljava/util/ServiceLoader;->loader:Ljava/lang/ClassLoader;

    .line 227
    invoke-virtual {p0}, Ljava/util/ServiceLoader;->reload()V

    .line 228
    return-void
.end method

.method static synthetic blacklist access$100(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Class;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    .line 183
    invoke-static {p0, p1, p2}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist access$200(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/net/URL;)Ljava/util/Iterator;
    .registers 4
    .param p0, "x0"    # Ljava/util/ServiceLoader;
    .param p1, "x1"    # Ljava/lang/Class;
    .param p2, "x2"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    .line 183
    invoke-direct {p0, p1, p2}, Ljava/util/ServiceLoader;->parse(Ljava/lang/Class;Ljava/net/URL;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$300(Ljava/util/ServiceLoader;)Ljava/util/LinkedHashMap;
    .registers 2
    .param p0, "x0"    # Ljava/util/ServiceLoader;

    .line 183
    iget-object v0, p0, Ljava/util/ServiceLoader;->providers:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic blacklist access$400(Ljava/util/ServiceLoader;)Ljava/util/ServiceLoader$LazyIterator;
    .registers 2
    .param p0, "x0"    # Ljava/util/ServiceLoader;

    .line 183
    iget-object v0, p0, Ljava/util/ServiceLoader;->lookupIterator:Ljava/util/ServiceLoader$LazyIterator;

    return-object v0
.end method

.method private static greylist-max-o fail(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    .line 240
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ServiceConfigurationError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    .line 233
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ServiceConfigurationError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static greylist-max-o fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V
    .registers 6
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "line"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/net/URL;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    .line 246
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public static whitelist core-platform-api test-api load(Ljava/lang/Class;)Ljava/util/ServiceLoader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;)",
            "Ljava/util/ServiceLoader<",
            "TS;>;"
        }
    .end annotation

    .line 551
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 552
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist core-platform-api test-api load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;
    .registers 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/ServiceLoader<",
            "TS;>;"
        }
    .end annotation

    .line 524
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    new-instance v0, Ljava/util/ServiceLoader;

    invoke-direct {v0, p0, p1}, Ljava/util/ServiceLoader;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static greylist-max-o loadFromSystemProperty(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    .line 601
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 603
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 604
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_19

    return-object v2

    .line 606
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_17
    const/4 v1, 0x0

    return-object v1

    .line 607
    .end local v0    # "className":Ljava/lang/String;
    :catch_19
    move-exception v0

    .line 608
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static whitelist core-platform-api test-api loadInstalled(Ljava/lang/Class;)Ljava/util/ServiceLoader;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;)",
            "Ljava/util/ServiceLoader<",
            "TS;>;"
        }
    .end annotation

    .line 582
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 583
    .local v0, "cl":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 584
    .local v1, "prev":Ljava/lang/ClassLoader;
    :goto_5
    if-eqz v0, :cond_d

    .line 585
    move-object v1, v0

    .line 586
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_5

    .line 588
    :cond_d
    invoke-static {p0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o parse(Ljava/lang/Class;Ljava/net/URL;)Ljava/util/Iterator;
    .registers 12
    .param p2, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/net/URL;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    .line 301
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "Error closing configuration file"

    const/4 v1, 0x0

    .line 302
    .local v1, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 303
    .local v2, "r":Ljava/io/BufferedReader;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v8, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_9
    invoke-virtual {p2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v1, v3

    .line 306
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "utf-8"

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_3b
    .catchall {:try_start_9 .. :try_end_1a} :catchall_37

    .line 307
    .end local v2    # "r":Ljava/io/BufferedReader;
    .local v6, "r":Ljava/io/BufferedReader;
    const/4 v2, 0x1

    .line 308
    .local v2, "lc":I
    :goto_1b
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, v2

    :try_start_1f
    invoke-direct/range {v3 .. v8}, Ljava/util/ServiceLoader;->parseLine(Ljava/lang/Class;Ljava/net/URL;Ljava/io/BufferedReader;ILjava/util/List;)I

    move-result v3
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_35
    .catchall {:try_start_1f .. :try_end_23} :catchall_53

    move v2, v3

    if-ltz v3, :cond_27

    goto :goto_1b

    .line 313
    .end local v2    # "lc":I
    :cond_27
    :try_start_27
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 314
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2f} :catch_30

    .line 317
    :cond_2f
    :goto_2f
    goto :goto_4e

    .line 315
    :catch_30
    move-exception v2

    .line 316
    .local v2, "y":Ljava/io/IOException;
    invoke-static {p1, v0, v2}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    .end local v2    # "y":Ljava/io/IOException;
    goto :goto_4e

    .line 309
    :catch_35
    move-exception v2

    goto :goto_3e

    .line 312
    .end local v6    # "r":Ljava/io/BufferedReader;
    .local v2, "r":Ljava/io/BufferedReader;
    :catchall_37
    move-exception v3

    move-object v6, v2

    move-object v2, v3

    goto :goto_54

    .line 309
    :catch_3b
    move-exception v3

    move-object v6, v2

    move-object v2, v3

    .line 310
    .local v2, "x":Ljava/io/IOException;
    .restart local v6    # "r":Ljava/io/BufferedReader;
    :goto_3e
    :try_start_3e
    const-string v3, "Error reading configuration file"

    invoke-static {p1, v3, v2}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_53

    .line 313
    .end local v2    # "x":Ljava/io/IOException;
    if-eqz v6, :cond_48

    :try_start_45
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 314
    :cond_48
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4d} :catch_30

    goto :goto_2f

    .line 319
    :goto_4e
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 312
    :catchall_53
    move-exception v2

    .line 313
    :goto_54
    if-eqz v6, :cond_5c

    :try_start_56
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    goto :goto_5c

    .line 315
    :catch_5a
    move-exception v3

    goto :goto_62

    .line 314
    :cond_5c
    :goto_5c
    if-eqz v1, :cond_66

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_61} :catch_5a

    goto :goto_66

    .line 316
    .local v3, "y":Ljava/io/IOException;
    :goto_62
    invoke-static {p1, v0, v3}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_67

    .line 317
    .end local v3    # "y":Ljava/io/IOException;
    :cond_66
    :goto_66
    nop

    .line 318
    :goto_67
    throw v2
.end method

.method private greylist-max-o parseLine(Ljava/lang/Class;Ljava/net/URL;Ljava/io/BufferedReader;ILjava/util/List;)I
    .registers 13
    .param p2, "u"    # Ljava/net/URL;
    .param p3, "r"    # Ljava/io/BufferedReader;
    .param p4, "lc"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/net/URL;",
            "Ljava/io/BufferedReader;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    .line 256
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "ln":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 258
    const/4 v1, -0x1

    return v1

    .line 260
    :cond_8
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 261
    .local v1, "ci":I
    const/4 v2, 0x0

    if-ltz v1, :cond_15

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 262
    :cond_15
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 264
    .local v3, "n":I
    if-eqz v3, :cond_8f

    .line 265
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_2f

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_34

    .line 266
    :cond_2f
    const-string v4, "Illegal configuration-file syntax"

    invoke-static {p1, p2, p4, v4}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    .line 267
    :cond_34
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 268
    .local v2, "cp":I
    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v4

    const-string v5, "Illegal provider-class name: "

    if-nez v4, :cond_52

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, p4, v4}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    .line 270
    :cond_52
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    .local v4, "i":I
    :goto_56
    if-ge v4, v3, :cond_7e

    .line 271
    invoke-virtual {v0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 272
    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v6

    if-nez v6, :cond_78

    const/16 v6, 0x2e

    if-eq v2, v6, :cond_78

    .line 273
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, p2, p4, v6}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    .line 270
    :cond_78
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_56

    .line 275
    .end local v4    # "i":I
    :cond_7e
    iget-object v4, p0, Ljava/util/ServiceLoader;->providers:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8f

    invoke-interface {p5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8f

    .line 276
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v2    # "cp":I
    :cond_8f
    add-int/lit8 v2, p4, 0x1

    return v2
.end method


# virtual methods
.method public whitelist core-platform-api test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TS;>;"
        }
    .end annotation

    .line 480
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    new-instance v0, Ljava/util/ServiceLoader$1;

    invoke-direct {v0, p0}, Ljava/util/ServiceLoader$1;-><init>(Ljava/util/ServiceLoader;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api reload()V
    .registers 5

    .line 217
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    iget-object v0, p0, Ljava/util/ServiceLoader;->providers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 218
    new-instance v0, Ljava/util/ServiceLoader$LazyIterator;

    iget-object v1, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/ServiceLoader;->loader:Ljava/lang/ClassLoader;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/util/ServiceLoader$LazyIterator;-><init>(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/util/ServiceLoader$1;)V

    iput-object v0, p0, Ljava/util/ServiceLoader;->lookupIterator:Ljava/util/ServiceLoader$LazyIterator;

    .line 219
    return-void
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 619
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "java.util.ServiceLoader["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
