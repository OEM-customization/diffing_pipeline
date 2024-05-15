.class Lcom/android/okhttp/internal/framed/FramedConnection$4;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/FramedConnection;->pushRequestLater(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

.field final synthetic val$requestHeaders:Ljava/util/List;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # [Ljava/lang/Object;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iput p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->val$streamId:I

    iput-object p5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->val$requestHeaders:Ljava/util/List;

    .line 843
    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 6

    .prologue
    .line 845
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get6(Lcom/android/okhttp/internal/framed/FramedConnection;)Lcom/android/okhttp/internal/framed/PushObserver;

    move-result-object v2

    iget v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->val$streamId:I

    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->val$requestHeaders:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Lcom/android/okhttp/internal/framed/PushObserver;->onRequest(ILjava/util/List;)Z

    move-result v0

    .line 847
    .local v0, "cancel":Z
    if-eqz v0, :cond_2e

    .line 848
    :try_start_10
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-object v2, v2, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    iget v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->val$streamId:I

    sget-object v4, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-interface {v2, v3, v4}, Lcom/android/okhttp/internal/framed/FrameWriter;->rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 849
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    monitor-enter v3
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1e} :catch_32

    .line 850
    :try_start_1e
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get0(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v2

    iget v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$4;->val$streamId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2f

    :try_start_2d
    monitor-exit v3

    .line 855
    :cond_2e
    :goto_2e
    return-void

    .line 849
    :catchall_2f
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_32

    .line 853
    :catch_32
    move-exception v1

    .local v1, "ignored":Ljava/io/IOException;
    goto :goto_2e
.end method
