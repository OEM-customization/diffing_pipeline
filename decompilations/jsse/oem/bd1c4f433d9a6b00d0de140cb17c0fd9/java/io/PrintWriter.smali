.class public Ljava/io/PrintWriter;
.super Ljava/io/Writer;
.source "PrintWriter.java"


# instance fields
.field private final autoFlush:Z

.field private formatter:Ljava/util/Formatter;

.field private final lineSeparator:Ljava/lang/String;

.field protected out:Ljava/io/Writer;

.field private psOut:Ljava/io/PrintStream;

.field private trouble:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 264
    const/4 v1, 0x0

    .line 263
    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 265
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-static {p2}, Ljava/io/PrintWriter;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/nio/charset/Charset;Ljava/io/File;)V

    .line 304
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z

    .prologue
    .line 148
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 151
    instance-of v0, p1, Ljava/io/PrintStream;

    if-eqz v0, :cond_15

    .line 152
    check-cast p1, Ljava/io/PrintStream;

    .end local p1    # "out":Ljava/io/OutputStream;
    iput-object p1, p0, Ljava/io/PrintWriter;->psOut:Ljava/io/PrintStream;

    .line 154
    :cond_15
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .registers 5
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "autoFlush"    # Z

    .prologue
    .line 113
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PrintWriter;->trouble:Z

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/PrintWriter;->psOut:Ljava/io/PrintStream;

    .line 114
    iput-object p1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    .line 115
    iput-boolean p2, p0, Ljava/io/PrintWriter;->autoFlush:Z

    .line 117
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v1, "line.separator"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/PrintWriter;->lineSeparator:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 185
    const/4 v1, 0x0

    .line 184
    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {p2}, Ljava/io/PrintWriter;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/nio/charset/Charset;Ljava/io/File;)V

    .line 233
    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;Ljava/io/File;)V
    .registers 6
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 193
    const/4 v1, 0x0

    .line 192
    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 194
    return-void
.end method

.method private ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    if-nez v0, :cond_d

    .line 309
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_d
    return-void
.end method

.method private newLine()V
    .registers 6

    .prologue
    .line 478
    :try_start_0
    iget-object v3, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_3} :catch_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_24

    .line 479
    :try_start_3
    invoke-direct {p0}, Ljava/io/PrintWriter;->ensureOpen()V

    .line 480
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    iget-object v4, p0, Ljava/io/PrintWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 481
    iget-boolean v2, p0, Ljava/io/PrintWriter;->autoFlush:Z

    if-eqz v2, :cond_16

    .line 482
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    :cond_16
    :try_start_16
    monitor-exit v3

    .line 491
    :goto_17
    return-void

    .line 478
    :catchall_18
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_1b
    .catch Ljava/io/InterruptedIOException; {:try_start_16 .. :try_end_1b} :catch_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_24

    .line 485
    :catch_1b
    move-exception v1

    .line 486
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_17

    .line 488
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_24
    move-exception v0

    .line 489
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/PrintWriter;->trouble:Z

    goto :goto_17
.end method

.method private static toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .param p0, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 85
    const-string/jumbo v1, "charsetName"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    :try_start_6
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_9
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_6 .. :try_end_9} :catch_b
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    .line 88
    :catch_b
    move-exception v0

    .line 90
    .local v0, "unused":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public append(C)Ljava/io/PrintWriter;
    .registers 2
    .param p1, "c"    # C

    .prologue
    .line 1063
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(I)V

    .line 1064
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    .registers 3
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 1001
    if-nez p1, :cond_9

    .line 1002
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 1005
    :goto_8
    return-object p0

    .line 1004
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;
    .registers 6
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1041
    if-nez p1, :cond_11

    const-string/jumbo v0, "null"

    .line 1042
    .local v0, "cs":Ljava/lang/CharSequence;
    :goto_5
    invoke-interface {v0, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 1043
    return-object p0

    .line 1041
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_11
    move-object v0, p1

    .restart local v0    # "cs":Ljava/lang/CharSequence;
    goto :goto_5
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1046
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 976
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1008
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1046
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

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
    .line 976
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

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
    .line 1008
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public checkError()Z
    .registers 3

    .prologue
    .line 356
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    if-eqz v1, :cond_7

    .line 357
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 359
    :cond_7
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    instance-of v1, v1, Ljava/io/PrintWriter;

    if-eqz v1, :cond_16

    .line 360
    iget-object v0, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    check-cast v0, Ljava/io/PrintWriter;

    .line 361
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v0}, Ljava/io/PrintWriter;->checkError()Z

    move-result v1

    return v1

    .line 362
    .end local v0    # "pw":Ljava/io/PrintWriter;
    :cond_16
    iget-object v1, p0, Ljava/io/PrintWriter;->psOut:Ljava/io/PrintStream;

    if-eqz v1, :cond_21

    .line 363
    iget-object v1, p0, Ljava/io/PrintWriter;->psOut:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->checkError()Z

    move-result v1

    return v1

    .line 365
    :cond_21
    iget-boolean v1, p0, Ljava/io/PrintWriter;->trouble:Z

    return v1
