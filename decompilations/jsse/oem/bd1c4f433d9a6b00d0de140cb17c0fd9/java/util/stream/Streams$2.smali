.class final Ljava/util/stream/Streams$2;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/Streams;->composedClose(Ljava/util/stream/BaseStream;Ljava/util/stream/BaseStream;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Ljava/util/stream/BaseStream;

.field final synthetic val$b:Ljava/util/stream/BaseStream;


# direct methods
.method constructor <init>(Ljava/util/stream/BaseStream;Ljava/util/stream/BaseStream;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Ljava/util/stream/Streams$2;->val$a:Ljava/util/stream/BaseStream;

    iput-object p2, p0, Ljava/util/stream/Streams$2;->val$b:Ljava/util/stream/BaseStream;

    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 879
    :try_start_0
    iget-object v3, p0, Ljava/util/stream/Streams$2;->val$a:Ljava/util/stream/BaseStream;

    invoke-interface {v3}, Ljava/util/stream/BaseStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_b

    .line 892
    iget-object v3, p0, Ljava/util/stream/Streams$2;->val$b:Ljava/util/stream/BaseStream;

    invoke-interface {v3}, Ljava/util/stream/BaseStream;->close()V

    .line 893
    return-void

    .line 881
    :catch_b
    move-exception v0

    .line 883
    .local v0, "e1":Ljava/lang/Throwable;
    :try_start_c
    iget-object v3, p0, Ljava/util/stream/Streams$2;->val$b:Ljava/util/stream/BaseStream;

    invoke-interface {v3}, Ljava/util/stream/BaseStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_11} :catch_12

    .line 890
    :goto_11
    throw v0

    .line 885
    :catch_12
    move-exception v1

    .line 887
    .local v1, "e2":Ljava/lang/Throwable;
    :try_start_13
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_11

    .line 888
    :catch_17
    move-exception v2

    .local v2, "ignore":Ljava/lang/Throwable;
    goto :goto_11
.end method
