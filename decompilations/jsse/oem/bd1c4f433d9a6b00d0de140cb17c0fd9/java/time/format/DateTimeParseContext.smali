.class final Ljava/time/format/DateTimeParseContext;
.super Ljava/lang/Object;
.source "DateTimeParseContext.java"


# instance fields
.field private caseSensitive:Z

.field private chronoListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/time/chrono/Chronology;",
            ">;>;"
        }
    .end annotation
.end field

.field private formatter:Ljava/time/format/DateTimeFormatter;

.field private final parsed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/time/format/Parsed;",
            ">;"
        }
    .end annotation
.end field

.field private strict:Z


# direct methods
.method constructor <init>(Ljava/time/format/DateTimeFormatter;)V
    .registers 4
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    const/4 v0, 0x1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-boolean v0, p0, Ljava/time/format/DateTimeParseContext;->caseSensitive:Z

    .line 105
    iput-boolean v0, p0, Ljava/time/format/DateTimeParseContext;->strict:Z

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    .line 122
    iput-object p1, p0, Ljava/time/format/DateTimeParseContext;->formatter:Ljava/time/format/DateTimeFormatter;

    .line 123
    iget-object v0, p0, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    new-instance v1, Ljava/time/format/Parsed;

    invoke-direct {v1}, Ljava/time/format/Parsed;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method static charEqualsIgnoreCase(CC)Z
    .registers 5
    .param p0, "c1"    # C
    .param p1, "c2"    # C

    .prologue
    const/4 v0, 0x1

    .line 256
    if-eq p0, p1, :cond_d

    .line 257
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    if-ne v1, v2, :cond_e

    .line 256
    :cond_d
    :goto_d
    return v0

    .line 258
    :cond_e
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_d

    const/4 v0, 0x0

    goto :goto_d
.end method

.method private currentParsed()Ljava/time/format/Parsed;
    .registers 3

    .prologue
    .line 310
    iget-object v0, p0, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    iget-object v1, p0, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/format/Parsed;

    return-object v0
.end method


# virtual methods
.method addChronoChangedListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/time/chrono/Chronology;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/time/chrono/Chronology;>;"
    iget-object v0, p0, Ljava/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    .line 404
    :cond_b
    iget-object v0, p0, Ljava/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    return-void
.end method

.method charEquals(CC)Z
    .registers 4
    .param p1, "ch1"    # C
    .param p2, "ch2"    # C

    .prologue
    .line 242
    invoke-virtual {p0}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 243
    if-ne p1, p2, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    .line 245
    :cond_c
    invoke-static {p1, p2}, Ljava/time/format/DateTimeParseContext;->charEqualsIgnoreCase(CC)Z

    move-result v0

    return v0
.end method

.method copy()Ljava/time/format/DateTimeParseContext;
    .registers 3

    .prologue
    .line 131
    new-instance v0, Ljava/time/format/DateTimeParseContext;

    iget-object v1, p0, Ljava/time/format/DateTimeParseContext;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeParseContext;-><init>(Ljava/time/format/DateTimeFormatter;)V

    .line 132
    .local v0, "newContext":Ljava/time/format/DateTimeParseContext;
    iget-boolean v1, p0, Ljava/time/format/DateTimeParseContext;->caseSensitive:Z

    iput-boolean v1, v0, Ljava/time/format/DateTimeParseContext;->caseSensitive:Z

    .line 133
    iget-boolean v1, p0, Ljava/time/format/DateTimeParseContext;->strict:Z

    iput-boolean v1, v0, Ljava/time/format/DateTimeParseContext;->strict:Z

    .line 134
    return-object v0
.end method

.method endOptional(Z)V
    .registers 4
    .param p1, "successful"    # Z

    .prologue
    .line 296
    if-eqz p1, :cond_10

    .line 297
    iget-object v0, p0, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    iget-object v1, p0, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 301
    :goto_f
    return-void

    .line 299
    :cond_10
    iget-object v0, p0, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    iget-object v1, p0, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_f
.end method

.method getDecimalStyle()Ljava/time/format/DecimalStyle;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Ljava/time/format/DateTimeParseContext;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatter;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v0

    return-object v0
.end method

.method getEffectiveChronology()Ljava/time/chrono/Chronology;
    .registers 3

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/Parsed;

    move-result-object v1

    iget-object v0, v1, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    .line 168
    .local v0, "chrono":Ljava/time/chrono/Chronology;
    if-nez v0, :cond_12

    .line 169
    iget-object v1, p0, Ljava/time/format/DateTimeParseContext;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatter;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    .line 170
    if-nez v0, :cond_12

    .line 171
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 174
    :cond_12
    return-object v0
.end method

.method getLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Ljava/time/format/DateTimeParseContext;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/Parsed;

    move-result-object v0

    iget-object v0, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method isCaseSensitive()Z
    .registers 2

    .prologue
    .line 184
    iget-boolean v0, p0, Ljava/time/format/DateTimeParseContext;->caseSensitive:Z

    return v0
.end method

.method isStrict()Z
    .registers 2

    .prologue
    .line 270
    iget-boolean v0, p0, Ljava/time/format/DateTimeParseContext;->strict:Z

    return v0
.end method

.method setCaseSensitive(Z)V
    .registers 2
    .param p1, "caseSensitive"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Ljava/time/format/DateTimeParseContext;->caseSensitive:Z

    .line 194
    return-void
.end method

.method setParsed(Ljava/time/ZoneId;)V
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 416
    const-string/jumbo v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 417
    invoke-direct {p0}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/Parsed;

    move-result-object v0

    iput-object p1, v0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    .line 418
    return-void
