.class final Lcom/android/okhttp/internal/framed/FramedConnection$Listener$1;
.super Lcom/android/okhttp/internal/framed/FramedConnection$Listener;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/FramedConnection$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 916
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/FramedConnection$Listener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onStream(Lcom/android/okhttp/internal/framed/FramedStream;)V
    .registers 3
    .param p1, "stream"    # Lcom/android/okhttp/internal/framed/FramedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 918
    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/framed/FramedStream;->close(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 919
    return-void
.end method
