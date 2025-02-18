.class public abstract Ljava/io/Writer;
.super Ljava/lang/Object;
.source "Writer.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final greylist-max-o WRITE_BUFFER_SIZE:I = 0x400


# instance fields
.field protected whitelist test-api lock:Ljava/lang/Object;

.field private greylist-max-o writeBuffer:[C


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "lock"    # Ljava/lang/Object;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-eqz p1, :cond_8

    .line 90
    iput-object p1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    .line 91
    return-void

    .line 88
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api append(C)Ljava/io/Writer;
    .registers 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    .line 294
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    if-nez p1, :cond_8

    .line 225
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_f

    .line 227
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 228
    :goto_f
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 6
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    if-nez p1, :cond_5

    const-string v0, "null"

    goto :goto_6

    :cond_5
    move-object v0, p1

    .line 269
    .local v0, "cs":Ljava/lang/CharSequence;
    :goto_6
    invoke-interface {v0, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 270
    return-object p0
.end method

.method public bridge synthetic whitelist test-api append(C)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist test-api close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api write(I)V
    .registers 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_3
    iget-object v1, p0, Ljava/io/Writer;->writeBuffer:[C

    if-nez v1, :cond_d

    .line 110
    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Ljava/io/Writer;->writeBuffer:[C

    .line 112
    :cond_d
    iget-object v1, p0, Ljava/io/Writer;->writeBuffer:[C

    int-to-char v2, p1

    const/4 v3, 0x0

    aput-char v2, v1, v3

    .line 113
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 114
    monitor-exit v0

    .line 115
    return-void

    .line 114
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist test-api write(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 158
    return-void
.end method

.method public whitelist test-api write(Ljava/lang/String;II)V
    .registers 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    const/16 v1, 0x400

    if-gt p3, v1, :cond_12

    .line 184
    :try_start_7
    iget-object v2, p0, Ljava/io/Writer;->writeBuffer:[C

    if-nez v2, :cond_f

    .line 185
    new-array v1, v1, [C

    iput-object v1, p0, Ljava/io/Writer;->writeBuffer:[C

    .line 187
    :cond_f
    iget-object v1, p0, Ljava/io/Writer;->writeBuffer:[C

    .local v1, "cbuf":[C
    goto :goto_14

    .line 189
    .end local v1    # "cbuf":[C
    :cond_12
    new-array v1, p3, [C

    .line 191
    .restart local v1    # "cbuf":[C
    :goto_14
    add-int v2, p2, p3

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 192
    invoke-virtual {p0, v1, v3, p3}, Ljava/io/Writer;->write([CII)V

    .line 193
    .end local v1    # "cbuf":[C
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist test-api write([C)V
    .registers 4
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/Writer;->write([CII)V

    .line 128
    return-void
.end method

.method public abstract whitelist test-api write([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
