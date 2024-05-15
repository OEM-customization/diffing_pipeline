.class public abstract Ljavax/net/ssl/SSLSocketFactory;
.super Ljavax/net/SocketFactory;
.source "SSLSocketFactory.java"


# static fields
.field static final greylist-max-o DEBUG:Z

.field private static greylist-max-p defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private static greylist-max-o lastVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 58
    const/4 v0, -0x1

    sput v0, Ljavax/net/ssl/SSLSocketFactory;->lastVersion:I

    .line 63
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "javax.net.debug"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "s":Ljava/lang/String;
    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "ssl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v1, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v1, 0x1

    :goto_2c
    sput-boolean v1, Ljavax/net/ssl/SSLSocketFactory;->DEBUG:Z

    .line 67
    .end local v0    # "s":Ljava/lang/String;
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 79
    return-void
.end method

.method public static declared-synchronized whitelist test-api getDefault()Ljavax/net/SocketFactory;
    .registers 7

    const-class v0, Ljavax/net/ssl/SSLSocketFactory;

    monitor-enter v0

    .line 99
    :try_start_3
    sget-object v1, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_13

    sget v1, Ljavax/net/ssl/SSLSocketFactory;->lastVersion:I

    invoke-static {}, Ljava/security/Security;->getVersion()I

    move-result v2

    if-ne v1, v2, :cond_13

    .line 100
    sget-object v1, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_d6

    monitor-exit v0

    return-object v1

    .line 103
    :cond_13
    :try_start_13
    invoke-static {}, Ljava/security/Security;->getVersion()I

    move-result v1

    sput v1, Ljavax/net/ssl/SSLSocketFactory;->lastVersion:I

    .line 104
    sget-object v1, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 105
    .local v1, "previousDefaultSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v2, 0x0

    sput-object v2, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 107
    const-string v2, "ssl.SocketFactory.provider"

    invoke-static {v2}, Ljavax/net/ssl/SSLSocketFactory;->getSecurityProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "clsName":Ljava/lang/String;
    if-eqz v2, :cond_af

    .line 115
    if-eqz v1, :cond_3a

    .line 116
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 117
    sput-object v1, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_d6

    .line 118
    monitor-exit v0

    return-object v1

    .line 120
    :cond_3a
    :try_start_3a
    const-string v3, "setting up default SSLSocketFactory"

    invoke-static {v3}, Ljavax/net/ssl/SSLSocketFactory;->log(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_d6

    .line 122
    const/4 v3, 0x0

    .line 124
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_40
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_40 .. :try_end_44} :catch_48
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_44} :catch_46
    .catchall {:try_start_40 .. :try_end_44} :catchall_d6

    move-object v3, v4

    .line 136
    goto :goto_60

    .line 142
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_46
    move-exception v3

    goto :goto_97

    .line 125
    .restart local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_48
    move-exception v4

    .line 127
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    :try_start_49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 128
    .local v5, "cl":Ljava/lang/ClassLoader;
    if-nez v5, :cond_58

    .line 129
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v5, v6

    .line 132
    :cond_58
    if-eqz v5, :cond_60

    .line 134
    const/4 v6, 0x1

    invoke-static {v2, v6, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    .line 137
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :cond_60
    :goto_60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is loaded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/SSLSocketFactory;->log(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocketFactory;

    .line 139
    .local v4, "fac":Ljavax/net/ssl/SSLSocketFactory;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "instantiated an instance of class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/net/ssl/SSLSocketFactory;->log(Ljava/lang/String;)V

    .line 140
    sput-object v4, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_95} :catch_46
    .catchall {:try_start_49 .. :try_end_95} :catchall_d6

    .line 141
    monitor-exit v0

    return-object v4

    .line 143
    .end local v4    # "fac":Ljavax/net/ssl/SSLSocketFactory;
    .local v3, "e":Ljava/lang/Exception;
    :goto_97
    :try_start_97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSLSocketFactory instantiation failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/SSLSocketFactory;->log(Ljava/lang/String;)V
    :try_end_af
    .catchall {:try_start_97 .. :try_end_af} :catchall_d6

    .line 150
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_af
    :try_start_af
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 151
    .local v3, "context":Ljavax/net/ssl/SSLContext;
    if-eqz v3, :cond_bc

    .line 152
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    sput-object v4, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_ca

    .line 154
    :cond_bc
    new-instance v4, Ljavax/net/ssl/DefaultSSLSocketFactory;

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No factory found."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljavax/net/ssl/DefaultSSLSocketFactory;-><init>(Ljava/lang/Exception;)V

    sput-object v4, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 156
    :goto_ca
    sget-object v4, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_cc
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_af .. :try_end_cc} :catch_ce
    .catchall {:try_start_af .. :try_end_cc} :catchall_d6

    monitor-exit v0

    return-object v4

    .line 157
    .end local v3    # "context":Ljavax/net/ssl/SSLContext;
    :catch_ce
    move-exception v3

    .line 158
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_cf
    new-instance v4, Ljavax/net/ssl/DefaultSSLSocketFactory;

    invoke-direct {v4, v3}, Ljavax/net/ssl/DefaultSSLSocketFactory;-><init>(Ljava/lang/Exception;)V
    :try_end_d4
    .catchall {:try_start_cf .. :try_end_d4} :catchall_d6

    monitor-exit v0

    return-object v4

    .line 98
    .end local v1    # "previousDefaultSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v2    # "clsName":Ljava/lang/String;
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_d6
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static greylist-max-o getSecurityProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 163
    new-instance v0, Ljavax/net/ssl/SSLSocketFactory$1;

    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLSocketFactory$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

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
.method public greylist createSocket(Ljava/net/Socket;Ljava/io/InputStream;Z)Ljava/net/Socket;
    .registers 5
    .param p1, "s"    # Ljava/net/Socket;
    .param p2, "consumed"    # Ljava/io/InputStream;
    .param p3, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getDefaultCipherSuites()[Ljava/lang/String;
.end method

.method public abstract whitelist test-api getSupportedCipherSuites()[Ljava/lang/String;
.end method
