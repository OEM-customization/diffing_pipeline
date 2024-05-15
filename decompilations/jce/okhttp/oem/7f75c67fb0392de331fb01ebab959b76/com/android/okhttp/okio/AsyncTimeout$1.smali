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
.field final synthetic blacklist this$0:Lcom/android/okhttp/okio/AsyncTimeout;

.field final synthetic blacklist val$sink:Lcom/android/okhttp/okio/Sink;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/AsyncTimeout;Lcom/android/okhttp/okio/Sink;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/okhttp/okio/AsyncTimeout;

    .line 152
    iput-object p1, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    iput-object p2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->val$sink:Lcom/android/okhttp/okio/Sink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "throwOnTimeout":Z
    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v1}, Lcom/android/okhttp/okio/AsyncTimeout;->enter()V

    .line 183
    :try_start_6
    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->val$sink:Lcom/android/okhttp/okio/Sink;

    invoke-interface {v1}, Lcom/android/okhttp/okio/Sink;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_15
    .catchall {:try_start_6 .. :try_end_b} :catchall_13

    .line 184
    const/4 v0, 0x1

    .line 188
    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 189
    nop

    .line 190
    return-void

    .line 188
    :catchall_13
    move-exception v1

    goto :goto_1d

    .line 185
    :catch_15
    move-exception v1

    .line 186
    .local v1, "e":Ljava/io/IOException;
    :try_start_16
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    .end local v0    # "throwOnTimeout":Z
    .end local p0    # "this":Lcom/android/okhttp/okio/AsyncTimeout$1;
    throw v2
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_13

    .line 188
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "throwOnTimeout":Z
    .restart local p0    # "this":Lcom/android/okhttp/okio/AsyncTimeout$1;
    :goto_1d
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 189
    throw v1
.end method

.method public whitelist core-platform-api test-api flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "throwOnTimeout":Z
    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v1}, Lcom/android/okhttp/okio/AsyncTimeout;->enter()V

    .line 170
    :try_start_6
    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->val$sink:Lcom/android/okhttp/okio/Sink;

    invoke-interface {v1}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_15
    .catchall {:try_start_6 .. :try_end_b} :catchall_13

    .line 171
    const/4 v0, 0x1

    .line 175
    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 176
    nop

    .line 177
    return-void

    .line 175
    :catchall_13
    move-exception v1

    goto :goto_1d

    .line 172
    :catch_15
    move-exception v1

    .line 173
    .local v1, "e":Ljava/io/IOException;
    :try_start_16
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    .end local v0    # "throwOnTimeout":Z
    .end local p0    # "this":Lcom/android/okhttp/okio/AsyncTimeout$1;
    throw v2
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_13

    .line 175
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "throwOnTimeout":Z
    .restart local p0    # "this":Lcom/android/okhttp/okio/AsyncTimeout$1;
    :goto_1d
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 176
    throw v1
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->val$sink:Lcom/android/okhttp/okio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 7
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "throwOnTimeout":Z
    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v1}, Lcom/android/okhttp/okio/AsyncTimeout;->enter()V

    .line 157
    :try_start_6
    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->val$sink:Lcom/android/okhttp/okio/Sink;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_15
    .catchall {:try_start_6 .. :try_end_b} :catchall_13

    .line 158
    const/4 v0, 0x1

    .line 162
    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 163
    nop

    .line 164
    return-void

    .line 162
    :catchall_13
    move-exception v1

    goto :goto_1d

    .line 159
    :catch_15
    move-exception v1

    .line 160
    .local v1, "e":Ljava/io/IOException;
    :try_start_16
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    .end local v0    # "throwOnTimeout":Z
    .end local p0    # "this":Lcom/android/okhttp/okio/AsyncTimeout$1;
    .end local p1    # "source":Lcom/android/okhttp/okio/Buffer;
    .end local p2    # "byteCount":J
    throw v2
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_13

    .line 162
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "throwOnTimeout":Z
    .restart local p0    # "this":Lcom/android/okhttp/okio/AsyncTimeout$1;
    .restart local p1    # "source":Lcom/android/okhttp/okio/Buffer;
    .restart local p2    # "byteCount":J
    :goto_1d
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$1;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 163
    throw v1
.end method
