.class Lsun/nio/ch/AsynchronousChannelGroupImpl$4;
.super Ljava/lang/Object;
.source "AsynchronousChannelGroupImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/AsynchronousChannelGroupImpl;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/nio/ch/AsynchronousChannelGroupImpl;

.field final synthetic blacklist val$acc:Ljava/security/AccessControlContext;

.field final synthetic blacklist val$delegate:Ljava/lang/Runnable;


# direct methods
.method constructor blacklist <init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;Ljava/lang/Runnable;Ljava/security/AccessControlContext;)V
    .registers 4
    .param p1, "this$0"    # Lsun/nio/ch/AsynchronousChannelGroupImpl;

    .line 323
    iput-object p1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$4;->this$0:Lsun/nio/ch/AsynchronousChannelGroupImpl;

    iput-object p2, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$4;->val$delegate:Ljava/lang/Runnable;

    iput-object p3, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$4;->val$acc:Ljava/security/AccessControlContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .registers 3

    .line 326
    new-instance v0, Lsun/nio/ch/AsynchronousChannelGroupImpl$4$1;

    invoke-direct {v0, p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl$4$1;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl$4;)V

    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$4;->val$acc:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 333
    return-void
.end method
