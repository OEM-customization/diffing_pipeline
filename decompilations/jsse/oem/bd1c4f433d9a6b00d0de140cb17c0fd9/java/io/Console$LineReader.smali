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
.field private cb:[C

.field private in:Ljava/io/Reader;

.field leftoverLF:Z

.field private nChars:I

.field private nextChar:I

.field final synthetic this$0:Ljava/io/Console;


# direct methods
.method constructor <init>(Ljava/io/Console;Ljava/io/Reader;)V
    .registers 5
    .param p1, "this$0"    # Ljava/io/Console;
    .param p2, "in"    # Ljava/io/Reader;

    .prologue
    const/4 v1, 0x0

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
    iput v1, p0, Ljava/io/Console$LineReader;->nChars:I

    iput v1, p0, Ljava/io/Console$LineReader;->nextChar:I

    .line 414
    iput-boolean v1, p0, Ljava/io/Console$LineReader;->leftoverLF:Z

    .line 415
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 416
    return-void
.end method

.method public read([CII)I
    .registers 16
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    move v5, p2

    .line 426
    .local v5, "off":I
    add-int v2, p2, p3

    .line 427
    .local v2, "end":I
    if-ltz p2, :cond_8

    array-length v7, p1

    if-le p2, v7, :cond_e

    .line 429
    :cond_8
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7

    .line 427
    :cond_e
    if-ltz p3, :cond_8

    .line 428
    if-ltz v2, :cond_8

    array-length v7, p1

    if-gt v2, v7, :cond_8

    .line 431
    iget-object v7, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    invoke-static {v7}, Ljava/io/Console;->-get1(Ljava/io/Console;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 432
    const/4 v3, 0x0

    .line 433
    .local v3, "eof":Z
    const/4 v0, 0x0

    .line 435
    :goto_1e
    :try_start_1e
    iget v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    iget v9, p0, Ljava/io/Console$LineReader;->nChars:I

    if-lt v7, v9, :cond_54

    .line 436
    const/4 v4, 0x0

    .line 438
    .local v4, "n":I
    :cond_25
    iget-object v7, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    iget-object v9, p0, Ljava/io/Console$LineReader;->cb:[C

    iget-object v10, p0, Ljava/io/Console$LineReader;->cb:[C

    array-length v10, v10

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v11, v10}, Ljava/io/Reader;->read([CII)I

    move-result v4

    .line 439
    if-eqz v4, :cond_25

    .line 440
    if-lez v4, :cond_98

    .line 441
    iput v4, p0, Ljava/io/Console$LineReader;->nChars:I

    .line 442
    const/4 v7, 0x0

    iput v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    .line 443
    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    array-length v7, v7

    if-ge v4, v7, :cond_54

    .line 444
    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    add-int/lit8 v9, v4, -0x1

    aget-char v7, v7, v9

    const/16 v9, 0xa

    if-eq v7, v9, :cond_54

    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    add-int/lit8 v9, v4, -0x1

    aget-char v7, v7, v9

    const/16 v9, 0xd

    if-eq v7, v9, :cond_54

    .line 450
    const/4 v3, 0x1

    .line 458
    .end local v4    # "n":I
    :cond_54
    iget-boolean v7, p0, Ljava/io/Console$LineReader;->leftoverLF:Z

    if-eqz v7, :cond_70

    iget-object v7, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    invoke-static {v7}, Ljava/io/Console;->-get0(Ljava/io/Console;)[C

    move-result-object v7

    if-ne p1, v7, :cond_70

    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    iget v9, p0, Ljava/io/Console$LineReader;->nextChar:I

    aget-char v7, v7, v9

    const/16 v9, 0xa

    if-ne v7, v9, :cond_70

    .line 463
    iget v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    .line 465
    :cond_70
    const/4 v7, 0x0

    iput-boolean v7, p0, Ljava/io/Console$LineReader;->leftoverLF:Z
    :try_end_73
    .catchall {:try_start_1e .. :try_end_73} :catchall_122

    move v1, v0

    .local v1, "c":C
    move v6, v5

    .line 466
    .end local v5    # "off":I
    .local v6, "off":I
    :goto_75
    :try_start_75
    iget v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    iget v9, p0, Ljava/io/Console$LineReader;->nChars:I

    if-ge v7, v9, :cond_118

    .line 467
    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    iget v9, p0, Ljava/io/Console$LineReader;->nextChar:I

    aget-char v0, v7, v9
    :try_end_81
    .catchall {:try_start_75 .. :try_end_81} :catchall_125

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "off":I
    .restart local v5    # "off":I
    :try_start_83
    aput-char v0, p1, v6
    :try_end_85
    .catchall {:try_start_83 .. :try_end_85} :catchall_129

    .line 468
    .end local v1    # "c":C
    .local v0, "c":C
    :try_start_85
    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    iget v9, p0, Ljava/io/Console$LineReader;->nextChar:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Ljava/io/Console$LineReader;->nextChar:I

    const/4 v10, 0x0

    aput-char v10, v7, v9
    :try_end_90
    .catchall {:try_start_85 .. :try_end_90} :catchall_122

    .line 469
    const/16 v7, 0xa

    if-ne v0, v7, :cond_a3

    .line 470
    sub-int v7, v5, p2

    monitor-exit v8

    return v7

    .line 453
    .end local v0    # "c":C
    .restart local v4    # "n":I
    :cond_98
    sub-int v7, v5, p2

    if-nez v7, :cond_9f

    .line 454
    const/4 v7, -0x1

    monitor-exit v8

    return v7

    .line 455
    :cond_9f
    sub-int v7, v5, p2

    monitor-exit v8

    return v7

    .line 471
    .end local v4    # "n":I
    .restart local v0    # "c":C
    :cond_a3
    const/16 v7, 0xd

    if-ne v0, v7, :cond_ff

    .line 472
    if-ne v5, v2, :cond_b8

    .line 477
    :try_start_a9
    iget-object v7, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    invoke-static {v7}, Ljava/io/Console;->-get0(Ljava/io/Console;)[C

    move-result-object v7

    if-ne p1, v7, :cond_f8

    .line 478
    iget-object v7, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    invoke-static {v7}, Ljava/io/Console;->-wrap0(Ljava/io/Console;)[C

    move-result-object p1

    .line 479
    array-length v2, p1

    .line 485
    :cond_b8
    iget v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    iget v9, p0, Ljava/io/Console$LineReader;->nChars:I

    if-ne v7, v9, :cond_d7

    iget-object v7, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    invoke-virtual {v7}, Ljava/io/Reader;->ready()Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 493
    iget-object v7, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    iget-object v9, p0, Ljava/io/Console$LineReader;->cb:[C

    iget-object v10, p0, Ljava/io/Console$LineReader;->cb:[C

    array-length v10, v10

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v11, v10}, Ljava/io/Reader;->read([CII)I

    move-result v7

    iput v7, p0, Ljava/io/Console$LineReader;->nChars:I

    .line 494
    const/4 v7, 0x0

    iput v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    .line 496
    :cond_d7
    iget v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    iget v9, p0, Ljava/io/Console$LineReader;->nChars:I

    if-ge v7, v9, :cond_f4

    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    iget v9, p0, Ljava/io/Console$LineReader;->nextChar:I

    aget-char v7, v7, v9
    :try_end_e3
    .catchall {:try_start_a9 .. :try_end_e3} :catchall_122

    const/16 v9, 0xa

    if-ne v7, v9, :cond_f4

    .line 497
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "off":I
    .restart local v6    # "off":I
    const/16 v7, 0xa

    :try_start_eb
    aput-char v7, p1, v5

    .line 498
    iget v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/io/Console$LineReader;->nextChar:I
    :try_end_f3
    .catchall {:try_start_eb .. :try_end_f3} :catchall_12c

    move v5, v6

    .line 500
    .end local v6    # "off":I
    .restart local v5    # "off":I
    :cond_f4
    sub-int v7, v5, p2

    monitor-exit v8

    return v7

    .line 481
    :cond_f8
    const/4 v7, 0x1

    :try_start_f9
    iput-boolean v7, p0, Ljava/io/Console$LineReader;->leftoverLF:Z
    :try_end_fb
    .catchall {:try_start_f9 .. :try_end_fb} :catchall_122

    .line 482
    sub-int v7, v5, p2

    monitor-exit v8

    return v7

    .line 501
    :cond_ff
    if-ne v5, v2, :cond_110

    .line 502
    :try_start_101
    iget-object v7, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    invoke-static {v7}, Ljava/io/Console;->-get0(Ljava/io/Console;)[C

    move-result-object v7

    if-ne p1, v7, :cond_114

    .line 503
    iget-object v7, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    invoke-static {v7}, Ljava/io/Console;->-wrap0(Ljava/io/Console;)[C

    move-result-object p1

    .line 504
    array-length v2, p1
    :try_end_110
    .catchall {:try_start_101 .. :try_end_110} :catchall_122

    :cond_110
    move v1, v0

    .end local v0    # "c":C
    .restart local v1    # "c":C
    move v6, v5

    .end local v5    # "off":I
    .restart local v6    # "off":I
    goto/16 :goto_75

    .line 506
    .end local v1    # "c":C
    .end local v6    # "off":I
    .restart local v0    # "c":C
    .restart local v5    # "off":I
    :cond_114
    sub-int v7, v5, p2

    monitor-exit v8

    return v7

    .line 510
    .end local v0    # "c":C
    .end local v5    # "off":I
    .restart local v1    # "c":C
    .restart local v6    # "off":I
    :cond_118
    if-eqz v3, :cond_11e

    .line 511
    sub-int v7, v6, p2

    monitor-exit v8

    return v7

    :cond_11e
    move v0, v1

    .end local v1    # "c":C
    .restart local v0    # "c":C
    move v5, v6

    .end local v6    # "off":I
    .restart local v5    # "off":I
    goto/16 :goto_1e

    .line 431
    .end local v0    # "c":C
    :catchall_122
    move-exception v7

    :goto_123
    monitor-exit v8

    throw v7

    .end local v5    # "off":I
    .restart local v1    # "c":C
    .restart local v6    # "off":I
    :catchall_125
    move-exception v7

    move v0, v1

    .end local v1    # "c":C
    .restart local v0    # "c":C
    move v5, v6

    .end local v6    # "off":I
    .restart local v5    # "off":I
    goto :goto_123

    .end local v0    # "c":C
    .restart local v1    # "c":C
    :catchall_129
    move-exception v7

    move v0, v1

    .end local v1    # "c":C
    .restart local v0    # "c":C
    goto :goto_123

    .end local v5    # "off":I
    .restart local v6    # "off":I
    :catchall_12c
    move-exception v7

    move v5, v6

    .end local v6    # "off":I
    .restart local v5    # "off":I
    goto :goto_123
.end method

.method public ready()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    return v0
.end method
