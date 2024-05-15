.class final Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
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
    name = "OffsetIdPrinterParser"
.end annotation


# static fields
.field static final INSTANCE_ID_Z:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

.field static final INSTANCE_ID_ZERO:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

.field static final PATTERNS:[Ljava/lang/String;


# instance fields
.field private final noOffsetText:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 3307
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 3308
    const-string/jumbo v1, "+HH"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "+HHmm"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "+HH:mm"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "+HHMM"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "+HH:MM"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "+HHMMss"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "+HH:MM:ss"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "+HHMMSS"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "+HH:MM:SS"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 3307
    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    .line 3310
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    const-string/jumbo v1, "+HH:MM:ss"

    const-string/jumbo v2, "Z"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    .line 3311
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    const-string/jumbo v1, "+HH:MM:ss"

    const-string/jumbo v2, "0"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    .line 3306
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "noOffsetText"    # Ljava/lang/String;

    .prologue
    .line 3322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3323
    const-string/jumbo v0, "pattern"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3324
    const-string/jumbo v0, "noOffsetText"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3325
    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->checkPattern(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    .line 3326
    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    .line 3327
    return-void
.end method

.method private checkPattern(Ljava/lang/String;)I
    .registers 6
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 3330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 3331
    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3332
    return v0

    .line 3330
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3335
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid zone offset pattern: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseNumber([IILjava/lang/CharSequence;Z)Z
    .registers 15
    .param p1, "array"    # [I
    .param p2, "arrayIndex"    # I
    .param p3, "parseText"    # Ljava/lang/CharSequence;
    .param p4, "required"    # Z

    .prologue
    const/16 v9, 0x39

    const/16 v8, 0x30

    const/4 v7, 0x0

    .line 3422
    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    add-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    if-ge v5, p2, :cond_e

    .line 3423
    return v7

    .line 3425
    :cond_e
    aget v2, p1, v7

    .line 3426
    .local v2, "pos":I
    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2c

    const/4 v5, 0x1

    if-le p2, v5, :cond_2c

    .line 3427
    add-int/lit8 v5, v2, 0x1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-gt v5, v6, :cond_29

    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_2a

    .line 3428
    :cond_29
    return p4

    .line 3430
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    .line 3432
    :cond_2c
    add-int/lit8 v5, v2, 0x2

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v5, v6, :cond_35

    .line 3433
    return p4

    .line 3435
    :cond_35
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3436
    .local v0, "ch1":C
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 3437
    .local v1, "ch2":C
    if-lt v0, v8, :cond_45

    if-le v0, v9, :cond_46

    .line 3438
    :cond_45
    return p4

    .line 3437
    :cond_46
    if-lt v1, v8, :cond_45

    if-gt v1, v9, :cond_45

    .line 3440
    add-int/lit8 v5, v0, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, v1, -0x30

    add-int v4, v5, v6

    .line 3441
    .local v4, "value":I
    if-ltz v4, :cond_58

    const/16 v5, 0x3b

    if-le v4, v5, :cond_59

    .line 3442
    :cond_58
    return p4

    .line 3444
    :cond_59
    aput v4, p1, p2

    .line 3445
    aput v2, p1, v7

    .line 3446
    return v7
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 14
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 3340
    sget-object v7, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {p1, v7}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v4

    .line 3341
    .local v4, "offsetSecs":Ljava/lang/Long;
    if-nez v4, :cond_b

    .line 3342
    return v8

    .line 3344
    :cond_b
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toIntExact(J)I

    move-result v6

    .line 3345
    .local v6, "totalSecs":I
    if-nez v6, :cond_1b

    .line 3346
    iget-object v7, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3370
    :cond_1a
    :goto_1a
    return v10

    .line 3348
    :cond_1b
    div-int/lit16 v7, v6, 0xe10

    rem-int/lit8 v7, v7, 0x64

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3349
    .local v0, "absHours":I
    div-int/lit8 v7, v6, 0x3c

    rem-int/lit8 v7, v7, 0x3c

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3350
    .local v1, "absMinutes":I
    rem-int/lit8 v7, v6, 0x3c

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3351
    .local v2, "absSeconds":I
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 3352
    .local v3, "bufPos":I
    move v5, v0

    .line 3353
    .local v5, "output":I
    if-gez v6, :cond_b2

    const-string/jumbo v7, "-"

    :goto_3b
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3354
    div-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    .line 3353
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3354
    rem-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    .line 3353
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3355
    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v8, 0x3

    if-ge v7, v8, :cond_5b

    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    if-lt v7, v10, :cond_a6

    if-lez v1, :cond_a6

    .line 3356
    :cond_5b
    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_b6

    const-string/jumbo v7, ":"

    :goto_64
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3357
    div-int/lit8 v8, v1, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    .line 3356
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3357
    rem-int/lit8 v8, v1, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    .line 3356
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3358
    add-int v5, v0, v1

    .line 3359
    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v8, 0x7

    if-ge v7, v8, :cond_87

    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v8, 0x5

    if-lt v7, v8, :cond_a6

    if-lez v2, :cond_a6

    .line 3360
    :cond_87
    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_ba

    const-string/jumbo v7, ":"

    :goto_90
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3361
    div-int/lit8 v8, v2, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    .line 3360
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3361
    rem-int/lit8 v8, v2, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    .line 3360
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3362
    add-int/2addr v5, v2

    .line 3365
    :cond_a6
    if-nez v5, :cond_1a

    .line 3366
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3367
    iget-object v7, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1a

    .line 3353
    :cond_b2
    const-string/jumbo v7, "+"

    goto :goto_3b

    .line 3356
    :cond_b6
    const-string/jumbo v7, ""

    goto :goto_64

    .line 3360
    :cond_ba
    const-string/jumbo v7, ""

    goto :goto_90
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 28
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    .line 3375
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v21

    .line 3376
    .local v21, "length":I
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    .line 3377
    .local v9, "noOffsetLen":I
    if-nez v9, :cond_23

    .line 3378
    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_4d

    .line 3379
    sget-object v5, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v6, 0x0

    move-object/from16 v4, p1

    move/from16 v8, p3

    move/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    .end local v9    # "noOffsetLen":I
    move-result v4

    return v4

    .line 3382
    .restart local v9    # "noOffsetLen":I
    :cond_23
    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_2d

    .line 3383
    move/from16 v0, p3

    not-int v4, v0

    return v4

    .line 3385
    :cond_2d
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v4 .. v9}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 3386
    sget-object v11, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v12, 0x0

    add-int v15, p3, v9

    move-object/from16 v10, p1

    move/from16 v14, p3

    invoke-virtual/range {v10 .. v15}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v4

    return v4

    .line 3391
    :cond_4d
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    .line 3392
    .local v23, "sign":C
    const/16 v4, 0x2b

    move/from16 v0, v23

    if-eq v0, v4, :cond_5d

    const/16 v4, 0x2d

    move/from16 v0, v23

    if-ne v0, v4, :cond_ce

    .line 3394
    :cond_5d
    const/16 v4, 0x2d

    move/from16 v0, v23

    if-ne v0, v4, :cond_c7

    const/16 v22, -0x1

    .line 3395
    .local v22, "negative":I
    :goto_65
    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v20, v0

    .line 3396
    .local v20, "array":[I
    add-int/lit8 v4, p3, 0x1

    const/4 v5, 0x0

    aput v4, v20, v5

    .line 3397
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v4, v2, v5}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseNumber([IILjava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_cc

    .line 3398
    move-object/from16 v0, p0

    iget v4, v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_ca

    const/4 v4, 0x1

    :goto_85
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v5, v2, v4}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseNumber([IILjava/lang/CharSequence;Z)Z

    move-result v4

    .line 3397
    if-nez v4, :cond_cc

    .line 3399
    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v4, v2, v5}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseNumber([IILjava/lang/CharSequence;Z)Z

    move-result v4

    .line 3397
    :goto_9e
    if-nez v4, :cond_ce

    .line 3401
    move/from16 v0, v22

    int-to-long v4, v0

    const/4 v6, 0x1

    aget v6, v20, v6

    int-to-long v6, v6

    const-wide/16 v10, 0xe10

    mul-long/2addr v6, v10

    const/4 v8, 0x2

    aget v8, v20, v8

    int-to-long v10, v8

    const-wide/16 v14, 0x3c

    mul-long/2addr v10, v14

    add-long/2addr v6, v10

    const/4 v8, 0x3

    aget v8, v20, v8

    int-to-long v10, v8

    add-long/2addr v6, v10

    mul-long v12, v4, v6

    .line 3402
    .local v12, "offsetSecs":J
    sget-object v11, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const/4 v4, 0x0

    aget v15, v20, v4

    move-object/from16 v10, p1

    move/from16 v14, p3

    invoke-virtual/range {v10 .. v15}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v4

    return v4

    .line 3394
    .end local v12    # "offsetSecs":J
    .end local v20    # "array":[I
    .end local v22    # "negative":I
    :cond_c7
    const/16 v22, 0x1

    .restart local v22    # "negative":I
    goto :goto_65

    .line 3398
    .restart local v20    # "array":[I
    :cond_ca
    const/4 v4, 0x0

    goto :goto_85

    .line 3397
    :cond_cc
    const/4 v4, 0x1

    goto :goto_9e

    .line 3406
    .end local v20    # "array":[I
    .end local v22    # "negative":I
    :cond_ce
    if-nez v9, :cond_df

    .line 3407
    sget-object v15, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v16, 0x0

    add-int v19, p3, v9

    move-object/from16 v14, p1

    move/from16 v18, p3

    invoke-virtual/range {v14 .. v19}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v4

    return v4

    .line 3409
    :cond_df
    move/from16 v0, p3

    not-int v4, v0

    return v4
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3451
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    const-string/jumbo v2, "\'"

    const-string/jumbo v3, "\'\'"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3452
    .local v0, "converted":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Offset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
