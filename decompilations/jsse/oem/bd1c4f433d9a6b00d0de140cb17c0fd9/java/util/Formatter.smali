.class public final Ljava/util/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Formatter$BigDecimalLayoutForm;,
        Ljava/util/Formatter$Conversion;,
        Ljava/util/Formatter$DateTime;,
        Ljava/util/Formatter$FixedString;,
        Ljava/util/Formatter$Flags;,
        Ljava/util/Formatter$FormatSpecifier;,
        Ljava/util/Formatter$FormatSpecifierParser;,
        Ljava/util/Formatter$FormatString;
    }
.end annotation


# static fields
.field private static final MAX_FD_CHARS:I = 0x1e

.field private static scaleUp:D


# instance fields
.field private a:Ljava/lang/Appendable;

.field private final l:Ljava/util/Locale;

.field private lastException:Ljava/io/IOException;

.field private final zero:C


# direct methods
.method static synthetic -get0(Ljava/util/Formatter;)Ljava/lang/Appendable;
    .registers 2
    .param p0, "-this"    # Ljava/util/Formatter;

    .prologue
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/Formatter;)Ljava/util/Locale;
    .registers 2
    .param p0, "-this"    # Ljava/util/Formatter;

    .prologue
    iget-object v0, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic -get2()D
    .registers 2

    sget-wide v0, Ljava/util/Formatter;->scaleUp:D

    return-wide v0
.end method

.method static synthetic -get3(Ljava/util/Formatter;)C
    .registers 2
    .param p0, "-this"    # Ljava/util/Formatter;

    .prologue
    iget-char v0, p0, Ljava/util/Formatter;->zero:C

    return v0
.end method

.method static synthetic -set0(D)D
    .registers 2
    .param p0, "-value"    # D

    .prologue
    sput-wide p0, Ljava/util/Formatter;->scaleUp:D

    return-wide p0
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 1917
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1918
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 2110
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 2111
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 2110
    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2112
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2149
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V

    .line 2150
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2188
    invoke-static {p2}, Ljava/util/Formatter;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0, p3, p1}, Ljava/util/Formatter;-><init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V

    .line 2189
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 2228
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 2229
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 2228
    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2230
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2255
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V

    .line 2256
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 6
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2281
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, p3, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2282
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .registers 4
    .param p1, "ps"    # Ljava/io/PrintStream;

    .prologue
    .line 2207
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    .line 2208
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Appendable;

    .line 2207
    invoke-direct {p0, v1, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2209
    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .registers 4
    .param p1, "a"    # Ljava/lang/Appendable;

    .prologue
    .line 1933
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Formatter;->nonNullAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1934
    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;Ljava/util/Locale;)V
    .registers 4
    .param p1, "a"    # Ljava/lang/Appendable;
    .param p2, "l"    # Ljava/util/Locale;

    .prologue
    .line 1966
    invoke-static {p1}, Ljava/util/Formatter;->nonNullAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1967
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1999
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 2000
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1999
    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2001
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2038
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 2039
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2077
    invoke-static {p2}, Ljava/util/Formatter;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, v1}, Ljava/util/Formatter;-><init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V

    .line 2078
    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V
    .registers 7
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "l"    # Ljava/util/Locale;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1902
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1901
    invoke-direct {p0, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1903
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "l"    # Ljava/util/Locale;

    .prologue
    .line 1950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1951
    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;Ljava/lang/Appendable;)V
    .registers 4
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "a"    # Ljava/lang/Appendable;

    .prologue
    .line 1892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1893
    iput-object p2, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    .line 1894
    iput-object p1, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    .line 1895
    invoke-static {p1}, Ljava/util/Formatter;->getZero(Ljava/util/Locale;)C

    move-result v0

    iput-char v0, p0, Ljava/util/Formatter;->zero:C

    .line 1896
    return-void
.end method

.method private ensureOpen()V
    .registers 2

    .prologue
    .line 2409
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    if-nez v0, :cond_a

    .line 2410
    new-instance v0, Ljava/util/FormatterClosedException;

    invoke-direct {v0}, Ljava/util/FormatterClosedException;-><init>()V

    throw v0

    .line 2411
    :cond_a
    return-void
