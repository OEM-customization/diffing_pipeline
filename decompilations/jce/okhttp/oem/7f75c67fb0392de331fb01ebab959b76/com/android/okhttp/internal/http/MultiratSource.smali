.class public Lcom/android/okhttp/internal/http/MultiratSource;
.super Ljava/lang/Object;
.source "MultiratSource.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# static fields
.field private static final blacklist MAX_BUFFER:I = 0x200000


# instance fields
.field public blacklist mInput:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

.field private blacklist timeout:Lcom/android/okhttp/okio/Timeout;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)V
    .registers 3
    .param p1, "in"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/android/okhttp/okio/Timeout;->NONE:Lcom/android/okhttp/okio/Timeout;

    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiratSource;->timeout:Lcom/android/okhttp/okio/Timeout;

    .line 25
    iput-object p1, p0, Lcom/android/okhttp/internal/http/MultiratSource;->mInput:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 26
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiratSource;->mInput:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 53
    return-void
.end method

.method public blacklist read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 8
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1f

    .line 32
    const-wide/32 v0, 0x200000

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 34
    .local v0, "buffer":[B
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiratSource;->mInput:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->read([BII)I

    move-result v1

    .line 36
    .local v1, "len":I
    if-lez v1, :cond_1d

    .line 37
    invoke-virtual {p1, v0, v3, v1}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    .line 38
    :cond_1d
    int-to-long v2, v1

    return-wide v2

    .line 30
    .end local v0    # "buffer":[B
    .end local v1    # "len":I
    :cond_1f
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

    .line 57
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiratSource;->timeout:Lcom/android/okhttp/okio/Timeout;

    return-object v0
.end method