.end method

.method setParsed(Ljava/time/chrono/Chronology;)V
    .registers 7
    .param p1, "chrono"    # Ljava/time/chrono/Chronology;

    .prologue
    .line 382
    const-string/jumbo v3, "chrono"

    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 383
    invoke-direct {p0}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/Parsed;

    move-result-object v3

    iput-object p1, v3, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    .line 384
    iget-object v3, p0, Ljava/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_36

    iget-object v3, p0, Ljava/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_36

    .line 386
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/util/function/Consumer;

    .line 387
    .local v2, "tmp":[Ljava/util/function/Consumer;, "[Ljava/util/function/Consumer<Ljava/time/chrono/Chronology;>;"
    iget-object v3, p0, Ljava/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/function/Consumer;

    .line 388
    .local v1, "listeners":[Ljava/util/function/Consumer;, "[Ljava/util/function/Consumer<Ljava/time/chrono/Chronology;>;"
    iget-object v3, p0, Ljava/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 389
    const/4 v3, 0x0

    array-length v4, v1

    :goto_2c
    if-ge v3, v4, :cond_36

    aget-object v0, v1, v3

    .line 390
    .local v0, "l":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/time/chrono/Chronology;>;"
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 389
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 393
    .end local v0    # "l":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/time/chrono/Chronology;>;"
    .end local v1    # "listeners":[Ljava/util/function/Consumer;, "[Ljava/util/function/Consumer<Ljava/time/chrono/Chronology;>;"
    .end local v2    # "tmp":[Ljava/util/function/Consumer;, "[Ljava/util/function/Consumer<Ljava/time/chrono/Chronology;>;"
    :cond_36
    return-void
.end method

.method setParsedField(Ljava/time/temporal/TemporalField;JII)I
    .registers 10
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "value"    # J
    .param p4, "errorPos"    # I
    .param p5, "successPos"    # I

    .prologue
    .line 364
    const-string/jumbo v1, "field"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 365
    invoke-direct {p0}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/Parsed;

    move-result-object v1

    iget-object v1, v1, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 366
    .local v0, "old":Ljava/lang/Long;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-eqz v1, :cond_21

    not-int p5, p4

    .end local p5    # "successPos":I
    :cond_21
    return p5
.end method

.method setParsedLeapSecond()V
    .registers 3

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/Parsed;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/time/format/Parsed;->leapSecond:Z

    .line 425
    return-void
.end method

.method setStrict(Z)V
    .registers 2
    .param p1, "strict"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Ljava/time/format/DateTimeParseContext;->strict:Z

    .line 280
    return-void
.end method

.method startOptional()V
    .registers 3

    .prologue
    .line 287
    iget-object v0, p0, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/Parsed;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/format/Parsed;->copy()Ljava/time/format/Parsed;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .registers 12
    .param p1, "cs1"    # Ljava/lang/CharSequence;
    .param p2, "offset1"    # I
    .param p3, "cs2"    # Ljava/lang/CharSequence;
    .param p4, "offset2"    # I
    .param p5, "length"    # I

    .prologue
    const/4 v5, 0x0

    .line 209
    add-int v3, p2, p5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gt v3, v4, :cond_11

    add-int v3, p4, p5

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v3, v4, :cond_12

    .line 210
    :cond_11
    return v5

    .line 212
    :cond_12
    invoke-virtual {p0}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 213
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, p5, :cond_56

    .line 214
    add-int v3, p2, v2

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 215
    .local v0, "ch1":C
    add-int v3, p4, v2

    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 216
    .local v1, "ch2":C
    if-eq v0, v1, :cond_2a

    .line 217
    return v5

    .line 213
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 221
    .end local v0    # "ch1":C
    .end local v1    # "ch2":C
    .end local v2    # "i":I
    :cond_2d
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2e
    if-ge v2, p5, :cond_56

    .line 222
    add-int v3, p2, v2

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 223
    .restart local v0    # "ch1":C
    add-int v3, p4, v2

    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 224
    .restart local v1    # "ch2":C
    if-eq v0, v1, :cond_53

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v3, v4, :cond_53

    .line 225
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-eq v3, v4, :cond_53

    .line 226
    return v5

    .line 221
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 230
    .end local v0    # "ch1":C
    .end local v1    # "ch2":C
    :cond_56
    const/4 v3, 0x1

    return v3
.end method

.method toResolved(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/temporal/TemporalAccessor;
    .registers 5
    .param p1, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/ResolverStyle;",
            "Ljava/util/Set",
            "<",
            "Ljava/time/temporal/TemporalField;",
            ">;)",
            "Ljava/time/temporal/TemporalAccessor;"
        }
    .end annotation

    .prologue
    .line 328
    .local p2, "resolverFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    invoke-direct {p0}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/Parsed;

    move-result-object v0

    .line 329
    .local v0, "parsed":Ljava/time/format/Parsed;
    invoke-virtual {p0}, Ljava/time/format/DateTimeParseContext;->getEffectiveChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    iput-object v1, v0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    .line 330
    iget-object v1, v0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    if-eqz v1, :cond_17

    iget-object v1, v0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    :goto_10
    iput-object v1, v0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    .line 331
    invoke-virtual {v0, p1, p2}, Ljava/time/format/Parsed;->resolve(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v1

    return-object v1

    .line 330
    :cond_17
    iget-object v1, p0, Ljava/time/format/DateTimeParseContext;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatter;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/Parsed;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/format/Parsed;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toUnresolved()Ljava/time/format/Parsed;
    .registers 2

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/Parsed;

    move-result-object v0

    return-object v0
.end method
