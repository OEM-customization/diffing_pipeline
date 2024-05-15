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
.field final synthetic this$0:Lsun/nio/ch/AsynchronousChannelGroupImpl;

.field final synthetic val$acc:Ljava/security/AccessControlContext;

.field final synthetic val$delegate:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;Ljava/security/AccessControlContext;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "this$0"    # Lsun/nio/ch/AsynchronousChannelGroupImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$4;->this$0:Lsun/nio/ch/AsynchronousChannelGroupImpl;

    iput-object p2, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$4;->val$acc:Ljava/security/AccessControlContext;

    iput-object p3, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$4;->val$delegate:Ljava/lang/Runnable;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 326
    new-instance v0, Lsun/nio/ch/AsynchronousChannelGroupImpl$4$1;

    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$4;->val$delegate:Ljava/lang/Runnable;

    invoke-direct {v0, p0, v1}, Lsun/nio/ch/AsynchronousChannelGroupImpl$4$1;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl$4;Ljava/lang/Runnable;)V

    .line 332
    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$4;->val$acc:Ljava/security/AccessControlContext;

    .line 326
    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 333
    return-void
.end method
