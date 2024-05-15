.class final Ljavax/crypto/JarVerifier;
.super Ljava/lang/Object;
.source "JarVerifier.java"


# instance fields
.field private blacklist appPerms:Ljavax/crypto/CryptoPermissions;

.field private blacklist jarURL:Ljava/net/URL;

.field private blacklist savePerms:Z


# direct methods
.method constructor blacklist <init>(Ljava/net/URL;Z)V
    .registers 4
    .param p1, "jarURL"    # Ljava/net/URL;
    .param p2, "savePerms"    # Z

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/JarVerifier;->appPerms:Ljavax/crypto/CryptoPermissions;

    .line 60
    iput-object p1, p0, Ljavax/crypto/JarVerifier;->jarURL:Ljava/net/URL;

    .line 61
    iput-boolean p2, p0, Ljavax/crypto/JarVerifier;->savePerms:Z

    .line 62
    return-void
.end method

.method static blacklist verifyPolicySigned([Ljava/security/cert/Certificate;)V
    .registers 1
    .param p0, "certs"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    return-void
.end method


# virtual methods
.method blacklist getPermissions()Ljavax/crypto/CryptoPermissions;
    .registers 2

    .line 151
    iget-object v0, p0, Ljavax/crypto/JarVerifier;->appPerms:Ljavax/crypto/CryptoPermissions;

    return-object v0
.end method

.method blacklist verify()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/jar/JarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-boolean v0, p0, Ljavax/crypto/JarVerifier;->savePerms:Z

    if-nez v0, :cond_5

    .line 75
    return-void

    .line 81
    :cond_5
    iget-object v0, p0, Ljavax/crypto/JarVerifier;->jarURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 82
    iget-object v0, p0, Ljavax/crypto/JarVerifier;->jarURL:Ljava/net/URL;

    goto :goto_37

    :cond_16
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljavax/crypto/JarVerifier;->jarURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "url":Ljava/net/URL;
    :goto_37
    const/4 v1, 0x0

    .line 89
    .local v1, "jf":Ljava/util/jar/JarFile;
    :try_start_38
    new-instance v2, Ljavax/crypto/JarVerifier$1;

    invoke-direct {v2, p0, v0}, Ljavax/crypto/JarVerifier$1;-><init>(Ljavax/crypto/JarVerifier;Ljava/net/URL;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/JarFile;
    :try_end_43
    .catch Ljava/security/PrivilegedActionException; {:try_start_38 .. :try_end_43} :catch_90
    .catchall {:try_start_38 .. :try_end_43} :catchall_8e

    move-object v1, v2

    .line 102
    nop

    .line 104
    if-eqz v1, :cond_88

    .line 105
    :try_start_47
    const-string v2, "cryptoPerms"

    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_8e

    .line 106
    .local v2, "je":Ljava/util/jar/JarEntry;
    if-eqz v2, :cond_80

    .line 111
    :try_start_4f
    new-instance v3, Ljavax/crypto/CryptoPermissions;

    invoke-direct {v3}, Ljavax/crypto/CryptoPermissions;-><init>()V

    iput-object v3, p0, Ljavax/crypto/JarVerifier;->appPerms:Ljavax/crypto/CryptoPermissions;

    .line 112
    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/CryptoPermissions;->load(Ljava/io/InputStream;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5d} :catch_5e
    .catchall {:try_start_4f .. :try_end_5d} :catchall_8e

    .line 119
    goto :goto_88

    .line 113
    :catch_5e
    move-exception v3

    .line 114
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_5f
    new-instance v4, Ljava/util/jar/JarException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot load/parse"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljavax/crypto/JarVerifier;->jarURL:Ljava/net/URL;

    .line 116
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    .line 117
    .local v4, "jex":Ljava/util/jar/JarException;
    invoke-virtual {v4, v3}, Ljava/util/jar/JarException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 118
    nop

    .end local v0    # "url":Ljava/net/URL;
    .end local v1    # "jf":Ljava/util/jar/JarFile;
    .end local p0    # "this":Ljavax/crypto/JarVerifier;
    throw v4

    .line 107
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "jex":Ljava/util/jar/JarException;
    .restart local v0    # "url":Ljava/net/URL;
    .restart local v1    # "jf":Ljava/util/jar/JarFile;
    .restart local p0    # "this":Ljavax/crypto/JarVerifier;
    :cond_80
    new-instance v3, Ljava/util/jar/JarException;

    const-string v4, "Can not find cryptoPerms"

    invoke-direct {v3, v4}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    .end local v0    # "url":Ljava/net/URL;
    .end local v1    # "jf":Ljava/util/jar/JarFile;
    .end local p0    # "this":Ljavax/crypto/JarVerifier;
    throw v3
    :try_end_88
    .catchall {:try_start_5f .. :try_end_88} :catchall_8e

    .line 125
    .end local v2    # "je":Ljava/util/jar/JarEntry;
    .restart local v0    # "url":Ljava/net/URL;
    .restart local v1    # "jf":Ljava/util/jar/JarFile;
    .restart local p0    # "this":Ljavax/crypto/JarVerifier;
    :cond_88
    :goto_88
    if-eqz v1, :cond_8d

    .line 126
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    .line 129
    :cond_8d
    return-void

    .line 125
    :catchall_8e
    move-exception v2

    goto :goto_ac

    .line 100
    :catch_90
    move-exception v2

    .line 101
    .local v2, "pae":Ljava/security/PrivilegedActionException;
    :try_start_91
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot load "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "url":Ljava/net/URL;
    .end local v1    # "jf":Ljava/util/jar/JarFile;
    .end local p0    # "this":Ljavax/crypto/JarVerifier;
    throw v3
    :try_end_ac
    .catchall {:try_start_91 .. :try_end_ac} :catchall_8e

    .line 125
    .end local v2    # "pae":Ljava/security/PrivilegedActionException;
    .restart local v0    # "url":Ljava/net/URL;
    .restart local v1    # "jf":Ljava/util/jar/JarFile;
    .restart local p0    # "this":Ljavax/crypto/JarVerifier;
    :goto_ac
    if-eqz v1, :cond_b1

    .line 126
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    .line 128
    :cond_b1
    throw v2
.end method
