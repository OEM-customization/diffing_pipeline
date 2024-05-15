.class public Ljava/sql/Timestamp;
.super Ljava/util/Date;
.source "Timestamp.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x2618d5c80153bf65L


# instance fields
.field private greylist-max-o nanos:I


# direct methods
.method public constructor whitelist test-api <init>(IIIIIII)V
    .registers 10
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "nano"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    invoke-direct/range {p0 .. p6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 90
    const v0, 0x3b9ac9ff

    if-gt p7, v0, :cond_d

    if-ltz p7, :cond_d

    .line 93
    iput p7, p0, Ljava/sql/Timestamp;->nanos:I

    .line 94
    return-void

    .line 91
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nanos > 999999999 or < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(J)V
    .registers 9
    .param p1, "time"    # J

    .line 109
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    mul-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 110
    rem-long v2, p1, v0

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Ljava/sql/Timestamp;->nanos:I

    .line 111
    if-gez v2, :cond_22

    .line 112
    const v3, 0x3b9aca00

    add-int/2addr v2, v3

    iput v2, p0, Ljava/sql/Timestamp;->nanos:I

    .line 113
    div-long v2, p1, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    mul-long/2addr v2, v0

    invoke-super {p0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 115
    :cond_22
    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;
    .registers 39
    .param p0, "s"    # Ljava/lang/String;

    .line 167
    const/4 v0, 0x4

    .line 168
    .local v0, "YEAR_LENGTH":I
    const/4 v1, 0x2

    .line 169
    .local v1, "MONTH_LENGTH":I
    const/4 v2, 0x2

    .line 170
    .local v2, "DAY_LENGTH":I
    const/16 v3, 0xc

    .line 171
    .local v3, "MAX_MONTH":I
    const/16 v4, 0x1f

    .line 175
    .local v4, "MAX_DAY":I
    const/4 v5, 0x0

    .line 176
    .local v5, "year":I
    const/4 v6, 0x0

    .line 177
    .local v6, "month":I
    const/4 v7, 0x0

    .line 181
    .local v7, "day":I
    const/4 v8, 0x0

    .line 185
    .local v8, "a_nanos":I
    const/4 v9, 0x0

    .line 186
    .local v9, "firstColon":I
    const/4 v10, 0x0

    .line 187
    .local v10, "secondColon":I
    const/4 v11, 0x0

    .line 188
    .local v11, "period":I
    const-string v12, "Timestamp format must be yyyy-mm-dd hh:mm:ss[.fffffffff]"

    .line 189
    .local v12, "formatError":Ljava/lang/String;
    const-string v13, "000000000"

    .line 190
    .local v13, "zeros":Ljava/lang/String;
    const-string v14, "-"

    .line 191
    .local v14, "delimiterDate":Ljava/lang/String;
    const-string v15, ":"

    .line 193
    .local v15, "delimiterTime":Ljava/lang/String;
    if-eqz p0, :cond_1d3

    .line 196
    move/from16 v16, v0

    .end local v0    # "YEAR_LENGTH":I
    .local v16, "YEAR_LENGTH":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 197
    .end local p0    # "s":Ljava/lang/String;
    .local v0, "s":Ljava/lang/String;
    move/from16 v17, v1

    .end local v1    # "MONTH_LENGTH":I
    .local v17, "MONTH_LENGTH":I
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 198
    .local v1, "dividingSpace":I
    if-lez v1, :cond_1cb

    .line 199
    move/from16 v18, v2

    .end local v2    # "DAY_LENGTH":I
    .local v18, "DAY_LENGTH":I
    const/4 v2, 0x0

    move/from16 v19, v3

    .end local v3    # "MAX_MONTH":I
    .local v19, "MAX_MONTH":I
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "date_s":Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "time_s":Ljava/lang/String;
    move-object/from16 v20, v0

    .end local v0    # "s":Ljava/lang/String;
    .local v20, "s":Ljava/lang/String;
    const/16 v0, 0x2d

    move/from16 v21, v1

    .end local v1    # "dividingSpace":I
    .local v21, "dividingSpace":I
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 207
    .local v1, "firstDash":I
    move/from16 v22, v4

    .end local v4    # "MAX_DAY":I
    .local v22, "MAX_DAY":I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 210
    .local v0, "secondDash":I
    if-eqz v2, :cond_1c3

    .line 212
    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 213
    move/from16 v23, v5

    .end local v5    # "year":I
    .local v23, "year":I
    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 214
    .end local v10    # "secondColon":I
    .local v4, "secondColon":I
    const/16 v5, 0x2e

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v2, v5, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 217
    .end local v11    # "period":I
    .local v5, "period":I
    const/4 v10, 0x0

    .line 218
    .local v10, "parsedDate":Z
    const/4 v11, 0x1

    if-lez v1, :cond_d3

    if-lez v0, :cond_d3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v25, v6

    .end local v6    # "month":I
    .local v25, "month":I
    add-int/lit8 v6, v24, -0x1

    if-ge v0, v6, :cond_ce

    .line 219
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 220
    .local v24, "yyyy":Ljava/lang/String;
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, "mm":Ljava/lang/String;
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 222
    .local v11, "dd":Ljava/lang/String;
    move/from16 v27, v0

    .end local v0    # "secondDash":I
    .local v27, "secondDash":I
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v0

    move/from16 v28, v1

    .end local v1    # "firstDash":I
    .local v28, "firstDash":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_d9

    .line 223
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_d9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_d9

    .line 224
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_d9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_d9

    .line 225
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 226
    .end local v23    # "year":I
    .local v0, "year":I
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 227
    .end local v25    # "month":I
    .local v1, "month":I
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 229
    move/from16 v23, v0

    const/4 v0, 0x1

    .end local v0    # "year":I
    .restart local v23    # "year":I
    if-lt v1, v0, :cond_ca

    const/16 v0, 0xc

    if-gt v1, v0, :cond_ca

    const/4 v0, 0x1

    if-lt v7, v0, :cond_ca

    const/16 v0, 0x1f

    if-gt v7, v0, :cond_ca

    .line 230
    const/4 v10, 0x1

    move v6, v1

    move/from16 v0, v23

    goto :goto_dd

    .line 234
    .end local v6    # "mm":Ljava/lang/String;
    .end local v11    # "dd":Ljava/lang/String;
    .end local v24    # "yyyy":Ljava/lang/String;
    :cond_ca
    move v6, v1

    move/from16 v0, v23

    goto :goto_dd

    .line 218
    .end local v27    # "secondDash":I
    .end local v28    # "firstDash":I
    .local v0, "secondDash":I
    .local v1, "firstDash":I
    .restart local v25    # "month":I
    :cond_ce
    move/from16 v27, v0

    move/from16 v28, v1

    .end local v0    # "secondDash":I
    .end local v1    # "firstDash":I
    .restart local v27    # "secondDash":I
    .restart local v28    # "firstDash":I
    goto :goto_d9

    .end local v25    # "month":I
    .end local v27    # "secondDash":I
    .end local v28    # "firstDash":I
    .restart local v0    # "secondDash":I
    .restart local v1    # "firstDash":I
    .local v6, "month":I
    :cond_d3
    move/from16 v27, v0

    move/from16 v28, v1

    move/from16 v25, v6

    .line 234
    .end local v0    # "secondDash":I
    .end local v1    # "firstDash":I
    .end local v6    # "month":I
    .restart local v25    # "month":I
    .restart local v27    # "secondDash":I
    .restart local v28    # "firstDash":I
    :cond_d9
    :goto_d9
    move/from16 v0, v23

    move/from16 v6, v25

    .end local v23    # "year":I
    .end local v25    # "month":I
    .local v0, "year":I
    .restart local v6    # "month":I
    :goto_dd
    if-eqz v10, :cond_1bd

    .line 239
    if-lez v9, :cond_e3

    const/4 v1, 0x1

    goto :goto_e4

    :cond_e3
    const/4 v1, 0x0

    :goto_e4
    if-lez v4, :cond_e8

    const/4 v11, 0x1

    goto :goto_e9

    :cond_e8
    const/4 v11, 0x0

    :goto_e9
    and-int/2addr v1, v11

    .line 240
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v23, 0x1

    add-int/lit8 v11, v11, -0x1

    if-ge v4, v11, :cond_f6

    const/4 v11, 0x1

    goto :goto_f7

    :cond_f6
    const/4 v11, 0x0

    :goto_f7
    and-int/2addr v1, v11

    if-eqz v1, :cond_1b7

    .line 241
    const/4 v1, 0x0

    invoke-virtual {v2, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 242
    .local v1, "hour":I
    add-int/lit8 v11, v9, 0x1

    .line 243
    invoke-virtual {v2, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 244
    .local v11, "minute":I
    if-lez v5, :cond_112

    const/16 v23, 0x1

    goto :goto_114

    :cond_112
    const/16 v23, 0x0

    :goto_114
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v24

    move-object/from16 v26, v3

    const/16 v25, 0x1

    .end local v3    # "date_s":Ljava/lang/String;
    .local v26, "date_s":Ljava/lang/String;
    add-int/lit8 v3, v24, -0x1

    if-ge v5, v3, :cond_121

    goto :goto_123

    :cond_121
    const/16 v25, 0x0

    :goto_123
    and-int v3, v23, v25

    if-eqz v3, :cond_183

    .line 245
    add-int/lit8 v3, v4, 0x1

    .line 246
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 247
    .local v3, "second":I
    move/from16 v23, v3

    .end local v3    # "second":I
    .local v23, "second":I
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "nanos_s":Ljava/lang/String;
    move/from16 v24, v8

    .end local v8    # "a_nanos":I
    .local v24, "a_nanos":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    move/from16 v37, v9

    .end local v9    # "firstColon":I
    .local v37, "firstColon":I
    const/16 v9, 0x9

    if-gt v8, v9, :cond_17b

    .line 250
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->isDigit(C)Z

    move-result v25

    if-eqz v25, :cond_173

    .line 252
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v25

    rsub-int/lit8 v9, v25, 0x9

    move-object/from16 v25, v3

    const/4 v3, 0x0

    .end local v3    # "nanos_s":Ljava/lang/String;
    .local v25, "nanos_s":Ljava/lang/String;
    invoke-virtual {v13, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 253
    .end local v25    # "nanos_s":Ljava/lang/String;
    .restart local v3    # "nanos_s":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move/from16 v3, v23

    .end local v24    # "a_nanos":I
    .restart local v8    # "a_nanos":I
    goto :goto_195

    .line 251
    .end local v8    # "a_nanos":I
    .restart local v24    # "a_nanos":I
    :cond_173
    move-object/from16 v25, v3

    .end local v3    # "nanos_s":Ljava/lang/String;
    .restart local v25    # "nanos_s":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 249
    .end local v25    # "nanos_s":Ljava/lang/String;
    .restart local v3    # "nanos_s":Ljava/lang/String;
    :cond_17b
    move-object/from16 v25, v3

    .end local v3    # "nanos_s":Ljava/lang/String;
    .restart local v25    # "nanos_s":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 254
    .end local v23    # "second":I
    .end local v24    # "a_nanos":I
    .end local v25    # "nanos_s":Ljava/lang/String;
    .end local v37    # "firstColon":I
    .restart local v8    # "a_nanos":I
    .restart local v9    # "firstColon":I
    :cond_183
    move/from16 v24, v8

    move/from16 v37, v9

    .end local v8    # "a_nanos":I
    .end local v9    # "firstColon":I
    .restart local v24    # "a_nanos":I
    .restart local v37    # "firstColon":I
    if-gtz v5, :cond_1af

    .line 257
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move/from16 v8, v24

    .line 263
    .end local v24    # "a_nanos":I
    .local v3, "second":I
    .restart local v8    # "a_nanos":I
    :goto_195
    new-instance v9, Ljava/sql/Timestamp;

    move-object/from16 p0, v2

    .end local v2    # "time_s":Ljava/lang/String;
    .local p0, "time_s":Ljava/lang/String;
    add-int/lit16 v2, v0, -0x76c

    add-int/lit8 v31, v6, -0x1

    move-object/from16 v29, v9

    move/from16 v30, v2

    move/from16 v32, v7

    move/from16 v33, v1

    move/from16 v34, v11

    move/from16 v35, v3

    move/from16 v36, v8

    invoke-direct/range {v29 .. v36}, Ljava/sql/Timestamp;-><init>(IIIIIII)V

    return-object v9

    .line 255
    .end local v3    # "second":I
    .end local v8    # "a_nanos":I
    .end local p0    # "time_s":Ljava/lang/String;
    .restart local v2    # "time_s":Ljava/lang/String;
    .restart local v24    # "a_nanos":I
    :cond_1af
    move-object/from16 p0, v2

    .end local v2    # "time_s":Ljava/lang/String;
    .restart local p0    # "time_s":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    .end local v1    # "hour":I
    .end local v11    # "minute":I
    .end local v24    # "a_nanos":I
    .end local v26    # "date_s":Ljava/lang/String;
    .end local v37    # "firstColon":I
    .end local p0    # "time_s":Ljava/lang/String;
    .restart local v2    # "time_s":Ljava/lang/String;
    .local v3, "date_s":Ljava/lang/String;
    .restart local v8    # "a_nanos":I
    .restart local v9    # "firstColon":I
    :cond_1b7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_1bd
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    .end local v4    # "secondColon":I
    .end local v27    # "secondDash":I
    .end local v28    # "firstDash":I
    .local v0, "secondDash":I
    .local v1, "firstDash":I
    .local v5, "year":I
    .local v10, "secondColon":I
    .local v11, "period":I
    :cond_1c3
    move/from16 v27, v0

    .end local v0    # "secondDash":I
    .restart local v27    # "secondDash":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    .end local v18    # "DAY_LENGTH":I
    .end local v19    # "MAX_MONTH":I
    .end local v20    # "s":Ljava/lang/String;
    .end local v21    # "dividingSpace":I
    .end local v22    # "MAX_DAY":I
    .end local v27    # "secondDash":I
    .local v0, "s":Ljava/lang/String;
    .local v1, "dividingSpace":I
    .local v2, "DAY_LENGTH":I
    .local v3, "MAX_MONTH":I
    .local v4, "MAX_DAY":I
    :cond_1cb
    move-object/from16 v20, v0

    .end local v0    # "s":Ljava/lang/String;
    .restart local v20    # "s":Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    .end local v16    # "YEAR_LENGTH":I
    .end local v17    # "MONTH_LENGTH":I
    .end local v20    # "s":Ljava/lang/String;
    .local v0, "YEAR_LENGTH":I
    .local v1, "MONTH_LENGTH":I
    .local p0, "s":Ljava/lang/String;
    :cond_1d3
    move/from16 v16, v0

    move/from16 v17, v1

    .end local v0    # "YEAR_LENGTH":I
    .end local v1    # "MONTH_LENGTH":I
    .restart local v16    # "YEAR_LENGTH":I
    .restart local v17    # "MONTH_LENGTH":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api after(Ljava/sql/Timestamp;)Z
    .registers 3
    .param p1, "ts"    # Ljava/sql/Timestamp;

    .line 459
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api before(Ljava/sql/Timestamp;)Z
    .registers 3
    .param p1, "ts"    # Ljava/sql/Timestamp;

    .line 447
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 70
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/sql/Timestamp;)I
    .registers 11
    .param p1, "ts"    # Ljava/sql/Timestamp;

    .line 476
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    .line 477
    .local v0, "thisTime":J
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    .line 478
    .local v2, "anotherTime":J
    cmp-long v4, v0, v2

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-gez v4, :cond_10

    move v4, v6

    goto :goto_17

    :cond_10
    cmp-long v4, v0, v2

    if-nez v4, :cond_16

    const/4 v4, 0x0

    goto :goto_17

    :cond_16
    move v4, v5

    .line 479
    .local v4, "i":I
    :goto_17
    if-nez v4, :cond_23

    .line 480
    iget v7, p0, Ljava/sql/Timestamp;->nanos:I

    iget v8, p1, Ljava/sql/Timestamp;->nanos:I

    if-le v7, v8, :cond_20

    .line 481
    return v5

    .line 482
    :cond_20
    if-ge v7, v8, :cond_23

    .line 483
    return v6

    .line 486
    :cond_23
    return v4
.end method

.method public whitelist test-api compareTo(Ljava/util/Date;)I
    .registers 5
    .param p1, "o"    # Ljava/util/Date;

    .line 505
    instance-of v0, p1, Ljava/sql/Timestamp;

    if-eqz v0, :cond_c

    .line 509
    move-object v0, p1

    check-cast v0, Ljava/sql/Timestamp;

    invoke-virtual {p0, v0}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result v0

    return v0

    .line 513
    :cond_c
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 514
    .local v0, "ts":Ljava/sql/Timestamp;
    invoke-virtual {p0, v0}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result v1

    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "ts"    # Ljava/lang/Object;

    .line 431
    instance-of v0, p1, Ljava/sql/Timestamp;

    if-eqz v0, :cond_c

    .line 432
    move-object v0, p1

    check-cast v0, Ljava/sql/Timestamp;

    invoke-virtual {p0, v0}, Ljava/sql/Timestamp;->equals(Ljava/sql/Timestamp;)Z

    move-result v0

    return v0

    .line 434
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/sql/Timestamp;)Z
    .registers 5
    .param p1, "ts"    # Ljava/sql/Timestamp;

    .line 401
    invoke-super {p0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 402
    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    iget v2, p1, Ljava/sql/Timestamp;->nanos:I

    if-ne v0, v2, :cond_f

    .line 403
    const/4 v0, 0x1

    return v0

    .line 405
    :cond_f
    return v1

    .line 408
    :cond_10
    return v1
.end method

.method public whitelist test-api getNanos()I
    .registers 2

    .line 372
    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    return v0
.end method

.method public whitelist test-api getTime()J
    .registers 5

    .line 144
    invoke-super {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 145
    .local v0, "time":J
    iget v2, p0, Ljava/sql/Timestamp;->nanos:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 527
    invoke-super {p0}, Ljava/util/Date;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api setNanos(I)V
    .registers 4
    .param p1, "n"    # I

    .line 385
    const v0, 0x3b9ac9ff

    if-gt p1, v0, :cond_a

    if-ltz p1, :cond_a

    .line 388
    iput p1, p0, Ljava/sql/Timestamp;->nanos:I

    .line 389
    return-void

    .line 386
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nanos > 999999999 or < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setTime(J)V
    .registers 9
    .param p1, "time"    # J

    .line 127
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    mul-long/2addr v2, v0

    invoke-super {p0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 128
    rem-long v2, p1, v0

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Ljava/sql/Timestamp;->nanos:I

    .line 129
    if-gez v2, :cond_22

    .line 130
    const v3, 0x3b9aca00

    add-int/2addr v2, v3

    iput v2, p0, Ljava/sql/Timestamp;->nanos:I

    .line 131
    div-long v2, p1, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    mul-long/2addr v2, v0

    invoke-super {p0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 133
    :cond_22
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 22

    .line 276
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    .line 277
    .local v0, "year":I
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 278
    .local v1, "month":I
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getDate()I

    move-result v2

    .line 279
    .local v2, "day":I
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getHours()I

    move-result v3

    .line 280
    .local v3, "hour":I
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getMinutes()I

    move-result v4

    .line 281
    .local v4, "minute":I
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getSeconds()I

    move-result v5

    .line 289
    .local v5, "second":I
    const-string v6, "000000000"

    .line 290
    .local v6, "zeros":Ljava/lang/String;
    const-string v7, "0000"

    .line 293
    .local v7, "yearZeros":Ljava/lang/String;
    const-string v8, ""

    const/4 v9, 0x0

    const/16 v10, 0x3e8

    if-ge v0, v10, :cond_50

    .line 295
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 296
    .local v8, "yearString":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    rsub-int/lit8 v11, v11, 0x4

    invoke-virtual {v7, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5f

    .line 299
    .end local v8    # "yearString":Ljava/lang/String;
    :cond_50
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 301
    .restart local v8    # "yearString":Ljava/lang/String;
    :goto_5f
    const-string v10, "0"

    const/16 v11, 0xa

    if-ge v1, v11, :cond_75

    .line 302
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .local v12, "monthString":Ljava/lang/String;
    goto :goto_79

    .line 304
    .end local v12    # "monthString":Ljava/lang/String;
    :cond_75
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 306
    .restart local v12    # "monthString":Ljava/lang/String;
    :goto_79
    if-ge v2, v11, :cond_8b

    .line 307
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .local v13, "dayString":Ljava/lang/String;
    goto :goto_8f

    .line 309
    .end local v13    # "dayString":Ljava/lang/String;
    :cond_8b
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 311
    .restart local v13    # "dayString":Ljava/lang/String;
    :goto_8f
    if-ge v3, v11, :cond_a1

    .line 312
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .local v14, "hourString":Ljava/lang/String;
    goto :goto_a5

    .line 314
    .end local v14    # "hourString":Ljava/lang/String;
    :cond_a1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 316
    .restart local v14    # "hourString":Ljava/lang/String;
    :goto_a5
    if-ge v4, v11, :cond_b7

    .line 317
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .local v15, "minuteString":Ljava/lang/String;
    goto :goto_bb

    .line 319
    .end local v15    # "minuteString":Ljava/lang/String;
    :cond_b7
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 321
    .restart local v15    # "minuteString":Ljava/lang/String;
    :goto_bb
    if-ge v5, v11, :cond_cd

    .line 322
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "secondString":Ljava/lang/String;
    goto :goto_d1

    .line 324
    .end local v10    # "secondString":Ljava/lang/String;
    :cond_cd
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 326
    .restart local v10    # "secondString":Ljava/lang/String;
    :goto_d1
    move-object/from16 v11, p0

    iget v9, v11, Ljava/sql/Timestamp;->nanos:I

    if-nez v9, :cond_e0

    .line 327
    const-string v9, "0"

    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 v17, v2

    .local v9, "nanosString":Ljava/lang/String;
    goto :goto_12b

    .line 329
    .end local v9    # "nanosString":Ljava/lang/String;
    :cond_e0
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 332
    .restart local v9    # "nanosString":Ljava/lang/String;
    move/from16 v16, v0

    .end local v0    # "year":I
    .local v16, "year":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v18, v1

    .end local v1    # "month":I
    .local v18, "month":I
    rsub-int/lit8 v1, v17, 0x9

    move/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "day":I
    .local v17, "day":I
    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    .end local v9    # "nanosString":Ljava/lang/String;
    .local v0, "nanosString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [C

    .line 337
    .local v1, "nanosChar":[C
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0, v2, v9, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 338
    const/16 v2, 0x8

    .line 339
    .local v2, "truncIndex":I
    :goto_113
    aget-char v9, v1, v2

    move-object/from16 v19, v0

    .end local v0    # "nanosString":Ljava/lang/String;
    .local v19, "nanosString":Ljava/lang/String;
    const/16 v0, 0x30

    if-ne v9, v0, :cond_120

    .line 340
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v19

    goto :goto_113

    .line 343
    :cond_120
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v9, v2, 0x1

    move/from16 v20, v2

    const/4 v2, 0x0

    .end local v2    # "truncIndex":I
    .local v20, "truncIndex":I
    invoke-direct {v0, v1, v2, v9}, Ljava/lang/String;-><init>([CII)V

    move-object v9, v0

    .line 347
    .end local v1    # "nanosChar":[C
    .end local v19    # "nanosString":Ljava/lang/String;
    .end local v20    # "truncIndex":I
    .restart local v9    # "nanosString":Ljava/lang/String;
    :goto_12b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 348
    .local v0, "timestampBuf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
