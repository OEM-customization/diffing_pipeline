.class public final Ljava/text/Bidi;
.super Ljava/lang/Object;
.source "Bidi.java"


# static fields
.field public static final DIRECTION_DEFAULT_LEFT_TO_RIGHT:I = -0x2

.field public static final DIRECTION_DEFAULT_RIGHT_TO_LEFT:I = -0x1

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1


# instance fields
.field private bidiBase:Landroid/icu/text/Bidi;


# direct methods
.method private constructor <init>(Landroid/icu/text/Bidi;)V
    .registers 2
    .param p1, "bidiBase"    # Landroid/icu/text/Bidi;

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 10
    .param p1, "paragraph"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 111
    if-nez p1, :cond_f

    move-object v1, v3

    .line 112
    :goto_5
    if-nez p1, :cond_14

    move v5, v2

    :goto_8
    move-object v0, p0

    move v4, v2

    move v6, p2

    .line 111
    invoke-direct/range {v0 .. v6}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 113
    return-void

    .line 111
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_5

    .line 112
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_8
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;)V
    .registers 4
    .param p1, "paragraph"    # Ljava/text/AttributedCharacterIterator;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    if-nez p1, :cond_e

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "paragraph is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_e
    new-instance v0, Landroid/icu/text/Bidi;

    invoke-direct {v0, p1}, Landroid/icu/text/Bidi;-><init>(Ljava/text/AttributedCharacterIterator;)V

    iput-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    .line 146
    return-void
.end method

