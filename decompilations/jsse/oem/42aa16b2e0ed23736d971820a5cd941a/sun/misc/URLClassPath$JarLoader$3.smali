.class Lsun/misc/URLClassPath$JarLoader$3;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Lsun/misc/URLClassPath$JarLoader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/misc/URLClassPath$JarLoader;

.field final synthetic blacklist val$url:Ljava/net/URL;


# direct methods
.method constructor blacklist <init>(Lsun/misc/URLClassPath$JarLoader;Ljava/net/URL;)V
    .registers 3
    .param p1, "this$0"    # Lsun/misc/URLClassPath$JarLoader;

    .line 1111
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader$3;->this$0:Lsun/misc/URLClassPath$JarLoader;

    iput-object p2, p0, Lsun/misc/URLClassPath$JarLoader$3;->val$url:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist core-platform-api test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1111
    invoke-virtual {p0}, Lsun/misc/URLClassPath$JarLoader$3;->run()Lsun/misc/URLClassPath$JarLoader;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Lsun/misc/URLClassPath$JarLoader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1113
    new-instance v0, Lsun/misc/URLClassPath$JarLoader;

    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader$3;->val$url:Ljava/net/URL;

    iget-object v2, p0, Lsun/misc/URLClassPath$JarLoader$3;->this$0:Lsun/misc/URLClassPath$JarLoader;

    # getter for: Lsun/misc/URLClassPath$JarLoader;->handler:Ljava/net/URLStreamHandler;
    invoke-static {v2}, Lsun/misc/URLClassPath$JarLoader;->access$1300(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URLStreamHandler;

    move-result-object v2

    iget-object v3, p0, Lsun/misc/URLClassPath$JarLoader$3;->this$0:Lsun/misc/URLClassPath$JarLoader;

    .line 1114
    # getter for: Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;
    invoke-static {v3}, Lsun/misc/URLClassPath$JarLoader;->access$1100(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lsun/misc/URLClassPath$JarLoader$3;->this$0:Lsun/misc/URLClassPath$JarLoader;

    # getter for: Lsun/misc/URLClassPath$JarLoader;->acc:Ljava/security/AccessControlContext;
    invoke-static {v4}, Lsun/misc/URLClassPath$JarLoader;->access$1400(Lsun/misc/URLClassPath$JarLoader;)Ljava/security/AccessControlContext;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lsun/misc/URLClassPath$JarLoader;-><init>(Ljava/net/URL;Ljava/net/URLStreamHandler;Ljava/util/HashMap;Ljava/security/AccessControlContext;)V

    .line 1113
    return-object v0
.end method
