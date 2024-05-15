.class public Ljava/io/PrintStream;
.super Ljava/io/FilterOutputStream;
.source "PrintStream.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Closeable;


# instance fields
.field private final greylist-max-o autoFlush:Z

.field private greylist-max-o charOut:Ljava/io/OutputStreamWriter;

.field private greylist-max-o charset:Ljava/nio/charset/Charset;

.field private greylist-max-o closing:Z

.field private greylist-max-o formatter:Ljava/util/Formatter;

.field private greylist-max-o textOut:Ljava/io/BufferedWriter;

.field private greylist-max-o trouble:Z


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/File;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;)V

    .line 287
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

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

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 143
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Z)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z

    .line 158
    const-string v0, "Null output stream"

    invoke-static {p1, v0}, Ljava/io/PrintStream;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    invoke-direct {p0, p2, v0}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;)V

    .line 159
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 182
    nop

    .line 183
    const-string v0, "Null output stream"

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

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;)V

    .line 216
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

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

.method private constructor greylist-max-o <init>(ZLjava/io/OutputStream;)V
    .registers 4
    .param p1, "autoFlush"    # Z
    .param p2, "out"    # Ljava/io/OutputStream;

    .line 106
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    .line 353
    iput-boolean v0, p0, Ljava/io/PrintStream;->closing:Z

    .line 107
    iput-boolean p1, p0, Ljava/io/PrintStream;->autoFlush:Z

    .line 111
    return-void
.end method

.method private constructor greylist-max-o <init>(ZLjava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 5
    .param p1, "autoFlush"    # Z
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 114
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 63
    const/4 v0, 0x0

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

.method private constructor greylist-max-o <init>(ZLjava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "autoFlush"    # Z
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1, p3, p2}, Ljava/io/PrintStream;-><init>(ZLjava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 131
    return-void
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_5

    .line 333
    return-void

    .line 332
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getTextOut()Ljava/io/BufferedWriter;
    .registers 3

    .line 357
    iget-object v0, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    if-nez v0, :cond_1e

    .line 358
    iget-object v0, p0, Ljava/io/PrintStream;->charset:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_e

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p0, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    goto :goto_13

    .line 359
    :cond_e
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    :goto_13
    iput-object v1, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    .line 360
    new-instance v0, Ljava/io/BufferedWriter;

    iget-object v1, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    .line 362
    :cond_1e
    iget-object v0, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    return-object v0
.end method

.method private greylist-max-o newLine()V
    .registers 3

    .line 569
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_21

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
    iget-object v1, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flushBuffer()V

    .line 576
    iget-boolean v1, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v1, :cond_1c

    .line 577
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 578
    .end local v0    # "textOut":Ljava/io/BufferedWriter;
    :cond_1c
    monitor-exit p0

    goto :goto_2e

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    .end local p0    # "this":Ljava/io/PrintStream;
    :try_start_20
    throw v0
    :try_end_21
    .catch Ljava/io/InterruptedIOException; {:try_start_20 .. :try_end_21} :catch_26
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_21} :catch_21

    .line 583
    .restart local p0    # "this":Ljava/io/PrintStream;
    :catch_21
    move-exception v0

    .line 584
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_2f

    .line 580
    .end local v0    # "x":Ljava/io/IOException;
    :catch_26
    move-exception v0

    .line 581
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 585
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_2e
    nop

    .line 586
    :goto_2f
    return-void
.end method

.method private static greylist-max-o requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
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

    .line 82
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 84
    return-object p0

    .line 83
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .param p0, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 95
    const-string v0, "charsetName"

    invoke-static {p0, v0}, Ljava/io/PrintStream;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    :try_start_5
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_9
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_5 .. :try_end_9} :catch_a
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_5 .. :try_end_9} :catch_a

    return-object v0

    .line 98
    :catch_a
    move-exception v0

    .line 100
    .local v0, "unused":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o write(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 548
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_29

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
    iget-object v1, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flushBuffer()V

    .line 555
    iget-boolean v1, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v1, :cond_24

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_24

    .line 556
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 557
    .end local v0    # "textOut":Ljava/io/BufferedWriter;
    :cond_24
    monitor-exit p0

    goto :goto_36

    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_26

    .end local p0    # "this":Ljava/io/PrintStream;
    .end local p1    # "s":Ljava/lang/String;
    :try_start_28
    throw v0
    :try_end_29
    .catch Ljava/io/InterruptedIOException; {:try_start_28 .. :try_end_29} :catch_2e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_29} :catch_29

    .line 562
    .restart local p0    # "this":Ljava/io/PrintStream;
    .restart local p1    # "s":Ljava/lang/String;
    :catch_29
    move-exception v0

    .line 563
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_37

    .line 559
    .end local v0    # "x":Ljava/io/IOException;
    :catch_2e
    move-exception v0

    .line 560
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 564
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_36
    nop

    .line 565
    :goto_37
    return-void
