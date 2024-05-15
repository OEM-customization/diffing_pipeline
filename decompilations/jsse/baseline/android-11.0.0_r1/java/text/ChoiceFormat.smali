.class public Ljava/text/ChoiceFormat;
.super Ljava/text/NumberFormat;
.source "ChoiceFormat.java"


# static fields
.field static final greylist-max-o EXPONENT:J = 0x7ff0000000000000L

.field static final greylist-max-o POSITIVEINFINITY:J = 0x7ff0000000000000L

.field static final greylist-max-o SIGN:J = -0x8000000000000000L

.field private static final whitelist serialVersionUID:J = 0x18e9c6bee365b604L


# instance fields
.field private greylist-max-o choiceFormats:[Ljava/lang/String;

.field private greylist-max-o choiceLimits:[D


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "newPattern"    # Ljava/lang/String;

    .line 315
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 316
    invoke-virtual {p0, p1}, Ljava/text/ChoiceFormat;->applyPattern(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>([D[Ljava/lang/String;)V
    .registers 3
    .param p1, "limits"    # [D
    .param p2, "formats"    # [Ljava/lang/String;

    .line 326
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 327
    invoke-virtual {p0, p1, p2}, Ljava/text/ChoiceFormat;->setChoices([D[Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method private static greylist-max-o doubleArraySize([D)[D
    .registers 4
    .param p0, "array"    # [D

    .line 630
    array-length v0, p0

    .line 631
    .local v0, "oldSize":I
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [D

    .line 632
    .local v1, "newArray":[D
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 633
    return-object v1
.end method

.method private greylist-max-o doubleArraySize([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "array"    # [Ljava/lang/String;

    .line 637
    array-length v0, p1

    .line 638
    .local v0, "oldSize":I
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 639
    .local v1, "newArray":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    return-object v1
.end method

.method public static final whitelist core-platform-api test-api nextDouble(D)D
    .registers 4
    .param p0, "d"    # D

    .line 456
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljava/text/ChoiceFormat;->nextDouble(DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api nextDouble(DZ)D
    .registers 12
    .param p0, "d"    # D
    .param p2, "positive"    # Z

    .line 591
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 592
    return-wide p0

    .line 596
    :cond_7
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_18

    .line 597
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 598
    .local v0, "smallestPositiveDouble":D
    if-eqz p2, :cond_16

    .line 599
    return-wide v0

    .line 601
    :cond_16
    neg-double v2, v0

    return-wide v2

    .line 608
    .end local v0    # "smallestPositiveDouble":D
    :cond_18
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 611
    .local v3, "bits":J
    const-wide v5, 0x7fffffffffffffffL

    and-long/2addr v5, v3

    .line 614
    .local v5, "magnitude":J
    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-lez v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    if-ne v0, p2, :cond_35

    .line 615
    const-wide/high16 v7, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmp-long v0, v5, v7

    if-eqz v0, :cond_36

    .line 616
    add-long/2addr v5, v1

    goto :goto_36

    .line 621
    :cond_35
    sub-long/2addr v5, v1

    .line 625
    :cond_36
    :goto_36
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, v3

    .line 626
    .local v0, "signbit":J
    or-long v7, v5, v0

    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    return-wide v7
.end method

.method public static final whitelist core-platform-api test-api previousDouble(D)D
    .registers 4
    .param p0, "d"    # D

    .line 468
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/text/ChoiceFormat;->nextDouble(DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 515
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 516
    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v0, v0

    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_c

    .line 520
    return-void

    .line 517
    :cond_c
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "limits and format arrays of different length."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api applyPattern(Ljava/lang/String;)V
    .registers 22
    .param p1, "newPattern"    # Ljava/lang/String;

    .line 177
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/StringBuffer;

    .line 178
    .local v3, "segments":[Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v4, v3

    if-ge v0, v4, :cond_15

    .line 179
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    aput-object v4, v3, v0

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 181
    .end local v0    # "i":I
    :cond_15
    const/16 v0, 0x1e

    new-array v4, v0, [D

    .line 182
    .local v4, "newChoiceLimits":[D
    new-array v0, v0, [Ljava/lang/String;

    .line 183
    .local v0, "newChoiceFormats":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 184
    .local v5, "count":I
    const/4 v6, 0x0

    .line 185
    .local v6, "part":I
    const-wide/16 v7, 0x0

    .line 186
    .local v7, "startValue":D
    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    .line 187
    .local v9, "oldStartValue":D
    const/4 v11, 0x0

    .line 188
    .local v11, "inQuote":Z
    const/4 v12, 0x0

    move v13, v12

    move v12, v11

    move-wide v10, v9

    move-wide v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v4

    move-object v4, v0

    .end local v0    # "newChoiceFormats":[Ljava/lang/String;
    .end local v9    # "oldStartValue":D
    .end local v11    # "inQuote":Z
    .local v4, "newChoiceFormats":[Ljava/lang/String;
    .local v5, "newChoiceLimits":[D
    .local v6, "count":I
    .local v7, "part":I
    .local v8, "startValue":D
    .local v10, "oldStartValue":D
    .local v12, "inQuote":Z
    .local v13, "i":I
    :goto_2b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v13, v0, :cond_10e

    .line 189
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 190
    .local v14, "ch":C
    const/16 v0, 0x27

    if-ne v14, v0, :cond_5e

    .line 192
    add-int/lit8 v0, v13, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v0, v15, :cond_52

    add-int/lit8 v0, v13, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v14, :cond_52

    .line 193
    aget-object v0, v3, v7

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 194
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_f7

    .line 196
    :cond_52
    if-nez v12, :cond_57

    const/16 v16, 0x1

    goto :goto_59

    :cond_57
    const/16 v16, 0x0

    :goto_59
    move/from16 v0, v16

    move v12, v0

    .end local v12    # "inQuote":Z
    .local v0, "inQuote":Z
    goto/16 :goto_f7

    .line 198
    .end local v0    # "inQuote":Z
    .restart local v12    # "inQuote":Z
    :cond_5e
    if-eqz v12, :cond_67

    .line 199
    aget-object v0, v3, v7

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_f7

    .line 200
    :cond_67
    const/16 v15, 0x3c

    if-eq v14, v15, :cond_a0

    const/16 v0, 0x23

    if-eq v14, v0, :cond_a0

    const/16 v0, 0x2264

    if-ne v14, v0, :cond_74

    goto :goto_a0

    .line 226
    :cond_74
    const/16 v0, 0x7c

    if-ne v14, v0, :cond_9a

    .line 227
    array-length v0, v5

    if-ne v6, v0, :cond_83

    .line 228
    invoke-static {v5}, Ljava/text/ChoiceFormat;->doubleArraySize([D)[D

    move-result-object v5

    .line 229
    invoke-direct {v1, v4}, Ljava/text/ChoiceFormat;->doubleArraySize([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 231
    :cond_83
    aput-wide v8, v5, v6

    .line 232
    const/4 v0, 0x1

    aget-object v15, v3, v0

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v6

    .line 233
    add-int/lit8 v6, v6, 0x1

    .line 234
    move-wide v10, v8

    .line 235
    aget-object v15, v3, v0

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 236
    const/4 v0, 0x0

    move v7, v0

    .end local v7    # "part":I
    .local v0, "part":I
    goto :goto_f7

    .line 238
    .end local v0    # "part":I
    .restart local v7    # "part":I
    :cond_9a
    aget-object v0, v3, v7

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_f7

    .line 201
    :cond_a0
    :goto_a0
    const/4 v0, 0x0

    aget-object v16, v3, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v16

    if-eqz v16, :cond_108

    .line 205
    :try_start_a9
    aget-object v16, v3, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 206
    .local v17, "tempBuffer":Ljava/lang/String;
    const-string v0, "\u221e"

    move-object/from16 v15, v17

    .end local v17    # "tempBuffer":Ljava/lang/String;
    .local v15, "tempBuffer":Ljava/lang/String;
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 207
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_d6

    .line 208
    :cond_be
    const-string v0, "-\u221e"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 209
    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_d6

    .line 212
    :cond_c9
    const/4 v0, 0x0

    aget-object v16, v3, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_d4} :catch_101

    move-wide/from16 v8, v18

    .line 216
    .end local v15    # "tempBuffer":Ljava/lang/String;
    :goto_d6
    nop

    .line 217
    const/16 v15, 0x3c

    if-ne v14, v15, :cond_eb

    const-wide/high16 v15, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v15, v8, v15

    if-eqz v15, :cond_eb

    const-wide/high16 v15, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v15, v8, v15

    if-eqz v15, :cond_eb

    .line 219
    invoke-static {v8, v9}, Ljava/text/ChoiceFormat;->nextDouble(D)D

    move-result-wide v8

    .line 221
    :cond_eb
    cmpg-double v15, v8, v10

    if-lez v15, :cond_fb

    .line 224
    const/4 v0, 0x0

    aget-object v15, v3, v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 225
    const/4 v0, 0x1

    move v7, v0

    .line 188
    .end local v14    # "ch":C
    :goto_f7
    const/4 v0, 0x1

    add-int/2addr v13, v0

    goto/16 :goto_2b

    .line 222
    .restart local v14    # "ch":C
    :cond_fb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 214
    :catch_101
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-direct {v15}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v15

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 242
    .end local v13    # "i":I
    .end local v14    # "ch":C
    :cond_10e
    const/4 v13, 0x1

    if-ne v7, v13, :cond_129

    .line 243
    array-length v13, v5

    if-ne v6, v13, :cond_11c

    .line 244
    invoke-static {v5}, Ljava/text/ChoiceFormat;->doubleArraySize([D)[D

    move-result-object v5

    .line 245
    invoke-direct {v1, v4}, Ljava/text/ChoiceFormat;->doubleArraySize([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 247
    :cond_11c
    aput-wide v8, v5, v6

    .line 248
    const/4 v13, 0x1

    aget-object v13, v3, v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v6

    .line 249
    add-int/lit8 v6, v6, 0x1

    .line 251
    :cond_129
    new-array v13, v6, [D

    iput-object v13, v1, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 252
    const/4 v0, 0x0

    invoke-static {v5, v0, v13, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    new-array v13, v6, [Ljava/lang/String;

    iput-object v13, v1, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 254
    invoke-static {v4, v0, v13, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    return-void
.end method

.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 3

    .line 476
    invoke-super {p0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/ChoiceFormat;

    .line 478
    .local v0, "other":Ljava/text/ChoiceFormat;
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 479
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 480
    return-object v0
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 499
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 500
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 501
    return v1

    .line 502
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 503
    return v0

    .line 504
    :cond_13
    move-object v2, p1

    check-cast v2, Ljava/text/ChoiceFormat;

    .line 505
    .local v2, "other":Ljava/text/ChoiceFormat;
    iget-object v3, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    iget-object v4, v2, Ljava/text/ChoiceFormat;->choiceLimits:[D

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    iget-object v4, v2, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 506
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    move v0, v1

    goto :goto_2d

    :cond_2c
    nop

    .line 505
    :goto_2d
    return v0
.end method

.method public whitelist core-platform-api test-api format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 8
    .param p1, "number"    # D
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "status"    # Ljava/text/FieldPosition;

    .line 397
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v2, v1

    if-ge v0, v2, :cond_10

    .line 398
    aget-wide v1, v1, v0

    cmpl-double v1, p1, v1

    if-gez v1, :cond_d

    .line 400
    goto :goto_10

    .line 397
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 403
    :cond_10
    :goto_10
    add-int/lit8 v0, v0, -0x1

    .line 404
    if-gez v0, :cond_15

    const/4 v0, 0x0

    .line 406
    :cond_15
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p3
.end method

.method public whitelist core-platform-api test-api format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "number"    # J
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "status"    # Ljava/text/FieldPosition;

    .line 384
    long-to-double v0, p1

    invoke-virtual {p0, v0, v1, p3, p4}, Ljava/text/ChoiceFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getFormats()[Ljava/lang/Object;
    .registers 3

    .line 369
    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 370
    .local v0, "newFormats":[Ljava/lang/Object;
    return-object v0
.end method

.method public whitelist core-platform-api test-api getLimits()[D
    .registers 3

    .line 359
    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    .line 360
    .local v0, "newLimits":[D
    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 4

    .line 487
    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v0, v0

    .line 488
    .local v0, "result":I
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v2, v1

    if-lez v2, :cond_12

    .line 490
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 492
    :cond_12
    return v0
.end method

.method public whitelist core-platform-api test-api parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/text/ParsePosition;

    .line 423
    iget v0, p2, Ljava/text/ParsePosition;->index:I

    .line 424
    .local v0, "start":I
    move v1, v0

    .line 425
    .local v1, "furthest":I
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 426
    .local v2, "bestNumber":D
    const-wide/16 v4, 0x0

    .line 427
    .local v4, "tempNumber":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_8
    iget-object v7, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v8, v7

    if-ge v6, v8, :cond_36

    .line 428
    aget-object v7, v7, v6

    .line 429
    .local v7, "tempString":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v0, v7, v8, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 430
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v0

    iput v8, p2, Ljava/text/ParsePosition;->index:I

    .line 431
    iget-object v8, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v4, v8, v6

    .line 432
    iget v8, p2, Ljava/text/ParsePosition;->index:I

    if-le v8, v1, :cond_33

    .line 433
    iget v1, p2, Ljava/text/ParsePosition;->index:I

    .line 434
    move-wide v2, v4

    .line 435
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v1, v8, :cond_33

    goto :goto_36

    .line 427
    .end local v7    # "tempString":Ljava/lang/String;
    :cond_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 439
    .end local v6    # "i":I
    :cond_36
    :goto_36
    iput v1, p2, Ljava/text/ParsePosition;->index:I

    .line 440
    iget v6, p2, Ljava/text/ParsePosition;->index:I

    if-ne v6, v0, :cond_3e

    .line 441
    iput v1, p2, Ljava/text/ParsePosition;->errorIndex:I

    .line 443
    :cond_3e
    new-instance v6, Ljava/lang/Double;

    invoke-direct {v6, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object v6
.end method

.method public whitelist core-platform-api test-api setChoices([D[Ljava/lang/String;)V
    .registers 5
    .param p1, "limits"    # [D
    .param p2, "formats"    # [Ljava/lang/String;

    .line 345
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_15

    .line 349
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    iput-object v0, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 350
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 351
    return-void

    .line 346
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array and limit arrays must be of the same length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api toPattern()Ljava/lang/String;
    .registers 19

    .line 263
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    iget-object v3, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v3, v3

    if-ge v2, v3, :cond_db

    .line 265
    const/16 v3, 0x7c

    if-eqz v2, :cond_14

    .line 266
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 271
    :cond_14
    iget-object v4, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v4, v4, v2

    invoke-static {v4, v5}, Ljava/text/ChoiceFormat;->previousDouble(D)D

    move-result-wide v4

    .line 272
    .local v4, "less":D
    iget-object v6, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v6, v6, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 273
    .local v6, "tryLessOrEqual":D
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 275
    .local v8, "tryLess":D
    cmpg-double v10, v6, v8

    const/16 v11, 0x3c

    const/16 v12, 0x23

    const-string v13, ""

    if-gez v10, :cond_56

    .line 276
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v13, v13, v2

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_89

    .line 279
    :cond_56
    iget-object v10, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v14, v10, v2

    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v14, v14, v16

    if-nez v14, :cond_66

    .line 280
    const-string v10, "\u221e"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_86

    .line 281
    :cond_66
    aget-wide v14, v10, v2

    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v10, v14, v16

    if-nez v10, :cond_74

    .line 282
    const-string v10, "-\u221e"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_86

    .line 284
    :cond_74
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    :goto_86
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 290
    :goto_89
    iget-object v10, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v10, v10, v2

    .line 291
    .local v10, "text":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_aa

    .line 292
    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_aa

    const/16 v11, 0x2264

    .line 293
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_aa

    .line 294
    invoke-virtual {v10, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_a8

    goto :goto_aa

    :cond_a8
    const/4 v3, 0x0

    goto :goto_ab

    :cond_aa
    :goto_aa
    const/4 v3, 0x1

    .line 295
    .local v3, "needQuote":Z
    :goto_ab
    const/16 v11, 0x27

    if-eqz v3, :cond_b2

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 296
    :cond_b2
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-gez v12, :cond_bc

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d2

    .line 298
    :cond_bc
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_bd
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_d2

    .line 299
    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 300
    .local v13, "c":C
    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 301
    if-ne v13, v11, :cond_cf

    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 298
    .end local v13    # "c":C
    :cond_cf
    add-int/lit8 v12, v12, 0x1

    goto :goto_bd

    .line 304
    .end local v12    # "j":I
    :cond_d2
    :goto_d2
    if-eqz v3, :cond_d7

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 264
    .end local v3    # "needQuote":Z
    .end local v4    # "less":D
    .end local v6    # "tryLessOrEqual":D
    .end local v8    # "tryLess":D
    .end local v10    # "text":Ljava/lang/String;
    :cond_d7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 306
    .end local v2    # "i":I
    :cond_db
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
