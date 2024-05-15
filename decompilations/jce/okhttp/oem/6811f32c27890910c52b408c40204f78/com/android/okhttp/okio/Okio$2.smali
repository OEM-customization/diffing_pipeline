.class final Lcom/android/okhttp/okio/Okio$2;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/Okio;->source(Ljava/io/InputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$in:Ljava/io/InputStream;

.field final synthetic val$timeout:Lcom/android/okhttp/okio/Timeout;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/Timeout;Ljava/io/InputStream;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/okio/Okio$2;->val$timeout:Lcom/android/okhttp/okio/Timeout;

    iput-object p2, p0, Lcom/android/okhttp/okio/Okio$2;->val$in:Ljava/io/InputStream;

    .line 128
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
    .line 148
    iget-object v0, p0, Lcom/android/okhttp/okio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 149
    return-void
.end method

.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 12
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 130
    cmp-long v4, p2, v6

    if-gez v4, :cond_20

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "byteCount < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 131
    :cond_20
    cmp-long v4, p2, v6

    if-nez v4, :cond_25

    return-wide v6

    .line 133
    :cond_25
    :try_start_25
    iget-object v4, p0, Lcom/android/okhttp/okio/Okio$2;->val$timeout:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {v4}, Lcom/android/okhttp/okio/Timeout;->throwIfReached()V

    .line 134
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v3

    .line 135
    .local v3, "tail":Lcom/android/okhttp/okio/Segment;
    iget v4, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    rsub-int v4, v4, 0x2000

    int-to-long v4, v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 136
    .local v2, "maxToCopy":I
    iget-object v4, p0, Lcom/android/okhttp/okio/Okio$2;->val$in:Ljava/io/InputStream;

    iget-object v5, v3, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v6, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    invoke-virtual {v4, v5, v6, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 137
    .local v0, "bytesRead":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_49

    const-wide/16 v4, -0x1

    return-wide v4

    .line 138
    :cond_49
    iget v4, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 139
    iget-wide v4, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p1, Lcom/android/okhttp/okio/Buffer;->size:J
    :try_end_54
    .catch Ljava/lang/AssertionError; {:try_start_25 .. :try_end_54} :catch_56

    .line 140
    int-to-long v4, v0

    return-wide v4

    .line 141
    .end local v0    # "bytesRead":I
    .end local v2    # "maxToCopy":I
    .end local v3    # "tail":Lcom/android/okhttp/okio/Segment;
    :catch_56
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/AssertionError;
    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->-wrap0(Ljava/lang/AssertionError;)Z

    move-result v4

    if-eqz v4, :cond_63

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 143
    :cond_63
    throw v1
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/okhttp/okio/Okio$2;->val$timeout:Lcom/android/okhttp/okio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/okio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
