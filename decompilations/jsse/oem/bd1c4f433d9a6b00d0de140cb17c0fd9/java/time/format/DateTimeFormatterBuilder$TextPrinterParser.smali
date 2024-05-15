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
.field private final field:Ljava/time/temporal/TemporalField;

.field private volatile numberPrinterParser:Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

.field private final provider:Ljava/time/format/DateTimeTextProvider;

.field private final textStyle:Ljava/time/format/TextStyle;


# direct methods
.method constructor <init>(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/time/format/DateTimeTextProvider;)V
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "textStyle"    # Ljava/time/format/TextStyle;
    .param p3, "provider"    # Ljava/time/format/DateTimeTextProvider;

    .prologue
    .line 3088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3090
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    .line 3091
    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    .line 3092
    iput-object p3, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    .line 3093
    return-void
.end method

.method private numberPrinterParser()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 6

    .prologue
    .line 3149
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    if-nez v0, :cond_12

    .line 3150
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    sget-object v2, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    const/4 v3, 0x1

    const/16 v4, 0x13

    invoke-direct {v0, v1, v3, v4, v2}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 3152
    :cond_12
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    return-object v0
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 13
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 3097
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v9

    .line 3098
    .local v9, "value":Ljava/lang/Long;
    if-nez v9, :cond_a

    .line 3099
    const/4 v0, 0x0

    return v0

    .line 3102
    :cond_a
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/Chronology;

    .line 3103
    .local v2, "chrono":Ljava/time/chrono/Chronology;
    if-eqz v2, :cond_1e

    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    if-ne v2, v0, :cond_3b

    .line 3104
    :cond_1e
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .end local v2    # "chrono":Ljava/time/chrono/Chronology;
    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Ljava/time/format/DateTimeTextProvider;->getText(Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 3108
    .local v8, "text":Ljava/lang/String;
    :goto_30
    if-nez v8, :cond_4e

    .line 3109
    invoke-direct {p0}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v0

    return v0

    .line 3106
    .end local v8    # "text":Ljava/lang/String;
    .restart local v2    # "chrono":Ljava/time/chrono/Chronology;
    :cond_3b
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Ljava/time/format/DateTimeTextProvider;->getText(Ljava/time/chrono/Chronology;Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "text":Ljava/lang/String;
    goto :goto_30

    .line 3111
    .end local v2    # "chrono":Ljava/time/chrono/Chronology;
    :cond_4e
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3112
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 21
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "parseText"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    .line 3117
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v15

    .line 3118
    .local v15, "length":I
    if-ltz p3, :cond_a

    move/from16 v0, p3

    if-le v0, v15, :cond_10

    .line 3119
    :cond_a
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 3121
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v4

    if-eqz v4, :cond_7a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    move-object/from16 v16, v0

    .line 3122
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getEffectiveChronology()Ljava/time/chrono/Chronology;

    move-result-object v12

    .line 3124
    .local v12, "chrono":Ljava/time/chrono/Chronology;
    if-eqz v12, :cond_26

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    if-ne v12, v4, :cond_7d

    .line 3125
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v4, v6, v0, v7}, Ljava/time/format/DateTimeTextProvider;->getTextIterator(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v14

    .line 3129
    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_38
    if-eqz v14, :cond_9a

    .line 3130
    :cond_3a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_90

    .line 3131
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 3132
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3133
    .local v5, "itText":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v4 .. v9}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 3134
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int v11, p3, v4

    move-object/from16 v6, p1

    move/from16 v10, p3

    invoke-virtual/range {v6 .. v11}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v4

    return v4

    .line 3121
    .end local v5    # "itText":Ljava/lang/String;
    .end local v12    # "chrono":Ljava/time/chrono/Chronology;
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_7a
    const/16 v16, 0x0

    .local v16, "style":Ljava/time/format/TextStyle;
    goto :goto_1c

    .line 3127
    .end local v16    # "style":Ljava/time/format/TextStyle;
    .restart local v12    # "chrono":Ljava/time/chrono/Chronology;
    :cond_7d
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v4, v12, v6, v0, v7}, Ljava/time/format/DateTimeTextProvider;->getTextIterator(Ljava/time/chrono/Chronology;Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    goto :goto_38

    .line 3137
    :cond_90
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 3138
    move/from16 v0, p3

    not-int v4, v0

    return v4

    .line 3141
    :cond_9a
    invoke-direct/range {p0 .. p0}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v4

    return v4
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3157
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    sget-object v1, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    if-ne v0, v1, :cond_24

    .line 3158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Text("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3160
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Text("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
