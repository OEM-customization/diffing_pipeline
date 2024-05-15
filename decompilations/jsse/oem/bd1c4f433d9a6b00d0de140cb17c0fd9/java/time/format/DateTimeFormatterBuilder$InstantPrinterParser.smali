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
.field private static final SECONDS_0000_TO_1970:J = 0xe79747c00L

.field private static final SECONDS_PER_10000_YEARS:J = 0x497968bd80L


# instance fields
.field private final fractionalDigits:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "fractionalDigits"    # I

    .prologue
    .line 3176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3177
    iput p1, p0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    .line 3178
    return-void
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 27
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 3183
    sget-object v20, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v11

    .line 3184
    .local v11, "inSecs":Ljava/lang/Long;
    const/4 v10, 0x0

    .line 3185
    .local v10, "inNanos":Ljava/lang/Long;
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v20

    sget-object v21, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v20 .. v21}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v20

    if-eqz v20, :cond_25

    .line 3186
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v20

    sget-object v21, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v20 .. v21}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 3188
    .end local v10    # "inNanos":Ljava/lang/Long;
    :cond_25
    if-nez v11, :cond_2a

    .line 3189
    const/16 v20, 0x0

    return v20

    .line 3191
    :cond_2a
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 3192
    .local v12, "inSec":J
    sget-object v22, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    if-eqz v10, :cond_ea

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    :goto_36
    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v9

    .line 3194
    .local v9, "inNano":I
    const-wide v20, -0xe79747c00L

    cmp-long v20, v12, v20

    if-ltz v20, :cond_ee

    .line 3196
    const-wide v20, 0x497968bd80L

    sub-long v20, v12, v20

    const-wide v22, 0xe79747c00L

    add-long v18, v20, v22

    .line 3197
    .local v18, "zeroSecs":J
    const-wide v20, 0x497968bd80L

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v20

    const-wide/16 v22, 0x1

    add-long v6, v20, v22

    .line 3198
    .local v6, "hi":J
    const-wide v20, 0x497968bd80L

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v16

    .line 3199
    .local v16, "lo":J
    const-wide v20, 0xe79747c00L

    sub-long v20, v16, v20

    sget-object v22, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/16 v23, 0x0

    move-wide/from16 v0, v20

    move/from16 v2, v23

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v14

    .line 3200
    .local v14, "ldt":Ljava/time/LocalDateTime;
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-lez v20, :cond_95

    .line 3201
    const/16 v20, 0x2b

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3203
    :cond_95
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3204
    invoke-virtual {v14}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v20

    if-nez v20, :cond_aa

    .line 3205
    const-string/jumbo v20, ":00"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3229
    :cond_aa
    :goto_aa
    move-object/from16 v0, p0

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v20, v0

    if-gez v20, :cond_176

    if-lez v9, :cond_176

    .line 3230
    :cond_b4
    const/16 v20, 0x2e

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3231
    const v5, 0x5f5e100

    .line 3232
    .local v5, "div":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_c1
    move-object/from16 v0, p0

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_18a

    if-lez v9, :cond_18a

    .line 3235
    :cond_d1
    :goto_d1
    div-int v4, v9, v5

    .line 3236
    .local v4, "digit":I
    add-int/lit8 v20, v4, 0x30

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3237
    mul-int v20, v4, v5

    sub-int v9, v9, v20

    .line 3238
    div-int/lit8 v5, v5, 0xa

    .line 3234
    add-int/lit8 v8, v8, 0x1

    goto :goto_c1

    .line 3192
    .end local v4    # "digit":I
    .end local v5    # "div":I
    .end local v6    # "hi":J
    .end local v8    # "i":I
    .end local v9    # "inNano":I
    .end local v14    # "ldt":Ljava/time/LocalDateTime;
    .end local v16    # "lo":J
    .end local v18    # "zeroSecs":J
    :cond_ea
    const-wide/16 v20, 0x0

    goto/16 :goto_36

    .line 3209
    .restart local v9    # "inNano":I
    :cond_ee
    const-wide v20, 0xe79747c00L

    add-long v18, v12, v20

    .line 3210
    .restart local v18    # "zeroSecs":J
    const-wide v20, 0x497968bd80L

    div-long v6, v18, v20

    .line 3211
    .restart local v6    # "hi":J
    const-wide v20, 0x497968bd80L

    rem-long v16, v18, v20

    .line 3212
    .restart local v16    # "lo":J
    const-wide v20, 0xe79747c00L

    sub-long v20, v16, v20

    sget-object v22, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/16 v23, 0x0

    move-wide/from16 v0, v20

    move/from16 v2, v23

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v14

    .line 3213
    .restart local v14    # "ldt":Ljava/time/LocalDateTime;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    .line 3214
    .local v15, "pos":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3215
    invoke-virtual {v14}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v20

    if-nez v20, :cond_131

    .line 3216
    const-string/jumbo v20, ":00"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3218
    :cond_131
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-gez v20, :cond_aa

    .line 3219
    invoke-virtual {v14}, Ljava/time/LocalDateTime;->getYear()I

    move-result v20

    const/16 v21, -0x2710

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_158

    .line 3220
    add-int/lit8 v20, v15, 0x2

    const-wide/16 v22, 0x1

    sub-long v22, v6, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v15, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_aa

    .line 3221
    :cond_158
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-nez v20, :cond_165

    .line 3222
    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v6, v7}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    goto/16 :goto_aa

    .line 3224
    :cond_165
    add-int/lit8 v20, v15, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    goto/16 :goto_aa

    .line 3229
    .end local v15    # "pos":I
    :cond_176
    move-object/from16 v0, p0

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v20, v0

    if-gtz v20, :cond_b4

    .line 3241
    :cond_17e
    const/16 v20, 0x5a

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3242
    const/16 v20, 0x1

    return v20

    .line 3233
    .restart local v5    # "div":I
    .restart local v8    # "i":I
    :cond_18a
    move-object/from16 v0, p0

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v20, v0

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19e

    if-gtz v9, :cond_d1

    rem-int/lit8 v20, v8, 0x3

    if-nez v20, :cond_d1

    .line 3234
    :cond_19e
    move-object/from16 v0, p0

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_17e

    goto/16 :goto_d1
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 38
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    .line 3248
    move-object/from16 v0, p0

    iget v10, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-gez v10, :cond_6f

    const/16 v26, 0x0

    .line 3249
    .local v26, "minDigits":I
    :goto_8
    move-object/from16 v0, p0

    iget v10, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-gez v10, :cond_76

    const/16 v25, 0x9

    .line 3250
    .local v25, "maxDigits":I
    :goto_10
    new-instance v10, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v10}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 3251
    sget-object v11, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 3250
    invoke-virtual {v10, v11}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v10

    .line 3251
    const/16 v11, 0x54

    .line 3250
    invoke-virtual {v10, v11}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v10

    .line 3252
    sget-object v11, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const/4 v14, 0x2

    .line 3250
    invoke-virtual {v10, v11, v14}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v10

    .line 3252
    const/16 v11, 0x3a

    .line 3250
    invoke-virtual {v10, v11}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v10

    .line 3253
    sget-object v11, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    const/4 v14, 0x2

    .line 3250
    invoke-virtual {v10, v11, v14}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v10

    .line 3253
    const/16 v11, 0x3a

    .line 3250
    invoke-virtual {v10, v11}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v10

    .line 3254
    sget-object v11, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    const/4 v14, 0x2

    .line 3250
    invoke-virtual {v10, v11, v14}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v10

    .line 3255
    sget-object v11, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const/4 v14, 0x1

    .line 3250
    move/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v10, v11, v0, v1, v14}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v10

    .line 3256
    const/16 v11, 0x5a

    .line 3250
    invoke-virtual {v10, v11}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v10

    .line 3257
    const/4 v11, 0x0

    .line 3250
    invoke-virtual {v10, v11}, Ljava/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v30

    .line 3258
    .local v30, "parser":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->copy()Ljava/time/format/DateTimeParseContext;

    move-result-object v29

    .line 3259
    .local v29, "newContext":Ljava/time/format/DateTimeParseContext;
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v15

    .line 3260
    .local v15, "pos":I
    if-gez v15, :cond_7d

    .line 3261
    return v15

    .line 3248
    .end local v15    # "pos":I
    .end local v25    # "maxDigits":I
    .end local v26    # "minDigits":I
    .end local v29    # "newContext":Ljava/time/format/DateTimeParseContext;
    .end local v30    # "parser":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    :cond_6f
    move-object/from16 v0, p0

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v26, v0

    .restart local v26    # "minDigits":I
    goto :goto_8

    .line 3249
    :cond_76
    move-object/from16 v0, p0

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v25, v0

    .restart local v25    # "maxDigits":I
    goto :goto_10

    .line 3265
    .restart local v15    # "pos":I
    .restart local v29    # "newContext":Ljava/time/format/DateTimeParseContext;
    .restart local v30    # "parser":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    :cond_7d
    sget-object v10, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    .line 3266
    .local v32, "yearParsed":J
    sget-object v10, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v5

    .line 3267
    .local v5, "month":I
    sget-object v10, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v6

    .line 3268
    .local v6, "day":I
    sget-object v10, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v7

    .line 3269
    .local v7, "hour":I
    sget-object v10, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v8

    .line 3270
    .local v8, "min":I
    sget-object v10, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v31

    .line 3271
    .local v31, "secVal":Ljava/lang/Long;
    sget-object v10, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v28

    .line 3272
    .local v28, "nanoVal":Ljava/lang/Long;
    if-eqz v31, :cond_12d

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->intValue()I

    move-result v9

    .line 3273
    .local v9, "sec":I
    :goto_cf
    if-eqz v28, :cond_12f

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->intValue()I

    move-result v27

    .line 3274
    .local v27, "nano":I
    :goto_d5
    const/16 v22, 0x0

    .line 3275
    .local v22, "days":I
    const/16 v10, 0x18

    if-ne v7, v10, :cond_132

    if-nez v8, :cond_132

    if-nez v9, :cond_132

    if-nez v27, :cond_132

    .line 3276
    const/4 v7, 0x0

    .line 3277
    const/16 v22, 0x1

    .line 3282
    :cond_e4
    :goto_e4
    move-wide/from16 v0, v32

    long-to-int v10, v0

    rem-int/lit16 v4, v10, 0x2710

    .line 3285
    .local v4, "year":I
    const/4 v10, 0x0

    :try_start_ea
    invoke-static/range {v4 .. v10}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v10

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v24

    .line 3286
    .local v24, "ldt":Ljava/time/LocalDateTime;
    sget-object v10, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v12

    .line 3287
    .local v12, "instantSecs":J
    const-wide/16 v10, 0x2710

    div-long v10, v32, v10

    const-wide v16, 0x497968bd80L

    move-wide/from16 v0, v16

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J
    :try_end_10f
    .catch Ljava/lang/RuntimeException; {:try_start_ea .. :try_end_10f} :catch_144

    move-result-wide v10

    add-long/2addr v12, v10

    .line 3291
    move/from16 v21, v15

    .line 3292
    .local v21, "successPos":I
    sget-object v11, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    move-object/from16 v10, p1

    move/from16 v14, p3

    invoke-virtual/range {v10 .. v15}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v21

    .line 3293
    sget-object v17, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v16, p1

    move/from16 v20, p3

    invoke-virtual/range {v16 .. v21}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v10

    return v10

    .line 3272
    .end local v4    # "year":I
    .end local v9    # "sec":I
    .end local v12    # "instantSecs":J
    .end local v21    # "successPos":I
    .end local v22    # "days":I
    .end local v24    # "ldt":Ljava/time/LocalDateTime;
    .end local v27    # "nano":I
    :cond_12d
    const/4 v9, 0x0

    .restart local v9    # "sec":I
    goto :goto_cf

    .line 3273
    :cond_12f
    const/16 v27, 0x0

    .restart local v27    # "nano":I
    goto :goto_d5

    .line 3278
    .restart local v22    # "days":I
    :cond_132
    const/16 v10, 0x17

    if-ne v7, v10, :cond_e4

    const/16 v10, 0x3b

    if-ne v8, v10, :cond_e4

    const/16 v10, 0x3c

    if-ne v9, v10, :cond_e4

    .line 3279
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->setParsedLeapSecond()V

    .line 3280
    const/16 v9, 0x3b

    goto :goto_e4

    .line 3288
    .restart local v4    # "year":I
    :catch_144
    move-exception v23

    .line 3289
    .local v23, "ex":Ljava/lang/RuntimeException;
    move/from16 v0, p3

    not-int v10, v0

    return v10
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3298
    const-string/jumbo v0, "Instant()"

    return-object v0
.end method