.end method

.method private static getZero(Ljava/util/Locale;)C
    .registers 3
    .param p0, "l"    # Ljava/util/Locale;

    .prologue
    .line 2285
    if-eqz p0, :cond_15

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_15

    .line 2286
    invoke-static {p0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    .line 2287
    .local v0, "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    return v1

    .line 2289
    .end local v0    # "dfs":Ljava/text/DecimalFormatSymbols;
    :cond_15
    const/16 v1, 0x30

    return v1
.end method

.method private static final nonNullAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 2
    .param p0, "a"    # Ljava/lang/Appendable;

    .prologue
    .line 1885
    if-nez p0, :cond_8

    .line 1886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0

    .line 1888
    :cond_8
    return-object p0
.end method

.method private parse(Ljava/lang/String;)[Ljava/util/Formatter$FormatString;
    .registers 12
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x25

    .line 2544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2545
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Formatter$FormatString;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "len":I
    :goto_c
    if-ge v2, v3, :cond_40

    .line 2546
    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2547
    .local v4, "nextPercent":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_2d

    .line 2550
    move v6, v2

    .line 2551
    .local v6, "plainTextStart":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_2b

    move v5, v3

    .line 2552
    .local v5, "plainTextEnd":I
    :goto_1d
    new-instance v7, Ljava/util/Formatter$FixedString;

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Ljava/util/Formatter$FixedString;-><init>(Ljava/util/Formatter;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2554
    move v2, v5

    goto :goto_c

    .line 2551
    .end local v5    # "plainTextEnd":I
    :cond_2b
    move v5, v4

    .restart local v5    # "plainTextEnd":I
    goto :goto_1d

    .line 2557
    .end local v5    # "plainTextEnd":I
    .end local v6    # "plainTextStart":I
    :cond_2d
    new-instance v1, Ljava/util/Formatter$FormatSpecifierParser;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v1, p0, p1, v7}, Ljava/util/Formatter$FormatSpecifierParser;-><init>(Ljava/util/Formatter;Ljava/lang/String;I)V

    .line 2558
    .local v1, "fsp":Ljava/util/Formatter$FormatSpecifierParser;
    invoke-virtual {v1}, Ljava/util/Formatter$FormatSpecifierParser;->getFormatSpecifier()Ljava/util/Formatter$FormatSpecifier;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2559
    invoke-virtual {v1}, Ljava/util/Formatter$FormatSpecifierParser;->getEndIdx()I

    move-result v2

    goto :goto_c

    .line 2562
    .end local v1    # "fsp":Ljava/util/Formatter$FormatSpecifierParser;
    .end local v4    # "nextPercent":I
    :cond_40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/util/Formatter$FormatString;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/util/Formatter$FormatString;

    return-object v7
.end method

.method private static toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .param p0, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1875
    const-string/jumbo v1, "charsetName"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1877
    :try_start_6
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_9
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_6 .. :try_end_9} :catch_b
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    .line 1878
    :catch_b
    move-exception v0

    .line 1880
    .local v0, "unused":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2396
    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    if-nez v1, :cond_6

    .line 2397
    return-void

    .line 2399
    :cond_6
    :try_start_6
    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_13

    .line 2400
    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_13} :catch_16
    .catchall {:try_start_6 .. :try_end_13} :catchall_1a

    .line 2404
    :cond_13
    :goto_13
    iput-object v2, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    .line 2406
    return-void

    .line 2401
    :catch_16
    move-exception v0

    .line 2402
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_17
    iput-object v0, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_1a

    goto :goto_13

    .line 2403
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_1a
    move-exception v1

    .line 2404
    iput-object v2, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    .line 2403
    throw v1
.end method

