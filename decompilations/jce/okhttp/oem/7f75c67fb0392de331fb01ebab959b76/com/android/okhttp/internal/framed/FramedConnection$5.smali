.class Lcom/android/okhttp/internal/framed/FramedConnection$5;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/FramedConnection;->pushHeadersLater(ILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

.field final synthetic blacklist val$inFinished:Z

.field final synthetic blacklist val$requestHeaders:Ljava/util/List;

.field final synthetic blacklist val$streamId:I


# direct methods
.method varargs constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 866
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iput p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->val$streamId:I

    iput-object p5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->val$requestHeaders:Ljava/util/List;

    iput-boolean p6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->val$inFinished:Z

    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist execute()V
    .registers 5

    .line 868
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2700(Lcom/android/okhttp/internal/framed/FramedConnection;)Lcom/android/okhttp/internal/framed/PushObserver;

    move-result-object v0

    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->val$streamId:I

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->val$requestHeaders:Ljava/util/List;

    iget-boolean v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->val$inFinished:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/android/okhttp/internal/framed/PushObserver;->onHeaders(ILjava/util/List;Z)Z

    move-result v0

    .line 870
    .local v0, "cancel":Z
    if-eqz v0, :cond_20

    :try_start_12
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-object v1, v1, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    iget v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->val$streamId:I

    sget-object v3, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/internal/framed/FrameWriter;->rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    goto :goto_20

    .line 876
    :catch_1e
    move-exception v1

    goto :goto_3d

    .line 871
    :cond_20
    :goto_20
    if-nez v0, :cond_26

    iget-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->val$inFinished:Z

    if-eqz v1, :cond_39

    .line 872
    :cond_26
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    monitor-enter v1
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_29} :catch_1e

    .line 873
    :try_start_29
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2800(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v2

    iget v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->val$streamId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 874
    monitor-exit v1

    .line 877
    :cond_39
    goto :goto_3d

    .line 874
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_3a

    .end local v0    # "cancel":Z
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection$5;
    :try_start_3c
    throw v2
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3d} :catch_1e

    .line 878
    .restart local v0    # "cancel":Z
    .restart local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection$5;
    :goto_3d
    return-void
.end method
