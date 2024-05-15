.class public final Ljava/util/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Formatter$DateTime;,
        Ljava/util/Formatter$Conversion;,
        Ljava/util/Formatter$Flags;,
        Ljava/util/Formatter$FormatSpecifier;,
        Ljava/util/Formatter$BigDecimalLayoutForm;,
        Ljava/util/Formatter$FixedString;,
        Ljava/util/Formatter$FormatString;,
        Ljava/util/Formatter$FormatSpecifierParser;
    }
.end annotation


# static fields
.field private static final greylist-max-o MAX_FD_CHARS:I = 0x1e

.field private static greylist-max-o scaleUp:D


# instance fields
.field private greylist-max-o a:Ljava/lang/Appendable;

.field private final greylist-max-o l:Ljava/util/Locale;

.field private greylist-max-o lastException:Ljava/io/IOException;

.field private final greylist-max-o zero:C


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 1918
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1919
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2111
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2113
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2150
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V

    .line 2151
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V
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

    .line 2189
    invoke-static {p2}, Ljava/util/Formatter;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0, p3, p1}, Ljava/util/Formatter;-><init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V

    .line 2190
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 2229
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2231
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2256
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V

    .line 2257
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 6
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2282
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, p3, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2283
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/PrintStream;)V
    .registers 4
    .param p1, "ps"    # Ljava/io/PrintStream;

    .line 2208
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 2209
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/lang/Appendable;

    .line 2208
    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2210
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Appendable;)V
    .registers 4
    .param p1, "a"    # Ljava/lang/Appendable;

    .line 1934
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Formatter;->nonNullAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1935
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Appendable;Ljava/util/Locale;)V
    .registers 4
    .param p1, "a"    # Ljava/lang/Appendable;
    .param p2, "l"    # Ljava/util/Locale;

    .line 1967
    invoke-static {p1}, Ljava/util/Formatter;->nonNullAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1968
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2000
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2002
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2039
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 2040
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
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

    .line 2078
    invoke-static {p2}, Ljava/util/Formatter;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, v1}, Ljava/util/Formatter;-><init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V

    .line 2079
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V
    .registers 7
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "l"    # Ljava/util/Locale;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1902
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1904
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "l"    # Ljava/util/Locale;

    .line 1951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1952
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/util/Locale;Ljava/lang/Appendable;)V
    .registers 4
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "a"    # Ljava/lang/Appendable;

    .line 1893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1894
    iput-object p2, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    .line 1895
    iput-object p1, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    .line 1896
    invoke-static {p1}, Ljava/util/Formatter;->getZero(Ljava/util/Locale;)C

    move-result v0

    iput-char v0, p0, Ljava/util/Formatter;->zero:C

    .line 1897
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/util/Formatter;)Ljava/lang/Appendable;
    .registers 2
    .param p0, "x0"    # Ljava/util/Formatter;

    .line 1855
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    return-object v0
.end method

.method static synthetic blacklist access$200(Ljava/util/Formatter;)Ljava/util/Locale;
    .registers 2
    .param p0, "x0"    # Ljava/util/Formatter;

    .line 1855
    iget-object v0, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic blacklist access$300()D
    .registers 2

    .line 1855
    sget-wide v0, Ljava/util/Formatter;->scaleUp:D

    return-wide v0
.end method

.method static synthetic blacklist access$302(D)D
    .registers 2
    .param p0, "x0"    # D

    .line 1855
    sput-wide p0, Ljava/util/Formatter;->scaleUp:D

    return-wide p0
.end method

.method static synthetic blacklist access$400(Ljava/util/Formatter;)C
    .registers 2
    .param p0, "x0"    # Ljava/util/Formatter;

    .line 1855
    iget-char v0, p0, Ljava/util/Formatter;->zero:C

    return v0
.end method

.method private greylist-max-o ensureOpen()V
    .registers 2

    .line 2410
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    if-eqz v0, :cond_5

    .line 2412
    return-void

    .line 2411
    :cond_5
    new-instance v0, Ljava/util/FormatterClosedException;

    invoke-direct {v0}, Ljava/util/FormatterClosedException;-><init>()V

    throw v0
