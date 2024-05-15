.class public abstract Ljava/security/IdentityScope;
.super Ljava/security/Identity;
.source "IdentityScope.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static greylist-max-o scope:Ljava/security/IdentityScope; = null

.field private static final whitelist serialVersionUID:J = -0x206fec0f17658ffeL


# direct methods
.method protected constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 106
    const-string v0, "restoring..."

    invoke-direct {p0, v0}, Ljava/security/IdentityScope;-><init>(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 115
    invoke-direct {p0, p1}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;Ljava/security/IdentityScope;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/security/IdentityScope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/security/Identity;-><init>(Ljava/lang/String;Ljava/security/IdentityScope;)V

    .line 130
    return-void
.end method

.method private static greylist-max-o check(Ljava/lang/String;)V
    .registers 2
    .param p0, "directive"    # Ljava/lang/String;

    .line 254
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 255
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 256
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 258
    :cond_9
    return-void
.end method

.method public static whitelist core-platform-api test-api getSystemScope()Ljava/security/IdentityScope;
    .registers 1

    .line 141
    sget-object v0, Ljava/security/IdentityScope;->scope:Ljava/security/IdentityScope;

    if-nez v0, :cond_7

    .line 142
    invoke-static {}, Ljava/security/IdentityScope;->initializeSystemScope()V

    .line 144
    :cond_7
    sget-object v0, Ljava/security/IdentityScope;->scope:Ljava/security/IdentityScope;

    return-object v0
.end method

.method private static greylist-max-o initializeSystemScope()V
    .registers 2

    .line 77
    new-instance v0, Ljava/security/IdentityScope$1;

    invoke-direct {v0}, Ljava/security/IdentityScope$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    .local v0, "classname":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 85
    return-void

    .line 92
    :cond_e
    :try_start_e
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/IdentityScope;

    sput-object v1, Ljava/security/IdentityScope;->scope:Ljava/security/IdentityScope;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_1b

    .line 97
    goto :goto_1f

    .line 93
    :catch_1b
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

.method protected static whitelist core-platform-api test-api setSystemScope(Ljava/security/IdentityScope;)V
    .registers 2
    .param p0, "scope"    # Ljava/security/IdentityScope;

    .line 166
    const-string v0, "setSystemScope"

    invoke-static {v0}, Ljava/security/IdentityScope;->check(Ljava/lang/String;)V

    .line 167
    sput-object p0, Ljava/security/IdentityScope;->scope:Ljava/security/IdentityScope;

    .line 168
    return-void
.end method


# virtual methods
.method public abstract whitelist core-platform-api test-api addIdentity(Ljava/security/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api getIdentity(Ljava/lang/String;)Ljava/security/Identity;
.end method

.method public whitelist core-platform-api test-api getIdentity(Ljava/security/Principal;)Ljava/security/Identity;
    .registers 3
    .param p1, "principal"    # Ljava/security/Principal;

    .line 199
    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/IdentityScope;->getIdentity(Ljava/lang/String;)Ljava/security/Identity;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api getIdentity(Ljava/security/PublicKey;)Ljava/security/Identity;
.end method

.method public abstract whitelist core-platform-api test-api identities()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/security/Identity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api removeIdentity(Ljava/security/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api size()I
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/security/Identity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/IdentityScope;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
