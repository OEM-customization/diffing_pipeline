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
.field private final greylist-max-o formatter:Ljava/time/format/DateTimeFormatter;

.field private final greylist-max-o parseType:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalQuery;)V
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/DateTimeFormatter;",
            "Ljava/time/temporal/TemporalQuery<",
            "*>;)V"
        }
    .end annotation

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
.method public whitelist test-api format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 2105
    const-string v0, "obj"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2106
    const-string v0, "toAppendTo"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2107
    const-string v0, "pos"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2108
    instance-of v0, p1, Ljava/time/temporal/TemporalAccessor;

    if-eqz v0, :cond_2f

    .line 2111
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 2112
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 2114
    :try_start_1a
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v0, v1, p2}, Ljava/time/format/DateTimeFormatter;->formatTo(Ljava/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_22} :catch_24

    .line 2117
    nop

    .line 2118
    return-object p2

    .line 2115
    :catch_24
    move-exception v0

    .line 2116
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2109
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Format target must implement TemporalAccessor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 2122
    const-string v0, "text"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2124
    :try_start_5
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljava/time/temporal/TemporalQuery;

    if-nez v0, :cond_11

    .line 2125
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    const/4 v1, 0x0

    # invokes: Ljava/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    invoke-static {v0, p1, v1}, Ljava/time/format/DateTimeFormatter;->access$000(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    return-object v0

    .line 2127
    :cond_11
    iget-object v1, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, p1, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0
    :try_end_17
    .catch Ljava/time/format/DateTimeParseException; {:try_start_5 .. :try_end_17} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_17} :catch_18

    return-object v0

    .line 2130
    :catch_18
    move-exception v0

    .line 2131
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/text/ParseException;

    throw v1

    .line 2128
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_2a
    move-exception v0

    .line 2129
    .local v0, "ex":Ljava/time/format/DateTimeParseException;
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/time/format/DateTimeParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/format/DateTimeParseException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 2136
    const-string v0, "text"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2139
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    # invokes: Ljava/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;
    invoke-static {v2, p1, p2}, Ljava/time/format/DateTimeFormatter;->access$100(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;

    move-result-object v2
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_d} :catch_39

    .line 2145
    .local v2, "context":Ljava/time/format/DateTimeParseContext;
    nop

    .line 2146
    if-nez v2, :cond_1a

    .line 2147
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-gez v3, :cond_19

    .line 2148
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2150
    :cond_19
    return-object v1

    .line 2153
    :cond_1a
    :try_start_1a
    iget-object v3, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    # getter for: Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;
    invoke-static {v3}, Ljava/time/format/DateTimeFormatter;->access$200(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/ResolverStyle;

    move-result-object v3

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    # getter for: Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;
    invoke-static {v4}, Ljava/time/format/DateTimeFormatter;->access$300(Ljava/time/format/DateTimeFormatter;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeParseContext;->toResolved(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v3

    .line 2154
    .local v3, "resolved":Ljava/time/temporal/TemporalAccessor;
    iget-object v4, p0, Ljava/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljava/time/temporal/TemporalQuery;

    if-nez v4, :cond_2f

    .line 2155
    return-object v3

    .line 2157
    :cond_2f
    invoke-interface {v3, v4}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_33} :catch_34

    return-object v0

    .line 2158
    .end local v3    # "resolved":Ljava/time/temporal/TemporalAccessor;
    :catch_34
    move-exception v3

    .line 2159
    .local v3, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2160
    return-object v1

    .line 2140
    .end local v2    # "context":Ljava/time/format/DateTimeParseContext;
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :catch_39
    move-exception v2

    .line 2141
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-gez v3, :cond_43

    .line 2142
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2144
    :cond_43
    return-object v1
.end method
