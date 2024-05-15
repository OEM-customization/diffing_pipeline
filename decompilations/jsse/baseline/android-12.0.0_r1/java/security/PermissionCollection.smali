.class public abstract Ljava/security/PermissionCollection;
.super Ljava/lang/Object;
.source "PermissionCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist test-api add(Ljava/security/Permission;)V
.end method

.method public abstract whitelist test-api elements()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api implies(Ljava/security/Permission;)Z
.end method

.method public whitelist test-api isReadOnly()Z
    .registers 2

    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api setReadOnly()V
    .registers 1

    .line 44
    return-void
.end method
