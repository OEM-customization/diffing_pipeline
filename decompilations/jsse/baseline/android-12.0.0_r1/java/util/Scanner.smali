.class public final Ljava/util/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o BOOLEAN_PATTERN:Ljava/lang/String; = "true|false"

.field private static final greylist-max-o BUFFER_SIZE:I = 0x400

.field private static greylist-max-o FIND_ANY_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final greylist-max-o LINE_PATTERN:Ljava/lang/String; = ".*(\r\n|[\n\r\u2028\u2029\u0085])|.+$"

.field private static final greylist-max-o LINE_SEPARATOR_PATTERN:Ljava/lang/String; = "\r\n|[\n\r\u2028\u2029\u0085]"

.field private static greylist-max-o NON_ASCII_DIGIT:Ljava/util/regex/Pattern;

.field private static greylist-max-o WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

.field private static volatile greylist-max-o boolPattern:Ljava/util/regex/Pattern;

.field private static volatile greylist-max-o linePattern:Ljava/util/regex/Pattern;

.field private static volatile greylist-max-o separatorPattern:Ljava/util/regex/Pattern;


# instance fields
.field private greylist-max-o SIMPLE_GROUP_INDEX:I

.field private greylist-max-o buf:Ljava/nio/CharBuffer;

.field private greylist-max-o closed:Z

.field private greylist-max-o decimalPattern:Ljava/util/regex/Pattern;

.field private greylist-max-o decimalSeparator:Ljava/lang/String;

.field private greylist-max-o defaultRadix:I

.field private greylist-max-o delimPattern:Ljava/util/regex/Pattern;

.field private greylist-max-o digits:Ljava/lang/String;

.field private greylist-max-o floatPattern:Ljava/util/regex/Pattern;

.field private greylist-max-o groupSeparator:Ljava/lang/String;

.field private greylist-max-o hasNextPattern:Ljava/util/regex/Pattern;

.field private greylist-max-o hasNextPosition:I

.field private greylist-max-o hasNextResult:Ljava/lang/String;

.field private greylist-max-o infinityString:Ljava/lang/String;

.field private greylist-max-o integerPattern:Ljava/util/regex/Pattern;

.field private greylist-max-o lastException:Ljava/io/IOException;

.field private greylist-max-o locale:Ljava/util/Locale;

.field private greylist-max-o matchValid:Z

.field private greylist-max-o matcher:Ljava/util/regex/Matcher;

.field private greylist-max-o nanString:Ljava/lang/String;

.field private greylist-max-o needInput:Z

.field private greylist-max-o negativePrefix:Ljava/lang/String;

.field private greylist-max-o negativeSuffix:Ljava/lang/String;

.field private greylist-max-o non0Digit:Ljava/lang/String;

.field private greylist-max-o patternCache:Lsun/misc/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/misc/LRUCache<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o position:I

.field private greylist-max-o positivePrefix:Ljava/lang/String;

.field private greylist-max-o positiveSuffix:Ljava/lang/String;

.field private greylist-max-o radix:I

.field private greylist-max-o savedScannerPosition:I

.field private greylist-max-o skipped:Z

.field private greylist-max-o source:Ljava/lang/Readable;

.field private greylist-max-o sourceClosed:Z

