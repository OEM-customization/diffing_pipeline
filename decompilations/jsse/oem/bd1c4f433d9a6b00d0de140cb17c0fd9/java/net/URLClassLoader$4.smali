.class Ljava/net/URLClassLoader$4;
.super Ljava/lang/Object;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/URLClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/URLClassLoader;

.field final synthetic val$fp:Ljava/security/Permission;

.field final synthetic val$sm:Ljava/lang/SecurityManager;


# direct methods
.method constructor <init>(Ljava/net/URLClassLoader;Ljava/lang/SecurityManager;Ljava/security/Permission;)V
    .registers 4
    .param p1, "this$0"    # Ljava/net/URLClassLoader;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/net/URLClassLoader$4;->this$0:Ljava/net/URLClassLoader;

    iput-object p2, p0, Ljava/net/URLClassLoader$4;->val$sm:Ljava/lang/SecurityManager;

    iput-object p3, p0, Ljava/net/URLClassLoader$4;->val$fp:Ljava/security/Permission;

    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 705
    invoke-virtual {p0}, Ljava/net/URLClassLoader$4;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 706
    iget-object v0, p0, Ljava/net/URLClassLoader$4;->val$sm:Ljava/lang/SecurityManager;

    iget-object v1, p0, Ljava/net/URLClassLoader$4;->val$fp:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 707
    const/4 v0, 0x0

    return-object v0
.end method
