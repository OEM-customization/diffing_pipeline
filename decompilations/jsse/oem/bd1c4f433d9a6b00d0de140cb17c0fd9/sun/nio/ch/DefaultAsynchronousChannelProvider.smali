.class public Lsun/nio/ch/DefaultAsynchronousChannelProvider;
.super Ljava/lang/Object;
.source "DefaultAsynchronousChannelProvider.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .registers 1

    .prologue
    .line 70
    const-string/jumbo v0, "sun.nio.ch.LinuxAsynchronousChannelProvider"

    invoke-static {v0}, Lsun/nio/ch/DefaultAsynchronousChannelProvider;->createProvider(Ljava/lang/String;)Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    return-object v0
.end method

.method private static createProvider(Ljava/lang/String;)Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .registers 5
    .param p0, "cn"    # Ljava/lang/String;

    .prologue
    .line 47
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_b

    move-result-object v0

    .line 52
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/nio/channels/spi/AsynchronousChannelProvider;>;"
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/spi/AsynchronousChannelProvider;
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_a} :catch_12
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_a} :catch_12

    return-object v3

    .line 48
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/nio/channels/spi/AsynchronousChannelProvider;>;"
    :catch_b
    move-exception v1

    .line 49
    .local v1, "x":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 53
    .end local v1    # "x":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/nio/channels/spi/AsynchronousChannelProvider;>;"
    :catch_12
    move-exception v2

    .line 54
    .local v2, "x":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