.field private greylist-max-o typeCache:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 305
    nop

    .line 379
    const-string v0, "\\p{javaWhitespace}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    .line 383
    const-string v0, "(?s).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->FIND_ANY_PATTERN:Ljava/util/regex/Pattern;

    .line 386
    const-string v0, "[\\p{javaDigit}&&[^0-9]]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->NON_ASCII_DIGIT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "source"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 620
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    .line 621
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .param p1, "source"    # Ljava/io/File;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 638
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/io/File;

    invoke-static {p2}, Ljava/util/Scanner;->toDecoder(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/nio/charset/CharsetDecoder;)V

    .line 639
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/io/File;Ljava/nio/charset/CharsetDecoder;)V
    .registers 4
    .param p1, "source"    # Ljava/io/File;
    .param p2, "dec"    # Ljava/nio/charset/CharsetDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 644
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    .line 645
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "source"    # Ljava/io/InputStream;

    .line 572
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 573
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "charsetName"    # Ljava/lang/String;

    .line 587
    const-string v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    invoke-static {p2}, Ljava/util/Scanner;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Scanner;->makeReadable(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Readable;

    move-result-object v0

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 589
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Readable;)V
    .registers 4
    .param p1, "source"    # Ljava/lang/Readable;

    .line 560
    const-string v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/Readable;

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 561
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V
    .registers 6
    .param p1, "source"    # Ljava/lang/Readable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    .line 338
    iput-boolean v0, p0, Ljava/util/Scanner;->needInput:Z

    .line 341
    iput-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    .line 344
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .line 347
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 350
    iput-boolean v0, p0, Ljava/util/Scanner;->matchValid:Z

    .line 353
    iput-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    .line 356
    const/16 v2, 0xa

    iput v2, p0, Ljava/util/Scanner;->radix:I

    .line 359
    iput v2, p0, Ljava/util/Scanner;->defaultRadix:I

    .line 362
    iput-object v1, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 365
    new-instance v1, Ljava/util/Scanner$1;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Ljava/util/Scanner$1;-><init>(Ljava/util/Scanner;I)V

    iput-object v1, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    .line 394
    const-string v1, "\\,"

    iput-object v1, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    .line 395
    const-string v1, "\\."

    iput-object v1, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    .line 396
    const-string v1, "NaN"

    iput-object v1, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    .line 397
    const-string v1, "Infinity"

    iput-object v1, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    .line 398
    const-string v1, ""

    iput-object v1, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    .line 399
    const-string v2, "\\-"

    iput-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    .line 400
    iput-object v1, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    .line 401
    iput-object v1, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    .line 420
    const-string v1, "0123456789abcdefghijklmnopqrstuvwxyz"

    iput-object v1, p0, Ljava/util/Scanner;->digits:Ljava/lang/String;

    .line 421
    const-string v1, "[\\p{javaDigit}&&[^0]]"

    iput-object v1, p0, Ljava/util/Scanner;->non0Digit:Ljava/lang/String;

    .line 422
    const/4 v1, 0x5

    iput v1, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    .line 540
    nop

    .line 541
    nop

    .line 542
    iput-object p1, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    .line 543
    iput-object p2, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    .line 544
    const/16 v1, 0x400

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    .line 545
    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 546
    iget-object v1, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    .line 547
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->useTransparentBounds(Z)Ljava/util/regex/Matcher;

    .line 548
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->useAnchoringBounds(Z)Ljava/util/regex/Matcher;

    .line 549
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useLocale(Ljava/util/Locale;)Ljava/util/Scanner;

    .line 550
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "source"    # Ljava/lang/String;

    .line 715
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 716
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .registers 4
    .param p1, "source"    # Ljava/nio/channels/ReadableByteChannel;

    .line 727
    const-string v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/nio/channels/ReadableByteChannel;

    invoke-static {v0}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;)Ljava/lang/Readable;

    move-result-object v0

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 729
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V
    .registers 5
    .param p1, "source"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "charsetName"    # Ljava/lang/String;

    .line 747
    const-string v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/nio/channels/ReadableByteChannel;

    invoke-static {p2}, Ljava/util/Scanner;->toDecoder(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;

    move-result-object v0

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 749
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/nio/file/Path;)V
    .registers 3
    .param p1, "source"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 681
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 682
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/nio/file/Path;Ljava/lang/String;)V
    .registers 5
    .param p1, "source"    # Ljava/nio/file/Path;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 701
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/nio/file/Path;

    invoke-static {p2}, Ljava/util/Scanner;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V

    .line 702
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V
    .registers 4
    .param p1, "source"    # Ljava/nio/file/Path;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 705
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Scanner;->makeReadable(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Readable;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    .line 706
    return-void
.end method

.method private static greylist-max-o boolPattern()Ljava/util/regex/Pattern;
    .registers 3

    .line 409
    sget-object v0, Ljava/util/Scanner;->boolPattern:Ljava/util/regex/Pattern;

    .line 410
    .local v0, "bp":Ljava/util/regex/Pattern;
    if-nez v0, :cond_e

    .line 411
    const/4 v1, 0x2

    const-string v2, "true|false"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    move-object v0, v1

    sput-object v1, Ljava/util/Scanner;->boolPattern:Ljava/util/regex/Pattern;

    .line 413
    :cond_e
    return-object v0
.end method

.method private greylist-max-o buildFloatAndDecimalPattern()V
    .registers 19

    .line 487
    move-object/from16 v0, p0

    const-string v1, "([0-9]|(\\p{javaDigit}))"

    .line 488
    .local v1, "digit":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "([eE][+-]?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "+)?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 489
    .local v2, "exponent":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Ljava/util/Scanner;->non0Digit:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "?("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")+)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 492
    .local v3, "groupedNumeral":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "++)|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 493
    .local v5, "numeral":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "*+|"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "++)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 496
    .local v7, "decimalNumeral":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(NaN|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "|Infinity|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 498
    .local v9, "nonNumber":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 500
    .local v10, "positiveFloat":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 502
    .local v11, "negativeFloat":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "(([-+]?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ")|"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 504
    .local v12, "decimal":Ljava/lang/String;
    const-string v15, "[-+]?0[xX][0-9a-fA-F]*\\.[0-9a-fA-F]+([pP][-+]?[0-9]+)?"

    .line 506
    .local v15, "hexFloat":Ljava/lang/String;
    move-object/from16 v16, v1

    .end local v1    # "digit":Ljava/lang/String;
    .local v16, "digit":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v2

    .end local v2    # "exponent":Ljava/lang/String;
    .local v17, "exponent":Ljava/lang/String;
    iget-object v2, v0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, "positiveNonNumber":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 510
    .local v2, "negativeNonNumber":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 513
    .local v4, "signedNonNumber":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    iput-object v6, v0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    .line 515
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    iput-object v6, v0, Ljava/util/Scanner;->decimalPattern:Ljava/util/regex/Pattern;

    .line 516
    return-void
.end method

.method private greylist-max-o buildIntegerPatternString()Ljava/lang/String;
    .registers 12

    .line 424
    iget-object v0, p0, Ljava/util/Scanner;->digits:Ljava/lang/String;

    iget v1, p0, Ljava/util/Scanner;->radix:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "radixDigits":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "((?i)["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]|\\p{javaDigit})"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "digit":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/util/Scanner;->digits:Ljava/lang/String;

    iget v4, p0, Ljava/util/Scanner;->radix:I

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]|("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/util/Scanner;->non0Digit:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "))"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 437
    .local v3, "non0RadixDigits":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")+)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "groupedNumeral":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "++)|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 443
    .local v6, "numeral":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "([-+]?("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "javaStyleInteger":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 445
    .local v8, "negativeInteger":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 446
    .local v9, "positiveInteger":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")|("

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private greylist-max-o cacheResult()V
    .registers 2

    .line 771
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    .line 772
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    .line 773
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 774
    return-void
.end method

