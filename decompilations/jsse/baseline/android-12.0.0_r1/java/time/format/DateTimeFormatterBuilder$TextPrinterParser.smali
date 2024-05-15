.class final Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;
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
    name = "TextPrinterParser"
.end annotation


# instance fields
.field private final greylist-max-o field:Ljava/time/temporal/TemporalField;

.field private volatile greylist-max-o numberPrinterParser:Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

.field private final greylist-max-o provider:Ljava/time/format/DateTimeTextProvider;

.field private final greylist-max-o textStyle:Ljava/time/format/TextStyle;


# direct methods
.method constructor greylist-max-o <init>(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/time/format/DateTimeTextProvider;)V
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "textStyle"    # Ljava/time/format/TextStyle;
    .param p3, "provider"    # Ljava/time/format/DateTimeTextProvider;

    .line 3100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3102
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    .line 3103
    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    .line 3104
    iput-object p3, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    .line 3105
    return-void
.end method

.method private greylist-max-o numberPrinterParser()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 6

    .line 3161
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    if-nez v0, :cond_12

    .line 3162
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    const/4 v2, 0x1

    const/16 v3, 0x13

    sget-object v4, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 3164
    :cond_12
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 12
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 3109
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    .line 3110
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_a

    .line 3111
    const/4 v1, 0x0

    return v1

    .line 3114
    :cond_a
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/chrono/Chronology;

    .line 3115
    .local v1, "chrono":Ljava/time/chrono/Chronology;
    if-eqz v1, :cond_33

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    if-ne v1, v2, :cond_1f

    goto :goto_33

    .line 3118
    :cond_1f
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v8

    move-object v3, v1

    invoke-virtual/range {v2 .. v8}, Ljava/time/format/DateTimeTextProvider;->getText(Ljava/time/chrono/Chronology;Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .local v2, "text":Ljava/lang/String;
    goto :goto_45

    .line 3116
    .end local v2    # "text":Ljava/lang/String;
    :cond_33
    :goto_33
    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Ljava/time/format/DateTimeTextProvider;->getText(Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 3120
    .restart local v2    # "text":Ljava/lang/String;
    :goto_45
    if-nez v2, :cond_50

    .line 3121
    invoke-direct {p0}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v3

    return v3

    .line 3123
    :cond_50
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3124
    const/4 v3, 0x1

    return v3
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 18
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "parseText"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 3129
    move-object v0, p0

    move/from16 v7, p3

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 3130
    .local v8, "length":I
    if-ltz v7, :cond_92

    if-gt v7, v8, :cond_92

    .line 3133
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    move-object v9, v1

    .line 3134
    .local v9, "style":Ljava/time/format/TextStyle;
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->getEffectiveChronology()Ljava/time/chrono/Chronology;

    move-result-object v10

    .line 3136
    .local v10, "chrono":Ljava/time/chrono/Chronology;
    if-eqz v10, :cond_2f

    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    if-ne v10, v1, :cond_21

    goto :goto_2f

    .line 3139
    :cond_21
    iget-object v1, v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    iget-object v2, v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v10, v2, v9, v3}, Ljava/time/format/DateTimeTextProvider;->getTextIterator(Ljava/time/chrono/Chronology;Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v1

    move-object v11, v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    goto :goto_3c

    .line 3137
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_2f
    :goto_2f
    iget-object v1, v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    iget-object v2, v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v2, v9, v3}, Ljava/time/format/DateTimeTextProvider;->getTextIterator(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v1

    move-object v11, v1

    .line 3141
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_3c
    if-eqz v11, :cond_86

    .line 3142
    :goto_3e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 3143
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/Map$Entry;

    .line 3144
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    .line 3145
    .local v13, "itText":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p1

    move-object v2, v13

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 3146
    iget-object v2, v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    add-int v6, v7, v1

    move-object v1, p1

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v1

    return v1

    .line 3148
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v13    # "itText":Ljava/lang/String;
    :cond_7d
    goto :goto_3e

    .line 3149
    :cond_7e
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 3150
    not-int v1, v7

    return v1

    .line 3153
    :cond_86
    invoke-direct {p0}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v1

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v1, p1, v3, v7}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v1

    return v1

    .line 3130
    .end local v9    # "style":Ljava/time/format/TextStyle;
    .end local v10    # "chrono":Ljava/time/chrono/Chronology;
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_92
    move-object v2, p1

    move-object/from16 v3, p2

    .line 3131
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 3169
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    sget-object v1, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    const-string v2, ")"

    const-string v3, "Text("

    if-ne v0, v1, :cond_1f

    .line 3170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3172
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
