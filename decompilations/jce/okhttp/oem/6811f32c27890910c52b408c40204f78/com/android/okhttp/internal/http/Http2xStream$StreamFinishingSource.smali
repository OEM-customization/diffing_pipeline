.class Lcom/android/okhttp/internal/http/Http2xStream$StreamFinishingSource;
.super Lcom/android/okhttp/okio/ForwardingSource;
.source "Http2xStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/Http2xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFinishingSource"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/http/Http2xStream;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/internal/http/Http2xStream;Lcom/android/okhttp/okio/Source;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/Http2xStream;
    .param p2, "delegate"    # Lcom/android/okhttp/okio/Source;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http2xStream$StreamFinishingSource;->this$0:Lcom/android/okhttp/internal/http/Http2xStream;

    .line 288
    invoke-direct {p0, p2}, Lcom/android/okhttp/okio/ForwardingSource;-><init>(Lcom/android/okhttp/okio/Source;)V

    .line 289
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream$StreamFinishingSource;->this$0:Lcom/android/okhttp/internal/http/Http2xStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http2xStream;->-get0(Lcom/android/okhttp/internal/http/Http2xStream;)Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http2xStream$StreamFinishingSource;->this$0:Lcom/android/okhttp/internal/http/Http2xStream;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->streamFinished(Lcom/android/okhttp/internal/http/HttpStream;)V

    .line 293
    invoke-super {p0}, Lcom/android/okhttp/okio/ForwardingSource;->close()V

    .line 294
    return-void
.end method
