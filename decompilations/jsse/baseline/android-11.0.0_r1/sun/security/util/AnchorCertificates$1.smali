.class Lsun/security/util/AnchorCertificates$1;
.super Ljava/lang/Object;
.source "AnchorCertificates.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/AnchorCertificates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist core-platform-api test-api run()Ljava/lang/Object;
    .registers 2

    .line 50
    invoke-virtual {p0}, Lsun/security/util/AnchorCertificates$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 10

    .line 53
    new-instance v0, Ljava/io/File;

    const-string v1, "java.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lib/security/cacerts"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v0, "f":Ljava/io/File;
    const/4 v1, 0x0

    :try_start_e
    const-string v2, "JKS"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 58
    .local v2, "cacerts":Ljava/security/KeyStore;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_60

    .line 59
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_19
    invoke-virtual {v2, v3, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 60
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    # setter for: Lsun/security/util/AnchorCertificates;->certs:Ljava/util/HashSet;
    invoke-static {v4}, Lsun/security/util/AnchorCertificates;->access$002(Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 61
    invoke-virtual {v2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v4

    .line 63
    .local v4, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_28
    :goto_28
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 64
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 66
    .local v5, "alias":Ljava/lang/String;
    const-string v6, " [jdk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 67
    nop

    .line 68
    invoke-virtual {v2, v5}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 69
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    # getter for: Lsun/security/util/AnchorCertificates;->certs:Ljava/util/HashSet;
    invoke-static {}, Lsun/security/util/AnchorCertificates;->access$000()Ljava/util/HashSet;

    move-result-object v7

    const-string v8, "SHA-256"

    invoke-static {v8, v6}, Lsun/security/x509/X509CertImpl;->getFingerprint(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_19 .. :try_end_50} :catchall_56

    .line 70
    nop

    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    goto :goto_28

    .line 72
    .end local v4    # "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v5    # "alias":Ljava/lang/String;
    :cond_52
    :try_start_52
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_60

    .line 78
    .end local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_73

    .line 58
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_56
    move-exception v4

    :try_start_57
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception v5

    :try_start_5c
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "f":Ljava/io/File;
    .end local p0    # "this":Lsun/security/util/AnchorCertificates$1;
    :goto_5f
    throw v4
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_60} :catch_60

    .line 73
    .end local v2    # "cacerts":Ljava/security/KeyStore;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "f":Ljava/io/File;
    .restart local p0    # "this":Lsun/security/util/AnchorCertificates$1;
    :catch_60
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/Exception;
    # getter for: Lsun/security/util/AnchorCertificates;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/util/AnchorCertificates;->access$100()Lsun/security/util/Debug;

    move-result-object v3

    if-eqz v3, :cond_70

    .line 75
    # getter for: Lsun/security/util/AnchorCertificates;->debug:Lsun/security/util/Debug;
    invoke-static {}, Lsun/security/util/AnchorCertificates;->access$100()Lsun/security/util/Debug;

    move-result-object v3

    const-string v4, "Error parsing cacerts"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 77
    :cond_70
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_73
    return-object v1
.end method
