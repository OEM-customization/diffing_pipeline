.class final Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
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
    name = "FractionPrinterParser"
.end annotation


# instance fields
.field private final greylist-max-o decimalPoint:Z

.field private final greylist-max-o field:Ljava/time/temporal/TemporalField;

.field private final greylist-max-o maxWidth:I

.field private final greylist-max-o minWidth:I


# direct methods
.method constructor greylist-max-o <init>(Ljava/time/temporal/TemporalField;IIZ)V
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "decimalPoint"    # Z

    .line 2921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2922
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2923
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 2926
    if-ltz p2, :cond_5e

    const/16 v0, 0x9

    if-gt p2, v0, :cond_5e

    .line 2929
    const/4 v1, 0x1

    if-lt p3, v1, :cond_47

    if-gt p3, v0, :cond_47

    .line 2932
    if-lt p3, p2, :cond_28

    .line 2936
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    .line 2937
    iput p2, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    .line 2938
    iput p3, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    .line 2939
    iput-boolean p4, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    .line 2940
    return-void

    .line 2933
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum width must exceed or equal the minimum width but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2930
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum width must be from 1 to 9 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2927
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minimum width must be from 0 to 9 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2924
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field must have a fixed set of values: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o convertFromFraction(Ljava/math/BigDecimal;)J
    .registers 8
    .param p1, "fraction"    # Ljava/math/BigDecimal;

    .line 3056
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-interface {v0}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    .line 3057
    .local v0, "range":Ljava/time/temporal/ValueRange;
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    .line 3058
    .local v1, "minBD":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v3, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3059
    .local v2, "rangeBD":Ljava/math/BigDecimal;
    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    sget-object v4, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 3060
    .local v3, "valueBD":Ljava/math/BigDecimal;
    invoke-virtual {v3}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v4

    return-wide v4
.end method

