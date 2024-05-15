.class Ljava/util/ResourceBundle$Control$1;
.super Ljava/lang/Object;
.source "ResourceBundle.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ResourceBundle$Control;->newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/ResourceBundle$Control;

.field final synthetic blacklist val$classLoader:Ljava/lang/ClassLoader;

.field final synthetic blacklist val$reloadFlag:Z

.field final synthetic blacklist val$resourceName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/util/ResourceBundle$Control;ZLjava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Ljava/util/ResourceBundle$Control;

    .line 2659
    iput-object p1, p0, Ljava/util/ResourceBundle$Control$1;->this$0:Ljava/util/ResourceBundle$Control;

    iput-boolean p2, p0, Ljava/util/ResourceBundle$Control$1;->val$reloadFlag:Z

    iput-object p3, p0, Ljava/util/ResourceBundle$Control$1;->val$classLoader:Ljava/lang/ClassLoader;

    iput-object p4, p0, Ljava/util/ResourceBundle$Control$1;->val$resourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist run()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2661
    const/4 v0, 0x0

    .line 2662
    .local v0, "is":Ljava/io/InputStream;
    iget-boolean v1, p0, Ljava/util/ResourceBundle$Control$1;->val$reloadFlag:Z

    if-eqz v1, :cond_1e

    .line 2663
    iget-object v1, p0, Ljava/util/ResourceBundle$Control$1;->val$classLoader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Ljava/util/ResourceBundle$Control$1;->val$resourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 2664
    .local v1, "url":Ljava/net/URL;
    if-eqz v1, :cond_1d

    .line 2665
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 2666
    .local v2, "connection":Ljava/net/URLConnection;
    if-eqz v2, :cond_1d

    .line 2669
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 2670
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 2673
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "connection":Ljava/net/URLConnection;
    :cond_1d
    goto :goto_26

    .line 2674
    :cond_1e
    iget-object v1, p0, Ljava/util/ResourceBundle$Control$1;->val$classLoader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Ljava/util/ResourceBundle$Control$1;->val$resourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 2676
    :goto_26
    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2659
    invoke-virtual {p0}, Ljava/util/ResourceBundle$Control$1;->run()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