.end method

.method private static greylist-max-o getZero(Ljava/util/Locale;)C
    .registers 3
    .param p0, "l"    # Ljava/util/Locale;

    .line 2286
    if-eqz p0, :cond_13

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2287
    invoke-static {p0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    .line 2288
    .local v0, "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    return v1

    .line 2290
    .end local v0    # "dfs":Ljava/text/DecimalFormatSymbols;
    :cond_13
    const/16 v0, 0x30

    return v0
.end method

.method private static final greylist-max-o nonNullAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 2
    .param p0, "a"    # Ljava/lang/Appendable;

    .line 1886
    if-nez p0, :cond_8

    .line 1887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0

    .line 1889
    :cond_8
    return-object p0
.end method

.method private greylist-max-o parse(Ljava/lang/String;)[Ljava/util/Formatter$FormatString;
    .registers 10
    .param p1, "s"    # Ljava/lang/String;

    .line 2545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2546
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Formatter$FormatString;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_a
    if-ge v1, v2, :cond_40

    .line 2547
    const/16 v3, 0x25

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2548
    .local v4, "nextPercent":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_2d

    .line 2551
    move v3, v1

    .line 2552
    .local v3, "plainTextStart":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1e

    move v5, v2

    goto :goto_1f

    :cond_1e
    move v5, v4

    .line 2553
    .local v5, "plainTextEnd":I
    :goto_1f
    new-instance v6, Ljava/util/Formatter$FixedString;

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Ljava/util/Formatter$FixedString;-><init>(Ljava/util/Formatter;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2555
    move v1, v5

    .line 2556
    .end local v3    # "plainTextStart":I
    .end local v5    # "plainTextEnd":I
    goto :goto_3f

    .line 2558
    :cond_2d
    new-instance v3, Ljava/util/Formatter$FormatSpecifierParser;

    add-int/lit8 v5, v1, 0x1

    invoke-direct {v3, p0, p1, v5}, Ljava/util/Formatter$FormatSpecifierParser;-><init>(Ljava/util/Formatter;Ljava/lang/String;I)V

    .line 2559
    .local v3, "fsp":Ljava/util/Formatter$FormatSpecifierParser;
    invoke-virtual {v3}, Ljava/util/Formatter$FormatSpecifierParser;->getFormatSpecifier()Ljava/util/Formatter$FormatSpecifier;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2560
    invoke-virtual {v3}, Ljava/util/Formatter$FormatSpecifierParser;->getEndIdx()I

    move-result v1

    .line 2562
    .end local v3    # "fsp":Ljava/util/Formatter$FormatSpecifierParser;
    .end local v4    # "nextPercent":I
    :goto_3f
    goto :goto_a

    .line 2563
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Formatter$FormatString;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Formatter$FormatString;

    return-object v1
.end method

.method private static greylist-max-o toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .param p0, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1876
    const-string v0, "charsetName"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1878
    :try_start_5
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_9
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_5 .. :try_end_9} :catch_a
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_5 .. :try_end_9} :catch_a

    return-object v0

    .line 1879
    :catch_a
    move-exception v0

    .line 1881
    .local v0, "unused":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 2397
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    if-nez v0, :cond_5

    .line 2398
    return-void

    .line 2400
    :cond_5
    const/4 v1, 0x0

    :try_start_6
    instance-of v2, v0, Ljava/io/Closeable;

    if-eqz v2, :cond_15

    .line 2401
    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_f} :catch_12
    .catchall {:try_start_6 .. :try_end_f} :catchall_10

    goto :goto_15

    .line 2405
    :catchall_10
    move-exception v0

    goto :goto_19

    .line 2402
    :catch_12
    move-exception v0

    .line 2403
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_13
    iput-object v0, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_10

    .line 2405
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_15
    :goto_15
    iput-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    .line 2406
    nop

    .line 2407
    return-void

    .line 2405
    :goto_19
    iput-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    .line 2406
    throw v0
.end method

