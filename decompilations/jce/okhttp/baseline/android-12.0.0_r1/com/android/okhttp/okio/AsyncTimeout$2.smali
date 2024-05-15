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
.field final synthetic blacklist this$0:Lcom/android/okhttp/okio/AsyncTimeout;

.field final synthetic blacklist val$source:Lcom/android/okhttp/okio/Source;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/AsyncTimeout;Lcom/android/okhttp/okio/Source;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/okhttp/okio/AsyncTimeout;

    .line 208
    iput-object p1, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    iput-object p2, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->val$source:Lcom/android/okhttp/okio/Source;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    const/4 v0, 0x0

    .line 226
    .local v0, "throwOnTimeout":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->val$source:Lcom/android/okhttp/okio/Source;

    invoke-interface {v1}, Lcom/android/okhttp/okio/Source;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_10
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    .line 227
    const/4 v0, 0x1

    .line 231
    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 232
    nop

    .line 233
    return-void

    .line 231
    :catchall_e
    move-exception v1

    goto :goto_18

    .line 228
    :catch_10
    move-exception v1

    .line 229
    .local v1, "e":Ljava/io/IOException;
    :try_start_11
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    .end local v0    # "throwOnTimeout":Z
    .end local p0    # "this":Lcom/android/okhttp/okio/AsyncTimeout$2;
    throw v2
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_e

    .line 231
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "throwOnTimeout":Z
    .restart local p0    # "this":Lcom/android/okhttp/okio/AsyncTimeout$2;
    :goto_18
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 232
    throw v1
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

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "throwOnTimeout":Z
    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v1}, Lcom/android/okhttp/okio/AsyncTimeout;->enter()V

    .line 213
    :try_start_6
    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->val$source:Lcom/android/okhttp/okio/Source;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_16
    .catchall {:try_start_6 .. :try_end_c} :catchall_14

    .line 214
    .local v1, "result":J
    const/4 v0, 0x1

    .line 215
    nop

    .line 219
    iget-object v3, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v3, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 215
    return-wide v1

    .line 219
    .end local v1    # "result":J
    :catchall_14
    move-exception v1

    goto :goto_1e

    .line 216
    :catch_16
    move-exception v1

    .line 217
    .local v1, "e":Ljava/io/IOException;
    :try_start_17
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    .end local v0    # "throwOnTimeout":Z
    .end local p0    # "this":Lcom/android/okhttp/okio/AsyncTimeout$2;
    .end local p1    # "sink":Lcom/android/okhttp/okio/Buffer;
    .end local p2    # "byteCount":J
    throw v2
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_14

    .line 219
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "throwOnTimeout":Z
    .restart local p0    # "this":Lcom/android/okhttp/okio/AsyncTimeout$2;
    .restart local p1    # "sink":Lcom/android/okhttp/okio/Buffer;
    .restart local p2    # "byteCount":J
    :goto_1e
    iget-object v2, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lcom/android/okhttp/okio/AsyncTimeout;->exit(Z)V

    .line 220
    throw v1
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->this$0:Lcom/android/okhttp/okio/AsyncTimeout;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/okio/AsyncTimeout$2;->val$source:Lcom/android/okhttp/okio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
