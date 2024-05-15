.class public Ljava/text/ChoiceFormat;
.super Ljava/text/NumberFormat;
.source "ChoiceFormat.java"


# static fields
.field static final EXPONENT:J = 0x7ff0000000000000L

.field static final POSITIVEINFINITY:J = 0x7ff0000000000000L

.field static final SIGN:J = -0x8000000000000000L

.field private static final serialVersionUID:J = 0x18e9c6bee365b604L


# instance fields
.field private choiceFormats:[Ljava/lang/String;

.field private choiceLimits:[D


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "newPattern"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 315
    invoke-virtual {p0, p1}, Ljava/text/ChoiceFormat;->applyPattern(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public constructor <init>([D[Ljava/lang/String;)V
    .registers 3
    .param p1, "limits"    # [D
    .param p2, "formats"    # [Ljava/lang/String;

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 326
    invoke-virtual {p0, p1, p2}, Ljava/text/ChoiceFormat;->setChoices([D[Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method private static doubleArraySize([D)[D
    .registers 5
    .param p0, "array"    # [D

    .prologue
    const/4 v3, 0x0

    .line 627
    array-length v1, p0

    .line 628
    .local v1, "oldSize":I
    mul-int/lit8 v2, v1, 0x2

    new-array v0, v2, [D

    .line 629
    .local v0, "newArray":[D
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 630
    return-object v0
.end method

.method private doubleArraySize([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 634
    array-length v1, p1

    .line 635
    .local v1, "oldSize":I
    mul-int/lit8 v2, v1, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 636
    .local v0, "newArray":[Ljava/lang/String;
    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 637
    return-object v0
.end method

.method public static final nextDouble(D)D
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 453
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljava/text/ChoiceFormat;->nextDouble(DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextDouble(DZ)D
    .registers 15
    .param p0, "d"    # D
    .param p2, "positive"    # Z

    .prologue
    const-wide/16 v10, 0x1

    .line 588
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 589
    return-wide p0

    .line 593
    :cond_9
    const-wide/16 v8, 0x0

    cmpl-double v8, p0, v8

    if-nez v8, :cond_18

    .line 594
    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 595
    .local v6, "smallestPositiveDouble":D
    if-eqz p2, :cond_16

    .line 596
    return-wide v6

    .line 598
    :cond_16
    neg-double v8, v6

    return-wide v8

    .line 605
    .end local v6    # "smallestPositiveDouble":D
    :cond_18
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 608
    .local v0, "bits":J
    const-wide v8, 0x7fffffffffffffffL

    and-long v2, v0, v8

    .line 611
    .local v2, "magnitude":J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_3e

    const/4 v8, 0x1

    :goto_2a
    if-ne v8, p2, :cond_40

    .line 612
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmp-long v8, v2, v8

    if-eqz v8, :cond_33

    .line 613
    add-long/2addr v2, v10

    .line 622
    :cond_33
    :goto_33
    const-wide/high16 v8, -0x8000000000000000L

    and-long v4, v0, v8

    .line 623
    .local v4, "signbit":J
    or-long v8, v2, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    return-wide v8

    .line 611
    .end local v4    # "signbit":J
    :cond_3e
    const/4 v8, 0x0

    goto :goto_2a

    .line 618
    :cond_40
    sub-long/2addr v2, v10

    goto :goto_33
.end method

.method public static final previousDouble(D)D
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/text/ChoiceFormat;->nextDouble(DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 512
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 513
    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v0, v0

    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_14

    .line 514
    new-instance v0, Ljava/io/InvalidObjectException;

    .line 515
    const-string/jumbo v1, "limits and format arrays of different length."

    .line 514
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_14
    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .registers 23
    .param p1, "newPattern"    # Ljava/lang/String;

    .prologue
    .line 177
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/StringBuffer;

    .line 178
    .local v14, "segments":[Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    array-length v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_18

    .line 179
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    aput-object v18, v14, v7

    .line 178
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 181
    :cond_18
    const/16 v18, 0x1e

    move/from16 v0, v18

    new-array v10, v0, [D

    .line 182
    .local v10, "newChoiceLimits":[D
    const/16 v18, 0x1e

    move/from16 v0, v18

    new-array v9, v0, [Ljava/lang/String;

    .line 183
    .local v9, "newChoiceFormats":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 184
    .local v5, "count":I
    const/4 v11, 0x0

    .line 185
    .local v11, "part":I
    const-wide/16 v16, 0x0

    .line 186
    .local v16, "startValue":D
    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    .line 187
    .local v12, "oldStartValue":D
    const/4 v8, 0x0

    .line 188
    .local v8, "inQuote":Z
    const/4 v7, 0x0

    .end local v8    # "inQuote":Z
    :goto_2c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_133

    .line 189
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 190
    .local v4, "ch":C
    const/16 v18, 0x27

    move/from16 v0, v18

    if-ne v4, v0, :cond_69

    .line 192
    add-int/lit8 v18, v7, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_66

    add-int/lit8 v18, v7, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    if-ne v0, v4, :cond_66

    .line 193
    aget-object v18, v14, v11

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 194
    add-int/lit8 v7, v7, 0x1

    .line 188
    :goto_63
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    .line 196
    :cond_66
    xor-int/lit8 v8, v8, 0x1

    .local v8, "inQuote":Z
    goto :goto_63

    .line 198
    .end local v8    # "inQuote":Z
    :cond_69
    if-eqz v8, :cond_73

    .line 199
    aget-object v18, v14, v11

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_63

    .line 200
    :cond_73
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-eq v4, v0, :cond_7f

    const/16 v18, 0x23

    move/from16 v0, v18

    if-ne v4, v0, :cond_8f

    .line 201
    :cond_7f
    const/16 v18, 0x0

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    if-nez v18, :cond_c7

    .line 202
    new-instance v18, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v18

    .line 200
    :cond_8f
    const/16 v18, 0x2264

    move/from16 v0, v18

    if-eq v4, v0, :cond_7f

    .line 225
    const/16 v18, 0x7c

    move/from16 v0, v18

    if-ne v4, v0, :cond_12a

    .line 226
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v5, v0, :cond_ac

    .line 227
    invoke-static {v10}, Ljava/text/ChoiceFormat;->doubleArraySize([D)[D

    move-result-object v10

    .line 228
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Ljava/text/ChoiceFormat;->doubleArraySize([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 230
    :cond_ac
    aput-wide v16, v10, v5

    .line 231
    const/16 v18, 0x1

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v5

    .line 232
    add-int/lit8 v5, v5, 0x1

    .line 233
    move-wide/from16 v12, v16

    .line 234
    const/16 v18, 0x1

    aget-object v18, v14, v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 235
    const/4 v11, 0x0

    goto :goto_63

    .line 205
    :cond_c7
    const/16 v18, 0x0

    :try_start_c9
    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 206
    .local v15, "tempBuffer":Ljava/lang/String;
    const-string/jumbo v18, "\u221e"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_d7} :catch_117

    move-result v18

    if-eqz v18, :cond_fc

    .line 207
    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 216
    :goto_dc
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v4, v0, :cond_f2

    const-wide/high16 v18, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v18, v16, v18

    if-eqz v18, :cond_f2

    .line 217
    const-wide/high16 v18, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v18, v16, v18

    if-eqz v18, :cond_f2

    .line 218
    invoke-static/range {v16 .. v17}, Ljava/text/ChoiceFormat;->nextDouble(D)D

    move-result-wide v16

    .line 220
    :cond_f2
    cmpg-double v18, v16, v12

    if-gtz v18, :cond_11e

    .line 221
    new-instance v18, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v18

    .line 208
    :cond_fc
    :try_start_fc
    const-string/jumbo v18, "-\u221e"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10a

    .line 209
    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_dc

    .line 211
    :cond_10a
    const/16 v18, 0x0

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_115} :catch_117

    move-result-wide v16

    goto :goto_dc

    .line 213
    .end local v15    # "tempBuffer":Ljava/lang/String;
    :catch_117
    move-exception v6

    .line 214
    .local v6, "e":Ljava/lang/Exception;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v18

    .line 223
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v15    # "tempBuffer":Ljava/lang/String;
    :cond_11e
    const/16 v18, 0x0

    aget-object v18, v14, v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 224
    const/4 v11, 0x1

    .line 200
    goto/16 :goto_63

    .line 237
    .end local v15    # "tempBuffer":Ljava/lang/String;
    :cond_12a
    aget-object v18, v14, v11

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_63

    .line 241
    .end local v4    # "ch":C
    :cond_133
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_158

    .line 242
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v5, v0, :cond_14a

    .line 243
    invoke-static {v10}, Ljava/text/ChoiceFormat;->doubleArraySize([D)[D

    move-result-object v10

    .line 244
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Ljava/text/ChoiceFormat;->doubleArraySize([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 246
    :cond_14a
    aput-wide v16, v10, v5

    .line 247
    const/16 v18, 0x1

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v5

    .line 248
    add-int/lit8 v5, v5, 0x1

    .line 250
    :cond_158
    new-array v0, v5, [D

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v10, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 252
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v9, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 473
    invoke-super {p0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/ChoiceFormat;

    .line 475
    .local v0, "other":Ljava/text/ChoiceFormat;
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 476
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 477
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 496
    if-nez p1, :cond_4

    return v1

    .line 497
    :cond_4
    if-ne p0, p1, :cond_8

    .line 498
    const/4 v1, 0x1

    return v1

    .line 499
    :cond_8
    invoke-virtual {p0}, Ljava/text/ChoiceFormat;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 500
    return v1

    :cond_13
    move-object v0, p1

    .line 501
    check-cast v0, Ljava/text/ChoiceFormat;

    .line 502
    .local v0, "other":Ljava/text/ChoiceFormat;
    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    iget-object v3, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 503
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    iget-object v2, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 502
    :cond_28
    return v1
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 12
    .param p1, "number"    # D
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "status"    # Ljava/text/FieldPosition;

    .prologue
    const/4 v2, 0x0

    .line 394
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 395
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v4, v1, v0

    cmpl-double v1, p1, v4

    if-ltz v1, :cond_20

    const/4 v1, 0x1

    :goto_10
    if-nez v1, :cond_22

    .line 400
    :cond_12
    add-int/lit8 v0, v0, -0x1

    .line 401
    if-gez v0, :cond_17

    const/4 v0, 0x0

    .line 403
    :cond_17
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1

    :cond_20
    move v1, v2

    .line 395
    goto :goto_10

    .line 394
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 8
    .param p1, "number"    # J
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "status"    # Ljava/text/FieldPosition;

    .prologue
    .line 381
    long-to-double v0, p1

    invoke-virtual {p0, v0, v1, p3, p4}, Ljava/text/ChoiceFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getFormats()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 366
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 367
    .local v0, "newFormats":[Ljava/lang/Object;
    return-object v0
.end method

.method public getLimits()[D
    .registers 4

    .prologue
    .line 357
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    .line 358
    .local v0, "newLimits":[D
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 484
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v0, v1

    .line 485
    .local v0, "result":I
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_16

    .line 487
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 489
    :cond_16
    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/text/ParsePosition;

    .prologue
    .line 420
    iget v4, p2, Ljava/text/ParsePosition;->index:I

    .line 421
    .local v4, "start":I
    move v2, v4

    .line 422
    .local v2, "furthest":I
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 423
    .local v0, "bestNumber":D
    const-wide/16 v6, 0x0

    .line 424
    .local v6, "tempNumber":D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    iget-object v8, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_34

    .line 425
    iget-object v8, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v5, v8, v3

    .line 426
    .local v5, "tempString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p1, v4, v5, v9, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 427
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v4

    iput v8, p2, Ljava/text/ParsePosition;->index:I

    .line 428
    iget-object v8, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v6, v8, v3

    .line 429
    iget v8, p2, Ljava/text/ParsePosition;->index:I

    if-le v8, v2, :cond_42

    .line 430
    iget v2, p2, Ljava/text/ParsePosition;->index:I

    .line 431
    move-wide v0, v6

    .line 432
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v2, v8, :cond_42

    .line 436
    .end local v5    # "tempString":Ljava/lang/String;
    :cond_34
    iput v2, p2, Ljava/text/ParsePosition;->index:I

    .line 437
    iget v8, p2, Ljava/text/ParsePosition;->index:I

    if-ne v8, v4, :cond_3c

    .line 438
    iput v2, p2, Ljava/text/ParsePosition;->errorIndex:I

    .line 440
    :cond_3c
    new-instance v8, Ljava/lang/Double;

    invoke-direct {v8, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object v8

    .line 424
    .restart local v5    # "tempString":Ljava/lang/String;
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method public setChoices([D[Ljava/lang/String;)V
    .registers 5
    .param p1, "limits"    # [D
    .param p2, "formats"    # [Ljava/lang/String;

    .prologue
    .line 344
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_d

    .line 345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 346
    const-string/jumbo v1, "Array and limit arrays must be of the same length."

    .line 345
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_d
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    iput-object v0, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 349
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 350
    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .registers 19

    .prologue
    .line 262
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 263
    .local v8, "result":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v14, v14

    if-ge v3, v14, :cond_103

    .line 264
    if-eqz v3, :cond_14

    .line 265
    const/16 v14, 0x7c

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 270
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v14, v14, v3

    invoke-static {v14, v15}, Ljava/text/ChoiceFormat;->previousDouble(D)D

    move-result-wide v6

    .line 271
    .local v6, "less":D
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v14, v14, v3

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    .line 272
    .local v12, "tryLessOrEqual":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    .line 274
    .local v10, "tryLess":D
    cmpg-double v14, v12, v10

    if-gez v14, :cond_94

    .line 275
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v16, v15, v3

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    const/16 v14, 0x23

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 289
    :goto_60
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v9, v14, v3

    .line 290
    .local v9, "text":Ljava/lang/String;
    const/16 v14, 0x3c

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-gez v14, :cond_76

    .line 291
    const/16 v14, 0x23

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ltz v14, :cond_d7

    .line 290
    :cond_76
    const/4 v5, 0x1

    .line 294
    .local v5, "needQuote":Z
    :goto_77
    if-eqz v5, :cond_7e

    const/16 v14, 0x27

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 295
    :cond_7e
    const/16 v14, 0x27

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-gez v14, :cond_eb

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    :cond_89
    if-eqz v5, :cond_90

    const/16 v14, 0x27

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 263
    :cond_90
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 278
    .end local v5    # "needQuote":Z
    .end local v9    # "text":Ljava/lang/String;
    :cond_94
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v14, v14, v3

    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v14, v14, v16

    if-nez v14, :cond_ac

    .line 279
    const-string/jumbo v14, "\u221e"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    :goto_a6
    const/16 v14, 0x3c

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_60

    .line 280
    :cond_ac
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v14, v14, v3

    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v14, v14, v16

    if-nez v14, :cond_bf

    .line 281
    const-string/jumbo v14, "-\u221e"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a6

    .line 283
    :cond_bf
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a6

    .line 292
    .restart local v9    # "text":Ljava/lang/String;
    :cond_d7
    const/16 v14, 0x2264

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-gez v14, :cond_76

    .line 293
    const/16 v14, 0x7c

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ltz v14, :cond_e9

    const/4 v5, 0x1

    .restart local v5    # "needQuote":Z
    goto :goto_77

    .end local v5    # "needQuote":Z
    :cond_e9
    const/4 v5, 0x0

    .restart local v5    # "needQuote":Z
    goto :goto_77

    .line 297
    :cond_eb
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_ec
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v4, v14, :cond_89

    .line 298
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 299
    .local v2, "c":C
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 300
    const/16 v14, 0x27

    if-ne v2, v14, :cond_100

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 297
    :cond_100
    add-int/lit8 v4, v4, 0x1

    goto :goto_ec

    .line 305
    .end local v2    # "c":C
    .end local v4    # "j":I
    .end local v5    # "needQuote":Z
    .end local v6    # "less":D
    .end local v9    # "text":Ljava/lang/String;
    .end local v10    # "tryLess":D
    .end local v12    # "tryLessOrEqual":D
    :cond_103
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14
.end method
