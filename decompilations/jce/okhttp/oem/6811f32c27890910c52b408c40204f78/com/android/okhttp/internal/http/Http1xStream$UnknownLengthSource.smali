.class Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;
.super Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;
.source "Http1xStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/Http1xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnknownLengthSource"
.end annotation


# instance fields
.field private inputExhausted:Z

.field final synthetic this$0:Lcom/android/okhttp/internal/http/Http1xStream;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/internal/http/Http1xStream;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/Http1xStream;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/Http1xStream;
    .param p2, "-this1"    # Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 500
    :cond_5
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;->inputExhausted:Z

    if-nez v0, :cond_c

    .line 501
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;->unexpectedEndOfInput()V

    .line 503
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;->closed:Z

    .line 504
    return-void
.end method

.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 10
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 485
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_22

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "byteCount < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 486
    :cond_22
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;->closed:Z

    if-eqz v2, :cond_2f

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 487
    :cond_2f
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;->inputExhausted:Z

    if-eqz v2, :cond_34

    return-wide v4

    .line 489
    :cond_34
    iget-object v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-static {v2}, Lcom/android/okhttp/internal/http/Http1xStream;->-get1(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/okhttp/okio/BufferedSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    .line 490
    .local v0, "read":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_49

    .line 491
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;->inputExhausted:Z

    .line 492
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;->endOfInput()V

    .line 493
    return-wide v4

    .line 495
    :cond_49
    return-wide v0
.end method
