.class public Ljavax/net/ssl/KeyManagerFactory;
.super Ljava/lang/Object;
.source "KeyManagerFactory.java"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private factorySpi:Ljavax/net/ssl/KeyManagerFactorySpi;

.field private provider:Ljava/security/Provider;


# direct methods
.method protected constructor <init>(Ljavax/net/ssl/KeyManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4
    .param p1, "factorySpi"    # Ljavax/net/ssl/KeyManagerFactorySpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Ljavax/net/ssl/KeyManagerFactory;->factorySpi:Ljavax/net/ssl/KeyManagerFactorySpi;

    .line 105
    iput-object p2, p0, Ljavax/net/ssl/KeyManagerFactory;->provider:Ljava/security/Provider;

    .line 106
    iput-object p3, p0, Ljavax/net/ssl/KeyManagerFactory;->algorithm:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public static final getDefaultAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    new-instance v1, Ljavax/net/ssl/KeyManagerFactory$1;

    invoke-direct {v1}, Ljavax/net/ssl/KeyManagerFactory$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 90
    const-string/jumbo v0, "SunX509"

    .line 92
    :cond_10
    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 153
    const-string/jumbo v1, "KeyManagerFactory"

    const-class v2, Ljavax/net/ssl/KeyManagerFactorySpi;

    .line 152
    invoke-static {v1, v2, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 155
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/net/ssl/KeyManagerFactory;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/net/ssl/KeyManagerFactorySpi;

    .line 156
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 155
    invoke-direct {v2, v1, v3, p0}, Ljavax/net/ssl/KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 197
    const-string/jumbo v1, "KeyManagerFactory"

    const-class v2, Ljavax/net/ssl/KeyManagerFactorySpi;

    .line 196
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 199
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/net/ssl/KeyManagerFactory;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/net/ssl/KeyManagerFactorySpi;

    .line 200
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 199
    invoke-direct {v2, v1, v3, p0}, Ljavax/net/ssl/KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/KeyManagerFactory;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 234
    const-string/jumbo v1, "KeyManagerFactory"

    const-class v2, Ljavax/net/ssl/KeyManagerFactorySpi;

    .line 233
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 236
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/net/ssl/KeyManagerFactory;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/net/ssl/KeyManagerFactorySpi;

    .line 237
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 236
    invoke-direct {v2, v1, v3, p0}, Ljavax/net/ssl/KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Ljavax/net/ssl/KeyManagerFactory;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeyManagers()[Ljavax/net/ssl/KeyManager;
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Ljavax/net/ssl/KeyManagerFactory;->factorySpi:Ljavax/net/ssl/KeyManagerFactorySpi;

    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactorySpi;->engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Ljavax/net/ssl/KeyManagerFactory;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(Ljava/security/KeyStore;[C)V
    .registers 4
    .param p1, "ks"    # Ljava/security/KeyStore;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Ljavax/net/ssl/KeyManagerFactory;->factorySpi:Ljavax/net/ssl/KeyManagerFactorySpi;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/KeyManagerFactorySpi;->engineInit(Ljava/security/KeyStore;[C)V

    .line 273
    return-void
.end method

.method public final init(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .registers 3
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Ljavax/net/ssl/KeyManagerFactory;->factorySpi:Ljavax/net/ssl/KeyManagerFactorySpi;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/KeyManagerFactorySpi;->engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V

    .line 295
    return-void
.end method
