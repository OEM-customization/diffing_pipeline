.class Lcom/android/okhttp/okio/AsyncTimeout$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/AsyncTimeout;->sink(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/okio/AsyncTimeout;

.field final synthetic val$sink:Lcom/android/okhttp/okio/Sink;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/AsyncTimeout;Lcom/android/okhttp/okio/Sink;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/okhttp/okio/AsyncTimeout;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    iput-object p2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->val$sink:Lcom/android/okhttp/okio/Sink;

    .line 150
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
    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "throwOnTimeout":Z
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/AsyncTimeout;->enter()V

    .line 181
    :try_start_6
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->val$sink:Lcom/android/okhttp/okio/Sink;

    invoke-interface {v2}, Lcom/android/okhttp/okio/Sink;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_12
    .catchall {:try_start_6 .. :try_end_b} :catchall_1a

    .line 182
    const/4 v1, 0x1

    .line 186
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 188
    return-void

    .line 183
    :catch_12
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/IOException;
    :try_start_13
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1a

    .line 185
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1a
    move-exception v2

    .line 186
    iget-object v3, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v3, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 185
    throw v2
.end method

.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, "throwOnTimeout":Z
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/AsyncTimeout;->enter()V

    .line 168
    :try_start_6
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->val$sink:Lcom/android/okhttp/okio/Sink;

    invoke-interface {v2}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_12
    .catchall {:try_start_6 .. :try_end_b} :catchall_1a

    .line 169
    const/4 v1, 0x1

    .line 173
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 175
    return-void

    .line 170
    :catch_12
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    :try_start_13
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1a

    .line 172
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1a
    move-exception v2

    .line 173
    iget-object v3, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v3, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 172
    throw v2
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->val$sink:Lcom/android/okhttp/okio/Sink;

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
    .registers 8
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "throwOnTimeout":Z
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/AsyncTimeout;->enter()V

    .line 155
    :try_start_6
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->val$sink:Lcom/android/okhttp/okio/Sink;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_12
    .catchall {:try_start_6 .. :try_end_b} :catchall_1a

    .line 156
    const/4 v1, 0x1

    .line 160
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 162
    return-void

    .line 157
    :catch_12
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    :try_start_13
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1a

    .line 159
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1a
    move-exception v2

    .line 160
    iget-object v3, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v3, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 159
    throw v2
.end method