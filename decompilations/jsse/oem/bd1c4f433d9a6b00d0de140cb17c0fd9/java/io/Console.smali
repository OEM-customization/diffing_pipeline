.class public final Ljava/io/Console;
.super Ljava/lang/Object;
.source "Console.java"

# interfaces
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/Console$LineReader;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static cons:Ljava/io/Console;

.field private static echoOff:Z


# instance fields
.field private cs:Ljava/nio/charset/Charset;

.field private formatter:Ljava/util/Formatter;

.field private out:Ljava/io/Writer;

.field private pw:Ljava/io/PrintWriter;

.field private rcb:[C

.field private readLock:Ljava/lang/Object;

.field private reader:Ljava/io/Reader;

.field private writeLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Ljava/io/Console;)[C
    .registers 2
    .param p0, "-this"    # Ljava/io/Console;

    .prologue
    iget-object v0, p0, Ljava/io/Console;->rcb:[C

    return-object v0
.end method

.method static synthetic -get1(Ljava/io/Console;)Ljava/lang/Object;
    .registers 2
    .param p0, "-this"    # Ljava/io/Console;

    .prologue
    iget-object v0, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/io/Console;)[C
    .registers 2
    .param p0, "-this"    # Ljava/io/Console;

    .prologue
    invoke-direct {p0}, Ljava/io/Console;->grow()[C

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/io/Console;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/io/Console;->-assertionsDisabled:Z

    .line 93
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 534
    new-instance v0, Ljava/io/FileInputStream;

    sget-object v1, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0, v1}, Ljava/io/Console;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 535
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 8
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;

    .prologue
    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    .line 541
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ljava/io/Console;->writeLock:Ljava/lang/Object;

    .line 542
    invoke-static {}, Ljava/io/Console;->encoding()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "csname":Ljava/lang/String;
    if-eqz v0, :cond_1d

    .line 545
    :try_start_17
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    iput-object v2, p0, Ljava/io/Console;->cs:Ljava/nio/charset/Charset;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_5a

    .line 548
    :cond_1d
    :goto_1d
    iget-object v2, p0, Ljava/io/Console;->cs:Ljava/nio/charset/Charset;

    if-nez v2, :cond_27

    .line 549
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    iput-object v2, p0, Ljava/io/Console;->cs:Ljava/nio/charset/Charset;

    .line 552
    :cond_27
    iget-object v2, p0, Ljava/io/Console;->writeLock:Ljava/lang/Object;

    .line 553
    iget-object v3, p0, Ljava/io/Console;->cs:Ljava/nio/charset/Charset;

    .line 550
    invoke-static {p2, v2, v3}, Lsun/nio/cs/StreamEncoder;->forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamEncoder;

    move-result-object v2

    iput-object v2, p0, Ljava/io/Console;->out:Ljava/io/Writer;

    .line 554
    new-instance v2, Ljava/io/Console$1;

    iget-object v3, p0, Ljava/io/Console;->out:Ljava/io/Writer;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v4}, Ljava/io/Console$1;-><init>(Ljava/io/Console;Ljava/io/Writer;Z)V

    iput-object v2, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    .line 555
    new-instance v2, Ljava/util/Formatter;

    iget-object v3, p0, Ljava/io/Console;->out:Ljava/io/Writer;

    invoke-direct {v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v2, p0, Ljava/io/Console;->formatter:Ljava/util/Formatter;

    .line 556
    new-instance v2, Ljava/io/Console$LineReader;

    .line 558
    iget-object v3, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    .line 559
    iget-object v4, p0, Ljava/io/Console;->cs:Ljava/nio/charset/Charset;

    .line 556
    invoke-static {p1, v3, v4}, Lsun/nio/cs/StreamDecoder;->forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamDecoder;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/io/Console$LineReader;-><init>(Ljava/io/Console;Ljava/io/Reader;)V

    iput-object v2, p0, Ljava/io/Console;->reader:Ljava/io/Reader;

    .line 560
    const/16 v2, 0x400

    new-array v2, v2, [C

    iput-object v2, p0, Ljava/io/Console;->rcb:[C

    .line 561
    return-void

    .line 546
    :catch_5a
    move-exception v1

    .local v1, "x":Ljava/lang/Exception;
    goto :goto_1d
.end method

.method public static console()Ljava/io/Console;
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 523
    invoke-static {}, Ljava/io/Console;->istty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 524
    sget-object v0, Ljava/io/Console;->cons:Ljava/io/Console;

    if-nez v0, :cond_12

    .line 525
    new-instance v0, Ljava/io/Console;

    invoke-direct {v0}, Ljava/io/Console;-><init>()V

    sput-object v0, Ljava/io/Console;->cons:Ljava/io/Console;

    .line 526
    :cond_12
    sget-object v0, Ljava/io/Console;->cons:Ljava/io/Console;

    return-object v0

    .line 528
    :cond_15
    return-object v1
.end method

.method private static native echo(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native encoding()Ljava/lang/String;
.end method

.method private grow()[C
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 398
    sget-boolean v1, Ljava/io/Console;->-assertionsDisabled:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 399
    :cond_13
    iget-object v1, p0, Ljava/io/Console;->rcb:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [C

    .line 400
    .local v0, "t":[C
    iget-object v1, p0, Ljava/io/Console;->rcb:[C

    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 401
    iput-object v0, p0, Ljava/io/Console;->rcb:[C

    .line 402
    iget-object v1, p0, Ljava/io/Console;->rcb:[C

    return-object v1
.end method

.method private static native istty()Z
.end method

.method private readline(Z)[C
    .registers 9
    .param p1, "zeroOut"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xd

    const/4 v5, 0x0

    .line 377
    iget-object v2, p0, Ljava/io/Console;->reader:Ljava/io/Reader;

    iget-object v3, p0, Ljava/io/Console;->rcb:[C

    iget-object v4, p0, Ljava/io/Console;->rcb:[C

    array-length v4, v4

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 378
    .local v1, "len":I
    if-gez v1, :cond_12

    .line 379
    const/4 v2, 0x0

    return-object v2

    .line 380
    :cond_12
    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    add-int/lit8 v3, v1, -0x1

    aget-char v2, v2, v3

    if-ne v2, v6, :cond_2f

    .line 381
    add-int/lit8 v1, v1, -0x1

    .line 387
    :cond_1c
    :goto_1c
    new-array v0, v1, [C

    .line 388
    .local v0, "b":[C
    if-lez v1, :cond_2e

    .line 389
    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    invoke-static {v2, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 390
    if-eqz p1, :cond_2e

    .line 391
    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    const/16 v3, 0x20

    invoke-static {v2, v5, v1, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 394
    :cond_2e
    return-object v0

    .line 382
    .end local v0    # "b":[C
    :cond_2f
    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    add-int/lit8 v3, v1, -0x1

    aget-char v2, v2, v3

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1c

    .line 383
    add-int/lit8 v1, v1, -0x1

    .line 384
    if-lez v1, :cond_1c

    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    add-int/lit8 v3, v1, -0x1

    aget-char v2, v2, v3

    if-ne v2, v6, :cond_1c

    .line 385
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c
.end method


# virtual methods
.method public flush()V
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 362
    return-void
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;
    .registers 4
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 171
    iget-object v0, p0, Ljava/io/Console;->formatter:Ljava/util/Formatter;

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->flush()V

    .line 172
    return-object p0
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 210
    invoke-virtual {p0, p1, p2}, Ljava/io/Console;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;

    move-result-object v0

    return-object v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 3

    .prologue
    .line 273
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/io/Console;->readLine(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs readLine(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 10
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, "line":Ljava/lang/String;
    iget-object v5, p0, Ljava/io/Console;->writeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 247
    :try_start_4
    iget-object v6, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_2c

    .line 248
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_12

    .line 249
    iget-object v4, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4, p1, p2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_29

    .line 251
    :cond_12
    const/4 v4, 0x0

    :try_start_13
    invoke-direct {p0, v4}, Ljava/io/Console;->readline(Z)[C

    move-result-object v0

    .line 252
    .local v0, "ca":[C
    if-eqz v0, :cond_1f

    .line 253
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1e} :catch_22
    .catchall {:try_start_13 .. :try_end_1e} :catchall_29

    .local v2, "line":Ljava/lang/String;
    move-object v1, v2

    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "line":Ljava/lang/String;
    :cond_1f
    :try_start_1f
    monitor-exit v6
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_2c

    monitor-exit v5

    .line 259
    return-object v1

    .line 254
    .end local v0    # "ca":[C
    .restart local v1    # "line":Ljava/lang/String;
    :catch_22
    move-exception v3

    .line 255
    .local v3, "x":Ljava/io/IOException;
    :try_start_23
    new-instance v4, Ljava/io/IOError;

    invoke-direct {v4, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_29

    .line 247
    .end local v3    # "x":Ljava/io/IOException;
    :catchall_29
    move-exception v4

    :try_start_2a
    monitor-exit v6

    throw v4
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_2c

    .line 246
    .end local v1    # "line":Ljava/lang/String;
    :catchall_2c
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public readPassword()[C
    .registers 3

    .prologue
    .line 353
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/io/Console;->readPassword(Ljava/lang/String;[Ljava/lang/Object;)[C

    move-result-object v0

    return-object v0
.end method

.method public varargs readPassword(Ljava/lang/String;[Ljava/lang/Object;)[C
    .registers 11
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 309
    const/4 v2, 0x0

    .line 310
    .local v2, "passwd":[C
    iget-object v5, p0, Ljava/io/Console;->writeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 311
    :try_start_4
    iget-object v6, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_2c

    .line 313
    const/4 v4, 0x0

    :try_start_8
    invoke-static {v4}, Ljava/io/Console;->echo(Z)Z

    move-result v4

    sput-boolean v4, Ljava/io/Console;->echoOff:Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_2f
    .catchall {:try_start_8 .. :try_end_e} :catchall_29

    .line 317
    const/4 v0, 0x0

    .line 319
    .local v0, "ioe":Ljava/io/IOError;
    :try_start_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 320
    iget-object v4, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4, p1, p2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 321
    :cond_1a
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Ljava/io/Console;->readline(Z)[C
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1e} :catch_3d
    .catchall {:try_start_f .. :try_end_1e} :catchall_5c

    move-result-object v2

    .line 326
    .local v2, "passwd":[C
    const/4 v4, 0x1

    :try_start_20
    invoke-static {v4}, Ljava/io/Console;->echo(Z)Z

    move-result v4

    sput-boolean v4, Ljava/io/Console;->echoOff:Z
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_26} :catch_36
    .catchall {:try_start_20 .. :try_end_26} :catchall_29

    .line 333
    .end local v0    # "ioe":Ljava/io/IOError;
    :goto_26
    if-eqz v0, :cond_6f

    .line 334
    :try_start_28
    throw v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    .line 311
    .end local v2    # "passwd":[C
    :catchall_29
    move-exception v4

    :try_start_2a
    monitor-exit v6

    throw v4
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_2c

    .line 310
    :catchall_2c
    move-exception v4

    monitor-exit v5

    throw v4

    .line 314
    .local v2, "passwd":[C
    :catch_2f
    move-exception v3

    .line 315
    .local v3, "x":Ljava/io/IOException;
    :try_start_30
    new-instance v4, Ljava/io/IOError;

    invoke-direct {v4, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 327
    .end local v3    # "x":Ljava/io/IOException;
    .restart local v0    # "ioe":Ljava/io/IOError;
    .local v2, "passwd":[C
    :catch_36
    move-exception v3

    .line 329
    .restart local v3    # "x":Ljava/io/IOException;
    new-instance v0, Ljava/io/IOError;

    .end local v0    # "ioe":Ljava/io/IOError;
    invoke-direct {v0, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_29

    .local v0, "ioe":Ljava/io/IOError;
    goto :goto_26

    .line 322
    .end local v3    # "x":Ljava/io/IOException;
    .local v0, "ioe":Ljava/io/IOError;
    .local v2, "passwd":[C
    :catch_3d
    move-exception v3

    .line 323
    .restart local v3    # "x":Ljava/io/IOException;
    :try_start_3e
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_5c

    .line 326
    .end local v0    # "ioe":Ljava/io/IOError;
    .local v1, "ioe":Ljava/io/IOError;
    const/4 v4, 0x1

    :try_start_44
    invoke-static {v4}, Ljava/io/Console;->echo(Z)Z

    move-result v4

    sput-boolean v4, Ljava/io/Console;->echoOff:Z
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4a} :catch_4e
    .catchall {:try_start_44 .. :try_end_4a} :catchall_29

    move-object v0, v1

    .line 333
    .end local v1    # "ioe":Ljava/io/IOError;
    .local v0, "ioe":Ljava/io/IOError;
    :goto_4b
    if-eqz v0, :cond_6f

    .line 334
    :try_start_4d
    throw v0

    .line 327
    .end local v0    # "ioe":Ljava/io/IOError;
    .restart local v1    # "ioe":Ljava/io/IOError;
    :catch_4e
    move-exception v3

    .line 328
    if-nez v1, :cond_57

    .line 329
    new-instance v0, Ljava/io/IOError;

    invoke-direct {v0, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "ioe":Ljava/io/IOError;
    .restart local v0    # "ioe":Ljava/io/IOError;
    goto :goto_4b

    .line 331
    .end local v0    # "ioe":Ljava/io/IOError;
    .restart local v1    # "ioe":Ljava/io/IOError;
    :cond_57
    invoke-virtual {v1, v3}, Ljava/io/IOError;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5a
    .catchall {:try_start_4d .. :try_end_5a} :catchall_29

    move-object v0, v1

    .end local v1    # "ioe":Ljava/io/IOError;
    .restart local v0    # "ioe":Ljava/io/IOError;
    goto :goto_4b

    .line 324
    .end local v3    # "x":Ljava/io/IOException;
    .local v0, "ioe":Ljava/io/IOError;
    :catchall_5c
    move-exception v4

    .line 326
    const/4 v7, 0x1

    :try_start_5e
    invoke-static {v7}, Ljava/io/Console;->echo(Z)Z

    move-result v7

    sput-boolean v7, Ljava/io/Console;->echoOff:Z
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_64} :catch_67
    .catchall {:try_start_5e .. :try_end_64} :catchall_29

    .line 333
    .end local v0    # "ioe":Ljava/io/IOError;
    :goto_64
    if-eqz v0, :cond_6e

    .line 334
    :try_start_66
    throw v0

    .line 327
    .restart local v0    # "ioe":Ljava/io/IOError;
    :catch_67
    move-exception v3

    .line 329
    .restart local v3    # "x":Ljava/io/IOException;
    new-instance v0, Ljava/io/IOError;

    .end local v0    # "ioe":Ljava/io/IOError;
    invoke-direct {v0, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    .local v0, "ioe":Ljava/io/IOError;
    goto :goto_64

    .line 324
    .end local v0    # "ioe":Ljava/io/IOError;
    .end local v3    # "x":Ljava/io/IOException;
    :cond_6e
    throw v4

    .line 336
    .end local v2    # "passwd":[C
    :cond_6f
    iget-object v4, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_29

    :try_start_74
    monitor-exit v6
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_2c

    monitor-exit v5

    .line 339
    return-object v2
.end method

.method public reader()Ljava/io/Reader;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Ljava/io/Console;->reader:Ljava/io/Reader;

    return-object v0
.end method

.method public writer()Ljava/io/PrintWriter;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    return-object v0
.end method