.end method

.method private greylist-max-o write([C)V
    .registers 6
    .param p1, "buf"    # [C

    .line 524
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_33
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_2e

    .line 525
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 527
    invoke-direct {p0}, Ljava/io/PrintStream;->getTextOut()Ljava/io/BufferedWriter;

    move-result-object v0

    .line 528
    .local v0, "textOut":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write([C)V

    .line 529
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flushBuffer()V

    .line 530
    iget-object v1, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flushBuffer()V

    .line 531
    iget-boolean v1, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v1, :cond_29

    .line 532
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_29

    .line 533
    aget-char v2, p1, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_26

    .line 534
    iget-object v2, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 532
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 536
    .end local v0    # "textOut":Ljava/io/BufferedWriter;
    .end local v1    # "i":I
    :cond_29
    monitor-exit p0

    goto :goto_3b

    :catchall_2b
    move-exception v0

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2b

    .end local p0    # "this":Ljava/io/PrintStream;
    .end local p1    # "buf":[C
    :try_start_2d
    throw v0
    :try_end_2e
    .catch Ljava/io/InterruptedIOException; {:try_start_2d .. :try_end_2e} :catch_33
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2e} :catch_2e

    .line 541
    .restart local p0    # "this":Ljava/io/PrintStream;
    .restart local p1    # "buf":[C
    :catch_2e
    move-exception v0

    .line 542
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_3c

    .line 538
    .end local v0    # "x":Ljava/io/IOException;
    :catch_33
    move-exception v0

    .line 539
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 543
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_3b
    nop

    .line 544
    :goto_3c
    return-void
.end method


# virtual methods
.method public whitelist test-api append(C)Ljava/io/PrintStream;
    .registers 2
    .param p1, "c"    # C

    .line 1154
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(C)V

    .line 1155
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;
    .registers 3
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 1091
    if-nez p1, :cond_8

    .line 1092
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_f

    .line 1094
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1095
    :goto_f
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;
    .registers 6
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1132
    if-nez p1, :cond_5

    const-string v0, "null"

    goto :goto_6

    :cond_5
    move-object v0, p1

    .line 1133
    .local v0, "cs":Ljava/lang/CharSequence;
    :goto_6
    invoke-interface {v0, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 1134
    return-object p0
.end method

.method public bridge synthetic whitelist test-api append(C)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(C)Ljava/io/PrintStream;

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

    .line 58
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

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

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api checkError()Z
    .registers 3

    .line 414
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_7

    .line 415
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    .line 416
    :cond_7
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    instance-of v0, v0, Ljava/io/PrintStream;

    if-eqz v0, :cond_16

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
    iget-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    return v0
.end method

.method protected whitelist test-api clearError()V
    .registers 2

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    .line 447
    return-void
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 373
    monitor-enter p0

    .line 374
    :try_start_1
    iget-boolean v0, p0, Ljava/io/PrintStream;->closing:Z

    if-nez v0, :cond_1f

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PrintStream;->closing:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_21

    .line 379
    :try_start_8
    iget-object v1, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_f

    .line 380
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 383
    :cond_f
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_14} :catch_15
    .catchall {:try_start_8 .. :try_end_14} :catchall_21

    .line 387
    goto :goto_18

    .line 385
    :catch_15
    move-exception v1

    .line 386
    .local v1, "x":Ljava/io/IOException;
    :try_start_16
    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    .line 388
    .end local v1    # "x":Ljava/io/IOException;
    :goto_18
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/PrintStream;->textOut:Ljava/io/BufferedWriter;

    .line 389
    iput-object v0, p0, Ljava/io/PrintStream;->charOut:Ljava/io/OutputStreamWriter;

    .line 390
    iput-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    .line 392
    :cond_1f
    monitor-exit p0

    .line 393
    return-void

    .line 392
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public whitelist test-api flush()V
    .registers 3

    .line 342
    monitor-enter p0

    .line 344
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 345
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_c
    .catchall {:try_start_1 .. :try_end_9} :catchall_a

    .line 349
    goto :goto_10

    .line 350
    :catchall_a
    move-exception v0

    goto :goto_12

    .line 347
    :catch_c
    move-exception v0

    .line 348
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    :try_start_e
    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    .line 350
    .end local v0    # "x":Ljava/io/IOException;
    :goto_10
    monitor-exit p0

    .line 351
    return-void

    .line 350
    :goto_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_a

    throw v0
.end method

.method public varargs whitelist test-api format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 994
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_27

    .line 995
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 996
    iget-object v0, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    if-eqz v0, :cond_12

    .line 997
    invoke-virtual {v0}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eq v0, v1, :cond_19

    .line 998
    :cond_12
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    .line 999
    :cond_19
    iget-object v0, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1000
    monitor-exit p0

    goto :goto_34

    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_24

    .end local p0    # "this":Ljava/io/PrintStream;
    .end local p1    # "format":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    :try_start_26
    throw v0
    :try_end_27
    .catch Ljava/io/InterruptedIOException; {:try_start_26 .. :try_end_27} :catch_2c
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_27} :catch_27

    .line 1003
    .restart local p0    # "this":Ljava/io/PrintStream;
    .restart local p1    # "format":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :catch_27
    move-exception v0

    .line 1004
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_35

    .line 1001
    .end local v0    # "x":Ljava/io/IOException;
    :catch_2c
    move-exception v0

    .line 1002
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1005
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_34
    nop

    .line 1006
    :goto_35
    return-object p0
