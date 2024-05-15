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
.field final synthetic this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

.field final synthetic val$inFinished:Z

.field final synthetic val$requestHeaders:Ljava/util/List;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # [Ljava/lang/Object;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iput p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->val$streamId:I

    iput-object p5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->val$requestHeaders:Ljava/util/List;

    iput-boolean p6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->val$inFinished:Z

    .line 861
    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 7

    .prologue
    .line 863
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get6(Lcom/android/okhttp/internal/framed/FramedConnection;)Lcom/android/okhttp/internal/framed/PushObserver;

    move-result-object v2

    iget v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->val$streamId:I

    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->val$requestHeaders:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->val$inFinished:Z

    invoke-interface {v2, v3, v4, v5}, Lcom/android/okhttp/internal/framed/PushObserver;->onHeaders(ILjava/util/List;Z)Z

    move-result v0

    .line 865
    .local v0, "cancel":Z
    if-eqz v0, :cond_1d

    :try_start_12
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-object v2, v2, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    iget v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->val$streamId:I

    sget-object v4, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-interface {v2, v3, v4}, Lcom/android/okhttp/internal/framed/FrameWriter;->rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 866
    :cond_1d
    if-nez v0, :cond_23

    iget-boolean v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->val$inFinished:Z

    if-eqz v2, :cond_36

    .line 867
    :cond_23
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    monitor-enter v3
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_26} :catch_3a

    .line 868
    :try_start_26
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get0(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v2

    iget v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$5;->val$streamId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_37

    :try_start_35
    monitor-exit v3

    .line 873
    :cond_36
    :goto_36
    return-void

    .line 867
    :catchall_37
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_3a

    .line 871
    :catch_3a
    move-exception v1

    .local v1, "ignored":Ljava/io/IOException;
    goto :goto_36
.end method