.method private greylist-max-o cacheResult(Ljava/lang/String;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/String;

    .line 777
    iput-object p1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    .line 778
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    .line 779
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 780
    return-void
.end method

.method private greylist-max-o clearCaches()V
    .registers 2

    .line 784
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 785
    iput-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 786
    return-void
.end method

.method private greylist-max-o decimalPattern()Ljava/util/regex/Pattern;
    .registers 2

    .line 524
    iget-object v0, p0, Ljava/util/Scanner;->decimalPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_7

    .line 525
    invoke-direct {p0}, Ljava/util/Scanner;->buildFloatAndDecimalPattern()V

    .line 527
    :cond_7
    iget-object v0, p0, Ljava/util/Scanner;->decimalPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3

    .line 1086
    iget-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    if-nez v0, :cond_5

    .line 1088
    return-void

    .line 1087
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scanner closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o findPatternInBuffer(Ljava/util/regex/Pattern;I)Ljava/lang/String;
    .registers 9
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "horizon"    # I

    .line 1017
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1018
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1019
    iget-object v0, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    .line 1020
    .local v0, "bufferLimit":I
    const/4 v1, -0x1

    .line 1021
    .local v1, "horizonLimit":I
    move v2, v0

    .line 1022
    .local v2, "searchLimit":I
    if-lez p2, :cond_19

    .line 1023
    iget v3, p0, Ljava/util/Scanner;->position:I

    add-int v1, v3, p2

    .line 1024
    if-ge v1, v0, :cond_19

    .line 1025
    move v2, v1

    .line 1027
    :cond_19
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->position:I

    invoke-virtual {v3, v4, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1028
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_57

    .line 1029
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v3

    if-eqz v3, :cond_48

    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-nez v3, :cond_48

    .line 1031
    if-eq v2, v1, :cond_3b

    .line 1033
    iput-boolean v4, p0, Ljava/util/Scanner;->needInput:Z

    .line 1034
    return-object v5

    .line 1037
    :cond_3b
    if-ne v2, v1, :cond_48

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->requireEnd()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1041
    iput-boolean v4, p0, Ljava/util/Scanner;->needInput:Z

    .line 1042
    return-object v5

    .line 1046
    :cond_48
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 1047
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1050
    :cond_57
    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v3, :cond_5c

    .line 1051
    return-object v5

    .line 1055
    :cond_5c
    if-eqz p2, :cond_60

    if-eq v2, v1, :cond_62

    .line 1056
    :cond_60
    iput-boolean v4, p0, Ljava/util/Scanner;->needInput:Z

    .line 1057
    :cond_62
    return-object v5
.end method

.method private greylist-max-o floatPattern()Ljava/util/regex/Pattern;
    .registers 2

    .line 518
    iget-object v0, p0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_7

    .line 519
    invoke-direct {p0}, Ljava/util/Scanner;->buildFloatAndDecimalPattern()V

    .line 521
    :cond_7
    iget-object v0, p0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private greylist-max-o getCachedResult()Ljava/lang/String;
    .registers 2

    .line 790
    iget v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 791
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 792
    iput-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 793
    iget-object v0, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    return-object v0
.end method

.method private greylist-max-o getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 7
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 919
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->matchValid:Z

    .line 922
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v1, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 923
    iget-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3e

    .line 924
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v3, p0, Ljava/util/Scanner;->position:I

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 925
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 928
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-nez v0, :cond_34

    .line 929
    iput-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    .line 930
    return-object v2

    .line 933
    :cond_34
    iput-boolean v1, p0, Ljava/util/Scanner;->skipped:Z

    .line 934
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 939
    :cond_3e
    iget v0, p0, Ljava/util/Scanner;->position:I

    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    if-ne v0, v3, :cond_50

    .line 940
    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v0, :cond_4d

    .line 941
    return-object v2

    .line 942
    :cond_4d
    iput-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    .line 943
    return-object v2

    .line 952
    :cond_50
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v3, p0, Ljava/util/Scanner;->position:I

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 953
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 954
    .local v0, "foundNextDelim":Z
    if-eqz v0, :cond_75

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iget v4, p0, Ljava/util/Scanner;->position:I

    if-ne v3, v4, :cond_75

    .line 958
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 960
    :cond_75
    if-eqz v0, :cond_b4

    .line 967
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->requireEnd()Z

    move-result v3

    if-eqz v3, :cond_86

    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-nez v3, :cond_86

    .line 968
    iput-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    .line 969
    return-object v2

    .line 971
    :cond_86
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 973
    .local v1, "tokenEnd":I
    if-nez p1, :cond_90

    .line 975
    sget-object p1, Ljava/util/Scanner;->FIND_ANY_PATTERN:Ljava/util/regex/Pattern;

    .line 978
    :cond_90
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 979
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->position:I

    invoke-virtual {v3, v4, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 980
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 981
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 982
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 983
    return-object v2

    .line 985
    .end local v2    # "s":Ljava/lang/String;
    :cond_b3
    return-object v2

    .line 991
    .end local v1    # "tokenEnd":I
    :cond_b4
    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v3, :cond_e6

    .line 992
    if-nez p1, :cond_bc

    .line 994
    sget-object p1, Ljava/util/Scanner;->FIND_ANY_PATTERN:Ljava/util/regex/Pattern;

    .line 997
    :cond_bc
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 998
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v3, p0, Ljava/util/Scanner;->position:I

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 999
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 1000
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 1001
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iput v2, p0, Ljava/util/Scanner;->position:I

    .line 1002
    return-object v1

    .line 1005
    .end local v1    # "s":Ljava/lang/String;
    :cond_e5
    return-object v2

    .line 1010
    :cond_e6
    iput-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    .line 1011
    return-object v2
.end method

.method private greylist-max-o hasTokenInBuffer()Z
    .registers 5

    .line 888
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->matchValid:Z

    .line 889
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v2, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 890
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->position:I

    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 893
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 894
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 897
    :cond_27
    iget v1, p0, Ljava/util/Scanner;->position:I

    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    if-ne v1, v2, :cond_32

    .line 898
    return v0

    .line 900
    :cond_32
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o integerPattern()Ljava/util/regex/Pattern;
    .registers 3

    .line 451
    iget-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_12

    .line 452
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-direct {p0}, Ljava/util/Scanner;->buildIntegerPatternString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    .line 454
    :cond_12
    iget-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static greylist-max-o linePattern()Ljava/util/regex/Pattern;
    .registers 2

    .line 474
    sget-object v0, Ljava/util/Scanner;->linePattern:Ljava/util/regex/Pattern;

    .line 475
    .local v0, "lp":Ljava/util/regex/Pattern;
    if-nez v0, :cond_d

    .line 476
    const-string v1, ".*(\r\n|[\n\r\u2028\u2029\u0085])|.+$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    move-object v0, v1

    sput-object v1, Ljava/util/Scanner;->linePattern:Ljava/util/regex/Pattern;

    .line 477
    :cond_d
    return-object v0
.end method

.method private static greylist-max-o makeReadable(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Readable;
    .registers 3
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 607
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static greylist-max-o makeReadable(Ljava/nio/channels/ReadableByteChannel;)Ljava/lang/Readable;
    .registers 2
    .param p0, "source"    # Ljava/nio/channels/ReadableByteChannel;

    .line 732
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;
    .registers 3
    .param p0, "source"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "dec"    # Ljava/nio/charset/CharsetDecoder;

    .line 662
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o makeSpace()Z
    .registers 6

    .line 843
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 844
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 845
    iget v0, p0, Ljava/util/Scanner;->position:I

    goto :goto_c

    :cond_b
    nop

    .line 846
    .local v0, "offset":I
    :goto_c
    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 848
    const/4 v1, 0x1

    if-lez v0, :cond_27

    .line 849
    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    .line 850
    invoke-direct {p0, v0}, Ljava/util/Scanner;->translateSavedIndexes(I)V

    .line 851
    iget v2, p0, Ljava/util/Scanner;->position:I

    sub-int/2addr v2, v0

    iput v2, p0, Ljava/util/Scanner;->position:I

    .line 852
    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 853
    return v1

    .line 856
    :cond_27
    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    .line 857
    .local v2, "newSize":I
    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 858
    .local v3, "newBuf":Ljava/nio/CharBuffer;
    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    .line 859
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 860
    invoke-direct {p0, v0}, Ljava/util/Scanner;->translateSavedIndexes(I)V

    .line 861
    iget v4, p0, Ljava/util/Scanner;->position:I

    sub-int/2addr v4, v0

    iput v4, p0, Ljava/util/Scanner;->position:I

    .line 862
    iput-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    .line 863
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 864
    return v1
.end method

.method private greylist-max-o matchPatternInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 5
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 1063
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1064
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1065
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v1, p0, Ljava/util/Scanner;->position:I

    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1066
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    .line 1067
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-nez v0, :cond_2e

    .line 1069
    iput-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    .line 1070
    return-object v2

    .line 1072
    :cond_2e
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 1073
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1076
    :cond_3d
    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v0, :cond_42

    .line 1077
    return-object v2

    .line 1080
    :cond_42
    iput-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    .line 1081
    return-object v2
.end method

.method private greylist-max-o processFloatToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "token"    # Ljava/lang/String;

    .line 2264
    iget-object v0, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2265
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 2266
    iget-object v1, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2267
    :cond_1a
    const/4 v1, 0x0

    .line 2268
    .local v1, "isNegative":Z
    iget-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2269
    .local v2, "preLen":I
    if-lez v2, :cond_30

    iget-object v3, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2270
    const/4 v1, 0x1

    .line 2271
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2273
    :cond_30
    iget-object v3, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 2274
    .local v3, "sufLen":I
    if-lez v3, :cond_4e

    iget-object v4, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 2275
    const/4 v1, 0x1

    .line 2276
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    .line 2277
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 2276
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2279
    :cond_4e
    iget-object v4, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 2280
    const-string v0, "NaN"

    .line 2281
    :cond_58
    iget-object v4, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 2282
    const-string v0, "Infinity"

    .line 2284
    :cond_62
    const-string v4, "\u221e"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 2285
    const-string v0, "Infinity"

    .line 2287
    :cond_6c
    if-eqz v1, :cond_7f

    .line 2288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2291
    :cond_7f
    sget-object v4, Ljava/util/Scanner;->NON_ASCII_DIGIT:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2292
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 2293
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2294
    .local v5, "inASCII":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_91
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_b8

    .line 2295
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 2296
    .local v7, "nextChar":C
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_b2

    .line 2297
    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    .line 2298
    .local v8, "d":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_ae

    .line 2299
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b1

    .line 2301
    :cond_ae
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2302
    .end local v8    # "d":I
    :goto_b1
    goto :goto_b5

    .line 2303
    :cond_b2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2294
    .end local v7    # "nextChar":C
    :goto_b5
    add-int/lit8 v6, v6, 0x1

    goto :goto_91

    .line 2306
    .end local v6    # "i":I
    :cond_b8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2309
    .end local v5    # "inASCII":Ljava/lang/StringBuilder;
    :cond_bc
    return-object v0
.end method

.method private greylist-max-o processIntegerToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "token"    # Ljava/lang/String;

    .line 2065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2066
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2067
    .local v1, "isNegative":Z
    iget-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2068
    .local v2, "preLen":I
    if-lez v2, :cond_2d

    iget-object v3, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2069
    const/4 v1, 0x1

    .line 2070
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2072
    :cond_2d
    iget-object v3, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 2073
    .local v3, "sufLen":I
    if-lez v3, :cond_4b

    iget-object v4, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 2074
    const/4 v1, 0x1

    .line 2075
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    .line 2076
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 2075
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2078
    :cond_4b
    if-eqz v1, :cond_5e

    .line 2079
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2080
    :cond_5e
    return-object v0
.end method

.method private greylist-max-o readInput()V
    .registers 5

    .line 807
    iget-object v0, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->capacity()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 808
    invoke-direct {p0}, Ljava/util/Scanner;->makeSpace()Z

    .line 811
    :cond_11
    iget-object v0, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 812
    .local v0, "p":I
    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 813
    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 815
    const/4 v1, 0x0

    .line 817
    .local v1, "n":I
    :try_start_2a
    iget-object v2, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-interface {v2, v3}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v2
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_32} :catch_34

    move v1, v2

    .line 821
    goto :goto_38

    .line 818
    :catch_34
    move-exception v2

    .line 819
    .local v2, "ioe":Ljava/io/IOException;
    iput-object v2, p0, Ljava/util/Scanner;->lastException:Ljava/io/IOException;

    .line 820
    const/4 v1, -0x1

    .line 823
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_38
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_41

    .line 824
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/Scanner;->sourceClosed:Z

    .line 825
    iput-boolean v3, p0, Ljava/util/Scanner;->needInput:Z

    .line 828
    :cond_41
    if-lez v1, :cond_45

    .line 829
    iput-boolean v3, p0, Ljava/util/Scanner;->needInput:Z

    .line 832
    :cond_45
    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 833
    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 837
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 838
    return-void
.end method

.method private greylist-max-o revertState()V
    .registers 2

    .line 758
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 759
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .line 760
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    .line 761
    return-void
.end method

.method private greylist-max-o revertState(Z)Z
    .registers 3
    .param p1, "b"    # Z

    .line 764
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 765
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .line 766
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    .line 767
    return p1
.end method

.method private greylist-max-o saveState()V
    .registers 2

    .line 754
    iget v0, p0, Ljava/util/Scanner;->position:I

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .line 755
    return-void
.end method

.method private static greylist-max-o separatorPattern()Ljava/util/regex/Pattern;
    .registers 2

    .line 467
    sget-object v0, Ljava/util/Scanner;->separatorPattern:Ljava/util/regex/Pattern;

    .line 468
    .local v0, "sp":Ljava/util/regex/Pattern;
    if-nez v0, :cond_d

    .line 469
    const-string v1, "\r\n|[\n\r\u2028\u2029\u0085]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    move-object v0, v1

    sput-object v1, Ljava/util/Scanner;->separatorPattern:Ljava/util/regex/Pattern;

    .line 470
    :cond_d
    return-object v0
.end method

.method private greylist-max-o setRadix(I)V
    .registers 5
    .param p1, "radix"    # I

    .line 1283
    const/16 v0, 0x24

    if-gt p1, v0, :cond_e

    .line 1288
    iget v0, p0, Ljava/util/Scanner;->radix:I

    if-eq v0, p1, :cond_d

    .line 1290
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    .line 1291
    iput p1, p0, Ljava/util/Scanner;->radix:I

    .line 1293
    :cond_d
    return-void

    .line 1284
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "radix == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwFor()V
    .registers 3

    .line 877
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    .line 878
    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v0, :cond_17

    iget v0, p0, Ljava/util/Scanner;->position:I

    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 879
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 881
    :cond_17
    new-instance v0, Ljava/util/InputMismatchException;

    invoke-direct {v0}, Ljava/util/InputMismatchException;-><init>()V

    throw v0
.end method

.method private static greylist-max-o toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .param p0, "csn"    # Ljava/lang/String;

    .line 597
    const-string v0, "charsetName"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 599
    :try_start_5
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_9
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_5 .. :try_end_9} :catch_a
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_5 .. :try_end_9} :catch_a

    return-object v0

    .line 600
    :catch_a
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static greylist-max-o toDecoder(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;
    .registers 3
    .param p0, "charsetName"    # Ljava/lang/String;

    .line 650
    if-eqz p0, :cond_12

    .line 654
    :try_start_2
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0
    :try_end_a
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_2 .. :try_end_a} :catch_b
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2 .. :try_end_a} :catch_b

    return-object v0

    .line 655
    :catch_b
    move-exception v0

    .line 656
    .local v0, "unused":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 651
    .end local v0    # "unused":Ljava/lang/IllegalArgumentException;
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charsetName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o translateSavedIndexes(I)V
    .registers 4
    .param p1, "offset"    # I

    .line 870
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 871
    sub-int/2addr v0, p1

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .line 872
    :cond_8
    return-void