.end method

.method protected clearError()V
    .registers 2

    .prologue
    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PrintWriter;->trouble:Z

    .line 390
    return-void
.end method

.method public close()V
    .registers 4

    .prologue
    .line 336
    :try_start_0
    iget-object v2, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_16

    .line 337
    :try_start_3
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_13

    if-nez v1, :cond_9

    :try_start_7
    monitor-exit v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_8} :catch_16

    .line 338
    return-void

    .line 339
    :cond_9
    :try_start_9
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 340
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_13

    :try_start_11
    monitor-exit v2

    .line 346
    :goto_12
    return-void

    .line 336
    :catchall_13
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_16

    .line 343
    :catch_16
    move-exception v0

    .line 344
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintWriter;->trouble:Z

    goto :goto_12
.end method

.method public flush()V
    .registers 4

    .prologue
    .line 318
    :try_start_0
    iget-object v2, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_10

    .line 319
    :try_start_3
    invoke-direct {p0}, Ljava/io/PrintWriter;->ensureOpen()V

    .line 320
    iget-object v1, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    :try_start_b
    monitor-exit v2

    .line 326
    :goto_c
    return-void

    .line 318
    :catchall_d
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_10

    .line 323
    :catch_10
    move-exception v0

    .line 324
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintWriter;->trouble:Z

    goto :goto_c
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .registers 8
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 900
    :try_start_0
    iget-object v3, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_3} :catch_34
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3d

    .line 901
    :try_start_3
    invoke-direct {p0}, Ljava/io/PrintWriter;->ensureOpen()V

    .line 902
    iget-object v2, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    if-eqz v2, :cond_16

    .line 903
    iget-object v2, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    invoke-virtual {v2}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    if-eq v2, v4, :cond_1d

    .line 904
    :cond_16
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v2, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    .line 905
    :cond_1d
    iget-object v2, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v4, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 906
    iget-boolean v2, p0, Ljava/io/PrintWriter;->autoFlush:Z

    if-eqz v2, :cond_2f

    .line 907
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_31

    :cond_2f
    :try_start_2f
    monitor-exit v3

    .line 914
    :goto_30
    return-object p0

    .line 900
    :catchall_31
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_34
    .catch Ljava/io/InterruptedIOException; {:try_start_2f .. :try_end_34} :catch_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_3d

    .line 909
    :catch_34
    move-exception v1

    .line 910
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_30

    .line 911
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_3d
    move-exception v0

    .line 912
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/PrintWriter;->trouble:Z

    goto :goto_30
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .registers 8
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 960
    :try_start_0
    iget-object v3, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_3} :catch_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_35

    .line 961
    :try_start_3
    invoke-direct {p0}, Ljava/io/PrintWriter;->ensureOpen()V

    .line 962
    iget-object v2, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    if-eqz v2, :cond_12

    iget-object v2, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    invoke-virtual {v2}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v2

    if-eq v2, p1, :cond_19

    .line 963
    :cond_12
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    .line 964
    :cond_19
    iget-object v2, p0, Ljava/io/PrintWriter;->formatter:Ljava/util/Formatter;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 965
    iget-boolean v2, p0, Ljava/io/PrintWriter;->autoFlush:Z

    if-eqz v2, :cond_27

    .line 966
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    :cond_27
    :try_start_27
    monitor-exit v3

    .line 973
    :goto_28
    return-object p0

    .line 960
    :catchall_29
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2c
    .catch Ljava/io/InterruptedIOException; {:try_start_27 .. :try_end_2c} :catch_2c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_35

    .line 968
    :catch_2c
    move-exception v1

    .line 969
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_28

    .line 970
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_35
    move-exception v0

    .line 971
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/PrintWriter;->trouble:Z

    goto :goto_28
.end method

.method public print(C)V
    .registers 2
    .param p1, "c"    # C

    .prologue
    .line 517
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(I)V

    .line 518
    return-void
.end method

.method public print(D)V
    .registers 4
    .param p1, "d"    # D

    .prologue
    .line 573
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method public print(F)V
    .registers 3
    .param p1, "f"    # F

    .prologue
    .line 559
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public print(I)V
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 531
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method public print(J)V
    .registers 4
    .param p1, "l"    # J

    .prologue
    .line 545
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 617
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 600
    if-nez p1, :cond_5

    .line 601
    const-string/jumbo p1, "null"

    .line 603
    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method public print(Z)V
    .registers 3
    .param p1, "b"    # Z

    .prologue
    .line 505
    if-eqz p1, :cond_9

    const-string/jumbo v0, "true"

    :goto_5
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 506
    return-void

    .line 505
    :cond_9
    const-string/jumbo v0, "false"

    goto :goto_5
