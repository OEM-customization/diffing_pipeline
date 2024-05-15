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
        "Ljava/lang/Iterable",
        "<TS;>;"
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "META-INF/services/"


# instance fields
.field private final loader:Ljava/lang/ClassLoader;

.field private lookupIterator:Ljava/util/ServiceLoader$LazyIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ServiceLoader",
            "<TS;>.",
            "LazyIterator;"
        }
    .end annotation
.end field

.field private providers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "TS;>;"
        }
    .end annotation
.end field

.field private final service:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/util/ServiceLoader;)Ljava/util/ServiceLoader$LazyIterator;
    .registers 2
    .param p0, "-this"    # Ljava/util/ServiceLoader;

    .prologue
    iget-object v0, p0, Ljava/util/ServiceLoader;->lookupIterator:Ljava/util/ServiceLoader$LazyIterator;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/ServiceLoader;)Ljava/util/LinkedHashMap;
    .registers 2
    .param p0, "-this"    # Ljava/util/ServiceLoader;

    .prologue
    iget-object v0, p0, Ljava/util/ServiceLoader;->providers:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/net/URL;)Ljava/util/Iterator;
    .registers 4
    .param p0, "-this"    # Ljava/util/ServiceLoader;
    .param p1, "service"    # Ljava/lang/Class;
    .param p2, "u"    # Ljava/net/URL;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/ServiceLoader;->parse(Ljava/lang/Class;Ljava/net/URL;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "service"    # Ljava/lang/Class;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    invoke-static {p0, p1, p2}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p2, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    .local p1, "svc":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljava/util/ServiceLoader;->providers:Ljava/util/LinkedHashMap;

    .line 222
    const-string/jumbo v0, "Service interface cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    .line 223
    if-nez p2, :cond_1b

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .end local p2    # "cl":Ljava/lang/ClassLoader;
    :cond_1b
    iput-object p2, p0, Ljava/util/ServiceLoader;->loader:Ljava/lang/ClassLoader;

    .line 227
    invoke-virtual {p0}, Ljava/util/ServiceLoader;->reload()V

    .line 228
    return-void
.end method

.method private static fail(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ServiceConfigurationError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
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

    .prologue
    .line 233
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ServiceConfigurationError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V
    .registers 6
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "line"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
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

    .prologue
    .line 246
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public static load(Ljava/lang/Class;)Ljava/util/ServiceLoader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)",
            "Ljava/util/ServiceLoader",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 551
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 552
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    return-object v1
.end method

.method public static load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;
    .registers 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/ServiceLoader",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 524
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    new-instance v0, Ljava/util/ServiceLoader;

    invoke-direct {v0, p0, p1}, Ljava/util/ServiceLoader;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static loadFromSystemProperty(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)TS;"
        }
    .end annotation

    .prologue
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    const/4 v4, 0x0

    .line 601
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "className":Ljava/lang/String;
    if-eqz v1, :cond_18

    .line 603
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 604
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_19

    move-result-object v3

    return-object v3

    .line 606
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_18
    return-object v4

    .line 607
    .end local v1    # "className":Ljava/lang/String;
    :catch_19
    move-exception v2

    .line 608
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static loadInstalled(Ljava/lang/Class;)Ljava/util/ServiceLoader;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)",
            "Ljava/util/ServiceLoader",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 582
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 583
    .local v0, "cl":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 584
    :goto_5
    if-eqz v0, :cond_d

    .line 585
    move-object v1, v0

    .line 586
    .local v1, "prev":Ljava/lang/ClassLoader;
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_5

    .line 588
    .end local v1    # "prev":Ljava/lang/ClassLoader;
    :cond_d
    invoke-static {p0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v2

    return-object v2
.end method

.method private parse(Ljava/lang/Class;Ljava/net/URL;)Ljava/util/Iterator;
    .registers 13
    .param p2, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/net/URL;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ServiceConfigurationError;
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 302
    .local v6, "in":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 303
    .local v7, "r":Ljava/io/BufferedReader;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v5, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_7
    invoke-virtual {p2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    .line 306
    .local v6, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string/jumbo v1, "utf-8"

    invoke-direct {v0, v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_18} :catch_39
    .catchall {:try_start_7 .. :try_end_18} :catchall_54

    .line 307
    .end local v7    # "r":Ljava/io/BufferedReader;
    .local v3, "r":Ljava/io/BufferedReader;
    const/4 v4, 0x1

    .local v4, "lc":I
    :cond_19
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 308
    :try_start_1c
    invoke-direct/range {v0 .. v5}, Ljava/util/ServiceLoader;->parseLine(Ljava/lang/Class;Ljava/net/URL;Ljava/io/BufferedReader;ILjava/util/List;)I
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_6b
    .catchall {:try_start_1c .. :try_end_1f} :catchall_69

    move-result v4

    if-gez v4, :cond_19

    .line 313
    if-eqz v3, :cond_27

    :try_start_24
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 314
    :cond_27
    if-eqz v6, :cond_2c

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2c} :catch_31

    .line 319
    .end local v4    # "lc":I
    .end local v6    # "in":Ljava/io/InputStream;
    :cond_2c
    :goto_2c
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 315
    .restart local v4    # "lc":I
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_31
    move-exception v9

    .line 316
    .local v9, "y":Ljava/io/IOException;
    const-string/jumbo v0, "Error closing configuration file"

    invoke-static {p1, v0, v9}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2c

    .line 309
    .end local v3    # "r":Ljava/io/BufferedReader;
    .end local v4    # "lc":I
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v9    # "y":Ljava/io/IOException;
    .restart local v7    # "r":Ljava/io/BufferedReader;
    :catch_39
    move-exception v8

    .local v8, "x":Ljava/io/IOException;
    move-object v3, v7

    .line 310
    .end local v7    # "r":Ljava/io/BufferedReader;
    .restart local v3    # "r":Ljava/io/BufferedReader;
    :goto_3b
    :try_start_3b
    const-string/jumbo v0, "Error reading configuration file"

    invoke-static {p1, v0, v8}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_69

    .line 313
    if-eqz v3, :cond_46

    :try_start_43
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 314
    :cond_46
    if-eqz v6, :cond_2c

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4b} :catch_4c

    goto :goto_2c

    .line 315
    :catch_4c
    move-exception v9

    .line 316
    .restart local v9    # "y":Ljava/io/IOException;
    const-string/jumbo v0, "Error closing configuration file"

    invoke-static {p1, v0, v9}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2c

    .line 311
    .end local v3    # "r":Ljava/io/BufferedReader;
    .end local v8    # "x":Ljava/io/IOException;
    .end local v9    # "y":Ljava/io/IOException;
    .restart local v7    # "r":Ljava/io/BufferedReader;
    :catchall_54
    move-exception v0

    move-object v3, v7

    .line 313
    .end local v7    # "r":Ljava/io/BufferedReader;
    .restart local v3    # "r":Ljava/io/BufferedReader;
    :goto_56
    if-eqz v3, :cond_5b

    :try_start_58
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 314
    :cond_5b
    if-eqz v6, :cond_60

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_60} :catch_61

    .line 311
    :cond_60
    :goto_60
    throw v0

    .line 315
    :catch_61
    move-exception v9

    .line 316
    .restart local v9    # "y":Ljava/io/IOException;
    const-string/jumbo v1, "Error closing configuration file"

    invoke-static {p1, v1, v9}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_60

    .line 311
    .end local v9    # "y":Ljava/io/IOException;
    :catchall_69
    move-exception v0

    goto :goto_56

    .line 309
    .restart local v4    # "lc":I
    .restart local v6    # "in":Ljava/io/InputStream;
    :catch_6b
    move-exception v8

    .restart local v8    # "x":Ljava/io/IOException;
    goto :goto_3b
