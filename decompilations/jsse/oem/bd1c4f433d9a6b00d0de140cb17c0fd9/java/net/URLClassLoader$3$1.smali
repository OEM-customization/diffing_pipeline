.class Ljava/net/URLClassLoader$3$1;
.super Ljava/lang/Object;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/URLClassLoader$3;->next()Z
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
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/net/URLClassLoader$3;

.field final synthetic val$e:Ljava/util/Enumeration;


# direct methods
.method constructor <init>(Ljava/net/URLClassLoader$3;Ljava/util/Enumeration;)V
    .registers 3
    .param p1, "this$1"    # Ljava/net/URLClassLoader$3;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/net/URLClassLoader$3$1;->this$1:Ljava/net/URLClassLoader$3;

    iput-object p2, p0, Ljava/net/URLClassLoader$3$1;->val$e:Ljava/util/Enumeration;

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 597
    invoke-virtual {p0}, Ljava/net/URLClassLoader$3$1;->run()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/URL;
    .registers 2

    .prologue
    .line 598
    iget-object v0, p0, Ljava/net/URLClassLoader$3$1;->val$e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_a

    .line 599
    const/4 v0, 0x0

    return-object v0

    .line 600
    :cond_a
    iget-object v0, p0, Ljava/net/URLClassLoader$3$1;->val$e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    return-object v0
.end method
