.class final Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
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
    name = "CompositePrinterParser"
.end annotation


# instance fields
.field private final optional:Z

.field private final printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .registers 4
    .param p2, "optional"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2155
    .local p1, "printerParsers":Ljava/util/List;, "Ljava/util/List<Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-direct {p0, v0, p2}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>([Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V

    .line 2156
    return-void
.end method

.method constructor <init>([Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V
    .registers 3
    .param p1, "printerParsers"    # [Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    .param p2, "optional"    # Z

    .prologue
    .line 2158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2159
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 2160
    iput-boolean p2, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    .line 2161
    return-void
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 10
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v6, 0x1

    .line 2178
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2179
    .local v0, "length":I
    iget-boolean v2, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v2, :cond_c

    .line 2180
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->startOptional()V

    .line 2183
    :cond_c
    :try_start_c
    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_10
    if-ge v2, v4, :cond_28

    aget-object v1, v3, v2

    .line 2184
    .local v1, "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    invoke-interface {v1, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 2185
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_30

    .line 2190
    iget-boolean v2, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v2, :cond_24

    .line 2191
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->endOptional()V

    .line 2186
    :cond_24
    return v6

    .line 2183
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 2190
    .end local v1    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :cond_28
    iget-boolean v2, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v2, :cond_2f

    .line 2191
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->endOptional()V

    .line 2194
    :cond_2f
    return v6

    .line 2189
    :catchall_30
    move-exception v2

    .line 2190
    iget-boolean v3, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v3, :cond_38

    .line 2191
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->endOptional()V

    .line 2189
    :cond_38
    throw v2
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 10
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 2199
    iget-boolean v3, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v3, :cond_23

    .line 2200
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->startOptional()V

    .line 2201
    move v0, p3

    .line 2202
    .local v0, "pos":I
    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    array-length v5, v4

    move v3, v2

    :goto_d
    if-ge v3, v5, :cond_1e

    aget-object v1, v4, v3

    .line 2203
    .local v1, "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    invoke-interface {v1, p1, p2, v0}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2204
    if-gez v0, :cond_1b

    .line 2205
    invoke-virtual {p1, v2}, Ljava/time/format/DateTimeParseContext;->endOptional(Z)V

    .line 2206
    return p3

    .line 2202
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2209
    .end local v1    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :cond_1e
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/time/format/DateTimeParseContext;->endOptional(Z)V

    .line 2210
    return v0

    .line 2212
    .end local v0    # "pos":I
    :cond_23
    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    array-length v4, v3

    :goto_26
    if-ge v2, v4, :cond_30

    aget-object v1, v3, v2

    .line 2213
    .restart local v1    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    invoke-interface {v1, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result p3

    .line 2214
    if-gez p3, :cond_31

    .line 2218
    .end local v1    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :cond_30
    return p3

    .line 2212
    .restart local v1    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_26
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 2224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2225
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    if-eqz v2, :cond_2f

    .line 2226
    iget-boolean v2, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v2, :cond_21

    const-string/jumbo v2, "["

    :goto_10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2227
    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_17
    if-ge v2, v4, :cond_25

    aget-object v1, v3, v2

    .line 2228
    .local v1, "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2227
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2226
    .end local v1    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :cond_21
    const-string/jumbo v2, "("

    goto :goto_10

    .line 2230
    :cond_25
    iget-boolean v2, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v2, :cond_34

    const-string/jumbo v2, "]"

    :goto_2c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2232
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2230
    :cond_34
    const-string/jumbo v2, ")"

    goto :goto_2c
.end method

.method public withOptional(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .registers 4
    .param p1, "optional"    # Z

    .prologue
    .line 2170
    iget-boolean v0, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-ne p1, v0, :cond_5

    .line 2171
    return-object p0

    .line 2173
    :cond_5
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-direct {v0, v1, p1}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>([Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V

    return-object v0
.end method
