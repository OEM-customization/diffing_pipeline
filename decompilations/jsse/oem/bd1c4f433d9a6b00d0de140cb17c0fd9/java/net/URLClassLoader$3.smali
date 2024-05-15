.class Ljava/net/URLClassLoader$3;
.super Ljava/lang/Object;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/URLClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/URLClassLoader;

.field private url:Ljava/net/URL;

.field final synthetic val$e:Ljava/util/Enumeration;


# direct methods
.method constructor <init>(Ljava/net/URLClassLoader;Ljava/util/Enumeration;)V
    .registers 4
    .param p1, "this$0"    # Ljava/net/URLClassLoader;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/net/URLClassLoader$3;->this$0:Ljava/net/URLClassLoader;

    iput-object p2, p0, Ljava/net/URLClassLoader$3;->val$e:Ljava/util/Enumeration;

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URLClassLoader$3;->url:Ljava/net/URL;

    .line 1
    return-void
.end method

.method private next()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 591
    iget-object v2, p0, Ljava/net/URLClassLoader$3;->url:Ljava/net/URL;

    if-eqz v2, :cond_16

    .line 592
    return v1

    .line 605
    .local v0, "u":Ljava/net/URL;
    :cond_6
    iget-object v2, p0, Ljava/net/URLClassLoader$3;->this$0:Ljava/net/URLClassLoader;

    invoke-static {v2}, Ljava/net/URLClassLoader;->-get1(Ljava/net/URLClassLoader;)Lsun/misc/URLClassPath;

    move-result-object v2

    invoke-virtual {v2, v0}, Lsun/misc/URLClassPath;->checkURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URLClassLoader$3;->url:Ljava/net/URL;

    .line 606
    iget-object v2, p0, Ljava/net/URLClassLoader$3;->url:Ljava/net/URL;

    if-nez v2, :cond_2b

    .line 596
    .end local v0    # "u":Ljava/net/URL;
    :cond_16
    new-instance v2, Ljava/net/URLClassLoader$3$1;

    iget-object v3, p0, Ljava/net/URLClassLoader$3;->val$e:Ljava/util/Enumeration;

    invoke-direct {v2, p0, v3}, Ljava/net/URLClassLoader$3$1;-><init>(Ljava/net/URLClassLoader$3;Ljava/util/Enumeration;)V

    .line 602
    iget-object v3, p0, Ljava/net/URLClassLoader$3;->this$0:Ljava/net/URLClassLoader;

    invoke-static {v3}, Ljava/net/URLClassLoader;->-get0(Ljava/net/URLClassLoader;)Ljava/security/AccessControlContext;

    move-result-object v3

    .line 595
    invoke-static {v2, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 603
    .restart local v0    # "u":Ljava/net/URL;
    if-nez v0, :cond_6

    .line 607
    :cond_2b
    iget-object v2, p0, Ljava/net/URLClassLoader$3;->url:Ljava/net/URL;

    if-eqz v2, :cond_30

    :goto_2f
    return v1

    :cond_30
    const/4 v1, 0x0

    goto :goto_2f
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 620
    invoke-direct {p0}, Ljava/net/URLClassLoader$3;->next()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 610
    invoke-virtual {p0}, Ljava/net/URLClassLoader$3;->nextElement()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/net/URL;
    .registers 3

    .prologue
    .line 611
    invoke-direct {p0}, Ljava/net/URLClassLoader$3;->next()Z

    move-result v1

    if-nez v1, :cond_c

    .line 612
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 614
    :cond_c
    iget-object v0, p0, Ljava/net/URLClassLoader$3;->url:Ljava/net/URL;

    .line 615
    .local v0, "u":Ljava/net/URL;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URLClassLoader$3;->url:Ljava/net/URL;

    .line 616
    return-object v0
.end method
