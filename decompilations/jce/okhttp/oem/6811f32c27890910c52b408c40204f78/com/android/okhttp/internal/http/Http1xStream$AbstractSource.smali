.class abstract Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;
.super Ljava/lang/Object;
.source "Http1xStream.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/Http1xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractSource"
.end annotation


# instance fields
.field protected closed:Z

.field final synthetic this$0:Lcom/android/okhttp/internal/http/Http1xStream;

.field protected final timeout:Lcom/android/okhttp/okio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/internal/http/Http1xStream;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/Http1xStream;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance v0, Lcom/android/okhttp/okio/ForwardingTimeout;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v1}, Lcom/android/okhttp/internal/http/Http1xStream;->-get1(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/okhttp/okio/ForwardingTimeout;-><init>(Lcom/android/okhttp/okio/Timeout;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    .line 343
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/Http1xStream;
    .param p2, "-this1"    # Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;)V

    return-void
.end method


# virtual methods
.method protected final endOfInput()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->-get2(Lcom/android/okhttp/internal/http/Http1xStream;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_29

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v2}, Lcom/android/okhttp/internal/http/Http1xStream;->-get2(Lcom/android/okhttp/internal/http/Http1xStream;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_29
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/Http1xStream;->-wrap0(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/okio/ForwardingTimeout;)V

    .line 360
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/Http1xStream;->-set0(Lcom/android/okhttp/internal/http/Http1xStream;I)I

    .line 361
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->-get3(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 362
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->-get3(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->streamFinished(Lcom/android/okhttp/internal/http/HttpStream;)V

    .line 364
    :cond_49
    return-void
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    return-object v0
.end method

.method protected final unexpectedEndOfInput()V
    .registers 3

    .prologue
    const/4 v1, 0x6

    .line 367
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->-get2(Lcom/android/okhttp/internal/http/Http1xStream;)I

    move-result v0

    if-ne v0, v1, :cond_a

    return-void

    .line 369
    :cond_a
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/Http1xStream;->-set0(Lcom/android/okhttp/internal/http/Http1xStream;I)I

    .line 370
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->-get3(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 371
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->-get3(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/StreamAllocation;->noNewStreams()V

    .line 372
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->-get3(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/internal/http/StreamAllocation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/StreamAllocation;->streamFinished(Lcom/android/okhttp/internal/http/HttpStream;)V

    .line 374
    :cond_2b
    return-void
.end method
