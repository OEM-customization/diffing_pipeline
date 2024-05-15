.class Lcom/android/okhttp/internal/framed/FramedConnection$2;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/FramedConnection;->writeWindowUpdateLater(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

.field final synthetic val$streamId:I

.field final synthetic val$unacknowledgedBytesRead:J


# direct methods
.method varargs constructor <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # [Ljava/lang/Object;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$2;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iput p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$2;->val$streamId:I

    iput-wide p5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$2;->val$unacknowledgedBytesRead:J

    .line 364
    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 7

    .prologue
    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$2;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-object v1, v1, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    iget v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$2;->val$streamId:I

    iget-wide v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$2;->val$unacknowledgedBytesRead:J

    invoke-interface {v1, v2, v4, v5}, Lcom/android/okhttp/internal/framed/FrameWriter;->windowUpdate(IJ)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 370
    :goto_b
    return-void

    .line 368
    :catch_c
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_b
.end method
