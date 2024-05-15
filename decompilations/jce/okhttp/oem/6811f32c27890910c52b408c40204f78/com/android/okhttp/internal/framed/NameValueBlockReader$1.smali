.class Lcom/android/okhttp/internal/framed/NameValueBlockReader$1;
.super Lcom/android/okhttp/okio/ForwardingSource;
.source "NameValueBlockReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/NameValueBlockReader;-><init>(Lcom/android/okhttp/okio/BufferedSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/framed/NameValueBlockReader;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/framed/NameValueBlockReader;Lcom/android/okhttp/okio/Source;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/NameValueBlockReader;
    .param p2, "$anonymous0"    # Lcom/android/okhttp/okio/Source;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader$1;->this$0:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    .line 54
    invoke-direct {p0, p2}, Lcom/android/okhttp/okio/ForwardingSource;-><init>(Lcom/android/okhttp/okio/Source;)V

    .line 1
    return-void
.end method


# virtual methods
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

    .line 56
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader$1;->this$0:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->-get0(Lcom/android/okhttp/internal/framed/NameValueBlockReader;)I

    move-result v2

    if-nez v2, :cond_b

    return-wide v4

    .line 57
    :cond_b
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader$1;->this$0:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->-get0(Lcom/android/okhttp/internal/framed/NameValueBlockReader;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-super {p0, p1, v2, v3}, Lcom/android/okhttp/okio/ForwardingSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    .line 58
    .local v0, "read":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_1f

    return-wide v4

    .line 59
    :cond_1f
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader$1;->this$0:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->-get0(Lcom/android/okhttp/internal/framed/NameValueBlockReader;)I

    move-result v3

    int-to-long v4, v3

    sub-long/2addr v4, v0

    long-to-int v3, v4

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->-set0(Lcom/android/okhttp/internal/framed/NameValueBlockReader;I)I

    .line 60
    return-wide v0
.end method
