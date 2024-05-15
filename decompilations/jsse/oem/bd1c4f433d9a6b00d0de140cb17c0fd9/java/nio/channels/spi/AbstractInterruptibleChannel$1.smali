.class Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;
.super Ljava/lang/Object;
.source "AbstractInterruptibleChannel.java"

# interfaces
.implements Lsun/nio/ch/Interruptible;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/spi/AbstractInterruptibleChannel;->begin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)V
    .registers 2
    .param p1, "this$0"    # Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public interrupt(Ljava/lang/Thread;)V
    .registers 6
    .param p1, "target"    # Ljava/lang/Thread;

    .prologue
    .line 160
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    invoke-static {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->-get0(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 161
    :try_start_7
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    invoke-static {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->-get1(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_23

    move-result v1

    if-nez v1, :cond_11

    monitor-exit v2

    .line 162
    return-void

    .line 163
    :cond_11
    :try_start_11
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->-set1(Ljava/nio/channels/spi/AbstractInterruptibleChannel;Z)Z

    .line 164
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    invoke-static {v1, p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->-set0(Ljava/nio/channels/spi/AbstractInterruptibleChannel;Ljava/lang/Thread;)Ljava/lang/Thread;
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_23

    .line 166
    :try_start_1c
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->implCloseChannel()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_26
    .catchall {:try_start_1c .. :try_end_21} :catchall_23

    :goto_21
    monitor-exit v2

    .line 169
    return-void

    .line 160
    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1

    .line 167
    :catch_26
    move-exception v0

    .local v0, "x":Ljava/io/IOException;
    goto :goto_21
.end method
