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
.field final synthetic this$0:Lcom/android/okhttp/okio/Buffer;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/Buffer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/okhttp/okio/Buffer;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/okio/Buffer$2;->this$0:Lcom/android/okhttp/okio/Buffer;

    .line 110
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public available()I
    .registers 5

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer$2;->this$0:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .registers 1

    .prologue
    .line 125
    return-void
.end method

.method public read()I
    .registers 5

    .prologue
    .line 112
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

    .line 113
    :cond_13
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .registers 5
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer$2;->this$0:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer$2;->this$0:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
