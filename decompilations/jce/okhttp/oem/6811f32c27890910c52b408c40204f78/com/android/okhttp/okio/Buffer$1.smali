.class Lcom/android/okhttp/okio/Buffer$1;
.super Ljava/io/OutputStream;
.source "Buffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/Buffer;->outputStream()Ljava/io/OutputStream;
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
    iput-object p1, p0, Lcom/android/okhttp/okio/Buffer$1;->this$0:Lcom/android/okhttp/okio/Buffer;

    .line 68
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 81
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .registers 4
    .param p1, "b"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer$1;->this$0:Lcom/android/okhttp/okio/Buffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 71
    return-void
.end method

.method public write([BII)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer$1;->this$0:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    .line 75
    return-void
.end method
