.class Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;
.super Ljava/lang/Object;
.source "SimpleAsynchronousFileChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->implLock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

.field final synthetic val$attachment:Ljava/lang/Object;

.field final synthetic val$fli:Lsun/nio/ch/FileLockImpl;

.field final synthetic val$handler:Ljava/nio/channels/CompletionHandler;

.field final synthetic val$position:J

.field final synthetic val$result:Lsun/nio/ch/PendingFuture;

.field final synthetic val$shared:Z

.field final synthetic val$size:J


# direct methods
.method constructor <init>(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;JJZLsun/nio/ch/FileLockImpl;Ljava/nio/channels/CompletionHandler;Lsun/nio/ch/PendingFuture;Ljava/lang/Object;)V
    .registers 11
    .param p1, "this$0"    # Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    iput-wide p2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$position:J

    iput-wide p4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$size:J

    iput-boolean p6, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$shared:Z

    iput-object p7, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$fli:Lsun/nio/ch/FileLockImpl;

    iput-object p8, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$handler:Ljava/nio/channels/CompletionHandler;

    iput-object p9, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$result:Lsun/nio/ch/PendingFuture;

    iput-object p10, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$attachment:Ljava/lang/Object;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "exc":Ljava/lang/Throwable;
    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-static {v1}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-get1(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v10

    .line 204
    .local v10, "ti":I
    :try_start_b
    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->begin()V

    .line 206
    :cond_10
    invoke-static {}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-get0()Lsun/nio/ch/FileDispatcher;

    move-result-object v1

    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    iget-object v2, v2, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    iget-wide v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$position:J

    iget-wide v6, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$size:J

    iget-boolean v8, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$shared:Z

    const/4 v3, 0x1

    invoke-virtual/range {v1 .. v8}, Lsun/nio/ch/FileDispatcher;->lock(Ljava/io/FileDescriptor;ZJJZ)I

    move-result v9

    .line 207
    .local v9, "n":I
    const/4 v1, 0x2

    if-ne v9, v1, :cond_2e

    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_10

    .line 208
    :cond_2e
    if-nez v9, :cond_3a

    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_70

    .line 209
    :cond_3a
    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_40} :catch_40
    .catchall {:try_start_b .. :try_end_40} :catchall_81

    .line 211
    .end local v9    # "n":I
    :catch_40
    move-exception v11

    .line 212
    .local v11, "x":Ljava/io/IOException;
    :try_start_41
    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$fli:Lsun/nio/ch/FileLockImpl;

    invoke-virtual {v1, v2}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V

    .line 213
    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_55

    .line 214
    new-instance v11, Ljava/nio/channels/AsynchronousCloseException;

    .end local v11    # "x":Ljava/io/IOException;
    invoke-direct {v11}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_55
    .catchall {:try_start_41 .. :try_end_55} :catchall_81

    .line 215
    .restart local v11    # "x":Ljava/io/IOException;
    :cond_55
    move-object v0, v11

    .line 217
    .local v0, "exc":Ljava/lang/Throwable;
    :try_start_56
    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_76

    .line 220
    .end local v0    # "exc":Ljava/lang/Throwable;
    .end local v11    # "x":Ljava/io/IOException;
    :goto_5b
    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-static {v1}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-get1(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;

    move-result-object v1

    invoke-virtual {v1, v10}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 222
    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$handler:Ljava/nio/channels/CompletionHandler;

    if-nez v1, :cond_88

    .line 223
    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$result:Lsun/nio/ch/PendingFuture;

    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$fli:Lsun/nio/ch/FileLockImpl;

    invoke-virtual {v1, v2, v0}, Lsun/nio/ch/PendingFuture;->setResult(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 227
    :goto_6f
    return-void

    .line 217
    .local v0, "exc":Ljava/lang/Throwable;
    .restart local v9    # "n":I
    :cond_70
    :try_start_70
    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V
    :try_end_75
    .catchall {:try_start_70 .. :try_end_75} :catchall_76

    goto :goto_5b

    .line 219
    .end local v0    # "exc":Ljava/lang/Throwable;
    .end local v9    # "n":I
    :catchall_76
    move-exception v1

    .line 220
    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-static {v2}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-get1(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;

    move-result-object v2

    invoke-virtual {v2, v10}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 219
    throw v1

    .line 216
    .restart local v0    # "exc":Ljava/lang/Throwable;
    :catchall_81
    move-exception v1

    .line 217
    :try_start_82
    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v2}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V

    .line 216
    throw v1
    :try_end_88
    .catchall {:try_start_82 .. :try_end_88} :catchall_76

    .line 225
    .end local v0    # "exc":Ljava/lang/Throwable;
    :cond_88
    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$handler:Ljava/nio/channels/CompletionHandler;

    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$attachment:Ljava/lang/Object;

    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$fli:Lsun/nio/ch/FileLockImpl;

    invoke-static {v1, v2, v3, v0}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_6f
.end method
