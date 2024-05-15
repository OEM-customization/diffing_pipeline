.class public final Ljava/security/Permissions;
.super Ljava/security/PermissionCollection;
.source "Permissions.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api add(Ljava/security/Permission;)V
    .registers 2
    .param p1, "permission"    # Ljava/security/Permission;

    .line 41
    return-void
.end method

.method public whitelist core-platform-api test-api elements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist core-platform-api test-api implies(Ljava/security/Permission;)Z
    .registers 3
    .param p1, "permission"    # Ljava/security/Permission;

    .line 43
    const/4 v0, 0x1

    return v0
.end method
