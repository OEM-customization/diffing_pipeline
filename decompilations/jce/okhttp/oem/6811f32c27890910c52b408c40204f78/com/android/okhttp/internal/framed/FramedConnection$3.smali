.class Lcom/android/okhttp/internal/framed/FramedConnection$3;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/FramedConnection;->writePingLater(ZIILcom/android/okhttp/internal/framed/Ping;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

.field final synthetic val$payload1:I

.field final synthetic val$payload2:I

.field final synthetic val$ping:Lcom/android/okhttp/internal/framed/Ping;

.field final synthetic val$reply:Z


# direct methods
.method varargs constructor <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/android/okhttp/internal/framed/Ping;)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # [Ljava/lang/Object;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$3;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iput-boolean p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$3;->val$reply:Z

    iput p5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$3;->val$payload1:I

    iput p6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$3;->val$payload2:I

    iput-object p7, p0, Lcom/android/okhttp/internal/framed/FramedConnection$3;->val$ping:Lcom/android/okhttp/internal/framed/Ping;

    .line 396
    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 7

    .prologue
    .line 400
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$3;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-boolean v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$3;->val$reply:Z

    iget v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$3;->val$payload1:I

    iget v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$3;->val$payload2:I

    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$3;->val$ping:Lcom/android/okhttp/internal/framed/Ping;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap8(Lcom/android/okhttp/internal/framed/FramedConnection;ZIILcom/android/okhttp/internal/framed/Ping;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 403
    :goto_d
    return-void

    .line 401
    :catch_e
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_d
.end method