.end method

.method private greylist-max-o useTypeCache()V
    .registers 3

    .line 798
    iget-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    if-nez v0, :cond_e

    .line 800
    iget v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 801
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 802
    iput-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 803
    return-void

    .line 799
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scanner closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 1106
    iget-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v0, :cond_5

    .line 1107
    return-void

    .line 1108
    :cond_5
    iget-object v0, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    instance-of v1, v0, Ljava/io/Closeable;

    if-eqz v1, :cond_14

    .line 1110
    :try_start_b
    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_11

    .line 1113
    goto :goto_14

    .line 1111
    :catch_11
    move-exception v0

    .line 1112
    .local v0, "ioe":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Scanner;->lastException:Ljava/io/IOException;

    .line 1115
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_14
    :goto_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    .line 1116
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    .line 1117
    iput-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    .line 1118
    return-void
.end method

.method public whitelist test-api delimiter()Ljava/util/regex/Pattern;
    .registers 2

    .line 1138
    iget-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public whitelist test-api findInLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 1589
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 5
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 1611
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1612
    if-eqz p1, :cond_3d

    .line 1614
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1616
    const/4 v0, 0x0

    .line 1617
    .local v0, "endPosition":I
    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    .line 1619
    :goto_c
    invoke-static {}, Ljava/util/Scanner;->separatorPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Ljava/util/Scanner;->findPatternInBuffer(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v1

    .line 1620
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_1e

    .line 1621
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    .line 1622
    goto :goto_2d

    .line 1624
    :cond_1e
    iget-boolean v2, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v2, :cond_26

    .line 1625
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    .line 1630
    .end local v1    # "token":Ljava/lang/String;
    goto :goto_c

    .line 1627
    .restart local v1    # "token":Ljava/lang/String;
    :cond_26
    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    .line 1628
    nop

    .line 1631
    .end local v1    # "token":Ljava/lang/String;
    :goto_2d
    invoke-direct {p0}, Ljava/util/Scanner;->revertState()V

    .line 1632
    iget v1, p0, Ljava/util/Scanner;->position:I

    sub-int v1, v0, v1

    .line 1636
    .local v1, "horizonForLine":I
    if-nez v1, :cond_38

    .line 1637
    const/4 v2, 0x0

    return-object v2

    .line 1639
    :cond_38
    invoke-virtual {p0, p1, v1}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1613
    .end local v0    # "endPosition":I
    .end local v1    # "horizonForLine":I
    :cond_3d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "horizon"    # I

    .line 1658
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0, p2}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;
    .registers 5
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "horizon"    # I

    .line 1693
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1694
    if-eqz p1, :cond_26

    .line 1696
    if-ltz p2, :cond_1e

    .line 1698
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1702
    :goto_a
    invoke-direct {p0, p1, p2}, Ljava/util/Scanner;->findPatternInBuffer(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    .line 1703
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 1704
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1705
    return-object v0

    .line 1707
    :cond_14
    iget-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v1, :cond_1c

    .line 1708
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    .line 1711
    .end local v0    # "token":Ljava/lang/String;
    goto :goto_a

    .line 1712
    :cond_1c
    const/4 v0, 0x0

    return-object v0

    .line 1697
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "horizon < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1695
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api hasNext()Z
    .registers 3

    .line 1357
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1358
    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    .line 1359
    :goto_6
    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-nez v0, :cond_1a

    .line 1360
    invoke-direct {p0}, Ljava/util/Scanner;->hasTokenInBuffer()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1361
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/Scanner;->revertState(Z)Z

    move-result v0

    return v0

    .line 1362
    :cond_16
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_6

    .line 1364
    :cond_1a
    invoke-direct {p0}, Ljava/util/Scanner;->hasTokenInBuffer()Z

    move-result v0

    .line 1365
    .local v0, "result":Z
    invoke-direct {p0, v0}, Ljava/util/Scanner;->revertState(Z)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api hasNext(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 1423
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasNext(Ljava/util/regex/Pattern;)Z
    .registers 3
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 1456
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1457
    if-eqz p1, :cond_2a

    .line 1459
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 1460
    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    .line 1463
    :goto_b
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1464
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1465
    invoke-direct {p0}, Ljava/util/Scanner;->cacheResult()V

    .line 1466
    invoke-direct {p0, v0}, Ljava/util/Scanner;->revertState(Z)Z

    move-result v0

    return v0

    .line 1468
    :cond_1c
    iget-boolean v0, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v0, :cond_24

    .line 1469
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_b

    .line 1471
    :cond_24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/Scanner;->revertState(Z)Z

    move-result v0

    return v0

    .line 1458
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api hasNextBigDecimal()Z
    .registers 4

    .line 2564
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ljava/util/Scanner;->setRadix(I)V

    .line 2565
    invoke-direct {p0}, Ljava/util/Scanner;->decimalPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    .line 2566
    .local v0, "result":Z
    if-eqz v0, :cond_1f

    .line 2568
    :try_start_f
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2569
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1c} :catch_1d

    .line 2572
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_1f

    .line 2570
    :catch_1d
    move-exception v1

    .line 2571
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 2574
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_1f
    :goto_1f
    return v0
.end method

.method public whitelist test-api hasNextBigInteger()Z
    .registers 2

    .line 2460
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextBigInteger(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasNextBigInteger(I)Z
    .registers 5
    .param p1, "radix"    # I

    .line 2475
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2476
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    .line 2477
    .local v0, "result":Z
    if-eqz v0, :cond_2b

    .line 2479
    :try_start_d
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 2480
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    .line 2481
    :cond_1e
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    :goto_20
    nop

    .line 2482
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_28} :catch_29

    .line 2485
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_2b

    .line 2483
    :catch_29
    move-exception v1

    .line 2484
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 2487
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2b
    :goto_2b
    return v0
.end method

.method public whitelist test-api hasNextBoolean()Z
    .registers 2

    .line 1788
    invoke-static {}, Ljava/util/Scanner;->boolPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasNextByte()Z
    .registers 2

    .line 1818
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextByte(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasNextByte(I)Z
    .registers 5
    .param p1, "radix"    # I

    .line 1832
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 1833
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    .line 1834
    .local v0, "result":Z
    if-eqz v0, :cond_2e

    .line 1836
    :try_start_d
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 1837
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    .line 1838
    :cond_1e
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    :goto_20
    nop

    .line 1839
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_2b} :catch_2c

    .line 1842
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_2e

    .line 1840
    :catch_2c
    move-exception v1

    .line 1841
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 1844
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2e
    :goto_2e
    return v0
.end method

.method public whitelist test-api hasNextDouble()Z
    .registers 5

    .line 2389
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ljava/util/Scanner;->setRadix(I)V

    .line 2390
    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    .line 2391
    .local v0, "result":Z
    if-eqz v0, :cond_22

    .line 2393
    :try_start_f
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2394
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1f} :catch_20

    .line 2397
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_22

    .line 2395
    :catch_20
    move-exception v1

    .line 2396
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 2399
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_22
    :goto_22
    return v0
