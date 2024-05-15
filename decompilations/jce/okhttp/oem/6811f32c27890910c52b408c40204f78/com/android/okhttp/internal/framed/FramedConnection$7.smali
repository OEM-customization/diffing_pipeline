.class Lcom/android/okhttp/internal/framed/FramedConnection$7;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/FramedConnection;->pushResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

.field final synthetic val$errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # [Ljava/lang/Object;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iput p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->val$streamId:I

    iput-object p5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->val$errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 904
    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 4

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get6(Lcom/android/okhttp/internal/framed/FramedConnection;)Lcom/android/okhttp/internal/framed/PushObserver;

    move-result-object v0

    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->val$streamId:I

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->val$errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/internal/framed/PushObserver;->onReset(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 907
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    monitor-enter v1

    .line 908
    :try_start_10
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get0(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$7;->val$streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_21

    monitor-exit v1

    .line 910
    return-void

    .line 907
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method
