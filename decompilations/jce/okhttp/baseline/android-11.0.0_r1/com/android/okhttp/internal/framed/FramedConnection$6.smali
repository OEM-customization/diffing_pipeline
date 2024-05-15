.class Lcom/android/okhttp/internal/framed/FramedConnection$6;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/FramedConnection;->pushDataLater(ILcom/android/okhttp/okio/BufferedSource;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

.field final synthetic blacklist val$buffer:Lcom/android/okhttp/okio/Buffer;

.field final synthetic blacklist val$byteCount:I

.field final synthetic blacklist val$inFinished:Z

.field final synthetic blacklist val$streamId:I


# direct methods
.method varargs constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/okio/Buffer;IZ)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 892
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iput p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$streamId:I

    iput-object p5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$buffer:Lcom/android/okhttp/okio/Buffer;

    iput p6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$byteCount:I

    iput-boolean p7, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$inFinished:Z

    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist execute()V
    .registers 6

    .line 895
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2700(Lcom/android/okhttp/internal/framed/FramedConnection;)Lcom/android/okhttp/internal/framed/PushObserver;

    move-result-object v0

    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$streamId:I

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$buffer:Lcom/android/okhttp/okio/Buffer;

    iget v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$byteCount:I

    iget-boolean v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$inFinished:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/okhttp/internal/framed/PushObserver;->onData(ILcom/android/okhttp/okio/BufferedSource;IZ)Z

    move-result v0

    .line 896
    .local v0, "cancel":Z
    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-object v1, v1, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    iget v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$streamId:I

    sget-object v3, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/internal/framed/FrameWriter;->rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 897
    :cond_1f
    if-nez v0, :cond_25

    iget-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$inFinished:Z

    if-eqz v1, :cond_38

    .line 898
    :cond_25
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    monitor-enter v1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_3c

    .line 899
    :try_start_28
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2800(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v2

    iget v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$streamId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 900
    monitor-exit v1

    .line 903
    .end local v0    # "cancel":Z
    :cond_38
    goto :goto_3d

    .line 900
    .restart local v0    # "cancel":Z
    :catchall_39
    move-exception v2

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_39

    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection$6;
    :try_start_3b
    throw v2
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3c} :catch_3c

    .line 902
    .end local v0    # "cancel":Z
    .restart local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection$6;
    :catch_3c
    move-exception v0

    .line 904
    :goto_3d
    return-void
.end method