.end method

.method public whitelist test-api hasNextFloat()Z
    .registers 4

    .line 2322
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ljava/util/Scanner;->setRadix(I)V

    .line 2323
    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    .line 2324
    .local v0, "result":Z
    if-eqz v0, :cond_22

    .line 2326
    :try_start_f
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2327
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1f} :catch_20

    .line 2330
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_22

    .line 2328
    :catch_20
    move-exception v1

    .line 2329
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 2332
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_22
    :goto_22
    return v0
.end method

.method public whitelist test-api hasNextInt()Z
    .registers 2

    .line 2030
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextInt(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasNextInt(I)Z
    .registers 5
    .param p1, "radix"    # I

    .line 2044
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2045
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    .line 2046
    .local v0, "result":Z
    if-eqz v0, :cond_2e

    .line 2048
    :try_start_d
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 2049
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    .line 2050
    :cond_1e
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    :goto_20
    nop

    .line 2051
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_2b} :catch_2c

    .line 2054
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_2e

    .line 2052
    :catch_2c
    move-exception v1

    .line 2053
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 2056
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2e
    :goto_2e
    return v0
.end method

.method public whitelist test-api hasNextLine()Z
    .registers 8

    .line 1521
    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    .line 1523
    invoke-static {}, Ljava/util/Scanner;->linePattern()Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    .line 1524
    .local v0, "result":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v0, :cond_2d

    .line 1525
    invoke-virtual {p0}, Ljava/util/Scanner;->match()Ljava/util/regex/MatchResult;

    move-result-object v3

    .line 1526
    .local v3, "mr":Ljava/util/regex/MatchResult;
    invoke-interface {v3, v2}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 1527
    .local v4, "lineSep":Ljava/lang/String;
    if-eqz v4, :cond_2a

    .line 1528
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1529
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1528
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1530
    invoke-direct {p0, v0}, Ljava/util/Scanner;->cacheResult(Ljava/lang/String;)V

    goto :goto_2d

    .line 1533
    :cond_2a
    invoke-direct {p0}, Ljava/util/Scanner;->cacheResult()V

    .line 1536
    .end local v3    # "mr":Ljava/util/regex/MatchResult;
    .end local v4    # "lineSep":Ljava/lang/String;
    :cond_2d
    :goto_2d
    invoke-direct {p0}, Ljava/util/Scanner;->revertState()V

    .line 1537
    if-eqz v0, :cond_33

    move v1, v2

    :cond_33
    return v1
