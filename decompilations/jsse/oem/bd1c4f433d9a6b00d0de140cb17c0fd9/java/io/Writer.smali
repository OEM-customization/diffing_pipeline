.class public abstract Ljava/io/Writer;
.super Ljava/lang/Object;
.source "Writer.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final WRITE_BUFFER_SIZE:I = 0x400


# instance fields
.field protected lock:Ljava/lang/Object;

.field private writeBuffer:[C


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "lock"    # Ljava/lang/Object;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-nez p1, :cond_b

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 90
    :cond_b
    iput-object p1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    .line 91
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .registers 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    .line 294
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    if-nez p1, :cond_9

    .line 225
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 228
    :goto_8
    return-object p0

    .line 227
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 6
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    if-nez p1, :cond_11

    const-string/jumbo v0, "null"

    .line 269
    .local v0, "cs":Ljava/lang/CharSequence;
    :goto_5
    invoke-interface {v0, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 270
    return-object p0

    .line 268
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_11
    move-object v0, p1

    .restart local v0    # "cs":Ljava/lang/CharSequence;
    goto :goto_5
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(I)V
    .registers 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_3
    iget-object v0, p0, Ljava/io/Writer;->writeBuffer:[C

    if-nez v0, :cond_d

    .line 110
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/Writer;->writeBuffer:[C

    .line 112
    :cond_d
    iget-object v0, p0, Ljava/io/Writer;->writeBuffer:[C

    int-to-char v2, p1

    const/4 v3, 0x0

    aput-char v2, v0, v3

    .line 113
    iget-object v0, p0, Ljava/io/Writer;->writeBuffer:[C

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/Writer;->write([CII)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    .line 115
    return-void

    .line 108
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public write(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 158
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x400

    .line 181
    iget-object v2, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 183
    if-gt p3, v1, :cond_1f

    .line 184
    :try_start_7
    iget-object v1, p0, Ljava/io/Writer;->writeBuffer:[C

    if-nez v1, :cond_11

    .line 185
    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Ljava/io/Writer;->writeBuffer:[C

    .line 187
    :cond_11
    iget-object v0, p0, Ljava/io/Writer;->writeBuffer:[C

    .line 191
    .local v0, "cbuf":[C
    :goto_13
    add-int v1, p2, p3

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v1, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 192
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_22

    monitor-exit v2

    .line 194
    return-void

    .line 189
    .end local v0    # "cbuf":[C
    :cond_1f
    :try_start_1f
    new-array v0, p3, [C
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_22

    .restart local v0    # "cbuf":[C
    goto :goto_13

    .line 181
    .end local v0    # "cbuf":[C
    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public write([C)V
    .registers 4
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/Writer;->write([CII)V

    .line 128
    return-void
.end method

.method public abstract write([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
