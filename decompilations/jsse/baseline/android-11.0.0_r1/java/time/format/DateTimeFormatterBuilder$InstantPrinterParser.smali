.class final Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InstantPrinterParser"
.end annotation


# static fields
.field private static final greylist-max-o SECONDS_0000_TO_1970:J = 0xe79747c00L

.field private static final greylist-max-o SECONDS_PER_10000_YEARS:J = 0x497968bd80L


# instance fields
.field private final greylist-max-o fractionalDigits:I


# direct methods
.method constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "fractionalDigits"    # I

    .line 3179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3180
    iput p1, p0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    .line 3181
    return-void
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 24
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 3186
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v2, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v2

    .line 3187
    .local v2, "inSecs":Ljava/lang/Long;
    const/4 v4, 0x0

    .line 3188
    .local v4, "inNanos":Ljava/lang/Long;
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v5

    sget-object v6, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v5, v6}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 3189
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v5

    sget-object v6, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v5, v6}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 3191
    :cond_27
    const/4 v5, 0x0

    if-nez v2, :cond_2b

    .line 3192
    return v5

    .line 3194
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 3195
    .local v6, "inSec":J
    sget-object v8, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    if-eqz v4, :cond_38

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_3a

    :cond_38
    const-wide/16 v11, 0x0

    :goto_3a
    invoke-virtual {v8, v11, v12}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v8

    .line 3197
    .local v8, "inNano":I
    const-wide v11, -0xe79747c00L

    cmp-long v11, v6, v11

    const-string v12, ":00"

    const-wide/16 v13, 0x1

    const-wide v15, 0xe79747c00L

    const-wide v9, 0x497968bd80L

    if-ltz v11, :cond_8c

    .line 3199
    sub-long v17, v6, v9

    move-wide/from16 v19, v6

    .end local v6    # "inSec":J
    .local v19, "inSec":J
    add-long v5, v17, v15

    .line 3200
    .local v5, "zeroSecs":J
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v17

    add-long v13, v17, v13

    .line 3201
    .local v13, "hi":J
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v9

    .line 3202
    .local v9, "lo":J
    move-object v7, v12

    sub-long v11, v9, v15

    sget-object v15, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    move-object/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "inSecs":Ljava/lang/Long;
    .local v18, "inSecs":Ljava/lang/Long;
    invoke-static {v11, v12, v2, v15}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 3203
    .local v2, "ldt":Ljava/time/LocalDateTime;
    const-wide/16 v11, 0x0

    cmp-long v11, v13, v11

    if-lez v11, :cond_7f

    .line 3204
    const/16 v11, 0x2b

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3206
    :cond_7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3207
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v11

    if-nez v11, :cond_8b

    .line 3208
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3210
    .end local v2    # "ldt":Ljava/time/LocalDateTime;
    .end local v5    # "zeroSecs":J
    .end local v9    # "lo":J
    .end local v13    # "hi":J
    :cond_8b
    goto :goto_df

    .line 3212
    .end local v18    # "inSecs":Ljava/lang/Long;
    .end local v19    # "inSec":J
    .local v2, "inSecs":Ljava/lang/Long;
    .restart local v6    # "inSec":J
    :cond_8c
    move-object/from16 v18, v2

    move-wide/from16 v19, v6

    move-object v7, v12

    .end local v2    # "inSecs":Ljava/lang/Long;
    .end local v6    # "inSec":J
    .restart local v18    # "inSecs":Ljava/lang/Long;
    .restart local v19    # "inSec":J
    add-long v5, v19, v15

    .line 3213
    .restart local v5    # "zeroSecs":J
    div-long v11, v5, v9

    .line 3214
    .local v11, "hi":J
    rem-long v9, v5, v9

    .line 3215
    .restart local v9    # "lo":J
    sub-long v2, v9, v15

    sget-object v15, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/4 v13, 0x0

    invoke-static {v2, v3, v13, v15}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 3216
    .local v2, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 3217
    .local v3, "pos":I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3218
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v13

    if-nez v13, :cond_b0

    .line 3219
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3221
    :cond_b0
    const-wide/16 v13, 0x0

    cmp-long v7, v11, v13

    if-gez v7, :cond_df

    .line 3222
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getYear()I

    move-result v7

    const/16 v13, -0x2710

    if-ne v7, v13, :cond_cc

    .line 3223
    add-int/lit8 v7, v3, 0x2

    const-wide/16 v13, 0x1

    sub-long v13, v11, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v3, v7, v13}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_df

    .line 3224
    :cond_cc
    const-wide/16 v13, 0x0

    cmp-long v7, v9, v13

    if-nez v7, :cond_d6

    .line 3225
    invoke-virtual {v1, v3, v11, v12}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    goto :goto_df

    .line 3227
    :cond_d6
    add-int/lit8 v7, v3, 0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    invoke-virtual {v1, v7, v13, v14}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    .line 3232
    .end local v2    # "ldt":Ljava/time/LocalDateTime;
    .end local v3    # "pos":I
    .end local v5    # "zeroSecs":J
    .end local v9    # "lo":J
    .end local v11    # "hi":J
    :cond_df
    :goto_df
    iget v2, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-gez v2, :cond_e5

    if-gtz v8, :cond_e9

    :cond_e5
    iget v2, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-lez v2, :cond_118

    .line 3233
    :cond_e9
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3234
    const v2, 0x5f5e100

    .line 3235
    .local v2, "div":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f2
    iget v5, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_f9

    if-gtz v8, :cond_108

    :cond_f9
    iget v5, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_104

    if-gtz v8, :cond_108

    rem-int/lit8 v5, v3, 0x3

    if-nez v5, :cond_108

    :cond_104
    iget v5, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-ge v3, v5, :cond_118

    .line 3238
    :cond_108
    div-int v5, v8, v2

    .line 3239
    .local v5, "digit":I
    add-int/lit8 v6, v5, 0x30

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3240
    mul-int v6, v5, v2

    sub-int/2addr v8, v6

    .line 3241
    div-int/lit8 v2, v2, 0xa

    .line 3237
    .end local v5    # "digit":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_f2

    .line 3244
    .end local v2    # "div":I
    .end local v3    # "i":I
    :cond_118
    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3245
    const/4 v2, 0x1

    return v2
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 32
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 3251
    move-object/from16 v1, p0

    move/from16 v8, p3

    iget v0, v1, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    const/4 v2, 0x0

    if-gez v0, :cond_a

    move v0, v2

    :cond_a
    move v9, v0

    .line 3252
    .local v9, "minDigits":I
    iget v0, v1, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-gez v0, :cond_11

    const/16 v0, 0x9

    :cond_11
    move v10, v0

    .line 3253
    .local v10, "maxDigits":I
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 3254
    invoke-virtual {v0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v3, 0x54

    invoke-virtual {v0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v3, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 3255
    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v5, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    .line 3256
    invoke-virtual {v0, v5, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    .line 3257
    invoke-virtual {v0, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const/4 v4, 0x1

    .line 3258
    invoke-virtual {v0, v3, v9, v10, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v3, 0x5a

    .line 3259
    invoke-virtual {v0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 3260
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v11

    .line 3261
    .local v11, "parser":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->copy()Ljava/time/format/DateTimeParseContext;

    move-result-object v12

    .line 3262
    .local v12, "newContext":Ljava/time/format/DateTimeParseContext;
    move-object/from16 v13, p2

    invoke-virtual {v11, v12, v13, v8}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v14

    .line 3263
    .local v14, "pos":I
    if-gez v14, :cond_62

    .line 3264
    return v14

    .line 3268
    :cond_62
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v12, v0}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3269
    .local v4, "yearParsed":J
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v12, v0}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v22

    .line 3270
    .local v22, "month":I
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v12, v0}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v23

    .line 3271
    .local v23, "day":I
    sget-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v12, v0}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 3272
    .local v0, "hour":I
    sget-object v3, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v12, v3}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v6

    .line 3273
    .local v6, "min":I
    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-virtual {v12, v3}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v24

    .line 3274
    .local v24, "secVal":Ljava/lang/Long;
    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v12, v3}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v25

    .line 3275
    .local v25, "nanoVal":Ljava/lang/Long;
    if-eqz v24, :cond_a7

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->intValue()I

    move-result v3

    goto :goto_a8

    :cond_a7
    move v3, v2

    .line 3276
    .local v3, "sec":I
    :goto_a8
    if-eqz v25, :cond_ae

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->intValue()I

    move-result v2

    .line 3277
    .local v2, "nano":I
    :cond_ae
    const/4 v7, 0x0

    .line 3278
    .local v7, "days":I
    const/16 v15, 0x18

    if-ne v0, v15, :cond_c1

    if-nez v6, :cond_c1

    if-nez v3, :cond_c1

    if-nez v2, :cond_c1

    .line 3279
    const/4 v0, 0x0

    .line 3280
    const/4 v7, 0x1

    move/from16 v26, v0

    move/from16 v27, v3

    move v3, v7

    goto :goto_dd

    .line 3281
    :cond_c1
    const/16 v15, 0x17

    if-ne v0, v15, :cond_d8

    const/16 v15, 0x3b

    if-ne v6, v15, :cond_d8

    const/16 v15, 0x3c

    if-ne v3, v15, :cond_d8

    .line 3282
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->setParsedLeapSecond()V

    .line 3283
    const/16 v3, 0x3b

    move/from16 v26, v0

    move/from16 v27, v3

    move v3, v7

    goto :goto_dd

    .line 3285
    :cond_d8
    move/from16 v26, v0

    move/from16 v27, v3

    move v3, v7

    .end local v0    # "hour":I
    .end local v7    # "days":I
    .local v3, "days":I
    .local v26, "hour":I
    .local v27, "sec":I
    :goto_dd
    long-to-int v0, v4

    rem-int/lit16 v7, v0, 0x2710

    .line 3288
    .local v7, "year":I
    const/16 v21, 0x0

    move v15, v7

    move/from16 v16, v22

    move/from16 v17, v23

    move/from16 v18, v26

    move/from16 v19, v6

    move/from16 v20, v27

    :try_start_ed
    invoke-static/range {v15 .. v21}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v0
    :try_end_f1
    .catch Ljava/lang/RuntimeException; {:try_start_ed .. :try_end_f1} :catch_140

    move v15, v2

    .end local v2    # "nano":I
    .local v15, "nano":I
    int-to-long v1, v3

    :try_start_f3
    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 3289
    .local v0, "ldt":Ljava/time/LocalDateTime;
    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v1
    :try_end_fd
    .catch Ljava/lang/RuntimeException; {:try_start_f3 .. :try_end_fd} :catch_136

    .line 3290
    .local v1, "instantSecs":J
    const-wide/16 v16, 0x2710

    move/from16 v18, v6

    move/from16 v19, v7

    .end local v6    # "min":I
    .end local v7    # "year":I
    .local v18, "min":I
    .local v19, "year":I
    :try_start_103
    div-long v6, v4, v16
    :try_end_105
    .catch Ljava/lang/RuntimeException; {:try_start_103 .. :try_end_105} :catch_130

    move-wide/from16 v16, v4

    move v5, v3

    .end local v3    # "days":I
    .end local v4    # "yearParsed":J
    .local v5, "days":I
    .local v16, "yearParsed":J
    const-wide v3, 0x497968bd80L

    :try_start_10d
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v3
    :try_end_111
    .catch Ljava/lang/RuntimeException; {:try_start_10d .. :try_end_111} :catch_12c

    add-long v0, v1, v3

    .line 3293
    .end local v1    # "instantSecs":J
    .local v0, "instantSecs":J
    nop

    .line 3294
    move v7, v14

    .line 3295
    .local v7, "successPos":I
    sget-object v3, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    move-object/from16 v2, p1

    move/from16 v20, v5

    .end local v5    # "days":I
    .local v20, "days":I
    move-wide v4, v0

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v21

    .line 3296
    .end local v7    # "successPos":I
    .local v21, "successPos":I
    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    int-to-long v4, v15

    move/from16 v7, v21

    invoke-virtual/range {v2 .. v7}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v2

    return v2

    .line 3291
    .end local v0    # "instantSecs":J
    .end local v20    # "days":I
    .end local v21    # "successPos":I
    .restart local v5    # "days":I
    :catch_12c
    move-exception v0

    move/from16 v20, v5

    .end local v5    # "days":I
    .restart local v20    # "days":I
    goto :goto_14a

    .end local v16    # "yearParsed":J
    .end local v20    # "days":I
    .restart local v3    # "days":I
    .restart local v4    # "yearParsed":J
    :catch_130
    move-exception v0

    move/from16 v20, v3

    move-wide/from16 v16, v4

    .end local v3    # "days":I
    .end local v4    # "yearParsed":J
    .restart local v16    # "yearParsed":J
    .restart local v20    # "days":I
    goto :goto_14a

    .end local v16    # "yearParsed":J
    .end local v18    # "min":I
    .end local v19    # "year":I
    .end local v20    # "days":I
    .restart local v3    # "days":I
    .restart local v4    # "yearParsed":J
    .restart local v6    # "min":I
    .local v7, "year":I
    :catch_136
    move-exception v0

    move/from16 v20, v3

    move-wide/from16 v16, v4

    move/from16 v18, v6

    move/from16 v19, v7

    .end local v3    # "days":I
    .end local v4    # "yearParsed":J
    .end local v6    # "min":I
    .end local v7    # "year":I
    .restart local v16    # "yearParsed":J
    .restart local v18    # "min":I
    .restart local v19    # "year":I
    .restart local v20    # "days":I
    goto :goto_14a

    .end local v15    # "nano":I
    .end local v16    # "yearParsed":J
    .end local v18    # "min":I
    .end local v19    # "year":I
    .end local v20    # "days":I
    .restart local v2    # "nano":I
    .restart local v3    # "days":I
    .restart local v4    # "yearParsed":J
    .restart local v6    # "min":I
    .restart local v7    # "year":I
    :catch_140
    move-exception v0

    move v15, v2

    move/from16 v20, v3

    move-wide/from16 v16, v4

    move/from16 v18, v6

    move/from16 v19, v7

    .line 3292
    .end local v2    # "nano":I
    .end local v3    # "days":I
    .end local v4    # "yearParsed":J
    .end local v6    # "min":I
    .end local v7    # "year":I
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v15    # "nano":I
    .restart local v16    # "yearParsed":J
    .restart local v18    # "min":I
    .restart local v19    # "year":I
    .restart local v20    # "days":I
    :goto_14a
    not-int v1, v8

    return v1
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 2

    .line 3301
    const-string v0, "Instant()"

    return-object v0
.end method
