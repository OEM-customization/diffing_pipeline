.class public abstract Ljava/security/Permission;
.super Ljava/lang/Object;
.source "Permission.java"

# interfaces
.implements Ljava/security/Guard;
.implements Ljava/io/Serializable;


# instance fields
.field private greylist-max-o name:Ljava/lang/String;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Ljava/security/Permission;->name:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api checkGuard(Ljava/lang/Object;)V
    .registers 2
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public abstract whitelist core-platform-api test-api getActions()Ljava/lang/String;
.end method

.method public final whitelist core-platform-api test-api getName()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Ljava/security/Permission;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api implies(Ljava/security/Permission;)Z
.end method

.method public whitelist core-platform-api test-api newPermissionCollection()Ljava/security/PermissionCollection;
    .registers 2

    .line 52
    new-instance v0, Ljava/security/Permissions;

    invoke-direct {v0}, Ljava/security/Permissions;-><init>()V

    return-object v0
.end method
