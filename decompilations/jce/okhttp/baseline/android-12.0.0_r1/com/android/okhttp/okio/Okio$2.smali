.class Lcom/android/okhttp/okio/Okio$2;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/Okio;->source(Ljava/io/InputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$in:Ljava/io/InputStream;

.field final synthetic blacklist val$timeout:Lcom/android/okhttp/okio/Timeout;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/Timeout;Ljava/io/InputStream;)V
    .registers 3

    .line 130
    iput-object p1, p0, Lcom/android/okhttp/okio/Okio$2;->val$timeout:Lcom/android/okhttp/okio/Timeout;

    iput-object p2, p0, Lcom/android/okhttp/okio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 150
    iget-object v0, p0, Lcom/android/okhttp/okio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 151
    return-void
.end method

.method public blacklist read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 11
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4a

    .line 133
    cmp-long v2, p2, v0

    if-nez v2, :cond_b

    return-wide v0

    .line 135
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/okhttp/okio/Okio$2;->val$timeout:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->throwIfReached()V

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v0

    .line 137
    .local v0, "tail":Lcom/android/okhttp/okio/Segment;
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 138
    .local v1, "maxToCopy":I
    iget-object v2, p0, Lcom/android/okhttp/okio/Okio$2;->val$in:Ljava/io/InputStream;

    iget-object v3, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v4, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 139
    .local v2, "bytesRead":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2f

    const-wide/16 v3, -0x1

    return-wide v3

    .line 140
    :cond_2f
    iget v3, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 141
    iget-wide v3, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p1, Lcom/android/okhttp/okio/Buffer;->size:J
    :try_end_3a
    .catch Ljava/lang/AssertionError; {:try_start_b .. :try_end_3a} :catch_3c

    .line 142
    int-to-long v3, v2

    return-wide v3

    .line 143
    .end local v0    # "tail":Lcom/android/okhttp/okio/Segment;
    .end local v1    # "maxToCopy":I
    .end local v2    # "bytesRead":I
    :catch_3c
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/AssertionError;
    # invokes: Lcom/android/okhttp/okio/Okio;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->access$000(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_49

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 145
    :cond_49
    throw v0

    .line 132
    .end local v0    # "e":Ljava/lang/AssertionError;
    :cond_4a
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

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/android/okhttp/okio/Okio$2;->val$timeout:Lcom/android/okhttp/okio/Timeout;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/okio/Okio$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
