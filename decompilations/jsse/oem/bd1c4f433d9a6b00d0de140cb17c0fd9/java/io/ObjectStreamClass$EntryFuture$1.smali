.class Ljava/io/ObjectStreamClass$EntryFuture$1;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectStreamClass$EntryFuture;->get()Ljava/lang/Object;
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
.field final synthetic this$1:Ljava/io/ObjectStreamClass$EntryFuture;


# direct methods
.method constructor <init>(Ljava/io/ObjectStreamClass$EntryFuture;)V
    .registers 2
    .param p1, "this$1"    # Ljava/io/ObjectStreamClass$EntryFuture;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/io/ObjectStreamClass$EntryFuture$1;->this$1:Ljava/io/ObjectStreamClass$EntryFuture;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 423
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$EntryFuture$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 2

    .prologue
    .line 424
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 425
    const/4 v0, 0x0

    return-object v0
.end method
