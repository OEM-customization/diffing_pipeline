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
.field private final context:Ljava/security/AccessControlContext;

.field private final file:Ljava/io/File;

.field private keyProtection:Ljava/security/KeyStore$ProtectionParameter;

.field private keyStore:Ljava/security/KeyStore;

.field private oldException:Ljava/lang/Throwable;

.field private protection:Ljava/security/KeyStore$ProtectionParameter;

.field private final provider:Ljava/security/Provider;

.field private final type:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/io/File;
    .registers 2
    .param p0, "-this"    # Ljava/security/KeyStore$Builder$FileBuilder;

    .prologue
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get1(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;
    .registers 2
    .param p0, "-this"    # Ljava/security/KeyStore$Builder$FileBuilder;

    .prologue
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->protection:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method

.method static synthetic -get2(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/Provider;
    .registers 2
    .param p0, "-this"    # Ljava/security/KeyStore$Builder$FileBuilder;

    .prologue
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method static synthetic -get3(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Ljava/security/KeyStore$Builder$FileBuilder;

    .prologue
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Ljava/security/KeyStore$Builder$FileBuilder;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$ProtectionParameter;
    .registers 2
    .param p0, "-this"    # Ljava/security/KeyStore$Builder$FileBuilder;
    .param p1, "-value"    # Ljava/security/KeyStore$ProtectionParameter;

    .prologue
    iput-object p1, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyProtection:Ljava/security/KeyStore$ProtectionParameter;

    return-object p1
.end method

.method constructor <init>(Ljava/lang/String;Ljava/security/Provider;Ljava/io/File;Ljava/security/KeyStore$ProtectionParameter;Ljava/security/AccessControlContext;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "protection"    # Ljava/security/KeyStore$ProtectionParameter;
    .param p5, "context"    # Ljava/security/AccessControlContext;

    .prologue
    .line 1814
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


# virtual methods
.method public declared-synchronized getKeyStore()Ljava/security/KeyStore;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1826
    :try_start_1
    iget-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;

    if-eqz v2, :cond_9

    .line 1827
    iget-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_18

    monitor-exit p0

    return-object v2

    .line 1829
    :cond_9
    :try_start_9
    iget-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->oldException:Ljava/lang/Throwable;

    if-eqz v2, :cond_1b

    .line 1830
    new-instance v2, Ljava/security/KeyStoreException;

    .line 1831
    const-string/jumbo v3, "Previous KeyStore instantiation failed"

    .line 1832
    iget-object v4, p0, Ljava/security/KeyStore$Builder$FileBuilder;->oldException:Ljava/lang/Throwable;

    .line 1830
    invoke-direct {v2, v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1835
    :cond_1b
    :try_start_1b
    new-instance v0, Ljava/security/KeyStore$Builder$FileBuilder$1;

    invoke-direct {v0, p0}, Ljava/security/KeyStore$Builder$FileBuilder$1;-><init>(Ljava/security/KeyStore$Builder$FileBuilder;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_18

    .line 1897
    .local v0, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<Ljava/security/KeyStore;>;"
    :try_start_20
    iget-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->context:Ljava/security/AccessControlContext;

    invoke-static {v0, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore;

    iput-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;

    .line 1898
    iget-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;
    :try_end_2c
    .catch Ljava/security/PrivilegedActionException; {:try_start_20 .. :try_end_2c} :catch_2e
    .catchall {:try_start_20 .. :try_end_2c} :catchall_18

    monitor-exit p0

    return-object v2

    .line 1899
    :catch_2e
    move-exception v1

    .line 1900
    .local v1, "e":Ljava/security/PrivilegedActionException;
    :try_start_2f
    invoke-virtual {v1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iput-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->oldException:Ljava/lang/Throwable;

    .line 1901
    new-instance v2, Ljava/security/KeyStoreException;

    .line 1902
    const-string/jumbo v3, "KeyStore instantiation failed"

    iget-object v4, p0, Ljava/security/KeyStore$Builder$FileBuilder;->oldException:Ljava/lang/Throwable;

    .line 1901
    invoke-direct {v2, v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_18
.end method

.method public declared-synchronized getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1908
    if-nez p1, :cond_c

    .line 1909
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1911
    :cond_c
    :try_start_c
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;

    if-nez v0, :cond_19

    .line 1912
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1913
    const-string/jumbo v1, "getKeyStore() must be called first"

    .line 1912
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1915
    :cond_19
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyProtection:Ljava/security/KeyStore$ProtectionParameter;
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_9

    monitor-exit p0

    return-object v0
.end method
