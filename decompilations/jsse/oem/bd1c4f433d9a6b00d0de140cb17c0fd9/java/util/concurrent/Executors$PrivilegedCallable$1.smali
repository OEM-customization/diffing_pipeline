.class Ljava/util/concurrent/Executors$PrivilegedCallable$1;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/concurrent/Executors$PrivilegedCallable;->call()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/concurrent/Executors$PrivilegedCallable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executors$PrivilegedCallable;)V
    .registers 2

    .prologue
    .line 1
    .local p1, "this$1":Ljava/util/concurrent/Executors$PrivilegedCallable;, "Ljava/util/concurrent/Executors$PrivilegedCallable<TT;>;"
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedCallable$1;->this$1:Ljava/util/concurrent/Executors$PrivilegedCallable;

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 479
    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedCallable$1;->this$1:Ljava/util/concurrent/Executors$PrivilegedCallable;

    iget-object v0, v0, Ljava/util/concurrent/Executors$PrivilegedCallable;->task:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
