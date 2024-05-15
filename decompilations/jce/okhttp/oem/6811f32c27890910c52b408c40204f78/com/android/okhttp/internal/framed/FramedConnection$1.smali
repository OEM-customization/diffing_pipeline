.class Lcom/android/okhttp/internal/framed/FramedConnection$1;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V
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
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$1;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iput p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$1;->val$streamId:I

    iput-object p5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$1;->val$errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 349
    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 5

    .prologue
    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$1;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$1;->val$streamId:I

    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$1;->val$errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2, v3}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynReset(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 355
    :goto_9
    return-void

    .line 353
    :catch_a
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_9
.end method
