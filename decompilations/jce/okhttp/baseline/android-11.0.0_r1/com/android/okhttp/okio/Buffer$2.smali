.class Lcom/android/okhttp/okio/Buffer$2;
.super Ljava/io/InputStream;
.source "Buffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/Buffer;->inputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/okio/Buffer;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/Buffer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/okhttp/okio/Buffer;

    .line 112
    iput-object p1, p0, Lcom/android/okhttp/okio/Buffer$2;->this$0:Lcom/android/okhttp/okio/Buffer;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api available()I
    .registers 5

    .line 123
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer$2;->this$0:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist core-platform-api test-api close()V
    .registers 1

    .line 127
    return-void
.end method

.method public whitelist core-platform-api test-api read()I
    .registers 5

    .line 114
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer$2;->this$0:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer$2;->this$0:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 115
    :cond_13
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist core-platform-api test-api read([BII)I
    .registers 5
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .line 119
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer$2;->this$0:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer$2;->this$0:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
