.class public abstract Ljava/security/KeyStore$Builder;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyStore$Builder$FileBuilder;
    }
.end annotation


# static fields
.field static final greylist-max-o MAX_CALLBACK_TRIES:I = 0x3


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 1657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1659
    return-void
.end method

.method public static whitelist test-api newInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/io/File;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
    .registers 11
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "protection"    # Ljava/security/KeyStore$ProtectionParameter;

    .line 1783
    if-eqz p0, :cond_43

    if-eqz p2, :cond_43

    if-eqz p3, :cond_43

    .line 1786
    instance-of v0, p3, Ljava/security/KeyStore$PasswordProtection;

    if-nez v0, :cond_17

    instance-of v0, p3, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-eqz v0, :cond_f

    goto :goto_17

    .line 1788
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Protection must be PasswordProtection or CallbackHandlerProtection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1792
    :cond_17
    :goto_17
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1797
    new-instance v0, Ljava/security/KeyStore$Builder$FileBuilder;

    .line 1798
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ljava/security/KeyStore$Builder$FileBuilder;-><init>(Ljava/lang/String;Ljava/security/Provider;Ljava/io/File;Ljava/security/KeyStore$ProtectionParameter;Ljava/security/AccessControlContext;)V

    .line 1797
    return-object v0

    .line 1793
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File does not exist or it does not refer to a normal file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1784
    :cond_43
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api newInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
    .registers 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "protection"    # Ljava/security/KeyStore$ProtectionParameter;

    .line 1948
    if-eqz p0, :cond_e

    if-eqz p2, :cond_e

    .line 1951
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 1952
    .local v0, "context":Ljava/security/AccessControlContext;
    new-instance v1, Ljava/security/KeyStore$Builder$2;

    invoke-direct {v1, p1, p0, p2, v0}, Ljava/security/KeyStore$Builder$2;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;Ljava/security/AccessControlContext;)V

    return-object v1

    .line 1949
    .end local v0    # "context":Ljava/security/AccessControlContext;
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api newInstance(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
    .registers 4
    .param p0, "keyStore"    # Ljava/security/KeyStore;
    .param p1, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;

    .line 1710
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    .line 1713
    # getter for: Ljava/security/KeyStore;->initialized:Z
    invoke-static {p0}, Ljava/security/KeyStore;->access$000(Ljava/security/KeyStore;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1716
    new-instance v0, Ljava/security/KeyStore$Builder$1;

    invoke-direct {v0, p0, p1}, Ljava/security/KeyStore$Builder$1;-><init>(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;)V

    return-object v0

    .line 1714
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KeyStore not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1711
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public abstract whitelist test-api getKeyStore()Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method
