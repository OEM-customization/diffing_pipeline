.class public interface abstract Ljava/security/acl/Acl;
.super Ljava/lang/Object;
.source "Acl.java"

# interfaces
.implements Ljava/security/acl/Owner;


# virtual methods
.method public abstract whitelist core-platform-api test-api addEntry(Ljava/security/Principal;Ljava/security/acl/AclEntry;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/acl/NotOwnerException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api checkPermission(Ljava/security/Principal;Ljava/security/acl/Permission;)Z
.end method

.method public abstract whitelist core-platform-api test-api entries()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/security/acl/AclEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api getName()Ljava/lang/String;
.end method

.method public abstract whitelist core-platform-api test-api getPermissions(Ljava/security/Principal;)Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Principal;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/security/acl/Permission;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api removeEntry(Ljava/security/Principal;Ljava/security/acl/AclEntry;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/acl/NotOwnerException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api setName(Ljava/security/Principal;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/acl/NotOwnerException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api toString()Ljava/lang/String;
.end method
