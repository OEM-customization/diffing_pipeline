.class final Ljava/text/MergeCollation;
.super Ljava/lang/Object;
.source "MergeCollation.java"


# instance fields
.field private final blacklist BITARRAYMASK:B

.field private final blacklist BYTEMASK:I

.field private final blacklist BYTEPOWER:I

.field private transient blacklist excess:Ljava/lang/StringBuffer;

.field private transient blacklist lastEntry:Ljava/text/PatternEntry;

.field blacklist patterns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/text/PatternEntry;",
            ">;"
        }
    .end annotation
.end field

.field private transient blacklist saveEntry:Ljava/text/PatternEntry;

.field private transient blacklist statusArray:[B


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/MergeCollation;->saveEntry:Ljava/text/PatternEntry;

    .line 210
    iput-object v0, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    .line 214
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljava/text/MergeCollation;->excess:Ljava/lang/StringBuffer;

    .line 224
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/text/MergeCollation;->statusArray:[B

    .line 225
    const/4 v0, 0x1

    iput-byte v0, p0, Ljava/text/MergeCollation;->BITARRAYMASK:B

    .line 226
    const/4 v0, 0x3

    iput v0, p0, Ljava/text/MergeCollation;->BYTEPOWER:I

    .line 227
    const/4 v0, 0x7

    iput v0, p0, Ljava/text/MergeCollation;->BYTEMASK:I

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_26
    iget-object v1, p0, Ljava/text/MergeCollation;->statusArray:[B

    array-length v2, v1

    if-ge v0, v2, :cond_31

    .line 72
    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 73
    .end local v0    # "i":I
    :cond_31
    invoke-virtual {p0, p1}, Ljava/text/MergeCollation;->setPattern(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private final blacklist findLastEntry(Ljava/text/PatternEntry;Ljava/lang/StringBuffer;)I
    .registers 10
    .param p1, "entry"    # Ljava/text/PatternEntry;
    .param p2, "excessChars"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 305
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 306
    return v0

    .line 308
    :cond_4
    iget v1, p1, Ljava/text/PatternEntry;->strength:I

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v2, :cond_56

    .line 312
    const/4 v1, -0x1

    .line 313
    .local v1, "oldIndex":I
    iget-object v2, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_34

    .line 314
    iget-object v2, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    shr-int/lit8 v2, v2, 0x3

    .line 315
    .local v2, "index":I
    iget-object v5, p0, Ljava/text/MergeCollation;->statusArray:[B

    aget-byte v5, v5, v2

    iget-object v6, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    .line 316
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit8 v0, v0, 0x7

    shl-int v0, v4, v0

    and-int/2addr v0, v5

    if-eqz v0, :cond_33

    .line 317
    iget-object v0, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    .line 319
    .end local v2    # "index":I
    :cond_33
    goto :goto_3a

    .line 320
    :cond_34
    iget-object v0, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    .line 322
    :goto_3a
    if-eq v1, v3, :cond_3f

    .line 325
    add-int/lit8 v0, v1, 0x1

    return v0

    .line 323
    :cond_3f
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find last entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 328
    .end local v1    # "oldIndex":I
    :cond_56
    iget-object v1, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    .local v1, "i":I
    :goto_5d
    if-ltz v1, :cond_90

    .line 329
    iget-object v2, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/PatternEntry;

    .line 330
    .local v2, "e":Ljava/text/PatternEntry;
    iget-object v4, v2, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    iget-object v5, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    iget-object v6, v2, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    .line 331
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 330
    invoke-virtual {v4, v0, v5, v0, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 332
    iget-object v0, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    iget-object v4, v2, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    .line 333
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 332
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    goto :goto_90

    .line 328
    .end local v2    # "e":Ljava/text/PatternEntry;
    :cond_8d
    add-int/lit8 v1, v1, -0x1

    goto :goto_5d

    .line 337
    :cond_90
    :goto_90
    if-eq v1, v3, :cond_95

    .line 339
    add-int/lit8 v0, v1, 0x1

    return v0

    .line 338
    :cond_95
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private final blacklist findLastWithNoExtension(I)Ljava/text/PatternEntry;
    .registers 4
    .param p1, "i"    # I

    .line 123
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_16

    .line 124
    iget-object v0, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/PatternEntry;

    .line 125
    .local v0, "entry":Ljava/text/PatternEntry;
    iget-object v1, v0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_15

    .line 126
    return-object v0

    .line 125
    .end local v0    # "entry":Ljava/text/PatternEntry;
    :cond_15
    goto :goto_0

    .line 129
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method private final blacklist fixEntry(Ljava/text/PatternEntry;)V
    .registers 12
    .param p1, "newEntry"    # Ljava/text/PatternEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_4f

    iget-object v0, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    iget-object v3, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    iget-object v3, v3, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p1, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    iget-object v3, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    iget-object v3, v3, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    .line 243
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 244
    iget v0, p1, Ljava/text/PatternEntry;->strength:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4e

    iget v0, p1, Ljava/text/PatternEntry;->strength:I

    if-ne v0, v2, :cond_28

    goto :goto_4e

    .line 246
    :cond_28
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The entries "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " are adjacent in the rules, but have conflicting strengths: A character can\'t be unequal to itself."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 251
    :cond_4e
    :goto_4e
    return-void

    .line 255
    :cond_4f
    const/4 v0, 0x1

    .line 256
    .local v0, "changeLastEntry":Z
    iget v3, p1, Ljava/text/PatternEntry;->strength:I

    if-eq v3, v2, :cond_dd

    .line 257
    const/4 v2, -0x1

    .line 259
    .local v2, "oldIndex":I
    iget-object v3, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_84

    .line 261
    iget-object v3, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 262
    .local v3, "c":C
    shr-int/lit8 v6, v3, 0x3

    .line 263
    .local v6, "statusIndex":I
    iget-object v7, p0, Ljava/text/MergeCollation;->statusArray:[B

    aget-byte v7, v7, v6

    .line 264
    .local v7, "bitClump":B
    and-int/lit8 v8, v3, 0x7

    shl-int/2addr v5, v8

    int-to-byte v5, v5

    .line 266
    .local v5, "setBit":B
    if-eqz v7, :cond_7c

    and-int v8, v7, v5

    if-eqz v8, :cond_7c

    .line 267
    iget-object v8, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_83

    .line 271
    :cond_7c
    iget-object v8, p0, Ljava/text/MergeCollation;->statusArray:[B

    or-int v9, v7, v5

    int-to-byte v9, v9

    aput-byte v9, v8, v6

    .line 273
    .end local v3    # "c":C
    .end local v5    # "setBit":B
    .end local v6    # "statusIndex":I
    .end local v7    # "bitClump":B
    :goto_83
    goto :goto_8a

    .line 274
    :cond_84
    iget-object v3, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    .line 276
    :goto_8a
    if-eq v2, v1, :cond_91

    .line 277
    iget-object v1, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 280
    :cond_91
    iget-object v1, p0, Ljava/text/MergeCollation;->excess:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 281
    iget-object v1, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    iget-object v3, p0, Ljava/text/MergeCollation;->excess:Ljava/lang/StringBuffer;

    invoke-direct {p0, v1, v3}, Ljava/text/MergeCollation;->findLastEntry(Ljava/text/PatternEntry;Ljava/lang/StringBuffer;)I

    move-result v1

    .line 283
    .local v1, "lastIndex":I
    iget-object v3, p0, Ljava/text/MergeCollation;->excess:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_c8

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljava/text/MergeCollation;->excess:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    .line 285
    iget-object v3, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v1, v3, :cond_c8

    .line 286
    iget-object v3, p0, Ljava/text/MergeCollation;->saveEntry:Ljava/text/PatternEntry;

    iput-object v3, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    .line 287
    const/4 v0, 0x0

    .line 290
    :cond_c8
    iget-object v3, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v1, v3, :cond_d8

    .line 291
    iget-object v3, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iput-object p1, p0, Ljava/text/MergeCollation;->saveEntry:Ljava/text/PatternEntry;

    goto :goto_dd

    .line 294
    :cond_d8
    iget-object v3, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 297
    .end local v1    # "lastIndex":I
    .end local v2    # "oldIndex":I
    :cond_dd
    :goto_dd
    if-eqz v0, :cond_e1

    .line 298
    iput-object p1, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    .line 300
    :cond_e1
    return-void
.end method


# virtual methods
.method public blacklist addPattern(Ljava/lang/String;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 175
    if-nez p1, :cond_3

    .line 176
    return-void

    .line 178
    :cond_3
    new-instance v0, Ljava/text/PatternEntry$Parser;

    invoke-direct {v0, p1}, Ljava/text/PatternEntry$Parser;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "parser":Ljava/text/PatternEntry$Parser;
    invoke-virtual {v0}, Ljava/text/PatternEntry$Parser;->next()Ljava/text/PatternEntry;

    move-result-object v1

    .line 181
    .local v1, "entry":Ljava/text/PatternEntry;
    :goto_c
    if-eqz v1, :cond_16

    .line 182
    invoke-direct {p0, v1}, Ljava/text/MergeCollation;->fixEntry(Ljava/text/PatternEntry;)V

    .line 183
    invoke-virtual {v0}, Ljava/text/PatternEntry$Parser;->next()Ljava/text/PatternEntry;

    move-result-object v1

    goto :goto_c

    .line 185
    :cond_16
    return-void
.end method

.method public blacklist emitPattern()Ljava/lang/String;
    .registers 2

    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/text/MergeCollation;->emitPattern(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist emitPattern(Z)Ljava/lang/String;
    .registers 7
    .param p1, "withWhiteSpace"    # Z

    .line 149
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    .local v0, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 152
    iget-object v2, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/PatternEntry;

    .line 153
    .local v2, "entry":Ljava/text/PatternEntry;
    if-eqz v2, :cond_1d

    .line 154
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4, p1, v3}, Ljava/text/PatternEntry;->addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V

    .line 150
    .end local v2    # "entry":Ljava/text/PatternEntry;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 157
    .end local v1    # "i":I
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getCount()I
    .registers 2

    .line 192
    iget-object v0, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getItemAt(I)Ljava/text/PatternEntry;
    .registers 3
    .param p1, "index"    # I

    .line 201
    iget-object v0, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/PatternEntry;

    return-object v0
.end method

.method public blacklist getPattern()Ljava/lang/String;
    .registers 2

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/text/MergeCollation;->getPattern(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPattern(Z)Ljava/lang/String;
    .registers 11
    .param p1, "withWhiteSpace"    # Z

    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v0, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 91
    .local v1, "tmp":Ljava/text/PatternEntry;
    const/4 v2, 0x0

    .line 93
    .local v2, "extList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/PatternEntry;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    iget-object v4, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_52

    .line 94
    iget-object v4, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/text/PatternEntry;

    .line 95
    .local v4, "entry":Ljava/text/PatternEntry;
    iget-object v6, v4, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2d

    .line 96
    if-nez v2, :cond_29

    .line 97
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 98
    :cond_29
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 100
    :cond_2d
    if-eqz v2, :cond_4b

    .line 101
    add-int/lit8 v6, v3, -0x1

    invoke-direct {p0, v6}, Ljava/text/MergeCollation;->findLastWithNoExtension(I)Ljava/text/PatternEntry;

    move-result-object v6

    .line 102
    .local v6, "last":Ljava/text/PatternEntry;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "j":I
    :goto_3b
    if-ltz v7, :cond_4a

    .line 103
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v1, v8

    check-cast v1, Ljava/text/PatternEntry;

    .line 104
    invoke-virtual {v1, v0, v5, p1, v6}, Ljava/text/PatternEntry;->addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V

    .line 102
    add-int/lit8 v7, v7, -0x1

    goto :goto_3b

    .line 106
    .end local v7    # "j":I
    :cond_4a
    const/4 v2, 0x0

    .line 108
    .end local v6    # "last":Ljava/text/PatternEntry;
    :cond_4b
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v5, p1, v6}, Ljava/text/PatternEntry;->addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V

    .line 93
    .end local v4    # "entry":Ljava/text/PatternEntry;
    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 111
    :cond_52
    if-eqz v2, :cond_70

    .line 112
    add-int/lit8 v4, v3, -0x1

    invoke-direct {p0, v4}, Ljava/text/MergeCollation;->findLastWithNoExtension(I)Ljava/text/PatternEntry;

    move-result-object v4

    .line 113
    .local v4, "last":Ljava/text/PatternEntry;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "j":I
    :goto_60
    if-ltz v6, :cond_6f

    .line 114
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    check-cast v1, Ljava/text/PatternEntry;

    .line 115
    invoke-virtual {v1, v0, v5, p1, v4}, Ljava/text/PatternEntry;->addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V

    .line 113
    add-int/lit8 v6, v6, -0x1

    goto :goto_60

    .line 117
    .end local v6    # "j":I
    :cond_6f
    const/4 v2, 0x0

    .line 119
    .end local v4    # "last":Ljava/text/PatternEntry;
    :cond_70
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public blacklist setPattern(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 166
    invoke-virtual {p0, p1}, Ljava/text/MergeCollation;->addPattern(Ljava/lang/String;)V

    .line 167
    return-void
.end method
