.class public abstract Ljavax/net/ssl/SSLSocketFactory;
.super Ljavax/net/SocketFactory;
.source "SSLSocketFactory.java"


# static fields
.field static final DEBUG:Z

.field private static defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private static lastVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 58
    const/4 v1, -0x1

    sput v1, Ljavax/net/ssl/SSLSocketFactory;->lastVersion:I

    .line 64
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "javax.net.debug"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "s":Ljava/lang/String;
    const-string/jumbo v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string/jumbo v1, "ssl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_2a
    sput-boolean v1, Ljavax/net/ssl/SSLSocketFactory;->DEBUG:Z

    .line 46
    return-void

    .line 66
    :cond_2d
    const/4 v1, 0x1

    goto :goto_2a
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 79
    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/SocketFactory;
    .registers 13

    .prologue
    const-class v10, Ljavax/net/ssl/SSLSocketFactory;

    monitor-enter v10

    .line 99
    :try_start_3
    sget-object v9, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v9, :cond_13

    sget v9, Ljavax/net/ssl/SSLSocketFactory;->lastVersion:I

    invoke-static {}, Ljava/security/Security;->getVersion()I

    move-result v11

    if-ne v9, v11, :cond_13

    .line 100
    sget-object v9, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_e2

    monitor-exit v10

    return-object v9

    .line 103
    :cond_13
    :try_start_13
    invoke-static {}, Ljava/security/Security;->getVersion()I

    move-result v9

    sput v9, Ljavax/net/ssl/SSLSocketFactory;->lastVersion:I

    .line 104
    sget-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 105
    .local v8, "previousDefaultSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v9, 0x0

    sput-object v9, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 107
    const-string/jumbo v9, "ssl.SocketFactory.provider"

    invoke-static {v9}, Ljavax/net/ssl/SSLSocketFactory;->getSecurityProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "clsName":Ljava/lang/String;
    if-eqz v2, :cond_ba

    .line 115
    if-eqz v8, :cond_3d

    .line 116
    invoke-virtual {v8}, Ljavax/net/ssl/SSLSocketFactory;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 115
    if-eqz v9, :cond_3d

    .line 117
    sput-object v8, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 118
    sget-object v9, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_3b
    .catchall {:try_start_13 .. :try_end_3b} :catchall_e2

    monitor-exit v10

    return-object v9

    .line 120
    :cond_3d
    :try_start_3d
    const-string/jumbo v9, "setting up default SSLSocketFactory"

    invoke-static {v9}, Ljavax/net/ssl/SSLSocketFactory;->log(Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_e2

    .line 122
    const/4 v1, 0x0

    .line 124
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_44
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_44 .. :try_end_47} :catch_87
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_9e
    .catchall {:try_start_44 .. :try_end_47} :catchall_e2

    move-result-object v1

    .line 137
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

    invoke-static {v9}, Ljavax/net/ssl/SSLSocketFactory;->log(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/SSLSocketFactory;

    .line 139
    .local v7, "fac":Ljavax/net/ssl/SSLSocketFactory;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "instantiated an instance of class "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/net/ssl/SSLSocketFactory;->log(Ljava/lang/String;)V

    .line 140
    sput-object v7, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_85} :catch_9e
    .catchall {:try_start_48 .. :try_end_85} :catchall_e2

    monitor-exit v10

    .line 141
    return-object v7

    .line 125
    .end local v7    # "fac":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_87
    move-exception v4

    .line 127
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    :try_start_88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 128
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_96

    .line 129
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 132
    :cond_96
    if-eqz v0, :cond_48

    .line 134
    const/4 v9, 0x1

    invoke-static {v2, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_9c} :catch_9e
    .catchall {:try_start_88 .. :try_end_9c} :catchall_e2

    move-result-object v1

    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_48

    .line 142
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_9e
    move-exception v5

    .line 143
    .local v5, "e":Ljava/lang/Exception;
    :try_start_9f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SSLSocketFactory instantiation failed: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/net/ssl/SSLSocketFactory;->log(Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_9f .. :try_end_ba} :catchall_e2

    .line 150
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_ba
    :try_start_ba
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 151
    .local v3, "context":Ljavax/net/ssl/SSLContext;
    if-eqz v3, :cond_ca

    .line 152
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v9

    sput-object v9, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 156
    :goto_c6
    sget-object v9, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_c8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ba .. :try_end_c8} :catch_da
    .catchall {:try_start_ba .. :try_end_c8} :catchall_e2

    monitor-exit v10

    return-object v9

    .line 154
    :cond_ca
    :try_start_ca
    new-instance v9, Ljavax/net/ssl/DefaultSSLSocketFactory;

    new-instance v11, Ljava/lang/IllegalStateException;

    const-string/jumbo v12, "No factory found."

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v11}, Ljavax/net/ssl/DefaultSSLSocketFactory;-><init>(Ljava/lang/Exception;)V

    sput-object v9, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_d9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ca .. :try_end_d9} :catch_da
    .catchall {:try_start_ca .. :try_end_d9} :catchall_e2

    goto :goto_c6

    .line 157
    .end local v3    # "context":Ljavax/net/ssl/SSLContext;
    :catch_da
    move-exception v6

    .line 158
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_db
    new-instance v9, Ljavax/net/ssl/DefaultSSLSocketFactory;

    invoke-direct {v9, v6}, Ljavax/net/ssl/DefaultSSLSocketFactory;-><init>(Ljava/lang/Exception;)V
    :try_end_e0
    .catchall {:try_start_db .. :try_end_e0} :catchall_e2

    monitor-exit v10

    return-object v9

    .end local v2    # "clsName":Ljava/lang/String;
    .end local v6    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_e2
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method static getSecurityProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Ljavax/net/ssl/SSLSocketFactory$1;

    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLSocketFactory$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-boolean v0, Ljavax/net/ssl/SSLSocketFactory;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 71
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    :cond_9
    return-void
.end method


# virtual methods
.method public createSocket(Ljava/net/Socket;Ljava/io/InputStream;Z)Ljava/net/Socket;
    .registers 5
    .param p1, "s"    # Ljava/net/Socket;
    .param p2, "consumed"    # Ljava/io/InputStream;
    .param p3, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDefaultCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method
