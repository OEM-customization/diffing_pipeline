.class Ljava/time/format/DateTimeFormatter$ClassicFormat;
.super Ljava/text/Format;
.source "DateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassicFormat"
.end annotation


# instance fields
.field private final formatter:Ljava/time/format/DateTimeFormatter;

.field private final parseType:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalQuery;)V
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/DateTimeFormatter;",
            "Ljava/time/temporal/TemporalQuery",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2098
    .local p2, "parseType":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<*>;"
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 2099
    iput-object p1, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    .line 2100
    iput-object p2, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljava/time/temporal/TemporalQuery;

    .line 2101
    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    const/4 v2, 0x0

    .line 2105
    const-string/jumbo v1, "obj"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2106
    const-string/jumbo v1, "toAppendTo"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2107
    const-string/jumbo v1, "pos"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2108
    instance-of v1, p1, Ljava/time/temporal/TemporalAccessor;

    if-nez v1, :cond_20

    .line 2109
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Format target must implement TemporalAccessor"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2111
    :cond_20
    invoke-virtual {p3, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 2112
    invoke-virtual {p3, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 2114
    :try_start_26
    iget-object v1, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    check-cast p1, Ljava/time/temporal/TemporalAccessor;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1, p1, p2}, Ljava/time/format/DateTimeFormatter;->formatTo(Ljava/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_2d} :catch_2e

    .line 2118
    return-object p2

    .line 2115
    :catch_2e
    move-exception v0

    .line 2116
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 2122
    const-string/jumbo v2, "text"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2124
    :try_start_6
    iget-object v2, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljava/time/temporal/TemporalQuery;

    if-nez v2, :cond_12

    .line 2125
    iget-object v2, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Ljava/time/format/DateTimeFormatter;->-wrap1(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v2

    return-object v2

    .line 2127
    :cond_12
    iget-object v2, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljava/time/temporal/TemporalQuery;

    invoke-virtual {v2, p1, v3}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/time/format/DateTimeParseException; {:try_start_6 .. :try_end_19} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_19} :catch_1b

    move-result-object v2

    return-object v2

    .line 2130
    :catch_1b
    move-exception v0

    .line 2131
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/text/ParseException;

    throw v2

    .line 2128
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_2d
    move-exception v1

    .line 2129
    .local v1, "ex":Ljava/time/format/DateTimeParseException;
    new-instance v2, Ljava/text/ParseException;

    invoke-virtual {v1}, Ljava/time/format/DateTimeParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/time/format/DateTimeParseException;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2136
    const-string/jumbo v4, "text"

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2139
    :try_start_8
    iget-object v4, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-static {v4, p1, p2}, Ljava/time/format/DateTimeFormatter;->-wrap0(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_d} :catch_1a

    move-result-object v0

    .line 2146
    .local v0, "context":Ljava/time/format/DateTimeParseContext;
    if-nez v0, :cond_25

    .line 2147
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    if-gez v4, :cond_19

    .line 2148
    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2150
    :cond_19
    return-object v7

    .line 2140
    .end local v0    # "context":Ljava/time/format/DateTimeParseContext;
    :catch_1a
    move-exception v1

    .line 2141
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    if-gez v4, :cond_24

    .line 2142
    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2144
    :cond_24
    return-object v7

    .line 2153
    .end local v1    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .restart local v0    # "context":Ljava/time/format/DateTimeParseContext;
    :cond_25
    :try_start_25
    iget-object v4, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-static {v4}, Ljava/time/format/DateTimeFormatter;->-get1(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/ResolverStyle;

    move-result-object v4

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-static {v5}, Ljava/time/format/DateTimeFormatter;->-get0(Ljava/time/format/DateTimeFormatter;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/time/format/DateTimeParseContext;->toResolved(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v3

    .line 2154
    .local v3, "resolved":Ljava/time/temporal/TemporalAccessor;
    iget-object v4, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljava/time/temporal/TemporalQuery;

    if-nez v4, :cond_3a

    .line 2155
    return-object v3

    .line 2157
    :cond_3a
    iget-object v4, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljava/time/temporal/TemporalQuery;

    invoke-interface {v3, v4}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_3f} :catch_41

    move-result-object v4

    return-object v4

    .line 2158
    .end local v3    # "resolved":Ljava/time/temporal/TemporalAccessor;
    :catch_41
    move-exception v2

    .line 2159
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2160
    return-object v7
.end method
