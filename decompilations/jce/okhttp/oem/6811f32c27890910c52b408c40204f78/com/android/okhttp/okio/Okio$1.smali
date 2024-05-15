.class final Lcom/android/okhttp/okio/Okio$1;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$out:Ljava/io/OutputStream;

.field final synthetic val$timeout:Lcom/android/okhttp/okio/Timeout;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/Timeout;Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/okio/Okio$1;->val$timeout:Lcom/android/okhttp/okio/Timeout;

    iput-object p2, p0, Lcom/android/okhttp/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
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
    .line 94
    iget-object v0, p0, Lcom/android/okhttp/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 95
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/okhttp/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 91
    return-void
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/okhttp/okio/Okio$1;->val$timeout:Lcom/android/okhttp/okio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 12
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 71
    iget-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 72
    :cond_8
    :goto_8
    cmp-long v0, p2, v2

    if-lez v0, :cond_44

    .line 73
    iget-object v0, p0, Lcom/android/okhttp/okio/Okio$1;->val$timeout:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->throwIfReached()V

    .line 74
    iget-object v6, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 75
    .local v6, "head":Lcom/android/okhttp/okio/Segment;
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v1, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    .line 76
    .local v7, "toCopy":I
    iget-object v0, p0, Lcom/android/okhttp/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    iget-object v1, v6, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v4, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    invoke-virtual {v0, v1, v4, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 78
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    add-int/2addr v0, v7

    iput v0, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 79
    int-to-long v0, v7

    sub-long/2addr p2, v0

    .line 80
    iget-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v4, v7

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 82
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    iget v1, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne v0, v1, :cond_8

    .line 83
    invoke-virtual {v6}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v0

    iput-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 84
    invoke-static {v6}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    goto :goto_8

    .line 87
    .end local v6    # "head":Lcom/android/okhttp/okio/Segment;
    .end local v7    # "toCopy":I
    :cond_44
    return-void
.end method
