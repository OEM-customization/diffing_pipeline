.class public Lsun/nio/fs/DefaultFileSystemProvider;
.super Ljava/lang/Object;
.source "DefaultFileSystemProvider.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Ljava/nio/file/spi/FileSystemProvider;
    .registers 3

    .prologue
    .line 59
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "os.name"

    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    .local v0, "osname":Ljava/lang/String;
    const-string/jumbo v1, "SunOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 61
    const-string/jumbo v1, "sun.nio.fs.SolarisFileSystemProvider"

    invoke-static {v1}, Lsun/nio/fs/DefaultFileSystemProvider;->createProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    return-object v1

    .line 62
    :cond_1f
    const-string/jumbo v1, "Linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 63
    const-string/jumbo v1, "sun.nio.fs.LinuxFileSystemProvider"

    invoke-static {v1}, Lsun/nio/fs/DefaultFileSystemProvider;->createProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    return-object v1

    .line 64
    :cond_30
    const-string/jumbo v1, "OS X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 65
    const-string/jumbo v1, "sun.nio.fs.MacOSXFileSystemProvider"

    invoke-static {v1}, Lsun/nio/fs/DefaultFileSystemProvider;->createProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    return-object v1

    .line 66
    :cond_41
    const-string/jumbo v1, "AIX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 67
    const-string/jumbo v1, "sun.nio.fs.AixFileSystemProvider"

    invoke-static {v1}, Lsun/nio/fs/DefaultFileSystemProvider;->createProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    return-object v1

    .line 68
    :cond_52
    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "Platform not recognized"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static createProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;
    .registers 5
    .param p0, "cn"    # Ljava/lang/String;

    .prologue
    .line 43
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_b

    move-result-object v0

    .line 48
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/nio/file/spi/FileSystemProvider;>;"
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/spi/FileSystemProvider;
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_a} :catch_12
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_a} :catch_12

    return-object v3

    .line 44
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/nio/file/spi/FileSystemProvider;>;"
    :catch_b
    move-exception v1

    .line 45
    .local v1, "x":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 49
    .end local v1    # "x":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/nio/file/spi/FileSystemProvider;>;"
    :catch_12
    move-exception v2

    .line 50
    .local v2, "x":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