.end method

.method public whitelist test-api hasNextLong()Z
    .registers 2

    .line 2160
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextLong(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasNextLong(I)Z
    .registers 6
    .param p1, "radix"    # I

    .line 2174
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2175
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    .line 2176
    .local v0, "result":Z
    if-eqz v0, :cond_2e

    .line 2178
    :try_start_d
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 2179
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    .line 2180
    :cond_1e
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    :goto_20
    nop

    .line 2181
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_2b} :catch_2c

    .line 2184
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_2e

    .line 2182
    :catch_2c
    move-exception v1

    .line 2183
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 2186
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2e
    :goto_2e
    return v0
.end method

.method public whitelist test-api hasNextShort()Z
    .registers 2

    .line 1924
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextShort(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasNextShort(I)Z
    .registers 5
    .param p1, "radix"    # I

    .line 1938
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 1939
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    .line 1940
    .local v0, "result":Z
    if-eqz v0, :cond_2e

    .line 1942
    :try_start_d
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 1943
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    .line 1944
    :cond_1e
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    :goto_20
    nop

    .line 1945
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_2b} :catch_2c

    .line 1948
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_2e

    .line 1946
    :catch_2c
    move-exception v1

    .line 1947
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 1950
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2e
    :goto_2e
    return v0
.end method

.method public whitelist test-api ioException()Ljava/io/IOException;
    .registers 2

    .line 1128
    iget-object v0, p0, Ljava/util/Scanner;->lastException:Ljava/io/IOException;

    return-object v0
