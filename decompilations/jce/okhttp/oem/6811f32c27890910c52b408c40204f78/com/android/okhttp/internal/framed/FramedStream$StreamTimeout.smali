.class Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
.super Lcom/android/okhttp/okio/AsyncTimeout;
.source "FramedStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/FramedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamTimeout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/framed/FramedStream;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/framed/FramedStream;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedStream;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-direct {p0}, Lcom/android/okhttp/okio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method public exitAndThrowIfTimedOut()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exit()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 614
    :cond_c
    return-void
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4
    .param p1, "cause"    # Ljava/io/IOException;

    .prologue
    .line 605
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string/jumbo v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 606
    .local v0, "socketTimeoutException":Ljava/net/SocketTimeoutException;
    if-eqz p1, :cond_d

    .line 607
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 609
    :cond_d
    return-object v0
.end method

.method protected timedOut()V
    .registers 3

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    sget-object v1, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/framed/FramedStream;->closeLater(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 602
    return-void
.end method
