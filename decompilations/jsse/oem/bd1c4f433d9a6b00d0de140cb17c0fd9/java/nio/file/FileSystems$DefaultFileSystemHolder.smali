.class Ljava/nio/file/FileSystems$DefaultFileSystemHolder;
.super Ljava/lang/Object;
.source "FileSystems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/FileSystems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultFileSystemHolder"
.end annotation


# static fields
.field static final defaultFileSystem:Ljava/nio/file/FileSystem;


# direct methods
.method static synthetic -wrap0()Ljava/nio/file/spi/FileSystemProvider;
    .registers 1

    invoke-static {}, Ljava/nio/file/FileSystems$DefaultFileSystemHolder;->getDefaultProvider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    invoke-static {}, Ljava/nio/file/FileSystems$DefaultFileSystemHolder;->defaultFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    sput-object v0, Ljava/nio/file/FileSystems$DefaultFileSystemHolder;->defaultFileSystem:Ljava/nio/file/FileSystem;

    .line 89
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static defaultFileSystem()Ljava/nio/file/FileSystem;
    .registers 2

    .prologue
    .line 96
    new-instance v1, Ljava/nio/file/FileSystems$DefaultFileSystemHolder$1;

    invoke-direct {v1}, Ljava/nio/file/FileSystems$DefaultFileSystemHolder$1;-><init>()V

    .line 95
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/spi/FileSystemProvider;

    .line 103
    .local v0, "provider":Ljava/nio/file/spi/FileSystemProvider;
    const-string/jumbo v1, "file:///"

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/file/spi/FileSystemProvider;->getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;

    move-result-object v1

    return-object v1
.end method

.method private static getDefaultProvider()Ljava/nio/file/spi/FileSystemProvider;
    .registers 13

    .prologue
    const/4 v7, 0x0

    .line 108
    invoke-static {}, Lsun/nio/fs/DefaultFileSystemProvider;->create()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v5

    .line 113
    .local v5, "provider":Ljava/nio/file/spi/FileSystemProvider;
    const-string/jumbo v8, "java.nio.file.spi.DefaultFileSystemProvider"

    .line 112
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "propValue":Ljava/lang/String;
    if-eqz v4, :cond_5f

    .line 115
    const-string/jumbo v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v8, v7

    :goto_17
    if-ge v8, v10, :cond_5f

    aget-object v2, v9, v8

    .line 118
    .local v2, "cn":Ljava/lang/String;
    :try_start_1b
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const/4 v11, 0x1

    .line 117
    invoke-static {v2, v11, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 119
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    .line 120
    const-class v11, Ljava/nio/file/spi/FileSystemProvider;

    const/4 v12, 0x0

    aput-object v11, v7, v12

    .line 119
    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 121
    .local v3, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v7, v11

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/nio/file/spi/FileSystemProvider;

    move-object v5, v0

    .line 124
    invoke-virtual {v5}, Ljava/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v11, "file"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5b

    .line 125
    new-instance v7, Ljava/lang/Error;

    const-string/jumbo v8, "Default provider must use scheme \'file\'"

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_54} :catch_54

    .line 127
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_54
    move-exception v6

    .line 128
    .local v6, "x":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7, v6}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 115
    .end local v6    # "x":Ljava/lang/Exception;
    .restart local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_5b
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_17

    .line 132
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "cn":Ljava/lang/String;
    .end local v3    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_5f
    return-object v5
.end method