.method public whitelist test-api flush()V
    .registers 3

    .line 2374
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    .line 2375
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    instance-of v1, v0, Ljava/io/Flushable;

    if-eqz v1, :cond_12

    .line 2377
    :try_start_9
    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_f

    .line 2380
    goto :goto_12

    .line 2378
    :catch_f
    move-exception v0

    .line 2379
    .local v0, "ioe":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;

    .line 2382
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_12
    :goto_12
    return-void
.end method

.method public varargs whitelist test-api format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 2459
    iget-object v0, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    invoke-virtual {p0, v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist test-api format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .registers 12
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 2498
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    .line 2501
    const/4 v0, -0x1

    .line 2503
    .local v0, "last":I
    const/4 v1, -0x1

    .line 2505
    .local v1, "lasto":I
    invoke-direct {p0, p2}, Ljava/util/Formatter;->parse(Ljava/lang/String;)[Ljava/util/Formatter$FormatString;

    move-result-object v2

    .line 2506
    .local v2, "fsa":[Ljava/util/Formatter$FormatString;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    array-length v4, v2

    if-ge v3, v4, :cond_7a

    .line 2507
    aget-object v4, v2, v3

    .line 2508
    .local v4, "fs":Ljava/util/Formatter$FormatString;
    invoke-interface {v4}, Ljava/util/Formatter$FormatString;->index()I

    move-result v5

    .line 2510
    .local v5, "index":I
    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_7c

    .line 2527
    add-int/lit8 v0, v5, -0x1

    .line 2528
    if-eqz p3, :cond_6c

    :try_start_1b
    array-length v7, p3

    goto :goto_5d

    .line 2520
    :pswitch_1d
    add-int/lit8 v1, v1, 0x1

    .line 2521
    move v0, v1

    .line 2522
    if-eqz p3, :cond_32

    array-length v7, p3

    add-int/lit8 v7, v7, -0x1

    if-gt v1, v7, :cond_28

    goto :goto_32

    .line 2523
    :cond_28
    new-instance v6, Ljava/util/MissingFormatArgumentException;

    invoke-interface {v4}, Ljava/util/Formatter$FormatString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "last":I
    .end local v1    # "lasto":I
    .end local v2    # "fsa":[Ljava/util/Formatter$FormatString;
    .end local v3    # "i":I
    .end local v4    # "fs":Ljava/util/Formatter$FormatString;
    .end local v5    # "index":I
    .end local p0    # "this":Ljava/util/Formatter;
    .end local p1    # "l":Ljava/util/Locale;
    .end local p2    # "format":Ljava/lang/String;
    .end local p3    # "args":[Ljava/lang/Object;
    throw v6

    .line 2524
    .restart local v0    # "last":I
    .restart local v1    # "lasto":I
    .restart local v2    # "fsa":[Ljava/util/Formatter$FormatString;
    .restart local v3    # "i":I
    .restart local v4    # "fs":Ljava/util/Formatter$FormatString;
    .restart local v5    # "index":I
    .restart local p0    # "this":Ljava/util/Formatter;
    .restart local p1    # "l":Ljava/util/Locale;
    .restart local p2    # "format":Ljava/lang/String;
    .restart local p3    # "args":[Ljava/lang/Object;
    :cond_32
    :goto_32
    if-nez p3, :cond_35

    goto :goto_37

    :cond_35
    aget-object v6, p3, v1

    :goto_37
    invoke-interface {v4, v6, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 2525
    goto :goto_74

    .line 2515
    :pswitch_3b
    if-ltz v0, :cond_4d

    if-eqz p3, :cond_44

    array-length v7, p3

    add-int/lit8 v7, v7, -0x1

    if-gt v0, v7, :cond_4d

    .line 2517
    :cond_44
    if-nez p3, :cond_47

    goto :goto_49

    :cond_47
    aget-object v6, p3, v0

    :goto_49
    invoke-interface {v4, v6, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 2518
    goto :goto_74

    .line 2516
    :cond_4d
    new-instance v6, Ljava/util/MissingFormatArgumentException;

    invoke-interface {v4}, Ljava/util/Formatter$FormatString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "last":I
    .end local v1    # "lasto":I
    .end local v2    # "fsa":[Ljava/util/Formatter$FormatString;
    .end local v3    # "i":I
    .end local v4    # "fs":Ljava/util/Formatter$FormatString;
    .end local v5    # "index":I
    .end local p0    # "this":Ljava/util/Formatter;
    .end local p1    # "l":Ljava/util/Locale;
    .end local p2    # "format":Ljava/lang/String;
    .end local p3    # "args":[Ljava/lang/Object;
    throw v6

    .line 2512
    .restart local v0    # "last":I
    .restart local v1    # "lasto":I
    .restart local v2    # "fsa":[Ljava/util/Formatter$FormatString;
    .restart local v3    # "i":I
    .restart local v4    # "fs":Ljava/util/Formatter$FormatString;
    .restart local v5    # "index":I
    .restart local p0    # "this":Ljava/util/Formatter;
    .restart local p1    # "l":Ljava/util/Locale;
    .restart local p2    # "format":Ljava/lang/String;
    .restart local p3    # "args":[Ljava/lang/Object;
    :pswitch_57
    invoke-interface {v4, v6, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 2513
    goto :goto_74

    .line 2533
    :catch_5b
    move-exception v6

    goto :goto_75

    .line 2528
    :goto_5d
    add-int/lit8 v7, v7, -0x1

    if-gt v0, v7, :cond_62

    goto :goto_6c

    .line 2529
    :cond_62
    new-instance v6, Ljava/util/MissingFormatArgumentException;

    invoke-interface {v4}, Ljava/util/Formatter$FormatString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "last":I
    .end local v1    # "lasto":I
    .end local v2    # "fsa":[Ljava/util/Formatter$FormatString;
    .end local v3    # "i":I
    .end local v4    # "fs":Ljava/util/Formatter$FormatString;
    .end local v5    # "index":I
    .end local p0    # "this":Ljava/util/Formatter;
    .end local p1    # "l":Ljava/util/Locale;
    .end local p2    # "format":Ljava/lang/String;
    .end local p3    # "args":[Ljava/lang/Object;
    throw v6

    .line 2530
    .restart local v0    # "last":I
    .restart local v1    # "lasto":I
    .restart local v2    # "fsa":[Ljava/util/Formatter$FormatString;
    .restart local v3    # "i":I
    .restart local v4    # "fs":Ljava/util/Formatter$FormatString;
    .restart local v5    # "index":I
    .restart local p0    # "this":Ljava/util/Formatter;
    .restart local p1    # "l":Ljava/util/Locale;
    .restart local p2    # "format":Ljava/lang/String;
    .restart local p3    # "args":[Ljava/lang/Object;
    :cond_6c
    :goto_6c
    if-nez p3, :cond_6f

    goto :goto_71

    :cond_6f
    aget-object v6, p3, v0

    :goto_71
    invoke-interface {v4, v6, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_74} :catch_5b

    .line 2535
    :goto_74
    goto :goto_77

    .line 2534
    .local v6, "x":Ljava/io/IOException;
    :goto_75
    iput-object v6, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;

    .line 2506
    .end local v4    # "fs":Ljava/util/Formatter$FormatString;
    .end local v5    # "index":I
    .end local v6    # "x":Ljava/io/IOException;
    :goto_77
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2537
    .end local v3    # "i":I
    :cond_7a
    return-object p0

    nop

    :pswitch_data_7c
    .packed-switch -0x2
        :pswitch_57
        :pswitch_3b
        :pswitch_1d
    .end packed-switch
.end method

.method public whitelist test-api ioException()Ljava/io/IOException;
    .registers 2

    .line 2425
    iget-object v0, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;

    return-object v0
.end method

.method public whitelist test-api locale()Ljava/util/Locale;
    .registers 2

    .line 2308
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    .line 2309
    iget-object v0, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist test-api out()Ljava/lang/Appendable;
    .registers 2

    .line 2322
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    .line 2323
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 2358
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    .line 2359
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
