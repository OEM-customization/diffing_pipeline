.class Ljava/security/Policy$UnsupportedEmptyCollection;
.super Ljava/security/PermissionCollection;
.source "Policy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnsupportedEmptyCollection"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 103
    return-void
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .registers 2
    .param p1, "permission"    # Ljava/security/Permission;

    .prologue
    .line 106
    return-void
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 3
    .param p1, "permission"    # Ljava/security/Permission;

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method
