.class public Ljava/security/ProtectionDomain;
.super Ljava/lang/Object;
.source "ProtectionDomain.java"


# direct methods
.method public constructor <init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V
    .registers 3
    .param p1, "codesource"    # Ljava/security/CodeSource;
    .param p2, "permissions"    # Ljava/security/PermissionCollection;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;Ljava/lang/ClassLoader;[Ljava/security/Principal;)V
    .registers 5
    .param p1, "codesource"    # Ljava/security/CodeSource;
    .param p2, "permissions"    # Ljava/security/PermissionCollection;
    .param p3, "classloader"    # Ljava/lang/ClassLoader;
    .param p4, "principals"    # [Ljava/security/Principal;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public final getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCodeSource()Ljava/security/CodeSource;
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPermissions()Ljava/security/PermissionCollection;
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPrincipals()[Ljava/security/Principal;
    .registers 2

    .prologue
    .line 49
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
