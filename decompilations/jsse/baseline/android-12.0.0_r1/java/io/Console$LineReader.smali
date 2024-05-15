.class Ljava/io/Console$LineReader;
.super Ljava/io/Reader;
.source "Console.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/Console;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LineReader"
.end annotation


# instance fields
.field private greylist-max-o cb:[C

.field private greylist-max-o in:Ljava/io/Reader;

.field greylist-max-o leftoverLF:Z

.field private greylist-max-o nChars:I

.field private greylist-max-o nextChar:I

.field final synthetic blacklist this$0:Ljava/io/Console;


# direct methods
.method constructor blacklist <init>(Ljava/io/Console;Ljava/io/Reader;)V
    .registers 4
    .param p1, "this$0"    # Ljava/io/Console;
    .param p2, "in"    # Ljava/io/Reader;

    .line 410
    iput-object p1, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 411
    iput-object p2, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    .line 412
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/Console$LineReader;->cb:[C

    .line 413
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/Console$LineReader;->nChars:I

    iput v0, p0, Ljava/io/Console$LineReader;->nextChar:I

    .line 414
    iput-boolean v0, p0, Ljava/io/Console$LineReader;->leftoverLF:Z

    .line 415
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 416
    return-void
.end method

.method public whitelist test-api read([CII)I
    .registers 16
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    move v0, p2

    .line 426
    .local v0, "off":I
    add-int v1, p2, p3

    .line 427
    .local v1, "end":I
    if-ltz p2, :cond_107

    array-length v2, p1

    if-gt p2, v2, :cond_107

    if-ltz p3, :cond_107

    if-ltz v1, :cond_107

    array-length v2, p1

    if-gt v1, v2, :cond_107

    .line 431
    iget-object v2, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    # getter for: Ljava/io/Console;->readLock:Ljava/lang/Object;
    invoke-static {v2}, Ljava/io/Console;->access$000(Ljava/io/Console;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 432
    const/4 v3, 0x0

    .line 433
    .local v3, "eof":Z
    const/4 v4, 0x0

    .line 435
    .local v4, "c":C
    :cond_18
    :try_start_18
    iget v5, p0, Ljava/io/Console$LineReader;->nextChar:I

    iget v6, p0, Ljava/io/Console$LineReader;->nChars:I

    const/16 v7, 0xd

    const/16 v8, 0xa

    const/4 v9, 0x0

    if-lt v5, v6, :cond_54

    .line 436
    const/4 v5, 0x0

    .line 438
    .local v5, "n":I
    :cond_24
    iget-object v6, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    iget-object v10, p0, Ljava/io/Console$LineReader;->cb:[C

    array-length v11, v10

    invoke-virtual {v6, v10, v9, v11}, Ljava/io/Reader;->read([CII)I

    move-result v6

    move v5, v6

    .line 439
    if-eqz v5, :cond_24

    .line 440
    if-lez v5, :cond_49

    .line 441
    iput v5, p0, Ljava/io/Console$LineReader;->nChars:I

    .line 442
    iput v9, p0, Ljava/io/Console$LineReader;->nextChar:I

    .line 443
    iget-object v6, p0, Ljava/io/Console$LineReader;->cb:[C

    array-length v10, v6

    if-ge v5, v10, :cond_54

    add-int/lit8 v10, v5, -0x1

    aget-char v10, v6, v10

    if-eq v10, v8, :cond_54

    add-int/lit8 v10, v5, -0x1

    aget-char v6, v6, v10

    if-eq v6, v7, :cond_54

    .line 450
    const/4 v3, 0x1

    goto :goto_54

    .line 453
    :cond_49
    sub-int v6, v0, p2

    if-nez v6, :cond_50

    .line 454
    const/4 v6, -0x1

    monitor-exit v2

    return v6

    .line 455
    :cond_50
    sub-int v6, v0, p2

    monitor-exit v2

    return v6

    .line 458
    .end local v5    # "n":I
    :cond_54
    :goto_54
    iget-boolean v5, p0, Ljava/io/Console$LineReader;->leftoverLF:Z

    if-eqz v5, :cond_6c

    iget-object v5, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    # getter for: Ljava/io/Console;->rcb:[C
    invoke-static {v5}, Ljava/io/Console;->access$100(Ljava/io/Console;)[C

    move-result-object v5

    if-ne p1, v5, :cond_6c

    iget-object v5, p0, Ljava/io/Console$LineReader;->cb:[C

    iget v6, p0, Ljava/io/Console$LineReader;->nextChar:I

    aget-char v5, v5, v6

    if-ne v5, v8, :cond_6c

    .line 463
    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/io/Console$LineReader;->nextChar:I

    .line 465
    :cond_6c
    iput-boolean v9, p0, Ljava/io/Console$LineReader;->leftoverLF:Z

    .line 466
    :goto_6e
    iget v5, p0, Ljava/io/Console$LineReader;->nextChar:I

    iget v6, p0, Ljava/io/Console$LineReader;->nChars:I
    :try_end_72
    .catchall {:try_start_18 .. :try_end_72} :catchall_104

    if-ge v5, v6, :cond_fe

    .line 467
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "off":I
    .local v6, "off":I
    :try_start_76
    iget-object v10, p0, Ljava/io/Console$LineReader;->cb:[C

    aget-char v11, v10, v5

    aput-char v11, p1, v0

    move v4, v11

    .line 468
    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Ljava/io/Console$LineReader;->nextChar:I

    aput-char v9, v10, v5

    .line 469
    if-ne v4, v8, :cond_89

    .line 470
    sub-int v0, v6, p2

    monitor-exit v2

    return v0

    .line 471
    :cond_89
    if-ne v4, v7, :cond_de

    .line 472
    const/4 v0, 0x1

    if-ne v6, v1, :cond_a6

    .line 477
    iget-object v5, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    # getter for: Ljava/io/Console;->rcb:[C
    invoke-static {v5}, Ljava/io/Console;->access$100(Ljava/io/Console;)[C

    move-result-object v5

    if-ne p1, v5, :cond_a0

    .line 478
    iget-object v5, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    # invokes: Ljava/io/Console;->grow()[C
    invoke-static {v5}, Ljava/io/Console;->access$200(Ljava/io/Console;)[C

    move-result-object v5

    move-object p1, v5

    .line 479
    array-length v5, p1

    move v1, v5

    goto :goto_a6

    .line 481
    :cond_a0
    iput-boolean v0, p0, Ljava/io/Console$LineReader;->leftoverLF:Z

    .line 482
    sub-int v0, v6, p2

    monitor-exit v2

    return v0

    .line 485
    :cond_a6
    :goto_a6
    iget v5, p0, Ljava/io/Console$LineReader;->nextChar:I

    iget v7, p0, Ljava/io/Console$LineReader;->nChars:I

    if-ne v5, v7, :cond_c1

    iget-object v5, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    invoke-virtual {v5}, Ljava/io/Reader;->ready()Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 493
    iget-object v5, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    array-length v10, v7

    invoke-virtual {v5, v7, v9, v10}, Ljava/io/Reader;->read([CII)I

    move-result v5

    iput v5, p0, Ljava/io/Console$LineReader;->nChars:I

    .line 494
    iput v9, p0, Ljava/io/Console$LineReader;->nextChar:I

    .line 496
    :cond_c1
    iget v5, p0, Ljava/io/Console$LineReader;->nextChar:I

    iget v7, p0, Ljava/io/Console$LineReader;->nChars:I

    if-ge v5, v7, :cond_d9

    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    aget-char v7, v7, v5
    :try_end_cb
    .catchall {:try_start_76 .. :try_end_cb} :catchall_fb

    if-ne v7, v8, :cond_d9

    .line 497
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "off":I
    .local v7, "off":I
    :try_start_cf
    aput-char v8, p1, v6

    .line 498
    add-int/2addr v5, v0

    iput v5, p0, Ljava/io/Console$LineReader;->nextChar:I
    :try_end_d4
    .catchall {:try_start_cf .. :try_end_d4} :catchall_d6

    move v0, v7

    goto :goto_da

    .line 513
    .end local v3    # "eof":Z
    .end local v4    # "c":C
    :catchall_d6
    move-exception v3

    move v0, v7

    goto :goto_105

    .line 500
    .end local v7    # "off":I
    .restart local v3    # "eof":Z
    .restart local v4    # "c":C
    .restart local v6    # "off":I
    :cond_d9
    move v0, v6

    .end local v6    # "off":I
    .restart local v0    # "off":I
    :goto_da
    sub-int v5, v0, p2

    :try_start_dc
    monitor-exit v2
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_104

    return v5

    .line 501
    .end local v0    # "off":I
    .restart local v6    # "off":I
    :cond_de
    if-ne v6, v1, :cond_f8

    .line 502
    :try_start_e0
    iget-object v0, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    # getter for: Ljava/io/Console;->rcb:[C
    invoke-static {v0}, Ljava/io/Console;->access$100(Ljava/io/Console;)[C

    move-result-object v0

    if-ne p1, v0, :cond_f4

    .line 503
    iget-object v0, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    # invokes: Ljava/io/Console;->grow()[C
    invoke-static {v0}, Ljava/io/Console;->access$200(Ljava/io/Console;)[C

    move-result-object v0

    move-object p1, v0

    .line 504
    array-length v0, p1

    move v1, v0

    move v0, v6

    goto/16 :goto_6e

    .line 506
    :cond_f4
    sub-int v0, v6, p2

    monitor-exit v2
    :try_end_f7
    .catchall {:try_start_e0 .. :try_end_f7} :catchall_fb

    return v0

    .line 501
    :cond_f8
    move v0, v6

    goto/16 :goto_6e

    .line 513
    .end local v3    # "eof":Z
    .end local v4    # "c":C
    :catchall_fb
    move-exception v3

    move v0, v6

    goto :goto_105

    .line 510
    .end local v6    # "off":I
    .restart local v0    # "off":I
    .restart local v3    # "eof":Z
    .restart local v4    # "c":C
    :cond_fe
    if-eqz v3, :cond_18

    .line 511
    sub-int v5, v0, p2

    :try_start_102
    monitor-exit v2

    return v5

    .line 513
    .end local v3    # "eof":Z
    .end local v4    # "c":C
    :catchall_104
    move-exception v3

    :goto_105
    monitor-exit v2
    :try_end_106
    .catchall {:try_start_102 .. :try_end_106} :catchall_104

    throw v3

    .line 429
    :cond_107
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public whitelist test-api ready()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    return v0
.end method
