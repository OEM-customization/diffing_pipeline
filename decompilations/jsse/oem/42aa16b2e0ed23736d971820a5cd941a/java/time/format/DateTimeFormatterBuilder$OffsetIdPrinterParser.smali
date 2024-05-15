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
.field static final greylist-max-o INSTANCE_ID_Z:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

.field static final greylist-max-o INSTANCE_ID_ZERO:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

.field static final greylist-max-o PATTERNS:[Ljava/lang/String;


# instance fields
.field private final greylist-max-o noOffsetText:Ljava/lang/String;

.field private final greylist-max-o type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 3310
    const-string v0, "+HH"

    const-string v1, "+HHmm"

    const-string v2, "+HH:mm"

    const-string v3, "+HHMM"

    const-string v4, "+HH:MM"

    const-string v5, "+HHMMss"

    const-string v6, "+HH:MM:ss"

    const-string v7, "+HHMMSS"

    const-string v8, "+HH:MM:SS"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    .line 3313
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    const-string v1, "+HH:MM:ss"

    const-string v2, "Z"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    .line 3314
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    const-string v2, "0"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "noOffsetText"    # Ljava/lang/String;

    .line 3325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3326
    const-string v0, "pattern"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3327
    const-string v0, "noOffsetText"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3328
    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->checkPattern(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    .line 3329
    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    .line 3330
    return-void
.end method

.method private greylist-max-o checkPattern(Ljava/lang/String;)I
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;

    .line 3333
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 3334
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3335
    return v0

    .line 3333
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3338
    .end local v0    # "i":I
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid zone offset pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o parseNumber([IILjava/lang/CharSequence;Z)Z
    .registers 11
    .param p1, "array"    # [I
    .param p2, "arrayIndex"    # I
    .param p3, "parseText"    # Ljava/lang/CharSequence;
    .param p4, "required"    # Z

    .line 3425
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    add-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-ge v1, p2, :cond_a

    .line 3426
    return v2

    .line 3428
    :cond_a
    aget v1, p1, v2

    .line 3429
    .local v1, "pos":I
    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_28

    const/4 v0, 0x1

    if-le p2, v0, :cond_28

    .line 3430
    add-int/lit8 v0, v1, 0x1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v0, v3, :cond_27

    invoke-interface {p3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x3a

    if-eq v0, v3, :cond_24

    goto :goto_27

    .line 3433
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 3431
    :cond_27
    :goto_27
    return p4

    .line 3435
    :cond_28
    :goto_28
    add-int/lit8 v0, v1, 0x2

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v0, v3, :cond_31

    .line 3436
    return p4

    .line 3438
    :cond_31
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "pos":I
    .local v0, "pos":I
    invoke-interface {p3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 3439
    .local v1, "ch1":C
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "pos":I
    .local v3, "pos":I
    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3440
    .local v0, "ch2":C
    const/16 v4, 0x30

    if-lt v1, v4, :cond_5e

    const/16 v5, 0x39

    if-gt v1, v5, :cond_5e

    if-lt v0, v4, :cond_5e

    if-le v0, v5, :cond_4a

    goto :goto_5e

    .line 3443
    :cond_4a
    add-int/lit8 v4, v1, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int/2addr v4, v5

    .line 3444
    .local v4, "value":I
    if-ltz v4, :cond_5d

    const/16 v5, 0x3b

    if-le v4, v5, :cond_58

    goto :goto_5d

    .line 3447
    :cond_58
    aput v4, p1, p2

    .line 3448
    aput v3, p1, v2

    .line 3449
    return v2

    .line 3445
    :cond_5d
    :goto_5d
    return p4

    .line 3441
    .end local v4    # "value":I
    :cond_5e
    :goto_5e
    return p4
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 15
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 3343
    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    .line 3344
    .local v0, "offsetSecs":Ljava/lang/Long;
    if-nez v0, :cond_a

    .line 3345
    const/4 v1, 0x0

    return v1

    .line 3347
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    .line 3348
    .local v1, "totalSecs":I
    const/4 v2, 0x1

    if-nez v1, :cond_1c

    .line 3349
    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_ab

    .line 3351
    :cond_1c
    div-int/lit16 v3, v1, 0xe10

    rem-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 3352
    .local v3, "absHours":I
    div-int/lit8 v4, v1, 0x3c

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 3353
    .local v4, "absMinutes":I
    rem-int/lit8 v5, v1, 0x3c

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 3354
    .local v5, "absSeconds":I
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 3355
    .local v6, "bufPos":I
    move v7, v3

    .line 3356
    .local v7, "output":I
    if-gez v1, :cond_3c

    const-string v8, "-"

    goto :goto_3e

    :cond_3c
    const-string v8, "+"

    :goto_3e
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v8, v3, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    .line 3357
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v8, v3, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3358
    iget v8, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v9, 0x3

    if-ge v8, v9, :cond_5a

    if-lt v8, v2, :cond_a1

    if-lez v4, :cond_a1

    .line 3359
    :cond_5a
    iget v8, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    rem-int/lit8 v8, v8, 0x2

    const-string v9, ":"

    const-string v10, ""

    if-nez v8, :cond_66

    move-object v8, v9

    goto :goto_67

    :cond_66
    move-object v8, v10

    :goto_67
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v8, v4, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    .line 3360
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v8, v4, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3361
    add-int/2addr v7, v4

    .line 3362
    iget v8, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v11, 0x7

    if-ge v8, v11, :cond_85

    const/4 v11, 0x5

    if-lt v8, v11, :cond_a1

    if-lez v5, :cond_a1

    .line 3363
    :cond_85
    iget v8, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_8c

    goto :goto_8d

    :cond_8c
    move-object v9, v10

    :goto_8d
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v8, v5, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    .line 3364
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v8, v5, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3365
    add-int/2addr v7, v5

    .line 3368
    :cond_a1
    if-nez v7, :cond_ab

    .line 3369
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3370
    iget-object v8, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3373
    .end local v3    # "absHours":I
    .end local v4    # "absMinutes":I
    .end local v5    # "absSeconds":I
    .end local v6    # "bufPos":I
    .end local v7    # "output":I
    :cond_ab
    :goto_ab
    return v2
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 22
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 3378
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 3379
    .local v9, "length":I
    iget-object v1, v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    .line 3380
    .local v10, "noOffsetLen":I
    if-nez v10, :cond_23

    .line 3381
    if-ne v8, v9, :cond_46

    .line 3382
    sget-object v2, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v3, 0x0

    move-object/from16 v1, p1

    move/from16 v5, p3

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v1

    return v1

    .line 3385
    :cond_23
    if-ne v8, v9, :cond_27

    .line 3386
    not-int v1, v8

    return v1

    .line 3388
    :cond_27
    iget-object v4, v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 3389
    sget-object v2, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v3, 0x0

    add-int v6, v8, v10

    move-object/from16 v1, p1

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v1

    return v1

    .line 3394
    :cond_46
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .line 3395
    .local v11, "sign":C
    const/16 v1, 0x2b

    const/16 v2, 0x2d

    if-eq v11, v1, :cond_52

    if-ne v11, v2, :cond_a6

    .line 3397
    :cond_52
    const/4 v1, 0x1

    if-ne v11, v2, :cond_57

    const/4 v2, -0x1

    goto :goto_58

    :cond_57
    move v2, v1

    :goto_58
    move v12, v2

    .line 3398
    .local v12, "negative":I
    const/4 v2, 0x4

    new-array v13, v2, [I

    .line 3399
    .local v13, "array":[I
    add-int/lit8 v2, v8, 0x1

    const/4 v3, 0x0

    aput v2, v13, v3

    .line 3400
    invoke-direct {v0, v13, v1, v7, v1}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseNumber([IILjava/lang/CharSequence;Z)Z

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-nez v2, :cond_7f

    iget v2, v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    if-lt v2, v5, :cond_6f

    move v2, v1

    goto :goto_70

    :cond_6f
    move v2, v3

    .line 3401
    :goto_70
    invoke-direct {v0, v13, v4, v7, v2}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseNumber([IILjava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_7f

    .line 3402
    invoke-direct {v0, v13, v5, v7, v3}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseNumber([IILjava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_7d

    goto :goto_7f

    :cond_7d
    move v2, v3

    goto :goto_80

    :cond_7f
    :goto_7f
    move v2, v1

    :goto_80
    if-nez v2, :cond_a6

    .line 3404
    int-to-long v14, v12

    aget v1, v13, v1

    int-to-long v1, v1

    const-wide/16 v16, 0xe10

    mul-long v1, v1, v16

    aget v4, v13, v4

    int-to-long v3, v4

    const-wide/16 v16, 0x3c

    mul-long v3, v3, v16

    add-long/2addr v1, v3

    aget v3, v13, v5

    int-to-long v3, v3

    add-long/2addr v1, v3

    mul-long/2addr v14, v1

    .line 3405
    .local v14, "offsetSecs":J
    sget-object v2, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const/4 v1, 0x0

    aget v6, v13, v1

    move-object/from16 v1, p1

    move-wide v3, v14

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v1

    return v1

    .line 3409
    .end local v12    # "negative":I
    .end local v13    # "array":[I
    .end local v14    # "offsetSecs":J
    :cond_a6
    if-nez v10, :cond_b7

    .line 3410
    sget-object v2, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v3, 0x0

    add-int v6, v8, v10

    move-object/from16 v1, p1

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v1

    return v1

    .line 3412
    :cond_b7
    not-int v1, v8

    return v1
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 5

    .line 3454
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3455
    .local v0, "converted":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
