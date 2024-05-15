.class final Lsun/security/util/AnchorCertificates$1;
.super Ljava/lang/Object;
.source "AnchorCertificates.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/AnchorCertificates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lsun/security/util/AnchorCertificates$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 14

    .prologue
    const/4 v10, 0x0

    .line 53
    new-instance v4, Ljava/io/File;

    const-string/jumbo v8, "java.home"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 54
    const-string/jumbo v9, "lib/security/cacerts"

    .line 53
    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v4, "f":Ljava/io/File;
    :try_start_10
    const-string/jumbo v8, "JKS"

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_66

    move-result-object v1

    .line 58
    .local v1, "cacerts":Ljava/security/KeyStore;
    const/4 v5, 0x0

    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_18
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1d} :catch_99
    .catchall {:try_start_18 .. :try_end_1d} :catchall_92

    .line 59
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    :try_start_1e
    invoke-virtual {v1, v6, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 60
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-static {v8}, Lsun/security/util/AnchorCertificates;->-set0(Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 61
    invoke-virtual {v1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v7

    .line 63
    .local v7, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2d
    :goto_2d
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 64
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    .local v0, "alias":Ljava/lang/String;
    const-string/jumbo v8, " [jdk"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 67
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 69
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {}, Lsun/security/util/AnchorCertificates;->-get0()Ljava/util/HashSet;

    move-result-object v8

    const-string/jumbo v9, "SHA-256"

    invoke-static {v9, v2}, Lsun/security/x509/X509CertImpl;->getFingerprint(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_56} :catch_57
    .catchall {:try_start_1e .. :try_end_56} :catchall_95

    goto :goto_2d

    .line 72
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_57
    move-exception v8

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    :goto_59
    :try_start_59
    throw v8
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception v9

    move-object v12, v9

    move-object v9, v8

    move-object v8, v12

    :goto_5e
    if-eqz v5, :cond_63

    :try_start_60
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_63} :catch_86
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_66

    :cond_63
    :goto_63
    if-eqz v9, :cond_91

    :try_start_65
    throw v9
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_66} :catch_66

    .line 73
    .end local v1    # "cacerts":Ljava/security/KeyStore;
    :catch_66
    move-exception v3

    .line 74
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lsun/security/util/AnchorCertificates;->-get1()Lsun/security/util/Debug;

    move-result-object v8

    if-eqz v8, :cond_77

    .line 75
    invoke-static {}, Lsun/security/util/AnchorCertificates;->-get1()Lsun/security/util/Debug;

    move-result-object v8

    const-string/jumbo v9, "Error parsing cacerts"

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 77
    :cond_77
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7a
    return-object v10

    .line 72
    .restart local v1    # "cacerts":Ljava/security/KeyStore;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_7b
    if-eqz v6, :cond_80

    :try_start_7d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_80} :catch_84
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_66

    :cond_80
    move-object v8, v10

    :goto_81
    if-eqz v8, :cond_7a

    :try_start_83
    throw v8

    :catch_84
    move-exception v8

    goto :goto_81

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_86
    move-exception v11

    if-nez v9, :cond_8b

    move-object v9, v11

    goto :goto_63

    :cond_8b
    if-eq v9, v11, :cond_63

    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_63

    :cond_91
    throw v8
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_92} :catch_66

    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_92
    move-exception v8

    move-object v9, v10

    goto :goto_5e

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_95
    move-exception v8

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    move-object v9, v10

    goto :goto_5e

    .local v5, "fis":Ljava/io/FileInputStream;
    :catch_99
    move-exception v8

    goto :goto_59
.end method
