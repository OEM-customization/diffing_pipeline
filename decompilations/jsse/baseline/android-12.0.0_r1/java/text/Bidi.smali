.class public final Ljava/text/Bidi;
.super Ljava/lang/Object;
.source "Bidi.java"


# static fields
.field public static final whitelist test-api DIRECTION_DEFAULT_LEFT_TO_RIGHT:I = -0x2

.field public static final whitelist test-api DIRECTION_DEFAULT_RIGHT_TO_LEFT:I = -0x1

.field public static final whitelist test-api DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final whitelist test-api DIRECTION_RIGHT_TO_LEFT:I = 0x1


# instance fields
.field private final greylist-max-o bidiBase:Landroid/icu/text/Bidi;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/icu/text/Bidi;)V
    .registers 2
    .param p1, "bidiBase"    # Landroid/icu/text/Bidi;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    .line 206
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;I)V
    .registers 11
    .param p1, "paragraph"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    if-eqz p1, :cond_1d

    .line 125
    new-instance v7, Landroid/icu/text/Bidi;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {p2}, Ljava/text/Bidi;->translateConstToIcu(I)I

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    iput-object v7, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    .line 127
    return-void

    .line 121
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "paragraph is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/text/AttributedCharacterIterator;)V
    .registers 4
    .param p1, "paragraph"    # Ljava/text/AttributedCharacterIterator;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    if-eqz p1, :cond_d

    .line 160
    new-instance v0, Landroid/icu/text/Bidi;

    invoke-direct {v0, p1}, Landroid/icu/text/Bidi;-><init>(Ljava/text/AttributedCharacterIterator;)V

    iput-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    .line 161
    return-void

    .line 156
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "paragraph is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>([CI[BIII)V
    .registers 20
    .param p1, "text"    # [C
    .param p2, "textStart"    # I
    .param p3, "embeddings"    # [B
    .param p4, "embStart"    # I
    .param p5, "paragraphLength"    # I
    .param p6, "flags"    # I

    .line 180
    move-object v7, p1

    move v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    if-eqz v7, :cond_99

    .line 184
    if-ltz v11, :cond_81

    .line 187
    const-string v0, " length: "

    const-string v1, "bad range: "

    if-ltz v8, :cond_5c

    array-length v2, v7

    sub-int/2addr v2, v8

    if-gt v11, v2, :cond_5c

    .line 192
    if-eqz v9, :cond_46

    if-ltz v10, :cond_22

    array-length v2, v9

    sub-int/2addr v2, v10

    if-gt v11, v2, :cond_22

    goto :goto_46

    .line 193
    :cond_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for embeddings of length: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_46
    :goto_46
    new-instance v12, Landroid/icu/text/Bidi;

    .line 200
    invoke-static/range {p6 .. p6}, Ljava/text/Bidi;->translateConstToIcu(I)I

    move-result v6

    move-object v0, v12

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    move-object v2, p0

    iput-object v12, v2, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    .line 201
    return-void

    .line 187
    :cond_5c
    move-object v2, p0

    .line 188
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for text of length: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 185
    :cond_81
    move-object v2, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_99
    move-object v2, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api reorderVisually([BI[Ljava/lang/Object;II)V
    .registers 9
    .param p0, "levels"    # [B
    .param p1, "levelStart"    # I
    .param p2, "objects"    # [Ljava/lang/Object;
    .param p3, "objectStart"    # I
    .param p4, "count"    # I

    .line 400
    const-string v0, " is out of range 0 to "

    if-ltz p1, :cond_56

    array-length v1, p0

    if-le v1, p1, :cond_56

    .line 405
    if-ltz p3, :cond_36

    array-length v1, p2

    if-le v1, p3, :cond_36

    .line 410
    if-ltz p4, :cond_17

    array-length v1, p2

    add-int v2, p3, p4

    if-lt v1, v2, :cond_17

    .line 418
    invoke-static {p0, p1, p2, p3, p4}, Landroid/icu/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    .line 419
    return-void

    .line 411
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p2

    sub-int/2addr v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    :cond_36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value objectStart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :cond_56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value levelStart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api requiresBidi([CII)Z
    .registers 6
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 375
    if-ltz p1, :cond_c

    if-gt p1, p2, :cond_c

    array-length v0, p0

    if-gt p2, v0, :cond_c

    .line 379
    invoke-static {p0, p1, p2}, Landroid/icu/text/Bidi;->requiresBidi([CII)Z

    move-result v0

    return v0

    .line 376
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is out of range 0 to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o translateConstToIcu(I)I
    .registers 2
    .param p0, "javaInt"    # I

    .line 92
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_e

    .line 103
    return v0

    .line 100
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 98
    :pswitch_7
    return v0

    .line 96
    :pswitch_8
    const/16 v0, 0x7f

    return v0

    .line 94
    :pswitch_b
    const/16 v0, 0x7e

    return v0

    :pswitch_data_e
    .packed-switch -0x2
        :pswitch_b
        :pswitch_8
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api baseIsLeftToRight()Z
    .registers 2

    .line 278
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->baseIsLeftToRight()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api createLineBidi(II)Ljava/text/Bidi;
    .registers 12
    .param p1, "lineStart"    # I
    .param p2, "lineLimit"    # I

    .line 219
    if-ltz p1, :cond_32

    if-ltz p2, :cond_32

    if-gt p1, p2, :cond_32

    invoke-virtual {p0}, Ljava/text/Bidi;->getLength()I

    move-result v0

    if-gt p2, v0, :cond_32

    .line 229
    if-ne p1, p2, :cond_26

    .line 230
    new-instance v0, Ljava/text/Bidi;

    new-instance v8, Landroid/icu/text/Bidi;

    const/4 v1, 0x0

    new-array v2, v1, [C

    const/4 v3, 0x0

    new-array v4, v1, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 231
    invoke-static {v1}, Ljava/text/Bidi;->translateConstToIcu(I)I

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    invoke-direct {v0, v8}, Ljava/text/Bidi;-><init>(Landroid/icu/text/Bidi;)V

    .line 230
    return-object v0

    .line 234
    :cond_26
    new-instance v0, Ljava/text/Bidi;

    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1, p1, p2}, Landroid/icu/text/Bidi;->createLineBidi(II)Landroid/icu/text/Bidi;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/Bidi;-><init>(Landroid/icu/text/Bidi;)V

    return-object v0

    .line 220
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ranges (start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p0}, Ljava/text/Bidi;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getBaseLevel()I
    .registers 2

    .line 286
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v0

    return v0
.end method

.method public whitelist test-api getLength()I
    .registers 2

    .line 270
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getLength()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getLevelAt(I)I
    .registers 4
    .param p1, "offset"    # I

    .line 300
    :try_start_0
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0, p1}, Landroid/icu/text/Bidi;->getLevelAt(I)B

    move-result v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 301
    :catch_7
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v1

    return v1
.end method

.method public whitelist test-api getRunCount()I
    .registers 3

    .line 313
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v0

    .line 314
    .local v0, "runCount":I
    if-nez v0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    move v1, v0

    :goto_b
    return v1
.end method

.method public whitelist test-api getRunLevel(I)I
    .registers 3
    .param p1, "run"    # I

    .line 324
    invoke-virtual {p0}, Ljava/text/Bidi;->getRunCount()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 325
    invoke-virtual {p0}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v0

    return v0

    .line 328
    :cond_b
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getBaseLevel()I

    move-result v0

    goto :goto_20

    :cond_1a
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0, p1}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v0

    :goto_20
    return v0
.end method

.method public whitelist test-api getRunLimit(I)I
    .registers 3
    .param p1, "run"    # I

    .line 355
    invoke-virtual {p0}, Ljava/text/Bidi;->getRunCount()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 356
    invoke-virtual {p0}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v0

    return v0

    .line 359
    :cond_b
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getLength()I

    move-result v0

    goto :goto_20

    :cond_1a
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0, p1}, Landroid/icu/text/Bidi;->getRunLimit(I)I

    move-result v0

    :goto_20
    return v0
.end method

.method public whitelist test-api getRunStart(I)I
    .registers 3
    .param p1, "run"    # I

    .line 339
    invoke-virtual {p0}, Ljava/text/Bidi;->getRunCount()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 340
    invoke-virtual {p0}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v0

    return v0

    .line 343
    :cond_b
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_1b

    :cond_15
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0, p1}, Landroid/icu/text/Bidi;->getRunStart(I)I

    move-result v0

    :goto_1b
    return v0
.end method

.method public whitelist test-api isLeftToRight()Z
    .registers 2

    .line 254
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->isLeftToRight()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isMixed()Z
    .registers 2

    .line 245
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->isMixed()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isRightToLeft()Z
    .registers 2

    .line 262
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->isRightToLeft()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    .line 427
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getDirection()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " baseLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getBaseLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    .line 428
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " runs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    return-object v0
.end method