.end method

.method public varargs whitelist test-api format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 6
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 1051
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_24
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_1f

    .line 1052
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 1053
    iget-object v0, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    if-eqz v0, :cond_e

    .line 1054
    invoke-virtual {v0}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v0

    if-eq v0, p1, :cond_15

    .line 1055
    :cond_e
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    .line 1056
    :cond_15
    iget-object v0, p0, Ljava/io/PrintStream;->formatter:Ljava/util/Formatter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1057
    monitor-exit p0

    goto :goto_2c

    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    .end local p0    # "this":Ljava/io/PrintStream;
    .end local p1    # "l":Ljava/util/Locale;
    .end local p2    # "format":Ljava/lang/String;
    .end local p3    # "args":[Ljava/lang/Object;
    :try_start_1e
    throw v0
    :try_end_1f
    .catch Ljava/io/InterruptedIOException; {:try_start_1e .. :try_end_1f} :catch_24
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 1060
    .restart local p0    # "this":Ljava/io/PrintStream;
    .restart local p1    # "l":Ljava/util/Locale;
    .restart local p2    # "format":Ljava/lang/String;
    .restart local p3    # "args":[Ljava/lang/Object;
    :catch_1f
    move-exception v0

    .line 1061
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_2d

    .line 1058
    .end local v0    # "x":Ljava/io/IOException;
    :catch_24
    move-exception v0

    .line 1059
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1062
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_2c
    nop

    .line 1063
    :goto_2d
    return-object p0
.end method

