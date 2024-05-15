.class final Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;
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
    name = "PadPrinterParserDecorator"
.end annotation


# instance fields
.field private final padChar:C

.field private final padWidth:I

.field private final printerParser:Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# direct methods
.method constructor <init>(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;IC)V
    .registers 4
    .param p1, "printerParser"    # Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    .param p2, "padWidth"    # I
    .param p3, "padChar"    # C

    .prologue
    .line 2252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2254
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 2255
    iput p2, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    .line 2256
    iput-char p3, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    .line 2257
    return-void
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 9
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2261
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 2262
    .local v2, "preLen":I
    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-interface {v3, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 2263
    const/4 v3, 0x0

    return v3

    .line 2265
    :cond_e
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int v1, v3, v2

    .line 2266
    .local v1, "len":I
    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    if-le v1, v3, :cond_3f

    .line 2267
    new-instance v3, Ljava/time/DateTimeException;

    .line 2268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot print as output of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " characters exceeds pad width of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2267
    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2270
    :cond_3f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_40
    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_4d

    .line 2271
    iget-char v3, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2270
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 2273
    :cond_4d
    const/4 v3, 0x1

    return v3
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 10
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    .line 2279
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v3

    .line 2281
    .local v3, "strict":Z
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le p3, v4, :cond_10

    .line 2282
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2284
    :cond_10
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne p3, v4, :cond_18

    .line 2285
    not-int v4, p3

    return v4

    .line 2287
    :cond_18
    iget v4, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    add-int v0, p3, v4

    .line 2288
    .local v0, "endPos":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_2a

    .line 2289
    if-eqz v3, :cond_26

    .line 2290
    not-int v4, p3

    return v4

    .line 2292
    :cond_26
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2294
    :cond_2a
    move v1, p3

    .line 2295
    .local v1, "pos":I
    :goto_2b
    if-ge v1, v0, :cond_3c

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iget-char v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    invoke-virtual {p1, v4, v5}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 2296
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 2298
    :cond_3c
    const/4 v4, 0x0

    invoke-interface {p2, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 2299
    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-interface {v4, p1, p2, v1}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v2

    .line 2300
    .local v2, "resultPos":I
    if-eq v2, v0, :cond_4f

    if-eqz v3, :cond_4f

    .line 2301
    add-int v4, p3, v1

    not-int v4, v4

    return v4

    .line 2303
    :cond_4f
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Pad("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    const/16 v2, 0x20

    if-ne v0, v2, :cond_31

    const-string/jumbo v0, ")"

    :goto_28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ",\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method