.end method

.method public whitelist test-api locale()Ljava/util/Locale;
    .registers 2

    .line 1181
    iget-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist test-api match()Ljava/util/regex/MatchResult;
    .registers 3

    .line 1315
    iget-boolean v0, p0, Ljava/util/Scanner;->matchValid:Z

    if-eqz v0, :cond_b

    .line 1317
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    return-object v0

    .line 1316
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No match result available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 305
    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api next()Ljava/lang/String;
    .registers 3

    .line 1381
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1382
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1385
    :goto_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/Scanner;->getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 1386
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 1387
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1388
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Scanner;->skipped:Z

    .line 1389
    return-object v0

    .line 1391
    :cond_14
    iget-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v1, :cond_1c

    .line 1392
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_1f

    .line 1394
    :cond_1c
    invoke-direct {p0}, Ljava/util/Scanner;->throwFor()V

    .line 1395
    .end local v0    # "token":Ljava/lang/String;
    :goto_1f
    goto :goto_6
.end method

.method public whitelist test-api next(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 1441
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api next(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 4
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 1488
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1489
    if-eqz p1, :cond_2a

    .line 1493
    iget-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    if-ne v0, p1, :cond_e

    .line 1494
    invoke-direct {p0}, Ljava/util/Scanner;->getCachedResult()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1495
    :cond_e
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1499
    :goto_11
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 1500
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_1e

    .line 1501
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1502
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Scanner;->skipped:Z

    .line 1503
    return-object v0

    .line 1505
    :cond_1e
    iget-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v1, :cond_26

    .line 1506
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_29

    .line 1508
    :cond_26
    invoke-direct {p0}, Ljava/util/Scanner;->throwFor()V

    .line 1509
    .end local v0    # "token":Ljava/lang/String;
    :goto_29
    goto :goto_11

    .line 1490
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api nextBigDecimal()Ljava/math/BigDecimal;
    .registers 4

    .line 2599
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v0, :cond_e

    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_e

    .line 2600
    check-cast v0, Ljava/math/BigDecimal;

    .line 2601
    .local v0, "val":Ljava/math/BigDecimal;
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2602
    return-object v0

    .line 2604
    .end local v0    # "val":Ljava/math/BigDecimal;
    :cond_e
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ljava/util/Scanner;->setRadix(I)V

    .line 2605
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2608
    :try_start_16
    invoke-direct {p0}, Ljava/util/Scanner;->decimalPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2609
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_27} :catch_28

    return-object v1

    .line 2610
    .end local v0    # "s":Ljava/lang/String;
    :catch_28
    move-exception v0

    .line 2611
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 2612
    new-instance v1, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api nextBigInteger()Ljava/math/BigInteger;
    .registers 2

    .line 2507
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api nextBigInteger(I)Ljava/math/BigInteger;
    .registers 5
    .param p1, "radix"    # I

    .line 2533
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v0, :cond_12

    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_12

    iget v1, p0, Ljava/util/Scanner;->radix:I

    if-ne v1, p1, :cond_12

    .line 2535
    check-cast v0, Ljava/math/BigInteger;

    .line 2536
    .local v0, "val":Ljava/math/BigInteger;
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2537
    return-object v0

    .line 2539
    .end local v0    # "val":Ljava/math/BigInteger;
    :cond_12
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2540
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2543
    :try_start_18
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 2544
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2f

    .line 2545
    invoke-direct {p0, v0}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 2546
    :cond_2f
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_34} :catch_35

    return-object v1

    .line 2547
    .end local v0    # "s":Ljava/lang/String;
    :catch_35
    move-exception v0

    .line 2548
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 2549
    new-instance v1, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api nextBoolean()Z
    .registers 2

    .line 1804
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1805
    invoke-static {}, Ljava/util/Scanner;->boolPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api nextByte()B
    .registers 2

    .line 1863
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextByte(I)B

    move-result v0

    return v0
.end method

.method public whitelist test-api nextByte(I)B
    .registers 5
    .param p1, "radix"    # I

    .line 1894
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v0, :cond_16

    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_16

    iget v1, p0, Ljava/util/Scanner;->radix:I

    if-ne v1, p1, :cond_16

    .line 1896
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 1897
    .local v0, "val":B
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 1898
    return v0

    .line 1900
    .end local v0    # "val":B
    :cond_16
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 1901
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1904
    :try_start_1c
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 1905
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    .line 1906
    invoke-direct {p0, v0}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1907
    :cond_33
    invoke-static {v0, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v1
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_37} :catch_38

    return v1

    .line 1908
    .end local v0    # "s":Ljava/lang/String;
    :catch_38
    move-exception v0

    .line 1909
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 1910
    new-instance v1, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api nextDouble()D
    .registers 4

    .line 2431
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v0, :cond_12

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_12

    .line 2432
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 2433
    .local v0, "val":D
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2434
    return-wide v0

    .line 2436
    .end local v0    # "val":D
    :cond_12
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ljava/util/Scanner;->setRadix(I)V

    .line 2437
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2440
    :try_start_1a
    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_2a} :catch_2b

    return-wide v0

    .line 2441
    :catch_2b
    move-exception v0

    .line 2442
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 2443
    new-instance v1, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api nextFloat()F
    .registers 4

    .line 2364
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v0, :cond_12

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_12

    .line 2365
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2366
    .local v0, "val":F
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2367
    return v0

    .line 2369
    .end local v0    # "val":F
    :cond_12
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ljava/util/Scanner;->setRadix(I)V

    .line 2370
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2372
    :try_start_1a
    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_2a} :catch_2b

    return v0

    .line 2373
    :catch_2b
    move-exception v0

    .line 2374
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 2375
    new-instance v1, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api nextInt()I
    .registers 2

    .line 2099
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextInt(I)I
    .registers 5
    .param p1, "radix"    # I

    .line 2130
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v0, :cond_16

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_16

    iget v1, p0, Ljava/util/Scanner;->radix:I

    if-ne v1, p1, :cond_16

    .line 2132
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2133
    .local v0, "val":I
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2134
    return v0

    .line 2136
    .end local v0    # "val":I
    :cond_16
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2137
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2140
    :try_start_1c
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 2141
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    .line 2142
    invoke-direct {p0, v0}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 2143
    :cond_33
    invoke-static {v0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_37} :catch_38

    return v1

    .line 2144
    .end local v0    # "s":Ljava/lang/String;
    :catch_38
    move-exception v0

    .line 2145
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 2146
    new-instance v1, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api nextLine()Ljava/lang/String;
    .registers 7

    .line 1557
    iget-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    invoke-static {}, Ljava/util/Scanner;->linePattern()Ljava/util/regex/Pattern;

    move-result-object v1

    if-ne v0, v1, :cond_d

    .line 1558
    invoke-direct {p0}, Ljava/util/Scanner;->getCachedResult()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1559
    :cond_d
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1561
    sget-object v0, Ljava/util/Scanner;->linePattern:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    .line 1562
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_3a

    .line 1564
    invoke-virtual {p0}, Ljava/util/Scanner;->match()Ljava/util/regex/MatchResult;

    move-result-object v2

    .line 1565
    .local v2, "mr":Ljava/util/regex/MatchResult;
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 1566
    .local v3, "lineSep":Ljava/lang/String;
    if-eqz v3, :cond_31

    .line 1567
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1568
    :cond_31
    if-eqz v0, :cond_34

    .line 1571
    return-object v0

    .line 1569
    :cond_34
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1563
    .end local v2    # "mr":Ljava/util/regex/MatchResult;
    .end local v3    # "lineSep":Ljava/lang/String;
    :cond_3a
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No line found"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api nextLong()J
    .registers 3

    .line 2205
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api nextLong(I)J
    .registers 5
    .param p1, "radix"    # I

    .line 2236
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v0, :cond_16

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_16

    iget v1, p0, Ljava/util/Scanner;->radix:I

    if-ne v1, p1, :cond_16

    .line 2238
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2239
    .local v0, "val":J
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2240
    return-wide v0

    .line 2242
    .end local v0    # "val":J
    :cond_16
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2243
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2245
    :try_start_1c
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 2246
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    .line 2247
    invoke-direct {p0, v0}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 2248
    :cond_33
    invoke-static {v0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_37} :catch_38

    return-wide v1

    .line 2249
    .end local v0    # "s":Ljava/lang/String;
    :catch_38
    move-exception v0

    .line 2250
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 2251
    new-instance v1, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api nextShort()S
    .registers 2

    .line 1969
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextShort(I)S

    move-result v0

    return v0
