.class final Ljavax/crypto/CryptoPermissions;
.super Ljava/security/PermissionCollection;
.source "CryptoPermissions.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .registers 2
    .param p1, "permission"    # Ljava/security/Permission;

    .prologue
    .line 51
    return-void
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method getMinimum(Ljavax/crypto/CryptoPermissions;)Ljavax/crypto/CryptoPermissions;
    .registers 3
    .param p1, "other"    # Ljavax/crypto/CryptoPermissions;

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method getPermissionCollection(Ljava/lang/String;)Ljava/security/PermissionCollection;
    .registers 3
    .param p1, "alg"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 3
    .param p1, "permission"    # Ljava/security/Permission;

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method isEmpty()Z
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method load(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/CryptoPolicyParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 45
    return-void
.end method