.method private greylist-max-o convertToFraction(J)Ljava/math/BigDecimal;
    .registers 9
    .param p1, "value"    # J

    .line 3029
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-interface {v0}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    .line 3030
    .local v0, "range":Ljava/time/temporal/ValueRange;
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, p1, p2, v1}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    .line 3031
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    .line 3032
    .local v1, "minBD":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v3, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3033
    .local v2, "rangeBD":Ljava/math/BigDecimal;
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 3034
    .local v3, "valueBD":Ljava/math/BigDecimal;
    sget-object v4, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const/16 v5, 0x9

    invoke-virtual {v3, v2, v5, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 3036
    .local v4, "fraction":Ljava/math/BigDecimal;
    sget-object v5, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    if-nez v5, :cond_40

    sget-object v5, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_44

    :cond_40
    invoke-virtual {v4}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v5

    :goto_44
    return-object v5
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 9
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 2944
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    .line 2945
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_a

    .line 2946
    const/4 v1, 0x0

    return v1

    .line 2948
    :cond_a
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v1

    .line 2949
    .local v1, "decimalStyle":Ljava/time/format/DecimalStyle;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->convertToFraction(J)Ljava/math/BigDecimal;

    move-result-object v2

    .line 2950
    .local v2, "fraction":Ljava/math/BigDecimal;
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    if-nez v3, :cond_3b

    .line 2951
    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    if-lez v3, :cond_6c

    .line 2952
    iget-boolean v3, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v3, :cond_2b

    .line 2953
    invoke-virtual {v1}, Ljava/time/format/DecimalStyle;->getDecimalSeparator()C

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2955
    :cond_2b
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2c
    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    if-ge v3, v4, :cond_3a

    .line 2956
    invoke-virtual {v1}, Ljava/time/format/DecimalStyle;->getZeroDigit()C

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2955
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .end local v3    # "i":I
    :cond_3a
    goto :goto_6c

    .line 2960
    :cond_3b
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2961
    .local v3, "outputScale":I
    sget-object v4, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 2962
    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2963
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/time/format/DecimalStyle;->convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2964
    iget-boolean v5, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v5, :cond_69

    .line 2965
    invoke-virtual {v1}, Ljava/time/format/DecimalStyle;->getDecimalSeparator()C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2967
    :cond_69
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2969
    .end local v3    # "outputScale":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_6c
    :goto_6c
    const/4 v3, 0x1

    return v3
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 23
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 2974
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v2

    if-eqz v2, :cond_d

    iget v2, v0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    .line 2975
    .local v2, "effectiveMin":I
    :goto_e
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v3

    if-eqz v3, :cond_17

    iget v3, v0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    goto :goto_19

    :cond_17
    const/16 v3, 0x9

    .line 2976
    .local v3, "effectiveMax":I
    :goto_19
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 2977
    .local v4, "length":I
    if-ne v1, v4, :cond_25

    .line 2979
    if-lez v2, :cond_23

    not-int v5, v1

    goto :goto_24

    :cond_23
    move v5, v1

    :goto_24
    return v5

    .line 2981
    :cond_25
    iget-boolean v5, v0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v5, :cond_3f

    .line 2982
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/format/DecimalStyle;->getDecimalSeparator()C

    move-result v6

    if-eq v5, v6, :cond_3d

    .line 2984
    if-lez v2, :cond_3b

    not-int v5, v1

    goto :goto_3c

    :cond_3b
    move v5, v1

    :goto_3c
    return v5

    .line 2986
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    .line 2988
    .end local p3    # "position":I
    .local v1, "position":I
    :cond_3f
    add-int v11, v1, v2

    .line 2989
    .local v11, "minEndPos":I
    if-le v11, v4, :cond_45

    .line 2990
    not-int v5, v1

    return v5

    .line 2992
    :cond_45
    add-int v5, v1, v3

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 2993
    .local v12, "maxEndPos":I
    const/4 v5, 0x0

    .line 2994
    .local v5, "total":I
    move v6, v1

    move v13, v5

    .line 2995
    .end local v5    # "total":I
    .local v6, "pos":I
    .local v13, "total":I
    :goto_4e
    if-ge v6, v12, :cond_70

    .line 2996
    add-int/lit8 v5, v6, 0x1

    move-object/from16 v14, p2

    .end local v6    # "pos":I
    .local v5, "pos":I
    invoke-interface {v14, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 2997
    .local v6, "ch":C
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/time/format/DecimalStyle;->convertToDigit(C)I

    move-result v7

    .line 2998
    .local v7, "digit":I
    if-gez v7, :cond_6a

    .line 2999
    if-ge v5, v11, :cond_66

    .line 3000
    not-int v8, v1

    return v8

    .line 3002
    :cond_66
    add-int/lit8 v5, v5, -0x1

    .line 3003
    move v15, v5

    goto :goto_73

    .line 3005
    :cond_6a
    mul-int/lit8 v8, v13, 0xa

    add-int v13, v8, v7

    .line 3006
    .end local v6    # "ch":C
    .end local v7    # "digit":I
    move v6, v5

    goto :goto_4e

    .line 2995
    .end local v5    # "pos":I
    .local v6, "pos":I
    :cond_70
    move-object/from16 v14, p2

    move v15, v6

    .line 3007
    .end local v6    # "pos":I
    .local v15, "pos":I
    :goto_73
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v13}, Ljava/math/BigDecimal;-><init>(I)V

    sub-int v6, v15, v1

    invoke-virtual {v5, v6}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v10

    .line 3008
    .local v10, "fraction":Ljava/math/BigDecimal;
    invoke-direct {v0, v10}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->convertFromFraction(Ljava/math/BigDecimal;)J

    move-result-wide v16

    .line 3009
    .local v16, "value":J
    iget-object v6, v0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    move-object/from16 v5, p1

    move-wide/from16 v7, v16

    move v9, v1

    move-object/from16 v18, v10

    .end local v10    # "fraction":Ljava/math/BigDecimal;
    .local v18, "fraction":Ljava/math/BigDecimal;
    move v10, v15

    invoke-virtual/range {v5 .. v10}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v5

    return v5
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 5

    .line 3065
    iget-boolean v0, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v0, :cond_7

    const-string v0, ",DecimalPoint"

    goto :goto_9

    :cond_7
    const-string v0, ""

    .line 3066
    .local v0, "decimal":Ljava/lang/String;
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fraction("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
