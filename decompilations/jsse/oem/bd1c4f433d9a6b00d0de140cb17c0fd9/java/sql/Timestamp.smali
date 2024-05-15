.class public Ljava/sql/Timestamp;
.super Ljava/util/Date;
.source "Timestamp.java"


# static fields
.field static final serialVersionUID:J = 0x2618d5c80153bf65L


# instance fields
.field private nanos:I


# direct methods
.method public constructor <init>(IIIIIII)V
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

    .prologue
    .line 89
    invoke-direct/range {p0 .. p6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 90
    const v0, 0x3b9ac9ff

    if-gt p7, v0, :cond_a

    if-gez p7, :cond_13

    .line 91
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "nanos > 999999999 or < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_13
    iput p7, p0, Ljava/sql/Timestamp;->nanos:I

    .line 94
    return-void
.end method

.method public constructor <init>(J)V
    .registers 10
    .param p1, "time"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 109
    div-long v0, p1, v4

    mul-long/2addr v0, v4

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 110
    rem-long v0, p1, v4

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Ljava/sql/Timestamp;->nanos:I

    .line 111
    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    if-gez v0, :cond_26

    .line 112
    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    const v1, 0x3b9aca00

    add-int/2addr v0, v1

    iput v0, p0, Ljava/sql/Timestamp;->nanos:I

    .line 113
    div-long v0, p1, v4

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    mul-long/2addr v0, v4

    invoke-super {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 115
    :cond_26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;
    .registers 35
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 167
    const/4 v14, 0x4

    .line 168
    .local v14, "YEAR_LENGTH":I
    const/4 v13, 0x2

    .line 169
    .local v13, "MONTH_LENGTH":I
    const/4 v10, 0x2

    .line 170
    .local v10, "DAY_LENGTH":I
    const/16 v12, 0xc

    .line 171
    .local v12, "MAX_MONTH":I
    const/16 v11, 0x1f

    .line 175
    .local v11, "MAX_DAY":I
    const/16 v31, 0x0

    .line 176
    .local v31, "year":I
    const/16 v24, 0x0

    .line 177
    .local v24, "month":I
    const/4 v5, 0x0

    .line 181
    .local v5, "day":I
    const/4 v9, 0x0

    .line 185
    .local v9, "a_nanos":I
    const/16 v20, 0x0

    .line 186
    .local v20, "firstColon":I
    const/16 v28, 0x0

    .line 187
    .local v28, "secondColon":I
    const/16 v27, 0x0

    .line 188
    .local v27, "period":I
    const-string/jumbo v22, "Timestamp format must be yyyy-mm-dd hh:mm:ss[.fffffffff]"

    .line 189
    .local v22, "formatError":Ljava/lang/String;
    const-string/jumbo v33, "000000000"

    .line 190
    .local v33, "zeros":Ljava/lang/String;
    const-string/jumbo v17, "-"

    .line 191
    .local v17, "delimiterDate":Ljava/lang/String;
    const-string/jumbo v18, ":"

    .line 193
    .local v18, "delimiterTime":Ljava/lang/String;
    if-nez p0, :cond_2a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "null string"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 197
    const/16 v2, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    .line 198
    .local v19, "dividingSpace":I
    if-lez v19, :cond_61

    .line 199
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 200
    .local v15, "date_s":Ljava/lang/String;
    add-int/lit8 v2, v19, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    .line 206
    .local v30, "time_s":Ljava/lang/String;
    const/16 v2, 0x2d

    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    .line 207
    .local v21, "firstDash":I
    const/16 v2, 0x2d

    add-int/lit8 v3, v21, 0x1

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v29

    .line 210
    .local v29, "secondDash":I
    if-nez v30, :cond_69

    .line 211
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    .end local v15    # "date_s":Ljava/lang/String;
    .end local v21    # "firstDash":I
    .end local v29    # "secondDash":I
    .end local v30    # "time_s":Ljava/lang/String;
    :cond_61
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    .restart local v15    # "date_s":Ljava/lang/String;
    .restart local v21    # "firstDash":I
    .restart local v29    # "secondDash":I
    .restart local v30    # "time_s":Ljava/lang/String;
    :cond_69
    const/16 v2, 0x3a

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    .line 213
    const/16 v2, 0x3a

    add-int/lit8 v3, v20, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v28

    .line 214
    const/16 v2, 0x2e

    add-int/lit8 v3, v28, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v27

    .line 217
    const/16 v26, 0x0

    .line 218
    .local v26, "parsedDate":Z
    if-lez v21, :cond_ed

    if-lez v29, :cond_ed

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v29

    if-ge v0, v2, :cond_ed

    .line 219
    const/4 v2, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 220
    .local v32, "yyyy":Ljava/lang/String;
    add-int/lit8 v2, v21, 0x1

    move/from16 v0, v29

    invoke-virtual {v15, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 221
    .local v23, "mm":Ljava/lang/String;
    add-int/lit8 v2, v29, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 222
    .local v16, "dd":Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_ed

    .line 223
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_ed

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_ed

    .line 224
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_ed

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_ed

    .line 225
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 226
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 227
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 229
    const/4 v2, 0x1

    move/from16 v0, v24

    if-lt v0, v2, :cond_ed

    const/16 v2, 0xc

    move/from16 v0, v24

    if-gt v0, v2, :cond_ed

    const/4 v2, 0x1

    if-lt v5, v2, :cond_ed

    const/16 v2, 0x1f

    if-gt v5, v2, :cond_ed

    .line 230
    const/16 v26, 0x1

    .line 234
    .end local v16    # "dd":Ljava/lang/String;
    .end local v23    # "mm":Ljava/lang/String;
    .end local v32    # "yyyy":Ljava/lang/String;
    :cond_ed
    if-nez v26, :cond_f7

    .line 235
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    :cond_f7
    if-lez v20, :cond_15f

    const/4 v2, 0x1

    move v3, v2

    :goto_fb
    if-lez v28, :cond_162

    const/4 v2, 0x1

    :goto_fe
    and-int/2addr v3, v2

    .line 240
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v28

    if-ge v0, v2, :cond_164

    const/4 v2, 0x1

    .line 239
    :goto_10a
    and-int/2addr v2, v3

    if-eqz v2, :cond_1c6

    .line 241
    const/4 v2, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 243
    .local v6, "hour":I
    add-int/lit8 v2, v20, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 244
    .local v7, "minute":I
    if-lez v27, :cond_166

    const/4 v2, 0x1

    :goto_12b
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v27

    if-ge v0, v3, :cond_168

    const/4 v3, 0x1

    :goto_136
    and-int/2addr v2, v3

    if-eqz v2, :cond_1af

    .line 246
    add-int/lit8 v2, v28, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 247
    .local v8, "second":I
    add-int/lit8 v2, v27, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 248
    .local v25, "nanos_s":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-le v2, v3, :cond_16a

    .line 249
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    .end local v6    # "hour":I
    .end local v7    # "minute":I
    .end local v8    # "second":I
    .end local v25    # "nanos_s":Ljava/lang/String;
    :cond_15f
    const/4 v2, 0x0

    move v3, v2

    goto :goto_fb

    :cond_162
    const/4 v2, 0x0

    goto :goto_fe

    .line 240
    :cond_164
    const/4 v2, 0x0

    goto :goto_10a

    .line 244
    .restart local v6    # "hour":I
    .restart local v7    # "minute":I
    :cond_166
    const/4 v2, 0x0

    goto :goto_12b

    :cond_168
    const/4 v3, 0x0

    goto :goto_136

    .line 250
    .restart local v8    # "second":I
    .restart local v25    # "nanos_s":Ljava/lang/String;
    :cond_16a
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_17f

    .line 251
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    :cond_17f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x9

    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 253
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 263
    .end local v25    # "nanos_s":Ljava/lang/String;
    :goto_1a3
    new-instance v2, Ljava/sql/Timestamp;

    move/from16 v0, v31

    add-int/lit16 v3, v0, -0x76c

    add-int/lit8 v4, v24, -0x1

    invoke-direct/range {v2 .. v9}, Ljava/sql/Timestamp;-><init>(IIIIIII)V

    return-object v2

    .line 254
    .end local v8    # "second":I
    :cond_1af
    if-lez v27, :cond_1b9

    .line 255
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    :cond_1b9
    add-int/lit8 v2, v28, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .restart local v8    # "second":I
    goto :goto_1a3

    .line 260
    .end local v6    # "hour":I
    .end local v7    # "minute":I
    .end local v8    # "second":I
    :cond_1c6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public after(Ljava/sql/Timestamp;)Z
    .registers 4
    .param p1, "ts"    # Ljava/sql/Timestamp;

    .prologue
    const/4 v0, 0x0

    .line 459
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result v1

    if-lez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public before(Ljava/sql/Timestamp;)Z
    .registers 4
    .param p1, "ts"    # Ljava/sql/Timestamp;

    .prologue
    const/4 v0, 0x0

    .line 447
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result v1

    if-gez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public compareTo(Ljava/sql/Timestamp;)I
    .registers 9
    .param p1, "ts"    # Ljava/sql/Timestamp;

    .prologue
    .line 476
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v4

    .line 477
    .local v4, "thisTime":J
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    .line 478
    .local v0, "anotherTime":J
    cmp-long v3, v4, v0

    if-gez v3, :cond_17

    const/4 v2, -0x1

    .line 479
    .local v2, "i":I
    :goto_d
    if-nez v2, :cond_27

    .line 480
    iget v3, p0, Ljava/sql/Timestamp;->nanos:I

    iget v6, p1, Ljava/sql/Timestamp;->nanos:I

    if-le v3, v6, :cond_1f

    .line 481
    const/4 v3, 0x1

    return v3

    .line 478
    .end local v2    # "i":I
    :cond_17
    cmp-long v3, v4, v0

    if-nez v3, :cond_1d

    const/4 v2, 0x0

    .restart local v2    # "i":I
    goto :goto_d

    .end local v2    # "i":I
    :cond_1d
    const/4 v2, 0x1

    .restart local v2    # "i":I
    goto :goto_d

    .line 482
    :cond_1f
    iget v3, p0, Ljava/sql/Timestamp;->nanos:I

    iget v6, p1, Ljava/sql/Timestamp;->nanos:I

    if-ge v3, v6, :cond_27

    .line 483
    const/4 v3, -0x1

    return v3

    .line 486
    :cond_27
    return v2
.end method

.method public compareTo(Ljava/util/Date;)I
    .registers 6
    .param p1, "o"    # Ljava/util/Date;

    .prologue
    .line 505
    instance-of v1, p1, Ljava/sql/Timestamp;

    if-eqz v1, :cond_b

    .line 509
    check-cast p1, Ljava/sql/Timestamp;

    .end local p1    # "o":Ljava/util/Date;
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result v1

    return v1

    .line 513
    .restart local p1    # "o":Ljava/util/Date;
    :cond_b
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    .line 514
    .local v0, "ts":Ljava/sql/Timestamp;
    invoke-virtual {p0, v0}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "ts"    # Ljava/lang/Object;

    .prologue
    .line 431
    instance-of v0, p1, Ljava/sql/Timestamp;

    if-eqz v0, :cond_b

    .line 432
    check-cast p1, Ljava/sql/Timestamp;

    .end local p1    # "ts":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->equals(Ljava/sql/Timestamp;)Z

    move-result v0

    return v0

    .line 434
    .restart local p1    # "ts":Ljava/lang/Object;
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/sql/Timestamp;)Z
    .registers 5
    .param p1, "ts"    # Ljava/sql/Timestamp;

    .prologue
    const/4 v2, 0x0

    .line 401
    invoke-super {p0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 402
    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    iget v1, p1, Ljava/sql/Timestamp;->nanos:I

    if-ne v0, v1, :cond_f

    .line 403
    const/4 v0, 0x1

    return v0

    .line 405
    :cond_f
    return v2

    .line 408
    :cond_10
    return v2
.end method

.method public getNanos()I
    .registers 2

    .prologue
    .line 372
    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    return v0
.end method

.method public getTime()J
    .registers 5

    .prologue
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

.method public hashCode()I
    .registers 2

    .prologue
    .line 527
    invoke-super {p0}, Ljava/util/Date;->hashCode()I

    move-result v0

    return v0
.end method

.method public setNanos(I)V
    .registers 4
    .param p1, "n"    # I

    .prologue
    .line 385
    const v0, 0x3b9ac9ff

    if-gt p1, v0, :cond_7

    if-gez p1, :cond_10

    .line 386
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "nanos > 999999999 or < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_10
    iput p1, p0, Ljava/sql/Timestamp;->nanos:I

    .line 389
    return-void
.end method

.method public setTime(J)V
    .registers 10
    .param p1, "time"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 127
    div-long v0, p1, v4

    mul-long/2addr v0, v4

    invoke-super {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 128
    rem-long v0, p1, v4

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Ljava/sql/Timestamp;->nanos:I

    .line 129
    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    if-gez v0, :cond_26

    .line 130
    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    const v1, 0x3b9aca00

    add-int/2addr v0, v1

    iput v0, p0, Ljava/sql/Timestamp;->nanos:I

    .line 131
    div-long v0, p1, v4

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    mul-long/2addr v0, v4

    invoke-super {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 133
    :cond_26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 25

    .prologue
    .line 276
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getYear()I

    move-result v21

    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x76c

    move/from16 v17, v0

    .line 277
    .local v17, "year":I
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getMonth()I

    move-result v21

    add-int/lit8 v9, v21, 0x1

    .line 278
    .local v9, "month":I
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getDate()I

    move-result v3

    .line 279
    .local v3, "day":I
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getHours()I

    move-result v5

    .line 280
    .local v5, "hour":I
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getMinutes()I

    move-result v7

    .line 281
    .local v7, "minute":I
    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getSeconds()I

    move-result v13

    .line 289
    .local v13, "second":I
    const-string/jumbo v20, "000000000"

    .line 290
    .local v20, "zeros":Ljava/lang/String;
    const-string/jumbo v19, "0000"

    .line 293
    .local v19, "yearZeros":Ljava/lang/String;
    const/16 v21, 0x3e8

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_15d

    .line 295
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 296
    .local v18, "yearString":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v22

    rsub-int/lit8 v22, v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 301
    :goto_6d
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ge v9, v0, :cond_177

    .line 302
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 306
    .local v10, "monthString":Ljava/lang/String;
    :goto_89
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ge v3, v0, :cond_17d

    .line 307
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, "dayString":Ljava/lang/String;
    :goto_a5
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ge v5, v0, :cond_183

    .line 312
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 316
    .local v6, "hourString":Ljava/lang/String;
    :goto_c1
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ge v7, v0, :cond_189

    .line 317
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 321
    .local v8, "minuteString":Ljava/lang/String;
    :goto_dd
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ge v13, v0, :cond_18f

    .line 322
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 326
    .local v14, "secondString":Ljava/lang/String;
    :goto_f9
    move-object/from16 v0, p0

    iget v0, v0, Ljava/sql/Timestamp;->nanos:I

    move/from16 v21, v0

    if-nez v21, :cond_195

    .line 327
    const-string/jumbo v12, "0"

    .line 347
    .local v12, "nanosString":Ljava/lang/String;
    :goto_104
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, 0x14

    move/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 348
    .local v15, "timestampBuf":Ljava/lang/StringBuffer;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    const-string/jumbo v21, "-"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    const-string/jumbo v21, "-"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    const-string/jumbo v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    invoke-virtual {v15, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    const-string/jumbo v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    invoke-virtual {v15, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    const-string/jumbo v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    const-string/jumbo v21, "."

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    invoke-virtual {v15, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    return-object v21

    .line 299
    .end local v4    # "dayString":Ljava/lang/String;
    .end local v6    # "hourString":Ljava/lang/String;
    .end local v8    # "minuteString":Ljava/lang/String;
    .end local v10    # "monthString":Ljava/lang/String;
    .end local v12    # "nanosString":Ljava/lang/String;
    .end local v14    # "secondString":Ljava/lang/String;
    .end local v15    # "timestampBuf":Ljava/lang/StringBuffer;
    .end local v18    # "yearString":Ljava/lang/String;
    :cond_15d
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "yearString":Ljava/lang/String;
    goto/16 :goto_6d

    .line 304
    :cond_177
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "monthString":Ljava/lang/String;
    goto/16 :goto_89

    .line 309
    :cond_17d
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "dayString":Ljava/lang/String;
    goto/16 :goto_a5

    .line 314
    :cond_183
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "hourString":Ljava/lang/String;
    goto/16 :goto_c1

    .line 319
    :cond_189
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "minuteString":Ljava/lang/String;
    goto/16 :goto_dd

    .line 324
    :cond_18f
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "secondString":Ljava/lang/String;
    goto/16 :goto_f9

    .line 329
    :cond_195
    move-object/from16 v0, p0

    iget v0, v0, Ljava/sql/Timestamp;->nanos:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 332
    .restart local v12    # "nanosString":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v22

    rsub-int/lit8 v22, v22, 0x9

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 336
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    new-array v11, v0, [C

    .line 337
    .local v11, "nanosChar":[C
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v12, v0, v1, v11, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 338
    const/16 v16, 0x8

    .line 339
    .local v16, "truncIndex":I
    :goto_1df
    aget-char v21, v11, v16

    const/16 v22, 0x30

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1ec

    .line 340
    add-int/lit8 v16, v16, -0x1

    goto :goto_1df

    .line 343
    :cond_1ec
    new-instance v12, Ljava/lang/String;

    .end local v12    # "nanosString":Ljava/lang/String;
    add-int/lit8 v21, v16, 0x1

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-direct {v12, v11, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .restart local v12    # "nanosString":Ljava/lang/String;
    goto/16 :goto_104
.end method