.method public constructor <init>([CI[BIII)V
    .registers 14
    .param p1, "text"    # [C
    .param p2, "textStart"    # I
    .param p3, "embeddings"    # [B
    .param p4, "embStart"    # I
    .param p5, "paragraphLength"    # I
    .param p6, "flags"    # I

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    if-nez p1, :cond_e

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_e
    if-gez p5, :cond_2a

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_2a
    if-ltz p2, :cond_30

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p5, v0, :cond_61

    .line 173
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 174
    const-string/jumbo v2, " length: "

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 175
    const-string/jumbo v2, " for text of length: "

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 175
    array-length v2, p1

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_61
    if-eqz p3, :cond_9a

    if-ltz p4, :cond_69

    array-length v0, p3

    sub-int/2addr v0, p4

    if-le p5, v0, :cond_9a

    .line 178
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    const-string/jumbo v2, " length: "

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    const-string/jumbo v2, " for embeddings of length: "

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    array-length v2, p1

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_9a
    new-instance v0, Landroid/icu/text/Bidi;

    .line 184
    invoke-static {p6}, Ljava/text/Bidi;->translateConstToIcu(I)I

    move-result v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 183
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    iput-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    .line 185
    return-void
.end method

.method public static reorderVisually([BI[Ljava/lang/Object;II)V
    .registers 8
    .param p0, "levels"    # [B
    .param p1, "levelStart"    # I
    .param p2, "objects"    # [Ljava/lang/Object;
    .param p3, "objectStart"    # I
    .param p4, "count"    # I

    .prologue
    .line 376
    if-ltz p1, :cond_5

    array-length v0, p0

    if-gt v0, p1, :cond_2d

    .line 377
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Value levelStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 378
    const-string/jumbo v2, " is out of range 0 to "

    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 379
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_2d
    if-ltz p3, :cond_32

    array-length v0, p2

    if-gt v0, p3, :cond_5a

    .line 382
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Value objectStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 383
    const-string/jumbo v2, " is out of range 0 to "

    .line 382
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 384
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    .line 382
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_5a
    if-ltz p4, :cond_61

    array-length v0, p2

    add-int v1, p3, p4

    if-ge v0, v1, :cond_88

    .line 387
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Value count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 388
    const-string/jumbo v2, " is out of range 0 to "

    .line 387
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 389
    array-length v2, p2

    sub-int/2addr v2, p3

    .line 387
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_88
    invoke-static {p0, p1, p2, p3, p4}, Landroid/icu/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    .line 392
    return-void
.end method

.method public static requiresBidi([CII)Z
    .registers 6
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .prologue
    .line 352
    if-ltz p1, :cond_4

    if-le p1, p2, :cond_29

    .line 353
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Value start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 354
    const-string/jumbo v2, " is out of range 0 to "

    .line 353
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_29
    array-length v0, p0

    if-gt p2, v0, :cond_4

    .line 356
    invoke-static {p0, p1, p2}, Landroid/icu/text/Bidi;->requiresBidi([CII)Z

    move-result v0

    return v0
.end method

.method private static translateConstToIcu(I)I
    .registers 2
    .param p0, "javaInt"    # I

    .prologue
    const/4 v0, 0x0

    .line 85
    packed-switch p0, :pswitch_data_e

    .line 96
    return v0

    .line 87
    :pswitch_5
    const/16 v0, 0x7e

    return v0

    .line 89
    :pswitch_8
    const/16 v0, 0x7f

    return v0

    .line 91
    :pswitch_b
    return v0

    .line 93
    :pswitch_c
    const/4 v0, 0x1

    return v0

    .line 85
    :pswitch_data_e
    .packed-switch -0x2
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public baseIsLeftToRight()Z
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->baseIsLeftToRight()Z

    move-result v0

    return v0
.end method

.method public createLineBidi(II)Ljava/text/Bidi;
    .registers 11
    .param p1, "lineStart"    # I
    .param p2, "lineLimit"    # I

    .prologue
    const/4 v2, 0x0

    .line 201
    if-ltz p1, :cond_5

    if-gez p2, :cond_47

    .line 202
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid ranges (start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 203
    const-string/jumbo v2, "limit="

    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 203
    const-string/jumbo v2, ", length="

    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 203
    invoke-virtual {p0}, Ljava/text/Bidi;->getLength()I

    move-result v2

    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 203
    const-string/jumbo v2, ")"

    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_47
    if-gt p1, p2, :cond_5

    invoke-virtual {p0}, Ljava/text/Bidi;->getLength()I

    move-result v0

    if-gt p2, v0, :cond_5

    .line 211
    if-ne p1, p2, :cond_66

    .line 212
    new-instance v7, Ljava/text/Bidi;

    new-instance v0, Landroid/icu/text/Bidi;

    new-array v1, v2, [C

    new-array v3, v2, [B

    .line 213
    invoke-static {v2}, Ljava/text/Bidi;->translateConstToIcu(I)I

    move-result v6

    move v4, v2

    move v5, v2

    .line 212
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    invoke-direct {v7, v0}, Ljava/text/Bidi;-><init>(Landroid/icu/text/Bidi;)V

    return-object v7

    .line 216
    :cond_66
    new-instance v0, Ljava/text/Bidi;

    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1, p1, p2}, Landroid/icu/text/Bidi;->createLineBidi(II)Landroid/icu/text/Bidi;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/Bidi;-><init>(Landroid/icu/text/Bidi;)V

    return-object v0
.end method

.method public getBaseLevel()I
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v0

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getLength()I

    move-result v0

    return v0
.end method

.method public getLevelAt(I)I
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1, p1}, Landroid/icu/text/Bidi;->getLevelAt(I)B
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 281
    :catch_7
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v1

    return v1
.end method

.method public getRunCount()I
    .registers 3

    .prologue
    .line 291
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v0

    .line 292
    .local v0, "runCount":I
    if-nez v0, :cond_9

    const/4 v0, 0x1

    .end local v0    # "runCount":I
    :cond_9
    return v0
.end method

.method public getRunLevel(I)I
    .registers 3
    .param p1, "run"    # I

    .prologue
    .line 303
    invoke-virtual {p0}, Ljava/text/Bidi;->getRunCount()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 304
    invoke-virtual {p0}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v0

    return v0

    .line 306
    :cond_b
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getBaseLevel()I

    move-result v0

    :goto_19
    return v0

    :cond_1a
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0, p1}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v0

    goto :goto_19
.end method

.method public getRunLimit(I)I
    .registers 3
    .param p1, "run"    # I

    .prologue
    .line 334
    invoke-virtual {p0}, Ljava/text/Bidi;->getRunCount()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 335
    invoke-virtual {p0}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v0

    return v0

    .line 337
    :cond_b
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getLength()I

    move-result v0

    :goto_19
    return v0

    :cond_1a
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0, p1}, Landroid/icu/text/Bidi;->getRunLimit(I)I

    move-result v0

    goto :goto_19
.end method

.method public getRunStart(I)I
    .registers 4
    .param p1, "run"    # I

    .prologue
    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0}, Ljava/text/Bidi;->getRunCount()I

    move-result v1

    if-ne p1, v1, :cond_c

    .line 319
    invoke-virtual {p0}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v0

    return v0

    .line 321
    :cond_c
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v1

    if-nez v1, :cond_15

    :goto_14
    return v0

    :cond_15
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0, p1}, Landroid/icu/text/Bidi;->getRunStart(I)I

    move-result v0

    goto :goto_14
.end method

.method public isLeftToRight()Z
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->isLeftToRight()Z

    move-result v0

    return v0
.end method

.method public isMixed()Z
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->isMixed()Z

    move-result v0

    return v0
.end method

.method public isRightToLeft()Z
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->isRightToLeft()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/text/Bidi;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 399
    const-string/jumbo v1, "[direction: "

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 399
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getDirection()B

    move-result v1

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 399
    const-string/jumbo v1, " baseLevel: "

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 399
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getBaseLevel()I

    move-result v1

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 400
    const-string/jumbo v1, " length: "

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 400
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getLength()I

    move-result v1

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 400
    const-string/jumbo v1, " runs: "

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 400
    iget-object v1, p0, Ljava/text/Bidi;->bidiBase:Landroid/icu/text/Bidi;

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v1

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 400
    const-string/jumbo v1, "]"

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
