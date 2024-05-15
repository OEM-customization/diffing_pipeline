.class Lsun/nio/ch/AsynchronousChannelGroupImpl$4$1;
.super Ljava/lang/Object;
.source "AsynchronousChannelGroupImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/AsynchronousChannelGroupImpl$4;->run()V
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
.field final synthetic this$1:Lsun/nio/ch/AsynchronousChannelGroupImpl$4;

.field final synthetic val$delegate:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lsun/nio/ch/AsynchronousChannelGroupImpl$4;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$1"    # Lsun/nio/ch/AsynchronousChannelGroupImpl$4;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$4$1;->this$1:Lsun/nio/ch/AsynchronousChannelGroupImpl$4;

    iput-object p2, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$4$1;->val$delegate:Ljava/lang/Runnable;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 327
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl$4$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$4$1;->val$delegate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 330
    const/4 v0, 0x0

    return-object v0
.end method
