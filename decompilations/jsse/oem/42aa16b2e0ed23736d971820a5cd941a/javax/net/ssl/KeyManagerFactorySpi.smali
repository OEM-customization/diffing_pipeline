.class public abstract Ljavax/net/ssl/KeyManagerFactorySpi;
.super Ljava/lang/Object;
.source "KeyManagerFactorySpi.java"


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract whitelist core-platform-api test-api engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
.end method

.method protected abstract whitelist core-platform-api test-api engineInit(Ljava/security/KeyStore;[C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation
.end method

.method protected abstract whitelist core-platform-api test-api engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method