.class final Ljava/security/KeyStore$Builder$FileBuilder;
.super Ljava/security/KeyStore$Builder;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileBuilder"
.end annotation


# instance fields
.field private final greylist-max-o context:Ljava/security/AccessControlContext;

.field private final greylist-max-o file:Ljava/io/File;

.field private greylist-max-o keyProtection:Ljava/security/KeyStore$ProtectionParameter;

.field private greylist-max-o keyStore:Ljava/security/KeyStore;

.field private greylist-max-o oldException:Ljava/lang/Throwable;

.field private greylist-max-o protection:Ljava/security/KeyStore$ProtectionParameter;

.field private final greylist-max-o provider:Ljava/security/Provider;

.field private final greylist-max-o type:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/security/Provider;Ljava/io/File;Ljava/security/KeyStore$ProtectionParameter;Ljava/security/AccessControlContext;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "protection"    # Ljava/security/KeyStore$ProtectionParameter;
    .param p5, "context"    # Ljava/security/AccessControlContext;

    .line 1816
    invoke-direct {p0}, Ljava/security/KeyStore$Builder;-><init>()V

    .line 1817
    iput-object p1, p0, Ljava/security/KeyStore$Builder$FileBuilder;->type:Ljava/lang/String;

    .line 1818
    iput-object p2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->provider:Ljava/security/Provider;

    .line 1819
    iput-object p3, p0, Ljava/security/KeyStore$Builder$FileBuilder;->file:Ljava/io/File;

    .line 1820
    iput-object p4, p0, Ljava/security/KeyStore$Builder$FileBuilder;->protection:Ljava/security/KeyStore$ProtectionParameter;

    .line 1821
    iput-object p5, p0, Ljava/security/KeyStore$Builder$FileBuilder;->context:Ljava/security/AccessControlContext;

    .line 1822
    return-void
.end method

.method static synthetic blacklist access$100(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;
    .registers 2
    .param p0, "x0"    # Ljava/security/KeyStore$Builder$FileBuilder;

    .line 1801
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->protection:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method

.method static synthetic blacklist access$200(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/Provider;
    .registers 2
    .param p0, "x0"    # Ljava/security/KeyStore$Builder$FileBuilder;

    .line 1801
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method static synthetic blacklist access$300(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/security/KeyStore$Builder$FileBuilder;

    .line 1801
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$400(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Ljava/security/KeyStore$Builder$FileBuilder;

    .line 1801
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic blacklist access$502(Ljava/security/KeyStore$Builder$FileBuilder;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$ProtectionParameter;
    .registers 2
    .param p0, "x0"    # Ljava/security/KeyStore$Builder$FileBuilder;
    .param p1, "x1"    # Ljava/security/KeyStore$ProtectionParameter;

    .line 1801
    iput-object p1, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyProtection:Ljava/security/KeyStore$ProtectionParameter;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized whitelist core-platform-api test-api getKeyStore()Ljava/security/KeyStore;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 1826
    :try_start_1
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_9

    .line 1827
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_37

    monitor-exit p0

    return-object v0

    .line 1829
    .end local p0    # "this":Ljava/security/KeyStore$Builder$FileBuilder;
    :cond_9
    :try_start_9
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->oldException:Ljava/lang/Throwable;

    if-nez v0, :cond_2d

    .line 1834
    new-instance v0, Ljava/security/KeyStore$Builder$FileBuilder$1;

    invoke-direct {v0, p0}, Ljava/security/KeyStore$Builder$FileBuilder$1;-><init>(Ljava/security/KeyStore$Builder$FileBuilder;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_37

    .line 1897
    .local v0, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<Ljava/security/KeyStore;>;"
    :try_start_12
    iget-object v1, p0, Ljava/security/KeyStore$Builder$FileBuilder;->context:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyStore;

    iput-object v1, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;
    :try_end_1c
    .catch Ljava/security/PrivilegedActionException; {:try_start_12 .. :try_end_1c} :catch_1e
    .catchall {:try_start_12 .. :try_end_1c} :catchall_37

    .line 1898
    monitor-exit p0

    return-object v1

    .line 1899
    :catch_1e
    move-exception v1

    .line 1900
    .local v1, "e":Ljava/security/PrivilegedActionException;
    :try_start_1f
    invoke-virtual {v1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iput-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->oldException:Ljava/lang/Throwable;

    .line 1901
    new-instance v3, Ljava/security/KeyStoreException;

    const-string v4, "KeyStore instantiation failed"

    invoke-direct {v3, v4, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1830
    .end local v0    # "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<Ljava/security/KeyStore;>;"
    .end local v1    # "e":Ljava/security/PrivilegedActionException;
    :cond_2d
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Previous KeyStore instantiation failed"

    iget-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->oldException:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_37

    .line 1825
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    monitor-enter p0

    .line 1908
    if-eqz p1, :cond_15

    .line 1911
    :try_start_3
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_b

    .line 1915
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyProtection:Ljava/security/KeyStore$ProtectionParameter;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    monitor-exit p0

    return-object v0

    .line 1912
    .end local p0    # "this":Ljava/security/KeyStore$Builder$FileBuilder;
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKeyStore() must be called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1907
    .end local p1    # "alias":Ljava/lang/String;
    :catchall_13
    move-exception p1

    goto :goto_1b

    .line 1909
    .restart local p1    # "alias":Ljava/lang/String;
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_13

    .line 1907
    .end local p1    # "alias":Ljava/lang/String;
    :goto_1b
    monitor-exit p0

    throw p1
.end method
