.class Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;
.super Ljava/lang/Object;
.source "SimpleAsynchronousFileChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->implRead(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

.field final synthetic val$attachment:Ljava/lang/Object;

.field final synthetic val$dst:Ljava/nio/ByteBuffer;

.field final synthetic val$handler:Ljava/nio/channels/CompletionHandler;

.field final synthetic val$position:J

.field final synthetic val$result:Lsun/nio/ch/PendingFuture;


# direct methods
.method constructor <init>(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;Ljava/nio/ByteBuffer;JLjava/nio/channels/CompletionHandler;Lsun/nio/ch/PendingFuture;Ljava/lang/Object;)V
    .registers 9
    .param p1, "this$0"    # Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    iput-object p2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$dst:Ljava/nio/ByteBuffer;

    iput-wide p3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$position:J

    iput-object p5, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$handler:Ljava/nio/channels/CompletionHandler;

    iput-object p6, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$result:Lsun/nio/ch/PendingFuture;

    iput-object p7, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$attachment:Ljava/lang/Object;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 313
    const/4 v1, 0x0

    .line 314
    .local v1, "n":I
    const/4 v0, 0x0

    .line 316
    .local v0, "exc":Ljava/lang/Throwable;
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-static {v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-get1(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;

    move-result-object v4

    invoke-virtual {v4}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    .line 318
    .local v2, "ti":I
    :try_start_c
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->begin()V

    .line 320
    :cond_11
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    iget-object v4, v4, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    iget-object v5, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$dst:Ljava/nio/ByteBuffer;

    iget-wide v6, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$position:J

    invoke-static {}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-get0()Lsun/nio/ch/FileDispatcher;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v1

    .line 321
    const/4 v4, -0x3

    if-ne v1, v4, :cond_2c

    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_11

    .line 322
    :cond_2c
    if-gez v1, :cond_69

    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_69

    .line 323
    new-instance v4, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v4}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v4
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_3e} :catch_3e
    .catchall {:try_start_c .. :try_end_3e} :catchall_78

    .line 324
    :catch_3e
    move-exception v3

    .line 325
    .local v3, "x":Ljava/io/IOException;
    :try_start_3f
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_4c

    .line 326
    new-instance v3, Ljava/nio/channels/AsynchronousCloseException;

    .end local v3    # "x":Ljava/io/IOException;
    invoke-direct {v3}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_4c
    .catchall {:try_start_3f .. :try_end_4c} :catchall_78

    .line 327
    .restart local v3    # "x":Ljava/io/IOException;
    :cond_4c
    move-object v0, v3

    .line 329
    .local v0, "exc":Ljava/lang/Throwable;
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V

    .line 330
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-static {v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-get1(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;

    move-result-object v4

    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 332
    .end local v0    # "exc":Ljava/lang/Throwable;
    .end local v3    # "x":Ljava/io/IOException;
    :goto_5b
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$handler:Ljava/nio/channels/CompletionHandler;

    if-nez v4, :cond_88

    .line 333
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$result:Lsun/nio/ch/PendingFuture;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lsun/nio/ch/PendingFuture;->setResult(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 337
    :goto_68
    return-void

    .line 329
    .local v0, "exc":Ljava/lang/Throwable;
    :cond_69
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V

    .line 330
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-static {v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-get1(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;

    move-result-object v4

    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    goto :goto_5b

    .line 328
    :catchall_78
    move-exception v4

    .line 329
    iget-object v5, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v5}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V

    .line 330
    iget-object v5, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-static {v5}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-get1(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;

    move-result-object v5

    invoke-virtual {v5, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 328
    throw v4

    .line 335
    .end local v0    # "exc":Ljava/lang/Throwable;
    :cond_88
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$handler:Ljava/nio/channels/CompletionHandler;

    iget-object v5, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$attachment:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6, v0}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_68
.end method
