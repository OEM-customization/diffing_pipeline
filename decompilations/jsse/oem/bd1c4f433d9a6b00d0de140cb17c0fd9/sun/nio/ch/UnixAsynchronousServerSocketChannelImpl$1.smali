.class Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl$1;
.super Ljava/lang/Object;
.source "UnixAsynchronousServerSocketChannelImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->finishAccept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;Ljava/security/AccessControlContext;)Ljava/nio/channels/AsynchronousSocketChannel;
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
.field final synthetic this$0:Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;

.field final synthetic val$remote:Ljava/net/InetSocketAddress;


# direct methods
.method constructor <init>(Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;Ljava/net/InetSocketAddress;)V
    .registers 3
    .param p1, "this$0"    # Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;

    iput-object p2, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl$1;->val$remote:Ljava/net/InetSocketAddress;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 246
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 247
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1a

    .line 248
    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl$1;->val$remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 249
    iget-object v2, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl$1;->val$remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 248
    invoke-virtual {v0, v1, v2}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V

    .line 251
    :cond_1a
    return-object v3
.end method