.end method

.method public whitelist test-api nextShort(I)S
    .registers 5
    .param p1, "radix"    # I

    .line 2000
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v0, :cond_16

    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_16

    iget v1, p0, Ljava/util/Scanner;->radix:I

    if-ne v1, p1, :cond_16

    .line 2002
    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 2003
    .local v0, "val":S
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2004
    return v0

    .line 2006
    .end local v0    # "val":S
    :cond_16
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2007
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2010
    :try_start_1c
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 2011
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    .line 2012
    invoke-direct {p0, v0}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 2013
    :cond_33
    invoke-static {v0, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v1
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_37} :catch_38

    return v1

    .line 2014
    .end local v0    # "s":Ljava/lang/String;
    :catch_38
    move-exception v0

    .line 2015
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 2016
    new-instance v1, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api radix()I
    .registers 2

    .line 1246
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    return v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 1406
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reset()Ljava/util/Scanner;
    .registers 2

    .line 2638
    sget-object v0, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    .line 2639
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useLocale(Ljava/util/Locale;)Ljava/util/Scanner;

    .line 2640
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useRadix(I)Ljava/util/Scanner;

    .line 2641
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2642
    return-object p0
.end method

.method public whitelist test-api skip(Ljava/lang/String;)Ljava/util/Scanner;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 1772
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .registers 4
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 1739
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1740
    if-eqz p1, :cond_28

    .line 1742
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1746
    :goto_8
    invoke-direct {p0, p1}, Ljava/util/Scanner;->matchPatternInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 1747
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_1a

    .line 1748
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1749
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 1750
    return-object p0

    .line 1752
    :cond_1a
    iget-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v1, :cond_22

    .line 1753
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    .line 1756
    .end local v0    # "token":Ljava/lang/String;
    goto :goto_8

    .line 1755
    .restart local v0    # "token":Ljava/lang/String;
    :cond_22
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1741
    .end local v0    # "token":Ljava/lang/String;
    :cond_28
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1329
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "java.util.Scanner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[delimiters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[position="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljava/util/Scanner;->position:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[match valid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Ljava/util/Scanner;->matchValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[need input="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Ljava/util/Scanner;->needInput:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[source closed="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[skipped="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Ljava/util/Scanner;->skipped:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[group separator="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[decimal separator="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[positive prefix="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[negative prefix="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[positive suffix="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[negative suffix="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NaN string="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[infinity string="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 1167
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    .line 1168
    return-object p0
.end method

.method public whitelist test-api useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .registers 2
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 1148
    iput-object p1, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    .line 1149
    return-object p0
.end method

.method public whitelist test-api useLocale(Ljava/util/Locale;)Ljava/util/Scanner;
    .registers 8
    .param p1, "locale"    # Ljava/util/Locale;

    .line 1198
    iget-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1199
    return-object p0

    .line 1201
    :cond_9
    iput-object p1, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 1202
    nop

    .line 1203
    invoke-static {p1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    .line 1204
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-static {p1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    .line 1208
    .local v1, "dfs":Ljava/text/DecimalFormatSymbols;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    .line 1209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    .line 1213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\\E"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    .line 1214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    .line 1215
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    .line 1216
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_98

    .line 1217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    .line 1218
    :cond_98
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    .line 1219
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_ba

    .line 1220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    .line 1221
    :cond_ba
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    .line 1222
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_dc

    .line 1223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    .line 1224
    :cond_dc
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    .line 1225
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_fe

    .line 1226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    .line 1230
    :cond_fe
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    .line 1231
    iput-object v2, p0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    .line 1233
    return-object p0
.end method

.method public whitelist test-api useRadix(I)Ljava/util/Scanner;
    .registers 5
    .param p1, "radix"    # I

    .line 1268
    const/4 v0, 0x2

    if-lt p1, v0, :cond_12

    const/16 v0, 0x24

    if-gt p1, v0, :cond_12

    .line 1271
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    if-ne v0, p1, :cond_c

    .line 1272
    return-object p0

    .line 1273
    :cond_c
    iput p1, p0, Ljava/util/Scanner;->defaultRadix:I

    .line 1275
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    .line 1276
    return-object p0

    .line 1269
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "radix:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
