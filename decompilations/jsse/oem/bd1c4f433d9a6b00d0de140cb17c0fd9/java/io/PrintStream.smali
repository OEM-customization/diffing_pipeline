.class public Ljava/io/PrintStream;
.super Ljava/io/FilterOutputStream;
.source "PrintStream.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Closeable;


# instance fields
.field private final autoFlush:Z

.field private charOut:Ljava/io/OutputStreamWriter;

.field private charset:Ljava/nio/charset/Charset;

.field private closing:Z

.field private formatter:Ljava/util/Formatter;

.field private textOut:Ljava/io/BufferedWriter;

.field private trouble:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;)V

    .line 287
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-static {p2}, Ljava/io/PrintStream;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Ljava/io/PrintStream;-><init>(ZLjava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 327
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z

    .prologue
    .line 158
    const-string/jumbo v0, "Null output stream"

    invoke-static {p1, v0}, Ljava/io/PrintStream;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    invoke-direct {p0, p2, v0}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 183
    const-string/jumbo v0, "Null output stream"

    invoke-static {p1, v0}, Ljava/io/PrintStream;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 184
    invoke-static {p3}, Ljava/io/PrintStream;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 182
    invoke-direct {p0, p2, v0, v1}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;)V

    .line 216
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-static {p2}, Ljava/io/PrintStream;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Ljava/io/PrintStream;-><init>(ZLjava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 256
    return-void
.end method

.method private constructor <init>(ZLjava/io/OutputStream;)V
    .registers 4
    .param p1, "autoFlush"    # Z
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 63
    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    .line 353
    iput-boolean v0, p0, Ljava/io/PrintStream;->closing:Z

    .line 107
    iput-boolean p1, p0, Ljava/io/PrintStream;->autoFlush:Z

    .line 111
    return-void
.end method

.method private constructor <init>(ZLjava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 5
    .param p1, "autoFlush"    # Z
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 63
    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    .line 353
    iput-boolean v0, p0, Ljava/io/PrintStream;->closing:Z

    .line 115
    iput-boolean p1, p0, Ljava/io/PrintStream;->autoFlush:Z

    .line 119
    iput-object p3, p0, Ljava/io/PrintStream;->charset:Ljava/nio/charset/Charset;

    .line 120
    return-void
.end method

.method private constructor <init>(ZLjava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "autoFlush"    # Z
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0, p1, p3, p2}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 131
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
    .line 331
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    if-nez v0, :cond_d

    .line 332
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_d
    return-void
.end method

.method private getTextOut()Ljava/io/BufferedWriter;
    .registers 3

    .prologue
    .line 357
    iget-object v0, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    if-nez v0, :cond_1a

    .line 358
    iget-object v0, p0, Ljava/io/PrintStream;->charset:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Ljava/io/PrintStream;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    :goto_f
    iput-object v0, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    .line 360
    new-instance v0, Ljava/io/BufferedWriter;

    iget-object v1, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    .line 362
    :cond_1a
    iget-object v0, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    return-object v0

    .line 359
    :cond_1d
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    goto :goto_f
.end method

.method private newLine()V
    .registers 5

    .prologue
    .line 569
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_2a

    .line 570
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 572
    invoke-direct {p0}, Ljava/io/PrintStream;->getTextOut()Ljava/io/BufferedWriter;

    move-result-object v0

    .line 573
    .local v0, "textOut":Ljava/io/BufferedWriter;
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 574
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 575
    iget-object v3, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flushBuffer()V

    .line 576
    iget-boolean v3, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v3, :cond_1c

    .line 577
    iget-object v3, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    :cond_1c
    :try_start_1c
    monitor-exit p0

    .line 586
    .end local v0    # "textOut":Ljava/io/BufferedWriter;
    :goto_1d
    return-void

    .line 569
    :catchall_1e
    move-exception v3

    monitor-exit p0

    throw v3
    :try_end_21
    .catch Ljava/io/InterruptedIOException; {:try_start_1c .. :try_end_21} :catch_21
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_2a

    .line 580
    :catch_21
    move-exception v2

    .line 581
    .local v2, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1d

    .line 583
    .end local v2    # "x":Ljava/io/InterruptedIOException;
    :catch_2a
    move-exception v1

    .line 584
    .local v1, "x":Ljava/io/IOException;
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_1d
.end method

.method private static requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_8

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_8
    return-object p0
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
    .line 95
    const-string/jumbo v1, "charsetName"

    invoke-static {p0, v1}, Ljava/io/PrintStream;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    :try_start_6
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_9
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_6 .. :try_end_9} :catch_b
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    .line 98
    :catch_b
    move-exception v0

    .line 100
    .local v0, "unused":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private write(Ljava/lang/String;)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 548
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_29
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_32

    .line 549
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 551
    invoke-direct {p0}, Ljava/io/PrintStream;->getTextOut()Ljava/io/BufferedWriter;

    move-result-object v0

    .line 552
    .local v0, "textOut":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 554
    iget-object v3, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flushBuffer()V

    .line 555
    iget-boolean v3, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v3, :cond_24

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_24

    .line 556
    iget-object v3, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    :cond_24
    :try_start_24
    monitor-exit p0

    .line 565
    .end local v0    # "textOut":Ljava/io/BufferedWriter;
    :goto_25
    return-void

    .line 548
    :catchall_26
    move-exception v3

    monitor-exit p0

    throw v3
    :try_end_29
    .catch Ljava/io/InterruptedIOException; {:try_start_24 .. :try_end_29} :catch_29
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_32

    .line 559
    :catch_29
    move-exception v2

    .line 560
    .local v2, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_25

    .line 562
    .end local v2    # "x":Ljava/io/InterruptedIOException;
    :catch_32
    move-exception v1

    .line 563
    .local v1, "x":Ljava/io/IOException;
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_25
.end method

.method private write([C)V
    .registers 8
    .param p1, "buf"    # [C

    .prologue
    .line 524
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_37

    .line 525
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 527
    invoke-direct {p0}, Ljava/io/PrintStream;->getTextOut()Ljava/io/BufferedWriter;

    move-result-object v1

    .line 528
    .local v1, "textOut":Ljava/io/BufferedWriter;
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write([C)V

    .line 529
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 530
    iget-object v4, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flushBuffer()V

    .line 531
    iget-boolean v4, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v4, :cond_29

    .line 532
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    array-length v4, p1

    if-ge v0, v4, :cond_29

    .line 533
    aget-char v4, p1, v0

    const/16 v5, 0xa

    if-ne v4, v5, :cond_26

    .line 534
    iget-object v4, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_2b

    .line 532
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .end local v0    # "i":I
    :cond_29
    :try_start_29
    monitor-exit p0

    .line 544
    .end local v1    # "textOut":Ljava/io/BufferedWriter;
    :goto_2a
    return-void

    .line 524
    :catchall_2b
    move-exception v4

    monitor-exit p0

    throw v4
    :try_end_2e
    .catch Ljava/io/InterruptedIOException; {:try_start_29 .. :try_end_2e} :catch_2e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_37

    .line 538
    :catch_2e
    move-exception v3

    .line 539
    .local v3, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2a

    .line 541
    .end local v3    # "x":Ljava/io/InterruptedIOException;
    :catch_37
    move-exception v2

    .line 542
    .local v2, "x":Ljava/io/IOException;
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_2a
.end method


# virtual methods
.method public append(C)Ljava/io/PrintStream;
    .registers 2
    .param p1, "c"    # C

    .prologue
    .line 1154
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(C)V

    .line 1155
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;
    .registers 3
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 1091
    if-nez p1, :cond_9

    .line 1092
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1095
    :goto_8
    return-object p0

    .line 1094
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;
    .registers 6
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1132
    if-nez p1, :cond_11

    const-string/jumbo v0, "null"

    .line 1133
    .local v0, "cs":Ljava/lang/CharSequence;
    :goto_5
    invoke-interface {v0, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 1134
    return-object p0

    .line 1132
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
    .line 1137
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(C)Ljava/io/PrintStream;

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
    .line 1066
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

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
    .line 1098
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public checkError()Z
    .registers 3

    .prologue
    .line 414
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_7

    .line 415
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    .line 416
    :cond_7
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    instance-of v1, v1, Ljava/io/PrintStream;

    if-eqz v1, :cond_16

    .line 417
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/PrintStream;

    .line 418
    .local v0, "ps":Ljava/io/PrintStream;
    invoke-virtual {v0}, Ljava/io/PrintStream;->checkError()Z

    move-result v1

    return v1

    .line 420
    .end local v0    # "ps":Ljava/io/PrintStream;
    :cond_16
    iget-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    return v1
.end method

.method protected clearError()V
    .registers 2

    .prologue
    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    .line 447
    return-void
.end method

.method public close()V
    .registers 3

    .prologue
    .line 373
    monitor-enter p0

    .line 374
    :try_start_1
    iget-boolean v1, p0, Ljava/io/PrintStream;->closing:Z

    if-nez v1, :cond_1f

    .line 375
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintStream;->closing:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_26

    .line 379
    :try_start_8
    iget-object v1, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_11

    .line 380
    iget-object v1, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 383
    :cond_11
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_16} :catch_21
    .catchall {:try_start_8 .. :try_end_16} :catchall_26

    .line 388
    :goto_16
    const/4 v1, 0x0

    :try_start_17
    iput-object v1, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    .line 389
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    .line 390
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_26

    :cond_1f
    monitor-exit p0

    .line 393
    return-void

    .line 385
    :catch_21
    move-exception v0

    .line 386
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    :try_start_23
    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_26

    goto :goto_16

    .line 373
    .end local v0    # "x":Ljava/io/IOException;
    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public flush()V
    .registers 3

    .prologue
    .line 342
    monitor-enter p0

    .line 344
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 345
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_b
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    :goto_9
    monitor-exit p0

    .line 351
    return-void

    .line 347
    :catch_b
    move-exception v0

    .line 348
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    :try_start_d
    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_10

    goto :goto_9

    .line 342
    .end local v0    # "x":Ljava/io/IOException;
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 7
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 994
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_29
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_32

    .line 995
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 996
    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    if-eqz v2, :cond_14

    .line 997
    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    invoke-virtual {v2}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    if-eq v2, v3, :cond_1b

    .line 998
    :cond_14
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    .line 999
    :cond_1b
    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    :try_start_24
    monitor-exit p0

    .line 1006
    :goto_25
    return-object p0

    .line 994
    :catchall_26
    move-exception v2

    monitor-exit p0

    throw v2
    :try_end_29
    .catch Ljava/io/InterruptedIOException; {:try_start_24 .. :try_end_29} :catch_29
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_32

    .line 1001
    :catch_29
    move-exception v1

    .line 1002
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_25

    .line 1003
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_32
    move-exception v0

    .line 1004
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_25
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 7
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1051
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_2a

    .line 1052
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 1053
    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    if-eqz v2, :cond_10

    .line 1054
    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    invoke-virtual {v2}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v2

    if-eq v2, p1, :cond_17

    .line 1055
    :cond_10
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    .line 1056
    :cond_17
    iget-object v2, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    :try_start_1c
    monitor-exit p0

    .line 1063
    :goto_1d
    return-object p0

    .line 1051
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
    :try_end_21
    .catch Ljava/io/InterruptedIOException; {:try_start_1c .. :try_end_21} :catch_21
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_2a

    .line 1058
    :catch_21
    move-exception v1

    .line 1059
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1d

    .line 1060
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_2a
    move-exception v0

    .line 1061
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_1d
.end method

.method public print(C)V
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 612
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method public print(D)V
    .registers 4
    .param p1, "d"    # D

    .prologue
    .line 668
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method public print(F)V
    .registers 3
    .param p1, "f"    # F

    .prologue
    .line 654
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method public print(I)V
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 626
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method public print(J)V
    .registers 4
    .param p1, "l"    # J

    .prologue
    .line 640
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 712
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 695
    if-nez p1, :cond_5

    .line 696
    const-string/jumbo p1, "null"

    .line 698
    :cond_5
    invoke-direct {p0, p1}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 699
    return-void
.end method

.method public print(Z)V
    .registers 3
    .param p1, "b"    # Z

    .prologue
    .line 600
    if-eqz p1, :cond_9

    const-string/jumbo v0, "true"

    :goto_5
    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 601
    return-void

    .line 600
    :cond_9
    const-string/jumbo v0, "false"

    goto :goto_5
.end method

.method public print([C)V
    .registers 2
    .param p1, "s"    # [C

    .prologue
    .line 682
    invoke-direct {p0, p1}, Ljava/io/PrintStream;->write([C)V

    .line 683
    return-void
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 900
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 5
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 950
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public println()V
    .registers 1

    .prologue
    .line 725
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    .line 726
    return-void
.end method

.method public println(C)V
    .registers 3
    .param p1, "x"    # C

    .prologue
    .line 750
    monitor-enter p0

    .line 751
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(C)V

    .line 752
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 754
    return-void

    .line 750
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(D)V
    .registers 4
    .param p1, "x"    # D

    .prologue
    .line 806
    monitor-enter p0

    .line 807
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->print(D)V

    .line 808
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 810
    return-void

    .line 806
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(F)V
    .registers 3
    .param p1, "x"    # F

    .prologue
    .line 792
    monitor-enter p0

    .line 793
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(F)V

    .line 794
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 796
    return-void

    .line 792
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(I)V
    .registers 3
    .param p1, "x"    # I

    .prologue
    .line 764
    monitor-enter p0

    .line 765
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(I)V

    .line 766
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 768
    return-void

    .line 764
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(J)V
    .registers 4
    .param p1, "x"    # J

    .prologue
    .line 778
    monitor-enter p0

    .line 779
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->print(J)V

    .line 780
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 782
    return-void

    .line 778
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(Ljava/lang/Object;)V
    .registers 4
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 850
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 851
    .local v0, "s":Ljava/lang/String;
    monitor-enter p0

    .line 852
    :try_start_5
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 853
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_d

    monitor-exit p0

    .line 855
    return-void

    .line 851
    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public println(Ljava/lang/String;)V
    .registers 3
    .param p1, "x"    # Ljava/lang/String;

    .prologue
    .line 834
    monitor-enter p0

    .line 835
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 836
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 838
    return-void

    .line 834
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(Z)V
    .registers 3
    .param p1, "x"    # Z

    .prologue
    .line 736
    monitor-enter p0

    .line 737
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Z)V

    .line 738
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 740
    return-void

    .line 736
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println([C)V
    .registers 3
    .param p1, "x"    # [C

    .prologue
    .line 820
    monitor-enter p0

    .line 821
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print([C)V

    .line 822
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 824
    return-void

    .line 820
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setError()V
    .registers 2

    .prologue
    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    .line 434
    return-void
.end method

.method public write(I)V
    .registers 5
    .param p1, "b"    # I

    .prologue
    .line 470
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_24

    .line 471
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 472
    iget-object v2, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 473
    const/16 v2, 0xa

    if-ne p1, v2, :cond_16

    iget-boolean v2, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v2, :cond_16

    .line 474
    iget-object v2, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    :cond_16
    :try_start_16
    monitor-exit p0

    .line 483
    :goto_17
    return-void

    .line 470
    :catchall_18
    move-exception v2

    monitor-exit p0

    throw v2
    :try_end_1b
    .catch Ljava/io/InterruptedIOException; {:try_start_16 .. :try_end_1b} :catch_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_24

    .line 477
    :catch_1b
    move-exception v1

    .line 478
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_17

    .line 480
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_24
    move-exception v0

    .line 481
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_17
.end method

.method public write([BII)V
    .registers 7
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 501
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_20

    .line 502
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 503
    iget-object v2, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 504
    iget-boolean v2, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v2, :cond_12

    .line 505
    iget-object v2, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    :cond_12
    :try_start_12
    monitor-exit p0

    .line 514
    :goto_13
    return-void

    .line 501
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
    :try_end_17
    .catch Ljava/io/InterruptedIOException; {:try_start_12 .. :try_end_17} :catch_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_20

    .line 508
    :catch_17
    move-exception v1

    .line 509
    .local v1, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_13

    .line 511
    .end local v1    # "x":Ljava/io/InterruptedIOException;
    :catch_20
    move-exception v0

    .line 512
    .local v0, "x":Ljava/io/IOException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_13
.end method
