.class public abstract Ljavax/net/ssl/SSLServerSocketFactory;
.super Ljavax/net/ServerSocketFactory;
.source "SSLServerSocketFactory.java"


# static fields
.field private static defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

.field private static lastVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const/4 v0, -0x1

    sput v0, Ljavax/net/ssl/SSLServerSocketFactory;->lastVersion:I

    .line 46
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljavax/net/ServerSocketFactory;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/ServerSocketFactory;
    .registers 13

    .prologue
    const-class v10, Ljavax/net/ssl/SSLServerSocketFactory;

    monitor-enter v10

    .line 89
    :try_start_3
    sget-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    if-eqz v9, :cond_13

    sget v9, Ljavax/net/ssl/SSLServerSocketFactory;->lastVersion:I

    invoke-static {}, Ljava/security/Security;->getVersion()I

    move-result v11

    if-ne v9, v11, :cond_13

    .line 90
    sget-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_de

    monitor-exit v10

    return-object v9

    .line 93
    :cond_13
    :try_start_13
    invoke-static {}, Ljava/security/Security;->getVersion()I

    move-result v9

    sput v9, Ljavax/net/ssl/SSLServerSocketFactory;->lastVersion:I

    .line 94
    sget-object v8, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 95
    .local v8, "previousDefaultServerSocketFactory":Ljavax/net/ssl/SSLServerSocketFactory;
    const/4 v9, 0x0

    sput-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 98
    const-string/jumbo v9, "ssl.ServerSocketFactory.provider"

    .line 97
    invoke-static {v9}, Ljavax/net/ssl/SSLSocketFactory;->getSecurityProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "clsName":Ljava/lang/String;
    if-eqz v2, :cond_b6

    .line 105
    if-eqz v8, :cond_3d

    .line 106
    invoke-virtual {v8}, Ljavax/net/ssl/SSLServerSocketFactory;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 105
    if-eqz v9, :cond_3d

    .line 107
    sput-object v8, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 108
    sget-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_3b
    .catchall {:try_start_13 .. :try_end_3b} :catchall_de

    monitor-exit v10

    return-object v9

    .line 110
    :cond_3d
    :try_start_3d
    const-string/jumbo v9, "setting up default SSLServerSocketFactory"

    invoke-static {v9}, Ljavax/net/ssl/SSLServerSocketFactory;->log(Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_de

    .line 112
    const/4 v1, 0x0

    .line 114
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_44
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_44 .. :try_end_47} :catch_87
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_9e
    .catchall {:try_start_44 .. :try_end_47} :catchall_de

    move-result-object v1

    .line 127
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_48
    :goto_48
    :try_start_48
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "class "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " is loaded"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/net/ssl/SSLServerSocketFactory;->log(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/SSLServerSocketFactory;

    .line 129
    .local v7, "fac":Ljavax/net/ssl/SSLServerSocketFactory;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "instantiated an instance of class "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/net/ssl/SSLServerSocketFactory;->log(Ljava/lang/String;)V

    .line 130
    sput-object v7, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_85} :catch_9e
    .catchall {:try_start_48 .. :try_end_85} :catchall_de

    monitor-exit v10

    .line 131
    return-object v7

    .line 115
    .end local v7    # "fac":Ljavax/net/ssl/SSLServerSocketFactory;
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_87
    move-exception v4

    .line 117
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    :try_start_88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 118
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_96

    .line 119
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 122
    :cond_96
    if-eqz v0, :cond_48

    .line 124
    const/4 v9, 0x1

    invoke-static {v2, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_9c} :catch_9e
    .catchall {:try_start_88 .. :try_end_9c} :catchall_de

    move-result-object v1

    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_48

    .line 132
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_9e
    move-exception v5

    .line 133
    .local v5, "e":Ljava/lang/Exception;
    :try_start_9f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SSLServerSocketFactory instantiation failed: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/net/ssl/SSLServerSocketFactory;->log(Ljava/lang/String;)V
    :try_end_b6
    .catchall {:try_start_9f .. :try_end_b6} :catchall_de

    .line 140
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_b6
    :try_start_b6
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 141
    .local v3, "context":Ljavax/net/ssl/SSLContext;
    if-eqz v3, :cond_c6

    .line 142
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v9

    sput-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 146
    :goto_c2
    sget-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_c4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b6 .. :try_end_c4} :catch_d6
    .catchall {:try_start_b6 .. :try_end_c4} :catchall_de

    monitor-exit v10

    return-object v9

    .line 144
    :cond_c6
    :try_start_c6
    new-instance v9, Ljavax/net/ssl/DefaultSSLServerSocketFactory;

    new-instance v11, Ljava/lang/IllegalStateException;

    const-string/jumbo v12, "No factory found."

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v11}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;-><init>(Ljava/lang/Exception;)V

    sput-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_d5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c6 .. :try_end_d5} :catch_d6
    .catchall {:try_start_c6 .. :try_end_d5} :catchall_de

    goto :goto_c2

    .line 147
    .end local v3    # "context":Ljavax/net/ssl/SSLContext;
    :catch_d6
    move-exception v6

    .line 148
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_d7
    new-instance v9, Ljavax/net/ssl/DefaultSSLServerSocketFactory;

    invoke-direct {v9, v6}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;-><init>(Ljava/lang/Exception;)V
    :try_end_dc
    .catchall {:try_start_d7 .. :try_end_dc} :catchall_de

    monitor-exit v10

    return-object v9

    .end local v2    # "clsName":Ljava/lang/String;
    .end local v6    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_de
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-boolean v0, Ljavax/net/ssl/SSLSocketFactory;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 62
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    :cond_9
    return-void
.end method


# virtual methods
.method public abstract getDefaultCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method
