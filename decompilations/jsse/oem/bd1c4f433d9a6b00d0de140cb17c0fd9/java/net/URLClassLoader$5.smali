.class final Ljava/net/URLClassLoader$5;
.super Ljava/lang/Object;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/URLClassLoader;->newInstance([Ljava/net/URL;Ljava/lang/ClassLoader;)Ljava/net/URLClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/net/URLClassLoader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$acc:Ljava/security/AccessControlContext;

.field final synthetic val$parent:Ljava/lang/ClassLoader;

.field final synthetic val$urls:[Ljava/net/URL;


# direct methods
.method constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/security/AccessControlContext;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Ljava/net/URLClassLoader$5;->val$urls:[Ljava/net/URL;

    iput-object p2, p0, Ljava/net/URLClassLoader$5;->val$parent:Ljava/lang/ClassLoader;

    iput-object p3, p0, Ljava/net/URLClassLoader$5;->val$acc:Ljava/security/AccessControlContext;

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 736
    invoke-virtual {p0}, Ljava/net/URLClassLoader$5;->run()Ljava/net/URLClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/URLClassLoader;
    .registers 5

    .prologue
    .line 737
    new-instance v0, Ljava/net/FactoryURLClassLoader;

    iget-object v1, p0, Ljava/net/URLClassLoader$5;->val$urls:[Ljava/net/URL;

    iget-object v2, p0, Ljava/net/URLClassLoader$5;->val$parent:Ljava/lang/ClassLoader;

    iget-object v3, p0, Ljava/net/URLClassLoader$5;->val$acc:Ljava/security/AccessControlContext;

    invoke-direct {v0, v1, v2, v3}, Ljava/net/FactoryURLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/security/AccessControlContext;)V

    return-object v0
.end method
