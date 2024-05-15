.class final Ljava/util/stream/Streams$1;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/Streams;->composeWithExceptions(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Ljava/lang/Runnable;

.field final synthetic val$b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Ljava/util/stream/Streams$1;->val$a:Ljava/lang/Runnable;

    iput-object p2, p0, Ljava/util/stream/Streams$1;->val$b:Ljava/lang/Runnable;

    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 850
    :try_start_0
    iget-object v3, p0, Ljava/util/stream/Streams$1;->val$a:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_b

    .line 863
    iget-object v3, p0, Ljava/util/stream/Streams$1;->val$b:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 864
    return-void

    .line 852
    :catch_b
    move-exception v0

    .line 854
    .local v0, "e1":Ljava/lang/Throwable;
    :try_start_c
    iget-object v3, p0, Ljava/util/stream/Streams$1;->val$b:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_11} :catch_12

    .line 861
    :goto_11
    throw v0

    .line 856
    :catch_12
    move-exception v1

    .line 858
    .local v1, "e2":Ljava/lang/Throwable;
    :try_start_13
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_11

    .line 859
    :catch_17
    move-exception v2

    .local v2, "ignore":Ljava/lang/Throwable;
    goto :goto_11
.end method
