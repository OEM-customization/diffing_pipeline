.class Ljava/security/KeyStore$Builder$1;
.super Ljava/security/KeyStore$Builder;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/security/KeyStore$Builder;->newInstance(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private volatile blacklist getCalled:Z

.field final synthetic blacklist val$keyStore:Ljava/security/KeyStore;

.field final synthetic blacklist val$protectionParameter:Ljava/security/KeyStore$ProtectionParameter;


# direct methods
.method constructor blacklist <init>(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 3

    .line 1716
    iput-object p1, p0, Ljava/security/KeyStore$Builder$1;->val$keyStore:Ljava/security/KeyStore;

    iput-object p2, p0, Ljava/security/KeyStore$Builder$1;->val$protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    invoke-direct {p0}, Ljava/security/KeyStore$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api getKeyStore()Ljava/security/KeyStore;
    .registers 2

    .line 1720
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/KeyStore$Builder$1;->getCalled:Z

    .line 1721
    iget-object v0, p0, Ljava/security/KeyStore$Builder$1;->val$keyStore:Ljava/security/KeyStore;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 1726
    if-eqz p1, :cond_11

    .line 1729
    iget-boolean v0, p0, Ljava/security/KeyStore$Builder$1;->getCalled:Z

    if-eqz v0, :cond_9

    .line 1733
    iget-object v0, p0, Ljava/security/KeyStore$Builder$1;->val$protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0

    .line 1730
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKeyStore() must be called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1727
    :cond_11
    const/4 v0, 0x0

    throw v0
.end method