.end method

.method private parseLine(Ljava/lang/Class;Ljava/net/URL;Ljava/io/BufferedReader;ILjava/util/List;)I
    .registers 13
    .param p2, "u"    # Ljava/net/URL;
    .param p3, "r"    # Ljava/io/BufferedReader;
    .param p4, "lc"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/net/URL;",
            "Ljava/io/BufferedReader;",
            "I",
            "Ljava/util/List",
            "<",
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

    .prologue
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 256
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "ln":Ljava/lang/String;
    if-nez v3, :cond_9

    .line 258
    const/4 v5, -0x1

    return v5

    .line 260
    :cond_9
    const/16 v5, 0x23

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 261
    .local v0, "ci":I
    if-ltz v0, :cond_15

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 262
    :cond_15
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 264
    .local v4, "n":I
    if-eqz v4, :cond_9a

    .line 265
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_2f

    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_35

    .line 266
    :cond_2f
    const-string/jumbo v5, "Illegal configuration-file syntax"

    invoke-static {p1, p2, p4, v5}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    .line 267
    :cond_35
    invoke-virtual {v3, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 268
    .local v1, "cp":I
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v5

    if-nez v5, :cond_56

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Illegal provider-class name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p2, p4, v5}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    .line 270
    :cond_56
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    .local v2, "i":I
    :goto_5a
    if-ge v2, v4, :cond_87

    .line 271
    invoke-virtual {v3, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 272
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v5

    if-nez v5, :cond_81

    const/16 v5, 0x2e

    if-eq v1, v5, :cond_81

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Illegal provider-class name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p2, p4, v5}, Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    .line 270
    :cond_81
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_5a

    .line 275
    :cond_87
    iget-object v5, p0, Ljava/util/ServiceLoader;->providers:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9a

    invoke-interface {p5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9a

    .line 276
    invoke-interface {p5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v1    # "cp":I
    .end local v2    # "i":I
    :cond_9a
    add-int/lit8 v5, p4, 0x1

    return v5
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 480
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    new-instance v0, Ljava/util/ServiceLoader$1;

    invoke-direct {v0, p0}, Ljava/util/ServiceLoader$1;-><init>(Ljava/util/ServiceLoader;)V

    return-object v0
.end method

.method public reload()V
    .registers 5

    .prologue
    .line 217
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    iget-object v0, p0, Ljava/util/ServiceLoader;->providers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 218
    new-instance v0, Ljava/util/ServiceLoader$LazyIterator;

    iget-object v1, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/ServiceLoader;->loader:Ljava/lang/ClassLoader;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/util/ServiceLoader$LazyIterator;-><init>(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/util/ServiceLoader$LazyIterator;)V

    iput-object v0, p0, Ljava/util/ServiceLoader;->lookupIterator:Ljava/util/ServiceLoader$LazyIterator;

    .line 219
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 619
    .local p0, "this":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "java.util.ServiceLoader["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/ServiceLoader;->service:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
