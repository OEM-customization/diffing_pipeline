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
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static greylist-max-o cons:Ljava/io/Console;

.field private static greylist-max-o echoOff:Z


# instance fields
.field private greylist-max-o cs:Ljava/nio/charset/Charset;

.field private greylist-max-o formatter:Ljava/util/Formatter;

.field private greylist-max-o out:Ljava/io/Writer;

.field private greylist-max-o pw:Ljava/io/PrintWriter;

.field private greylist-max-o rcb:[C

.field private greylist-max-o readLock:Ljava/lang/Object;

.field private greylist-max-o reader:Ljava/io/Reader;

.field private greylist-max-o writeLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 93
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 4

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

.method private constructor greylist-max-o <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    .line 541
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/Console;->writeLock:Ljava/lang/Object;

    .line 542
    invoke-static {}, Ljava/io/Console;->encoding()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "csname":Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 545
    :try_start_17
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Ljava/io/Console;->cs:Ljava/nio/charset/Charset;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_1e

    goto :goto_1f

    .line 546
    :catch_1e
    move-exception v1

    .line 548
    :cond_1f
    :goto_1f
    iget-object v1, p0, Ljava/io/Console;->cs:Ljava/nio/charset/Charset;

    if-nez v1, :cond_29

    .line 549
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Ljava/io/Console;->cs:Ljava/nio/charset/Charset;

    .line 550
    :cond_29
    iget-object v1, p0, Ljava/io/Console;->writeLock:Ljava/lang/Object;

    iget-object v2, p0, Ljava/io/Console;->cs:Ljava/nio/charset/Charset;

    invoke-static {p2, v1, v2}, Lsun/nio/cs/StreamEncoder;->forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamEncoder;

    move-result-object v1

    iput-object v1, p0, Ljava/io/Console;->out:Ljava/io/Writer;

    .line 554
    new-instance v2, Ljava/io/Console$1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v1, v3}, Ljava/io/Console$1;-><init>(Ljava/io/Console;Ljava/io/Writer;Z)V

    iput-object v2, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    .line 555
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Ljava/io/Console;->out:Ljava/io/Writer;

    invoke-direct {v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v1, p0, Ljava/io/Console;->formatter:Ljava/util/Formatter;

    .line 556
    new-instance v1, Ljava/io/Console$LineReader;

    iget-object v2, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    iget-object v3, p0, Ljava/io/Console;->cs:Ljava/nio/charset/Charset;

    invoke-static {p1, v2, v3}, Lsun/nio/cs/StreamDecoder;->forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamDecoder;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/Console$LineReader;-><init>(Ljava/io/Console;Ljava/io/Reader;)V

    iput-object v1, p0, Ljava/io/Console;->reader:Ljava/io/Reader;

    .line 560
    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Ljava/io/Console;->rcb:[C

    .line 561
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/io/Console;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Ljava/io/Console;

    .line 93
    iget-object v0, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic blacklist access$100(Ljava/io/Console;)[C
    .registers 2
    .param p0, "x0"    # Ljava/io/Console;

    .line 93
    iget-object v0, p0, Ljava/io/Console;->rcb:[C

    return-object v0
.end method

.method static synthetic blacklist access$200(Ljava/io/Console;)[C
    .registers 2
    .param p0, "x0"    # Ljava/io/Console;

    .line 93
    invoke-direct {p0}, Ljava/io/Console;->grow()[C

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o console()Ljava/io/Console;
    .registers 1

    .line 523
    invoke-static {}, Ljava/io/Console;->istty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 524
    sget-object v0, Ljava/io/Console;->cons:Ljava/io/Console;

    if-nez v0, :cond_11

    .line 525
    new-instance v0, Ljava/io/Console;

    invoke-direct {v0}, Ljava/io/Console;-><init>()V

    sput-object v0, Ljava/io/Console;->cons:Ljava/io/Console;

    .line 526
    :cond_11
    sget-object v0, Ljava/io/Console;->cons:Ljava/io/Console;

    return-object v0

    .line 528
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private static native greylist-max-o echo(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist encoding()Ljava/lang/String;
.end method

.method private greylist-max-o grow()[C
    .registers 5

    .line 398
    nop

    .line 399
    iget-object v0, p0, Ljava/io/Console;->rcb:[C

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 400
    .local v1, "t":[C
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    iput-object v1, p0, Ljava/io/Console;->rcb:[C

    .line 402
    return-object v1
.end method

.method private static native greylist-max-o istty()Z
.end method

.method private greylist-max-o readline(Z)[C
    .registers 8
    .param p1, "zeroOut"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Ljava/io/Console;->reader:Ljava/io/Reader;

    iget-object v1, p0, Ljava/io/Console;->rcb:[C

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 378
    .local v0, "len":I
    if-gez v0, :cond_e

    .line 379
    const/4 v1, 0x0

    return-object v1

    .line 380
    :cond_e
    iget-object v1, p0, Ljava/io/Console;->rcb:[C

    add-int/lit8 v2, v0, -0x1

    aget-char v2, v1, v2

    const/16 v4, 0xd

    if-ne v2, v4, :cond_1b

    .line 381
    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    .line 382
    :cond_1b
    add-int/lit8 v2, v0, -0x1

    aget-char v2, v1, v2

    const/16 v5, 0xa

    if-ne v2, v5, :cond_2f

    .line 383
    add-int/lit8 v0, v0, -0x1

    .line 384
    if-lez v0, :cond_2f

    add-int/lit8 v2, v0, -0x1

    aget-char v1, v1, v2

    if-ne v1, v4, :cond_2f

    .line 385
    add-int/lit8 v0, v0, -0x1

    .line 387
    :cond_2f
    :goto_2f
    new-array v1, v0, [C

    .line 388
    .local v1, "b":[C
    if-lez v0, :cond_41

    .line 389
    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    if-eqz p1, :cond_41

    .line 391
    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    const/16 v4, 0x20

    invoke-static {v2, v3, v0, v4}, Ljava/util/Arrays;->fill([CIIC)V

    .line 394
    :cond_41
    return-object v1
.end method


# virtual methods
.method public whitelist core-platform-api test-api flush()V
    .registers 2

    .line 361
    iget-object v0, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 362
    return-void
.end method

.method public varargs whitelist core-platform-api test-api format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;
    .registers 4
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Ljava/io/Console;->formatter:Ljava/util/Formatter;

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->flush()V

    .line 172
    return-object p0
.end method

.method public varargs whitelist core-platform-api test-api printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 210
    invoke-virtual {p0, p1, p2}, Ljava/io/Console;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api readLine()Ljava/lang/String;
    .registers 3

    .line 273
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Ljava/io/Console;->readLine(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist core-platform-api test-api readLine(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "line":Ljava/lang/String;
    iget-object v1, p0, Ljava/io/Console;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_4
    iget-object v2, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_2d

    .line 248
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    .line 249
    iget-object v3, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v3, p1, p2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_2a

    .line 251
    :cond_12
    const/4 v3, 0x0

    :try_start_13
    invoke-direct {p0, v3}, Ljava/io/Console;->readline(Z)[C

    move-result-object v3

    .line 252
    .local v3, "ca":[C
    if-eqz v3, :cond_1f

    .line 253
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1e} :catch_23
    .catchall {:try_start_13 .. :try_end_1e} :catchall_2a

    move-object v0, v4

    .line 256
    .end local v3    # "ca":[C
    :cond_1f
    nop

    .line 257
    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_2a

    .line 258
    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_2d

    .line 259
    return-object v0

    .line 254
    :catch_23
    move-exception v3

    .line 255
    .local v3, "x":Ljava/io/IOException;
    :try_start_24
    new-instance v4, Ljava/io/IOError;

    invoke-direct {v4, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "line":Ljava/lang/String;
    .end local p0    # "this":Ljava/io/Console;
    .end local p1    # "fmt":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    throw v4

    .line 257
    .end local v3    # "x":Ljava/io/IOException;
    .restart local v0    # "line":Ljava/lang/String;
    .restart local p0    # "this":Ljava/io/Console;
    .restart local p1    # "fmt":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :catchall_2a
    move-exception v3

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2a

    .end local v0    # "line":Ljava/lang/String;
    .end local p0    # "this":Ljava/io/Console;
    .end local p1    # "fmt":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    :try_start_2c
    throw v3

    .line 258
    .restart local v0    # "line":Ljava/lang/String;
    .restart local p0    # "this":Ljava/io/Console;
    .restart local p1    # "fmt":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :catchall_2d
    move-exception v2

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public whitelist core-platform-api test-api readPassword()[C
    .registers 3

    .line 353
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Ljava/io/Console;->readPassword(Ljava/lang/String;[Ljava/lang/Object;)[C

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist core-platform-api test-api readPassword(Ljava/lang/String;[Ljava/lang/Object;)[C
    .registers 10
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "passwd":[C
    iget-object v1, p0, Ljava/io/Console;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_4
    iget-object v2, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_7b

    .line 313
    const/4 v3, 0x0

    :try_start_8
    invoke-static {v3}, Ljava/io/Console;->echo(Z)Z

    move-result v3

    sput-boolean v3, Ljava/io/Console;->echoOff:Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_72
    .catchall {:try_start_8 .. :try_end_e} :catchall_70

    .line 316
    nop

    .line 317
    const/4 v3, 0x0

    .line 319
    .local v3, "ioe":Ljava/io/IOError;
    const/4 v4, 0x1

    :try_start_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1c

    .line 320
    iget-object v5, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v5, p1, p2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 321
    :cond_1c
    invoke-direct {p0, v4}, Ljava/io/Console;->readline(Z)[C

    move-result-object v5
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_20} :catch_43
    .catchall {:try_start_11 .. :try_end_20} :catchall_41

    move-object v0, v5

    .line 326
    :try_start_21
    invoke-static {v4}, Ljava/io/Console;->echo(Z)Z

    move-result v4

    sput-boolean v4, Ljava/io/Console;->echoOff:Z
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_27} :catch_28
    .catchall {:try_start_21 .. :try_end_27} :catchall_70

    .line 332
    goto :goto_35

    .line 327
    :catch_28
    move-exception v4

    .line 328
    .local v4, "x":Ljava/io/IOException;
    if-nez v3, :cond_32

    .line 329
    :try_start_2b
    new-instance v5, Ljava/io/IOError;

    invoke-direct {v5, v4}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    move-object v3, v5

    goto :goto_35

    .line 331
    :cond_32
    invoke-virtual {v3, v4}, Ljava/io/IOError;->addSuppressed(Ljava/lang/Throwable;)V

    .line 333
    .end local v4    # "x":Ljava/io/IOException;
    :goto_35
    if-nez v3, :cond_3f

    .line 336
    iget-object v4, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 337
    .end local v3    # "ioe":Ljava/io/IOError;
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_70

    .line 338
    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_7b

    .line 339
    return-object v0

    .line 334
    .restart local v3    # "ioe":Ljava/io/IOError;
    :cond_3f
    :goto_3f
    nop

    .end local v0    # "passwd":[C
    .end local p0    # "this":Ljava/io/Console;
    .end local p1    # "fmt":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    :try_start_40
    throw v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_70

    .line 325
    .restart local v0    # "passwd":[C
    .restart local p0    # "this":Ljava/io/Console;
    .restart local p1    # "fmt":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :catchall_41
    move-exception v5

    goto :goto_57

    .line 322
    :catch_43
    move-exception v5

    .line 323
    .local v5, "x":Ljava/io/IOException;
    :try_start_44
    new-instance v6, Ljava/io/IOError;

    invoke-direct {v6, v5}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_41

    move-object v3, v6

    .line 326
    .end local v5    # "x":Ljava/io/IOException;
    :try_start_4a
    invoke-static {v4}, Ljava/io/Console;->echo(Z)Z

    move-result v4

    sput-boolean v4, Ljava/io/Console;->echoOff:Z
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_50} :catch_51
    .catchall {:try_start_4a .. :try_end_50} :catchall_70

    .line 332
    goto :goto_56

    .line 327
    :catch_51
    move-exception v4

    .line 328
    .restart local v4    # "x":Ljava/io/IOException;
    nop

    .line 331
    :try_start_53
    invoke-virtual {v3, v4}, Ljava/io/IOError;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_70

    .line 333
    .end local v4    # "x":Ljava/io/IOException;
    :goto_56
    goto :goto_3f

    .line 326
    :goto_57
    :try_start_57
    invoke-static {v4}, Ljava/io/Console;->echo(Z)Z

    move-result v4

    sput-boolean v4, Ljava/io/Console;->echoOff:Z
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5d} :catch_5e
    .catchall {:try_start_57 .. :try_end_5d} :catchall_70

    .line 332
    goto :goto_6b

    .line 327
    :catch_5e
    move-exception v4

    .line 328
    .restart local v4    # "x":Ljava/io/IOException;
    if-nez v3, :cond_68

    .line 329
    :try_start_61
    new-instance v6, Ljava/io/IOError;

    invoke-direct {v6, v4}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    move-object v3, v6

    goto :goto_6b

    .line 331
    :cond_68
    invoke-virtual {v3, v4}, Ljava/io/IOError;->addSuppressed(Ljava/lang/Throwable;)V

    .line 333
    .end local v4    # "x":Ljava/io/IOException;
    :goto_6b
    if-eqz v3, :cond_6e

    .line 334
    goto :goto_3f

    .line 335
    :cond_6e
    nop

    .end local v0    # "passwd":[C
    .end local p0    # "this":Ljava/io/Console;
    .end local p1    # "fmt":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    throw v5

    .line 337
    .end local v3    # "ioe":Ljava/io/IOError;
    .restart local v0    # "passwd":[C
    .restart local p0    # "this":Ljava/io/Console;
    .restart local p1    # "fmt":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :catchall_70
    move-exception v3

    goto :goto_79

    .line 314
    :catch_72
    move-exception v3

    .line 315
    .local v3, "x":Ljava/io/IOException;
    new-instance v4, Ljava/io/IOError;

    invoke-direct {v4, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "passwd":[C
    .end local p0    # "this":Ljava/io/Console;
    .end local p1    # "fmt":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    throw v4

    .line 337
    .end local v3    # "x":Ljava/io/IOException;
    .restart local v0    # "passwd":[C
    .restart local p0    # "this":Ljava/io/Console;
    .restart local p1    # "fmt":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :goto_79
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_61 .. :try_end_7a} :catchall_70

    .end local v0    # "passwd":[C
    .end local p0    # "this":Ljava/io/Console;
    .end local p1    # "fmt":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    :try_start_7a
    throw v3

    .line 338
    .restart local v0    # "passwd":[C
    .restart local p0    # "this":Ljava/io/Console;
    .restart local p1    # "fmt":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :catchall_7b
    move-exception v2

    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7b

    throw v2
.end method

.method public whitelist core-platform-api test-api reader()Ljava/io/Reader;
    .registers 2

    .line 137
    iget-object v0, p0, Ljava/io/Console;->reader:Ljava/io/Reader;

    return-object v0
.end method

.method public whitelist core-platform-api test-api writer()Ljava/io/PrintWriter;
    .registers 2

    .line 102
    iget-object v0, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    return-object v0
.end method