.end method

.method public print([C)V
    .registers 2
    .param p1, "s"    # [C

    .prologue
    .line 587
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->write([C)V

    .line 588
    return-void
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 804
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public varargs printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    .registers 5
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 855
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public println()V
    .registers 1

    .prologue
    .line 629
    invoke-direct {p0}, Ljava/io/PrintWriter;->newLine()V

    .line 630
    return-void
.end method

.method public println(C)V
    .registers 4
    .param p1, "x"    # C

    .prologue
    .line 654
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 655
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(C)V

    .line 656
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    .line 658
    return-void

    .line 654
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public println(D)V
    .registers 6
    .param p1, "x"    # D

    .prologue
    .line 710
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 711
    :try_start_3
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->print(D)V

    .line 712
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    .line 714
    return-void

    .line 710
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public println(F)V
    .registers 4
    .param p1, "x"    # F

    .prologue
    .line 696
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 697
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(F)V

    .line 698
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    .line 700
    return-void

    .line 696
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public println(I)V
    .registers 4
    .param p1, "x"    # I

    .prologue
    .line 668
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 669
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 670
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    .line 672
    return-void

    .line 668
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public println(J)V
    .registers 6
    .param p1, "x"    # J

    .prologue
    .line 682
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 683
    :try_start_3
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    .line 684
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    .line 686
    return-void

    .line 682
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public println(Ljava/lang/Object;)V
    .registers 5
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 754
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 756
    :try_start_7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_f

    monitor-exit v2

    .line 759
    return-void

    .line 755
    :catchall_f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public println(Ljava/lang/String;)V
    .registers 4
    .param p1, "x"    # Ljava/lang/String;

    .prologue
    .line 738
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 739
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    .line 742
    return-void

    .line 738
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public println(Z)V
    .registers 4
    .param p1, "x"    # Z

    .prologue
    .line 640
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 641
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 642
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    .line 644
    return-void

    .line 640
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public println([C)V
    .registers 4
    .param p1, "x"    # [C

    .prologue
    .line 724
    iget-object v1, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 725
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print([C)V

    .line 726
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    .line 728
    return-void

    .line 724
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected setError()V
    .registers 2

    .prologue
    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PrintWriter;->trouble:Z

    .line 377
    return-void
.end method

.method public write(I)V
    .registers 6
    .param p1, "c"    # I

    .prologue
    .line 403
    :try_start_0
    iget-object v3, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_19

    .line 404
    :try_start_3
    invoke-direct {p0}, Ljava/io/PrintWriter;->ensureOpen()V

    .line 405
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(I)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    :try_start_b
    monitor-exit v3

    .line 414
    :goto_c
    return-void

    .line 403
    :catchall_d
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_10
    .catch Ljava/io/InterruptedIOException; {:try_start_b .. :try_end_10} :catch_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_19

    .line 408
    :catch_10
    move-exception v1

    .line 409
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_c

    .line 411
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_19
    move-exception v0

    .line 412
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/PrintWriter;->trouble:Z

    goto :goto_c
.end method

.method public write(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 473
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 474
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 454
    :try_start_0
    iget-object v3, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_19

    .line 455
    :try_start_3
    invoke-direct {p0}, Ljava/io/PrintWriter;->ensureOpen()V

    .line 456
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    :try_start_b
    monitor-exit v3

    .line 465
    :goto_c
    return-void

    .line 454
    :catchall_d
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_10
    .catch Ljava/io/InterruptedIOException; {:try_start_b .. :try_end_10} :catch_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_19

    .line 459
    :catch_10
    move-exception v1

    .line 460
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_c

    .line 462
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_19
    move-exception v0

    .line 463
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/PrintWriter;->trouble:Z

    goto :goto_c
.end method

.method public write([C)V
    .registers 4
    .param p1, "buf"    # [C

    .prologue
    .line 443
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/PrintWriter;->write([CII)V

    .line 444
    return-void
.end method

.method public write([CII)V
    .registers 8
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 424
    :try_start_0
    iget-object v3, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_19

    .line 425
    :try_start_3
    invoke-direct {p0}, Ljava/io/PrintWriter;->ensureOpen()V

    .line 426
    iget-object v2, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    :try_start_b
    monitor-exit v3

    .line 435
    :goto_c
    return-void

    .line 424
    :catchall_d
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_10
    .catch Ljava/io/InterruptedIOException; {:try_start_b .. :try_end_10} :catch_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_19

    .line 429
    :catch_10
    move-exception v1

    .line 430
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_c

    .line 432
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_19
    move-exception v0

    .line 433
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/PrintWriter;->trouble:Z

    goto :goto_c
.end method
