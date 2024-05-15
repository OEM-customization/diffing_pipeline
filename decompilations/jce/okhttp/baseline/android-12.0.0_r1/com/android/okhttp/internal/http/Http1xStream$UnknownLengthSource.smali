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
.field private blacklist inputExhausted:Z

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/http/Http1xStream;


# direct methods
.method private constructor blacklist <init>(Lcom/android/okhttp/internal/http/Http1xStream;)V
    .registers 3

    .line 482
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/Http1xStream$1;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/Http1xStream$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/okhttp/internal/http/Http1xStream;
    .param p2, "x1"    # Lcom/android/okhttp/internal/http/Http1xStream$1;

    .line 482
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 502
    :cond_5
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;->inputExhausted:Z

    if-nez v0, :cond_c

    .line 503
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;->unexpectedEndOfInput()V

    .line 505
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;->closed:Z

    .line 506
    return-void
.end method

.method public blacklist read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 9
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2f

    .line 488
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;->closed:Z

    if-nez v0, :cond_27

    .line 489
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;->inputExhausted:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_11

    return-wide v1

    .line 491
    :cond_11
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->source:Lcom/android/okhttp/okio/BufferedSource;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$600(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/okhttp/okio/BufferedSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v3

    .line 492
    .local v3, "read":J
    cmp-long v0, v3, v1

    if-nez v0, :cond_26

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;->inputExhausted:Z

    .line 494
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream$UnknownLengthSource;->endOfInput()V

    .line 495
    return-wide v1

    .line 497
    :cond_26
    return-wide v3

    .line 488
    .end local v3    # "read":J
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
