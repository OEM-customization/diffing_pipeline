.class Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

.field final synthetic val$newStream:Lcom/android/okhttp/internal/framed/FramedStream;


# direct methods
.method varargs constructor <init>(Lcom/android/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/android/okhttp/internal/framed/FramedStream;)V
    .registers 5
    .param p1, "this$1"    # Lcom/android/okhttp/internal/framed/FramedConnection$Reader;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # [Ljava/lang/Object;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;->this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    iput-object p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;->val$newStream:Lcom/android/okhttp/internal/framed/FramedStream;

    .line 672
    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 7

    .prologue
    .line 675
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;->this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v2, v2, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get4(Lcom/android/okhttp/internal/framed/FramedConnection;)Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;->val$newStream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/framed/FramedConnection$Listener;->onStream(Lcom/android/okhttp/internal/framed/FramedStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 683
    :goto_d
    return-void

    .line 676
    :catch_e
    move-exception v0

    .line 677
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/okhttp/internal/Internal;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FramedConnection.Listener failure for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;->this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v5, v5, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v5}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get2(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 679
    :try_start_32
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;->val$newStream:Lcom/android/okhttp/internal/framed/FramedStream;

    sget-object v3, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/framed/FramedStream;->close(Lcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_39} :catch_3a

    goto :goto_d

    .line 680
    :catch_3a
    move-exception v1

    .local v1, "ignored":Ljava/io/IOException;
    goto :goto_d
.end method
