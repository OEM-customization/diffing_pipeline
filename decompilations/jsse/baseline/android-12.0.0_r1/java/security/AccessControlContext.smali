.class public final Ljava/security/AccessControlContext;
.super Ljava/lang/Object;
.source "AccessControlContext.java"


# direct methods
.method public constructor whitelist test-api <init>(Ljava/security/AccessControlContext;Ljava/security/DomainCombiner;)V
    .registers 3
    .param p1, "acc"    # Ljava/security/AccessControlContext;
    .param p2, "combiner"    # Ljava/security/DomainCombiner;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor whitelist test-api <init>([Ljava/security/ProtectionDomain;)V
    .registers 2
    .param p1, "context"    # [Ljava/security/ProtectionDomain;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist test-api checkPermission(Ljava/security/Permission;)V
    .registers 2
    .param p1, "perm"    # Ljava/security/Permission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/AccessControlException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public whitelist test-api getDomainCombiner()Ljava/security/DomainCombiner;
    .registers 2

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method
