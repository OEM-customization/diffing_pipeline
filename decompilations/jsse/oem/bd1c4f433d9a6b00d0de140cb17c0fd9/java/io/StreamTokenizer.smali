.class public Ljava/io/StreamTokenizer;
.super Ljava/lang/Object;
.source "StreamTokenizer.java"


# static fields
.field private static final CT_ALPHA:B = 0x4t

.field private static final CT_COMMENT:B = 0x10t

.field private static final CT_DIGIT:B = 0x2t

.field private static final CT_QUOTE:B = 0x8t

.field private static final CT_WHITESPACE:B = 0x1t

.field private static final NEED_CHAR:I = 0x7fffffff

.field private static final SKIP_LF:I = 0x7ffffffe

.field public static final TT_EOF:I = -0x1

.field public static final TT_EOL:I = 0xa

.field private static final TT_NOTHING:I = -0x4

.field public static final TT_NUMBER:I = -0x2

.field public static final TT_WORD:I = -0x3


# instance fields
.field private LINENO:I

.field private buf:[C

.field private ctype:[B

.field private eolIsSignificantP:Z

.field private forceLower:Z

.field private input:Ljava/io/InputStream;

.field public nval:D

.field private peekc:I

.field private pushedBack:Z

.field private reader:Ljava/io/Reader;

.field private slashSlashCommentsP:Z

.field private slashStarCommentsP:Z

.field public sval:Ljava/lang/String;

.field public ttype:I


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v0, p0, Ljava/io/StreamTokenizer;->reader:Ljava/io/Reader;

    .line 69
    iput-object v0, p0, Ljava/io/StreamTokenizer;->input:Ljava/io/InputStream;

    .line 71
    const/16 v0, 0x14

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/StreamTokenizer;->buf:[C

    .line 80
    const v0, 0x7fffffff

    iput v0, p0, Ljava/io/StreamTokenizer;->peekc:I

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Ljava/io/StreamTokenizer;->LINENO:I

    .line 90
    iput-boolean v2, p0, Ljava/io/StreamTokenizer;->eolIsSignificantP:Z

    .line 91
    iput-boolean v2, p0, Ljava/io/StreamTokenizer;->slashSlashCommentsP:Z

    .line 92
    iput-boolean v2, p0, Ljava/io/StreamTokenizer;->slashStarCommentsP:Z

    .line 94
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    .line 128
    const/4 v0, -0x4

    iput v0, p0, Ljava/io/StreamTokenizer;->ttype:I

    .line 189
    const/16 v0, 0x61

    const/16 v1, 0x7a

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 190
    const/16 v0, 0x41

    const/16 v1, 0x5a

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 191
    const/16 v0, 0xa0

    const/16 v1, 0xff

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 192
    const/16 v0, 0x20

    invoke-virtual {p0, v2, v0}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 193
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->commentChar(I)V

    .line 194
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 195
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 196
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->parseNumbers()V

    .line 197
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/io/StreamTokenizer;-><init>()V

    .line 233
    if-nez p1, :cond_b

    .line 234
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 236
    :cond_b
    iput-object p1, p0, Ljava/io/StreamTokenizer;->input:Ljava/io/InputStream;

    .line 237
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3
    .param p1, "r"    # Ljava/io/Reader;

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/io/StreamTokenizer;-><init>()V

    .line 247
    if-nez p1, :cond_b

    .line 248
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 250
    :cond_b
    iput-object p1, p0, Ljava/io/StreamTokenizer;->reader:Ljava/io/Reader;

    .line 251
    return-void
.end method

.method private read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Ljava/io/StreamTokenizer;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_b

    .line 500
    iget-object v0, p0, Ljava/io/StreamTokenizer;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    return v0

    .line 501
    :cond_b
    iget-object v0, p0, Ljava/io/StreamTokenizer;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_16

    .line 502
    iget-object v0, p0, Ljava/io/StreamTokenizer;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    .line 504
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public commentChar(I)V
    .registers 4
    .param p1, "ch"    # I

    .prologue
    .line 356
    if-ltz p1, :cond_d

    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v0, v0

    if-ge p1, v0, :cond_d

    .line 357
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    const/16 v1, 0x10

    aput-byte v1, v0, p1

    .line 358
    :cond_d
    return-void
.end method

.method public eolIsSignificant(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 440
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->eolIsSignificantP:Z

    .line 441
    return-void
.end method

.method public lineno()I
    .registers 2

    .prologue
    .line 776
    iget v0, p0, Ljava/io/StreamTokenizer;->LINENO:I

    return v0
.end method

.method public lowerCaseMode(Z)V
    .registers 2
    .param p1, "fl"    # Z

    .prologue
    .line 494
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->forceLower:Z

    .line 495
    return-void
.end method

.method public nextToken()I
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->pushedBack:Z

    move/from16 v20, v0

    if-eqz v20, :cond_17

    .line 527
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/io/StreamTokenizer;->pushedBack:Z

    .line 528
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    move/from16 v20, v0

    return v20

    .line 530
    :cond_17
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/io/StreamTokenizer;->ctype:[B

    .line 531
    .local v6, "ct":[B
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 533
    move-object/from16 v0, p0

    iget v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    .line 534
    .local v4, "c":I
    if-gez v4, :cond_2c

    .line 535
    const v4, 0x7fffffff

    .line 536
    :cond_2c
    const v20, 0x7ffffffe

    move/from16 v0, v20

    if-ne v4, v0, :cond_4d

    .line 537
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    .line 538
    if-gez v4, :cond_44

    .line 539
    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    return v20

    .line 540
    :cond_44
    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v4, v0, :cond_4d

    .line 541
    const v4, 0x7fffffff

    .line 543
    :cond_4d
    const v20, 0x7fffffff

    move/from16 v0, v20

    if-ne v4, v0, :cond_65

    .line 544
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    .line 545
    if-gez v4, :cond_65

    .line 546
    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    return v20

    .line 548
    :cond_65
    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/StreamTokenizer;->ttype:I

    .line 553
    const v20, 0x7fffffff

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->peekc:I

    .line 555
    const/16 v20, 0x100

    move/from16 v0, v20

    if-ge v4, v0, :cond_ae

    aget-byte v7, v6, v4

    .line 556
    .local v7, "ctype":I
    :goto_7a
    and-int/lit8 v20, v7, 0x1

    if-eqz v20, :cond_103

    .line 557
    const/16 v20, 0xd

    move/from16 v0, v20

    if-ne v4, v0, :cond_cb

    .line 558
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->LINENO:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->LINENO:I

    .line 559
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->eolIsSignificantP:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b0

    .line 560
    const v20, 0x7ffffffe

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->peekc:I

    .line 561
    const/16 v20, 0xa

    const/16 v21, 0xa

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    return v20

    .line 555
    .end local v7    # "ctype":I
    :cond_ae
    const/4 v7, 0x4

    goto :goto_7a

    .line 563
    .restart local v7    # "ctype":I
    :cond_b0
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    .line 564
    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v4, v0, :cond_be

    .line 565
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    .line 575
    :cond_be
    :goto_be
    if-gez v4, :cond_f7

    .line 576
    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    return v20

    .line 567
    :cond_cb
    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v4, v0, :cond_f2

    .line 568
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->LINENO:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->LINENO:I

    .line 569
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->eolIsSignificantP:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f2

    .line 570
    const/16 v20, 0xa

    const/16 v21, 0xa

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    return v20

    .line 573
    :cond_f2
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    goto :goto_be

    .line 577
    :cond_f7
    const/16 v20, 0x100

    move/from16 v0, v20

    if-ge v4, v0, :cond_101

    aget-byte v7, v6, v4

    :goto_ff
    goto/16 :goto_7a

    :cond_101
    const/4 v7, 0x4

    goto :goto_ff

    .line 580
    :cond_103
    and-int/lit8 v20, v7, 0x2

    if-eqz v20, :cond_191

    .line 581
    const/4 v15, 0x0

    .line 582
    .local v15, "neg":Z
    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v4, v0, :cond_134

    .line 583
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    .line 584
    const/16 v20, 0x2e

    move/from16 v0, v20

    if-eq v4, v0, :cond_133

    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v4, v0, :cond_124

    const/16 v20, 0x39

    move/from16 v0, v20

    if-le v4, v0, :cond_133

    .line 585
    :cond_124
    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    .line 586
    const/16 v20, 0x2d

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v20, 0x2d

    return v20

    .line 588
    :cond_133
    const/4 v15, 0x1

    .line 590
    :cond_134
    const-wide/16 v18, 0x0

    .line 591
    .local v18, "v":D
    const/4 v9, 0x0

    .line 592
    .local v9, "decexp":I
    const/16 v17, 0x0

    .line 594
    .local v17, "seendot":I
    :goto_139
    const/16 v20, 0x2e

    move/from16 v0, v20

    if-ne v4, v0, :cond_148

    if-nez v17, :cond_148

    .line 595
    const/16 v17, 0x1

    .line 601
    :goto_143
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    goto :goto_139

    .line 596
    :cond_148
    const/16 v20, 0x30

    move/from16 v0, v20

    if-gt v0, v4, :cond_164

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v4, v0, :cond_164

    .line 597
    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    mul-double v20, v20, v18

    add-int/lit8 v22, v4, -0x30

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v18, v20, v22

    .line 598
    add-int v9, v9, v17

    .line 596
    goto :goto_143

    .line 603
    :cond_164
    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    .line 604
    if-eqz v9, :cond_179

    .line 605
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    .line 606
    .local v10, "denom":D
    add-int/lit8 v9, v9, -0x1

    .line 607
    :goto_16e
    if-lez v9, :cond_177

    .line 608
    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    mul-double v10, v10, v20

    .line 609
    add-int/lit8 v9, v9, -0x1

    goto :goto_16e

    .line 612
    :cond_177
    div-double v18, v18, v10

    .line 614
    .end local v10    # "denom":D
    :cond_179
    if-eqz v15, :cond_180

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    .end local v18    # "v":D
    :cond_180
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/io/StreamTokenizer;->nval:D

    .line 615
    const/16 v20, -0x2

    const/16 v21, -0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    return v20

    .line 618
    .end local v9    # "decexp":I
    .end local v15    # "neg":Z
    .end local v17    # "seendot":I
    :cond_191
    and-int/lit8 v20, v7, 0x4

    if-eqz v20, :cond_224

    .line 619
    const/4 v13, 0x0

    .line 621
    .local v13, "i":I
    :goto_196
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v13, v0, :cond_1c2

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/StreamTokenizer;->buf:[C

    .line 624
    :cond_1c2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "i":I
    .local v14, "i":I
    int-to-char v0, v4

    move/from16 v21, v0

    aput-char v21, v20, v13

    .line 625
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    .line 626
    if-gez v4, :cond_1dc

    const/4 v7, 0x1

    .line 627
    :goto_1d6
    and-int/lit8 v20, v7, 0x6

    if-eqz v20, :cond_1e7

    move v13, v14

    .end local v14    # "i":I
    .restart local v13    # "i":I
    goto :goto_196

    .line 626
    .end local v13    # "i":I
    .restart local v14    # "i":I
    :cond_1dc
    const/16 v20, 0x100

    move/from16 v0, v20

    if-ge v4, v0, :cond_1e5

    aget-byte v7, v6, v4

    goto :goto_1d6

    :cond_1e5
    const/4 v7, 0x4

    goto :goto_1d6

    .line 628
    :cond_1e7
    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v14}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 630
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->forceLower:Z

    move/from16 v20, v0

    if-eqz v20, :cond_219

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 632
    :cond_219
    const/16 v20, -0x3

    const/16 v21, -0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    return v20

    .line 635
    .end local v14    # "i":I
    :cond_224
    and-int/lit8 v20, v7, 0x8

    if-eqz v20, :cond_329

    .line 636
    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/StreamTokenizer;->ttype:I

    .line 637
    const/4 v13, 0x0

    .line 642
    .restart local v13    # "i":I
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v8

    .local v8, "d":I
    move v14, v13

    .line 643
    .end local v13    # "i":I
    .restart local v14    # "i":I
    :goto_232
    if-ltz v8, :cond_2fb

    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v8, v0, :cond_2fb

    const/16 v20, 0xa

    move/from16 v0, v20

    if-eq v8, v0, :cond_2fb

    const/16 v20, 0xd

    move/from16 v0, v20

    if-eq v8, v0, :cond_2fb

    .line 644
    const/16 v20, 0x5c

    move/from16 v0, v20

    if-ne v8, v0, :cond_2f5

    .line 645
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    .line 646
    move v12, v4

    .line 647
    .local v12, "first":I
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v4, v0, :cond_2d9

    const/16 v20, 0x37

    move/from16 v0, v20

    if-gt v4, v0, :cond_2d9

    .line 648
    add-int/lit8 v4, v4, -0x30

    .line 649
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v5

    .line 650
    .local v5, "c2":I
    const/16 v20, 0x30

    move/from16 v0, v20

    if-gt v0, v5, :cond_2d7

    const/16 v20, 0x37

    move/from16 v0, v20

    if-gt v5, v0, :cond_2d7

    .line 651
    shl-int/lit8 v20, v4, 0x3

    add-int/lit8 v21, v5, -0x30

    add-int v4, v20, v21

    .line 652
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v5

    .line 653
    const/16 v20, 0x30

    move/from16 v0, v20

    if-gt v0, v5, :cond_2d5

    const/16 v20, 0x37

    move/from16 v0, v20

    if-gt v5, v0, :cond_2d5

    const/16 v20, 0x33

    move/from16 v0, v20

    if-gt v12, v0, :cond_2d5

    .line 654
    shl-int/lit8 v20, v4, 0x3

    add-int/lit8 v21, v5, -0x30

    add-int v4, v20, v21

    .line 655
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v8

    .line 690
    .end local v5    # "c2":I
    .end local v12    # "first":I
    :goto_299
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v14, v0, :cond_2c5

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/StreamTokenizer;->buf:[C

    .line 693
    :cond_2c5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "i":I
    .restart local v13    # "i":I
    int-to-char v0, v4

    move/from16 v21, v0

    aput-char v21, v20, v14

    move v14, v13

    .end local v13    # "i":I
    .restart local v14    # "i":I
    goto/16 :goto_232

    .line 657
    .restart local v5    # "c2":I
    .restart local v12    # "first":I
    :cond_2d5
    move v8, v5

    goto :goto_299

    .line 659
    :cond_2d7
    move v8, v5

    goto :goto_299

    .line 661
    .end local v5    # "c2":I
    :cond_2d9
    sparse-switch v4, :sswitch_data_434

    .line 684
    :goto_2dc
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v8

    goto :goto_299

    .line 663
    :sswitch_2e1
    const/4 v4, 0x7

    .line 664
    goto :goto_2dc

    .line 666
    :sswitch_2e3
    const/16 v4, 0x8

    .line 667
    goto :goto_2dc

    .line 669
    :sswitch_2e6
    const/16 v4, 0xc

    .line 670
    goto :goto_2dc

    .line 672
    :sswitch_2e9
    const/16 v4, 0xa

    .line 673
    goto :goto_2dc

    .line 675
    :sswitch_2ec
    const/16 v4, 0xd

    .line 676
    goto :goto_2dc

    .line 678
    :sswitch_2ef
    const/16 v4, 0x9

    .line 679
    goto :goto_2dc

    .line 681
    :sswitch_2f2
    const/16 v4, 0xb

    .line 682
    goto :goto_2dc

    .line 687
    .end local v12    # "first":I
    :cond_2f5
    move v4, v8

    .line 688
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v8

    goto :goto_299

    .line 700
    :cond_2fb
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v8, v0, :cond_308

    const v8, 0x7fffffff

    .end local v8    # "d":I
    :cond_308
    move-object/from16 v0, p0

    iput v8, v0, Ljava/io/StreamTokenizer;->peekc:I

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v14}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 703
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    move/from16 v20, v0

    return v20

    .line 706
    .end local v14    # "i":I
    :cond_329
    const/16 v20, 0x2f

    move/from16 v0, v20

    if-ne v4, v0, :cond_410

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->slashSlashCommentsP:Z

    move/from16 v20, v0

    if-nez v20, :cond_33f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->slashStarCommentsP:Z

    move/from16 v20, v0

    if-eqz v20, :cond_410

    .line 707
    :cond_33f
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    .line 708
    const/16 v20, 0x2a

    move/from16 v0, v20

    if-ne v4, v0, :cond_3b5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->slashStarCommentsP:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3b5

    .line 709
    const/16 v16, 0x0

    .line 710
    .local v16, "prevc":I
    :goto_353
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    const/16 v20, 0x2f

    move/from16 v0, v20

    if-ne v4, v0, :cond_365

    const/16 v20, 0x2a

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_3b0

    .line 711
    :cond_365
    const/16 v20, 0xd

    move/from16 v0, v20

    if-ne v4, v0, :cond_394

    .line 712
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->LINENO:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->LINENO:I

    .line 713
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    .line 714
    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v4, v0, :cond_387

    .line 715
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    .line 723
    :cond_387
    :goto_387
    if-gez v4, :cond_3ad

    .line 724
    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    return v20

    .line 718
    :cond_394
    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v4, v0, :cond_387

    .line 719
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->LINENO:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->LINENO:I

    .line 720
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    goto :goto_387

    .line 725
    :cond_3ad
    move/from16 v16, v4

    goto :goto_353

    .line 727
    :cond_3b0
    invoke-virtual/range {p0 .. p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v20

    return v20

    .line 728
    .end local v16    # "prevc":I
    :cond_3b5
    const/16 v20, 0x2f

    move/from16 v0, v20

    if-ne v4, v0, :cond_3de

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->slashSlashCommentsP:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3de

    .line 729
    :cond_3c3
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    const/16 v20, 0xa

    move/from16 v0, v20

    if-eq v4, v0, :cond_3d5

    const/16 v20, 0xd

    move/from16 v0, v20

    if-eq v4, v0, :cond_3d5

    if-gez v4, :cond_3c3

    .line 730
    :cond_3d5
    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    .line 731
    invoke-virtual/range {p0 .. p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v20

    return v20

    .line 734
    :cond_3de
    const/16 v20, 0x2f

    aget-byte v20, v6, v20

    and-int/lit8 v20, v20, 0x10

    if-eqz v20, :cond_401

    .line 735
    :cond_3e6
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    const/16 v20, 0xa

    move/from16 v0, v20

    if-eq v4, v0, :cond_3f8

    const/16 v20, 0xd

    move/from16 v0, v20

    if-eq v4, v0, :cond_3f8

    if-gez v4, :cond_3e6

    .line 736
    :cond_3f8
    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    .line 737
    invoke-virtual/range {p0 .. p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v20

    return v20

    .line 739
    :cond_401
    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    .line 740
    const/16 v20, 0x2f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v20, 0x2f

    return v20

    .line 745
    :cond_410
    and-int/lit8 v20, v7, 0x10

    if-eqz v20, :cond_42f

    .line 746
    :cond_414
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    const/16 v20, 0xa

    move/from16 v0, v20

    if-eq v4, v0, :cond_426

    const/16 v20, 0xd

    move/from16 v0, v20

    if-eq v4, v0, :cond_426

    if-gez v4, :cond_414

    .line 747
    :cond_426
    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    .line 748
    invoke-virtual/range {p0 .. p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v20

    return v20

    .line 751
    :cond_42f
    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/StreamTokenizer;->ttype:I

    return v4

    .line 661
    :sswitch_data_434
    .sparse-switch
        0x61 -> :sswitch_2e1
        0x62 -> :sswitch_2e3
        0x66 -> :sswitch_2e6
        0x6e -> :sswitch_2e9
        0x72 -> :sswitch_2ec
        0x74 -> :sswitch_2ef
        0x76 -> :sswitch_2f2
    .end sparse-switch
.end method

.method public ordinaryChar(I)V
    .registers 4
    .param p1, "ch"    # I

    .prologue
    const/4 v1, 0x0

    .line 342
    if-ltz p1, :cond_c

    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 343
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    aput-byte v1, v0, p1

    .line 344
    :cond_c
    return-void
.end method

.method public ordinaryChars(II)V
    .registers 6
    .param p1, "low"    # I
    .param p2, "hi"    # I

    .prologue
    const/4 v2, 0x0

    .line 316
    if-gez p1, :cond_4

    .line 317
    const/4 p1, 0x0

    .line 318
    :cond_4
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v1, v1

    if-lt p2, v1, :cond_17

    .line 319
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v1, v1

    add-int/lit8 p2, v1, -0x1

    move v0, p1

    .line 320
    .end local p1    # "low":I
    .local v0, "low":I
    :goto_f
    if-gt v0, p2, :cond_19

    .line 321
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "low":I
    .restart local p1    # "low":I
    aput-byte v2, v1, v0

    :cond_17
    move v0, p1

    .end local p1    # "low":I
    .restart local v0    # "low":I
    goto :goto_f

    .line 322
    :cond_19
    return-void
.end method

.method public parseNumbers()V
    .registers 6

    .prologue
    const/16 v4, 0x2e

    const/16 v3, 0x2d

    .line 410
    const/16 v0, 0x30

    .local v0, "i":I
    :goto_6
    const/16 v1, 0x39

    if-gt v0, v1, :cond_16

    .line 411
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 412
    :cond_16
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    aget-byte v2, v1, v4

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 413
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    aget-byte v2, v1, v3

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 414
    return-void
.end method

.method public pushBack()V
    .registers 3

    .prologue
    .line 766
    iget v0, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v1, -0x4

    if-eq v0, v1, :cond_8

    .line 767
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/StreamTokenizer;->pushedBack:Z

    .line 768
    :cond_8
    return-void
.end method

.method public quoteChar(I)V
    .registers 4
    .param p1, "ch"    # I

    .prologue
    .line 385
    if-ltz p1, :cond_d

    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v0, v0

    if-ge p1, v0, :cond_d

    .line 386
    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    const/16 v1, 0x8

    aput-byte v1, v0, p1

    .line 387
    :cond_d
    return-void
.end method

.method public resetSyntax()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v0, v1

    .local v0, "i":I
    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_d

    .line 262
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    aput-byte v2, v1, v0

    goto :goto_4

    .line 263
    :cond_d
    return-void
.end method

.method public slashSlashComments(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 473
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->slashSlashCommentsP:Z

    .line 474
    return-void
.end method

.method public slashStarComments(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 456
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->slashStarCommentsP:Z

    .line 457
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x27

    const/4 v4, 0x0

    .line 795
    iget v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    sparse-switch v2, :sswitch_data_76

    .line 818
    iget v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v3, 0x100

    if-ge v2, v3, :cond_62

    .line 819
    iget-object v2, p0, Ljava/io/StreamTokenizer;->ctype:[B

    iget v3, p0, Ljava/io/StreamTokenizer;->ttype:I

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_62

    .line 820
    iget-object v0, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 831
    .local v0, "ret":Ljava/lang/String;
    :goto_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Token["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/io/StreamTokenizer;->LINENO:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 797
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_3c
    const-string/jumbo v0, "EOF"

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1a

    .line 800
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_40
    const-string/jumbo v0, "EOL"

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1a

    .line 803
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_44
    iget-object v0, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1a

    .line 806
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Ljava/io/StreamTokenizer;->nval:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1a

    .line 809
    .end local v0    # "ret":Ljava/lang/String;
    :sswitch_5e
    const-string/jumbo v0, "NOTHING"

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1a

    .line 824
    .end local v0    # "ret":Ljava/lang/String;
    :cond_62
    const/4 v2, 0x3

    new-array v1, v2, [C

    .line 825
    .local v1, "s":[C
    const/4 v2, 0x2

    aput-char v5, v1, v2

    aput-char v5, v1, v4

    .line 826
    iget v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    int-to-char v2, v2

    const/4 v3, 0x1

    aput-char v2, v1, v3

    .line 827
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 828
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1a

    .line 795
    :sswitch_data_76
    .sparse-switch
        -0x4 -> :sswitch_5e
        -0x3 -> :sswitch_44
        -0x2 -> :sswitch_47
        -0x1 -> :sswitch_3c
        0xa -> :sswitch_40
    .end sparse-switch
.end method

.method public whitespaceChars(II)V
    .registers 6
    .param p1, "low"    # I
    .param p2, "hi"    # I

    .prologue
    .line 296
    if-gez p1, :cond_3

    .line 297
    const/4 p1, 0x0

    .line 298
    :cond_3
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v1, v1

    if-lt p2, v1, :cond_17

    .line 299
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v1, v1

    add-int/lit8 p2, v1, -0x1

    move v0, p1

    .line 300
    .end local p1    # "low":I
    .local v0, "low":I
    :goto_e
    if-gt v0, p2, :cond_19

    .line 301
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "low":I
    .restart local p1    # "low":I
    const/4 v2, 0x1

    aput-byte v2, v1, v0

    :cond_17
    move v0, p1

    .end local p1    # "low":I
    .restart local v0    # "low":I
    goto :goto_e

    .line 302
    :cond_19
    return-void
.end method

.method public wordChars(II)V
    .registers 6
    .param p1, "low"    # I
    .param p2, "hi"    # I

    .prologue
    .line 275
    if-gez p1, :cond_3

    .line 276
    const/4 p1, 0x0

    .line 277
    :cond_3
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v1, v1

    if-lt p2, v1, :cond_1b

    .line 278
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v1, v1

    add-int/lit8 p2, v1, -0x1

    move v0, p1

    .line 279
    .end local p1    # "low":I
    .local v0, "low":I
    :goto_e
    if-gt v0, p2, :cond_1d

    .line 280
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "low":I
    .restart local p1    # "low":I
    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :cond_1b
    move v0, p1

    .end local p1    # "low":I
    .restart local v0    # "low":I
    goto :goto_e

    .line 281
    :cond_1d
    return-void
.end method