.method public flush()V
    .registers 3

    .prologue
    .line 2373
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    .line 2374
    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    instance-of v1, v1, Ljava/io/Flushable;

    if-eqz v1, :cond_10

    .line 2376
    :try_start_9
    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    check-cast v1, Ljava/io/Flushable;

    invoke-interface {v1}, Ljava/io/Flushable;->flush()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_11

    .line 2381
    :cond_10
    :goto_10
    return-void

    .line 2377
    :catch_11
    move-exception v0

    .line 2378
    .local v0, "ioe":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;

    goto :goto_10
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 2458
    iget-object v0, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    invoke-virtual {p0, v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .registers 14
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 2497
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    .line 2500
    const/4 v4, -0x1

    .line 2502
    .local v4, "last":I
    const/4 v5, -0x1

    .line 2504
    .local v5, "lasto":I
    invoke-direct {p0, p2}, Ljava/util/Formatter;->parse(Ljava/lang/String;)[Ljava/util/Formatter$FormatString;

    move-result-object v1

    .line 2505
    .local v1, "fsa":[Ljava/util/Formatter$FormatString;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v7, v1

    if-ge v2, v7, :cond_7a

    .line 2506
    aget-object v0, v1, v2

    .line 2507
    .local v0, "fs":Ljava/util/Formatter$FormatString;
    invoke-interface {v0}, Ljava/util/Formatter$FormatString;->index()I

    move-result v3

    .line 2509
    .local v3, "index":I
    packed-switch v3, :pswitch_data_7c

    .line 2526
    add-int/lit8 v4, v3, -0x1

    .line 2527
    if-eqz p3, :cond_70

    :try_start_1b
    array-length v7, p3

    add-int/lit8 v7, v7, -0x1

    if-le v4, v7, :cond_70

    .line 2528
    new-instance v7, Ljava/util/MissingFormatArgumentException;

    invoke-interface {v0}, Ljava/util/Formatter$FormatString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2a} :catch_2a

    .line 2532
    :catch_2a
    move-exception v6

    .line 2533
    .local v6, "x":Ljava/io/IOException;
    iput-object v6, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;

    .line 2505
    .end local v6    # "x":Ljava/io/IOException;
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2511
    :pswitch_30
    const/4 v7, 0x0

    :try_start_31
    invoke-interface {v0, v7, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    goto :goto_2d

    .line 2514
    :pswitch_35
    if-ltz v4, :cond_3e

    if-eqz p3, :cond_48

    array-length v7, p3

    add-int/lit8 v7, v7, -0x1

    if-le v4, v7, :cond_48

    .line 2515
    :cond_3e
    new-instance v7, Ljava/util/MissingFormatArgumentException;

    invoke-interface {v0}, Ljava/util/Formatter$FormatString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2516
    :cond_48
    if-nez p3, :cond_4f

    move-object v7, v8

    :goto_4b
    invoke-interface {v0, v7, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    goto :goto_2d

    :cond_4f
    aget-object v7, p3, v4

    goto :goto_4b

    .line 2519
    :pswitch_52
    add-int/lit8 v5, v5, 0x1

    .line 2520
    move v4, v5

    .line 2521
    if-eqz p3, :cond_66

    array-length v7, p3

    add-int/lit8 v7, v7, -0x1

    if-le v5, v7, :cond_66

    .line 2522
    new-instance v7, Ljava/util/MissingFormatArgumentException;

    invoke-interface {v0}, Ljava/util/Formatter$FormatString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2523
    :cond_66
    if-nez p3, :cond_6d

    move-object v7, v8

    :goto_69
    invoke-interface {v0, v7, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    goto :goto_2d

    :cond_6d
    aget-object v7, p3, v5

    goto :goto_69

    .line 2529
    :cond_70
    if-nez p3, :cond_77

    move-object v7, v8

    :goto_73
    invoke-interface {v0, v7, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    goto :goto_2d

    :cond_77
    aget-object v7, p3, v4
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_79} :catch_2a

    goto :goto_73

    .line 2536
    .end local v0    # "fs":Ljava/util/Formatter$FormatString;
    .end local v3    # "index":I
    :cond_7a
    return-object p0

    .line 2509
    nop

    :pswitch_data_7c
    .packed-switch -0x2
        :pswitch_30
        :pswitch_35
        :pswitch_52
    .end packed-switch
.end method

.method public ioException()Ljava/io/IOException;
    .registers 2

    .prologue
    .line 2424
    iget-object v0, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;

    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 2307
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    .line 2308
    iget-object v0, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    return-object v0
.end method

.method public out()Ljava/lang/Appendable;
    .registers 2

    .prologue
    .line 2321
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    .line 2322
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2357
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    .line 2358
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