.method public whitelist test-api print(C)V
    .registers 3
    .param p1, "c"    # C

    .line 612
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method public whitelist test-api print(D)V
    .registers 4
    .param p1, "d"    # D

    .line 668
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method public whitelist test-api print(F)V
    .registers 3
    .param p1, "f"    # F

    .line 654
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method public whitelist test-api print(I)V
    .registers 3
    .param p1, "i"    # I

    .line 626
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method public whitelist test-api print(J)V
    .registers 4
    .param p1, "l"    # J

    .line 640
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method public whitelist test-api print(Ljava/lang/Object;)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 712
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method public whitelist test-api print(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 695
    if-nez p1, :cond_4

    .line 696
    const-string p1, "null"

    .line 698
    :cond_4
    invoke-direct {p0, p1}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 699
    return-void
.end method

.method public whitelist test-api print(Z)V
    .registers 3
    .param p1, "b"    # Z

    .line 600
    if-eqz p1, :cond_5

    const-string v0, "true"

    goto :goto_7

    :cond_5
    const-string v0, "false"

    :goto_7
    invoke-direct {p0, v0}, Ljava/io/PrintStream;->write(Ljava/lang/String;)V

    .line 601
    return-void
.end method

.method public whitelist test-api print([C)V
    .registers 2
    .param p1, "s"    # [C

    .line 682
    invoke-direct {p0, p1}, Ljava/io/PrintStream;->write([C)V

    .line 683
    return-void
.end method

.method public varargs whitelist test-api printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 900
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist test-api printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 5
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 950
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api println()V
    .registers 1

    .line 725
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    .line 726
    return-void
.end method

.method public whitelist test-api println(C)V
    .registers 3
    .param p1, "x"    # C

    .line 750
    monitor-enter p0

    .line 751
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(C)V

    .line 752
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    .line 753
    monitor-exit p0

    .line 754
    return-void

    .line 753
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist test-api println(D)V
    .registers 4
    .param p1, "x"    # D

    .line 806
    monitor-enter p0

    .line 807
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->print(D)V

    .line 808
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    .line 809
    monitor-exit p0

    .line 810
    return-void

    .line 809
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist test-api println(F)V
    .registers 3
    .param p1, "x"    # F

    .line 792
    monitor-enter p0

    .line 793
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(F)V

    .line 794
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    .line 795
    monitor-exit p0

    .line 796
    return-void

    .line 795
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist test-api println(I)V
    .registers 3
    .param p1, "x"    # I

    .line 764
    monitor-enter p0

    .line 765
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(I)V

    .line 766
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    .line 767
    monitor-exit p0

    .line 768
    return-void

    .line 767
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist test-api println(J)V
    .registers 4
    .param p1, "x"    # J

    .line 778
    monitor-enter p0

    .line 779
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->print(J)V

    .line 780
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    .line 781
    monitor-exit p0

    .line 782
    return-void

    .line 781
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist test-api println(Ljava/lang/Object;)V
    .registers 4
    .param p1, "x"    # Ljava/lang/Object;

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

    .line 854
    monitor-exit p0

    .line 855
    return-void

    .line 854
    :catchall_d
    move-exception v1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist test-api println(Ljava/lang/String;)V
    .registers 3
    .param p1, "x"    # Ljava/lang/String;

    .line 834
    monitor-enter p0

    .line 835
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 836
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    .line 837
    monitor-exit p0

    .line 838
    return-void

    .line 837
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist test-api println(Z)V
    .registers 3
    .param p1, "x"    # Z

    .line 736
    monitor-enter p0

    .line 737
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Z)V

    .line 738
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    .line 739
    monitor-exit p0

    .line 740
    return-void

    .line 739
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist test-api println([C)V
    .registers 3
    .param p1, "x"    # [C

    .line 820
    monitor-enter p0

    .line 821
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print([C)V

    .line 822
    invoke-direct {p0}, Ljava/io/PrintStream;->newLine()V

    .line 823
    monitor-exit p0

    .line 824
    return-void

    .line 823
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method protected whitelist test-api setError()V
    .registers 2

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PrintStream;->trouble:Z

    .line 434
    return-void
.end method

.method public whitelist test-api write(I)V
    .registers 4
    .param p1, "b"    # I

    .line 470
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_1b

    .line 471
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 472
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 473
    const/16 v0, 0xa

    if-ne p1, v0, :cond_16

    iget-boolean v0, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v0, :cond_16

    .line 474
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 475
    :cond_16
    monitor-exit p0

    goto :goto_28

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    .end local p0    # "this":Ljava/io/PrintStream;
    .end local p1    # "b":I
    :try_start_1a
    throw v0
    :try_end_1b
    .catch Ljava/io/InterruptedIOException; {:try_start_1a .. :try_end_1b} :catch_20
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1b} :catch_1b

    .line 480
    .restart local p0    # "this":Ljava/io/PrintStream;
    .restart local p1    # "b":I
    :catch_1b
    move-exception v0

    .line 481
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_29

    .line 477
    .end local v0    # "x":Ljava/io/IOException;
    :catch_20
    move-exception v0

    .line 478
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 482
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_28
    nop

    .line 483
    :goto_29
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 501
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1} :catch_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_17

    .line 502
    :try_start_1
    invoke-direct {p0}, Ljava/io/PrintStream;->ensureOpen()V

    .line 503
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 504
    iget-boolean v0, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v0, :cond_12

    .line 505
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 506
    :cond_12
    monitor-exit p0

    goto :goto_24

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    .end local p0    # "this":Ljava/io/PrintStream;
    .end local p1    # "buf":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :try_start_16
    throw v0
    :try_end_17
    .catch Ljava/io/InterruptedIOException; {:try_start_16 .. :try_end_17} :catch_1c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_17} :catch_17

    .line 511
    .restart local p0    # "this":Ljava/io/PrintStream;
    .restart local p1    # "buf":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catch_17
    move-exception v0

    .line 512
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PrintStream;->trouble:Z

    goto :goto_25

    .line 508
    .end local v0    # "x":Ljava/io/IOException;
    :catch_1c
    move-exception v0

    .line 509
    .local v0, "x":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 513
    .end local v0    # "x":Ljava/io/InterruptedIOException;
    :goto_24
    nop

    .line 514
    :goto_25
    return-void
.end method
