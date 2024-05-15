.class Lcom/android/okhttp/okio/AsyncTimeout$2;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/AsyncTimeout;->source(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/okio/AsyncTimeout;

.field final synthetic val$source:Lcom/android/okhttp/okio/Source;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/AsyncTimeout;Lcom/android/okhttp/okio/Source;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/okhttp/okio/AsyncTimeout;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    iput-object p2, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->val$source:Lcom/android/okhttp/okio/Source;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 224
    .local v1, "throwOnTimeout":Z
    :try_start_1
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->val$source:Lcom/android/okhttp/okio/Source;

    invoke-interface {v2}, Lcom/android/okhttp/okio/Source;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_d
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    .line 225
    const/4 v1, 0x1

    .line 229
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 231
    return-void

    .line 226
    :catch_d
    move-exception v0

    .line 227
    .local v0, "e":Ljava/io/IOException;
    :try_start_e
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_15

    .line 228
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_15
    move-exception v2

    .line 229
    iget-object v3, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v3, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 228
    throw v2
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
    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, "throwOnTimeout":Z
    iget-object v4, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v4}, Lcom/android/okhttp/okio/AsyncTimeout;->enter()V

    .line 211
    :try_start_6
    iget-object v4, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->val$source:Lcom/android/okhttp/okio/Source;

    invoke-interface {v4, p1, p2, p3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_13
    .catchall {:try_start_6 .. :try_end_b} :catchall_1b

    move-result-wide v2

    .line 212
    .local v2, "result":J
    const/4 v1, 0x1

    .line 217
    iget-object v4, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v4, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 213
    return-wide v2

    .line 214
    .end local v2    # "result":J
    :catch_13
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    :try_start_14
    iget-object v4, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v4, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v4

    throw v4
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1b

    .line 216
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1b
    move-exception v4

    .line 217
    iget-object v5, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v5, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 216
    throw v4
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->val$source:Lcom/android/okhttp/okio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
