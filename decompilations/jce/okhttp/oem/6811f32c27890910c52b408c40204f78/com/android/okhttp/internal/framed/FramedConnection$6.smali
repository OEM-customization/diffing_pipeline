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
.field final synthetic this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

.field final synthetic val$buffer:Lcom/android/okhttp/okio/Buffer;

.field final synthetic val$byteCount:I

.field final synthetic val$inFinished:Z

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/okio/Buffer;IZ)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # [Ljava/lang/Object;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iput p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$streamId:I

    iput-object p5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$buffer:Lcom/android/okhttp/okio/Buffer;

    iput p6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$byteCount:I

    iput-boolean p7, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$inFinished:Z

    .line 887
    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 8

    .prologue
    .line 890
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get6(Lcom/android/okhttp/internal/framed/FramedConnection;)Lcom/android/okhttp/internal/framed/PushObserver;

    move-result-object v2

    iget v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$streamId:I

    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$buffer:Lcom/android/okhttp/okio/Buffer;

    iget v5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$byteCount:I

    iget-boolean v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$inFinished:Z

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/okhttp/internal/framed/PushObserver;->onData(ILcom/android/okhttp/okio/BufferedSource;IZ)Z

    move-result v0

    .line 891
    .local v0, "cancel":Z
    if-eqz v0, :cond_1f

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-object v2, v2, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    iget v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$streamId:I

    sget-object v4, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-interface {v2, v3, v4}, Lcom/android/okhttp/internal/framed/FrameWriter;->rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 892
    :cond_1f
    if-nez v0, :cond_25

    iget-boolean v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$inFinished:Z

    if-eqz v2, :cond_38

    .line 893
    :cond_25
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    monitor-enter v3
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_3c

    .line 894
    :try_start_28
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get0(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v2

    iget v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$6;->val$streamId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_39

    :try_start_37
    monitor-exit v3

    .line 899
    .end local v0    # "cancel":Z
    :cond_38
    :goto_38
    return-void

    .line 893
    .restart local v0    # "cancel":Z
    :catchall_39
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3c} :catch_3c

    .line 897
    .end local v0    # "cancel":Z
    :catch_3c
    move-exception v1

    .local v1, "ignored":Ljava/io/IOException;
    goto :goto_38
.end method
