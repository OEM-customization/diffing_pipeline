.class public final Ljava/util/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Scanner$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final BOOLEAN_PATTERN:Ljava/lang/String; = "true|false"

.field private static final BUFFER_SIZE:I = 0x400

.field private static FIND_ANY_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final LINE_PATTERN:Ljava/lang/String; = ".*(\r\n|[\n\r\u2028\u2029\u0085])|.+$"

.field private static final LINE_SEPARATOR_PATTERN:Ljava/lang/String; = "\r\n|[\n\r\u2028\u2029\u0085]"

.field private static NON_ASCII_DIGIT:Ljava/util/regex/Pattern;

.field private static WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

.field private static volatile boolPattern:Ljava/util/regex/Pattern;

.field private static volatile linePattern:Ljava/util/regex/Pattern;

.field private static volatile separatorPattern:Ljava/util/regex/Pattern;


# instance fields
.field private SIMPLE_GROUP_INDEX:I

.field private buf:Ljava/nio/CharBuffer;

.field private closed:Z

.field private decimalPattern:Ljava/util/regex/Pattern;

.field private decimalSeparator:Ljava/lang/String;

.field private defaultRadix:I

.field private delimPattern:Ljava/util/regex/Pattern;

.field private digits:Ljava/lang/String;

.field private floatPattern:Ljava/util/regex/Pattern;

.field private groupSeparator:Ljava/lang/String;

.field private hasNextPattern:Ljava/util/regex/Pattern;

.field private hasNextPosition:I

.field private hasNextResult:Ljava/lang/String;

.field private infinityString:Ljava/lang/String;

.field private integerPattern:Ljava/util/regex/Pattern;

.field private lastException:Ljava/io/IOException;

.field private locale:Ljava/util/Locale;

.field private matchValid:Z

.field private matcher:Ljava/util/regex/Matcher;

.field private nanString:Ljava/lang/String;

.field private needInput:Z

.field private negativePrefix:Ljava/lang/String;

.field private negativeSuffix:Ljava/lang/String;

.field private non0Digit:Ljava/lang/String;

.field private patternCache:Lsun/misc/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/misc/LRUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private positivePrefix:Ljava/lang/String;

.field private positiveSuffix:Ljava/lang/String;

.field private radix:I

.field private savedScannerPosition:I

.field private skipped:Z

.field private source:Ljava/lang/Readable;

.field private sourceClosed:Z

.field private typeCache:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/Scanner;->-assertionsDisabled:Z

    .line 380
    const-string/jumbo v0, "\\p{javaWhitespace}+"

    .line 379
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    .line 383
    const-string/jumbo v0, "(?s).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->FIND_ANY_PATTERN:Ljava/util/regex/Pattern;

    .line 387
    const-string/jumbo v0, "[\\p{javaDigit}&&[^0-9]]"

    .line 386
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->NON_ASCII_DIGIT:Ljava/util/regex/Pattern;

    .line 305
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "source"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 616
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    .line 617
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .param p1, "source"    # Ljava/io/File;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 634
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {p2}, Ljava/util/Scanner;->toDecoder(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/nio/charset/CharsetDecoder;)V

    .line 635
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/nio/charset/CharsetDecoder;)V
    .registers 4
    .param p1, "source"    # Ljava/io/File;
    .param p2, "dec"    # Ljava/nio/charset/CharsetDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 640
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    .line 641
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "source"    # Ljava/io/InputStream;

    .prologue
    .line 568
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 569
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 583
    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {p2}, Ljava/util/Scanner;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Scanner;->makeReadable(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Readable;

    move-result-object v0

    .line 584
    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    .line 583
    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 585
    return-void
.end method

.method public constructor <init>(Ljava/lang/Readable;)V
    .registers 4
    .param p1, "source"    # Ljava/lang/Readable;

    .prologue
    .line 556
    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 557
    return-void
.end method

.method private constructor <init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V
    .registers 7
    .param p1, "source"    # Ljava/lang/Readable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    const/16 v3, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-boolean v2, p0, Ljava/util/Scanner;->sourceClosed:Z

    .line 338
    iput-boolean v2, p0, Ljava/util/Scanner;->needInput:Z

    .line 341
    iput-boolean v2, p0, Ljava/util/Scanner;->skipped:Z

    .line 344
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .line 347
    iput-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 350
    iput-boolean v2, p0, Ljava/util/Scanner;->matchValid:Z

    .line 353
    iput-boolean v2, p0, Ljava/util/Scanner;->closed:Z

    .line 356
    iput v3, p0, Ljava/util/Scanner;->radix:I

    .line 359
    iput v3, p0, Ljava/util/Scanner;->defaultRadix:I

    .line 362
    iput-object v1, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 366
    new-instance v0, Ljava/util/Scanner$1;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Ljava/util/Scanner$1;-><init>(Ljava/util/Scanner;I)V

    .line 365
    iput-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    .line 394
    const-string/jumbo v0, "\\,"

    iput-object v0, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    .line 395
    const-string/jumbo v0, "\\."

    iput-object v0, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    .line 396
    const-string/jumbo v0, "NaN"

    iput-object v0, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    .line 397
    const-string/jumbo v0, "Infinity"

    iput-object v0, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    .line 398
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    .line 399
    const-string/jumbo v0, "\\-"

    iput-object v0, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    .line 400
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    .line 401
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    .line 420
    const-string/jumbo v0, "0123456789abcdefghijklmnopqrstuvwxyz"

    iput-object v0, p0, Ljava/util/Scanner;->digits:Ljava/lang/String;

    .line 421
    const-string/jumbo v0, "[\\p{javaDigit}&&[^0]]"

    iput-object v0, p0, Ljava/util/Scanner;->non0Digit:Ljava/lang/String;

    .line 422
    const/4 v0, 0x5

    iput v0, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    .line 536
    sget-boolean v0, Ljava/util/Scanner;->-assertionsDisabled:Z

    if-nez v0, :cond_68

    if-nez p1, :cond_68

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "source should not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 537
    :cond_68
    sget-boolean v0, Ljava/util/Scanner;->-assertionsDisabled:Z

    if-nez v0, :cond_77

    if-nez p2, :cond_77

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "pattern should not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 538
    :cond_77
    iput-object p1, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    .line 539
    iput-object p2, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    .line 540
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    .line 541
    iget-object v0, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 542
    iget-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    .line 543
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->useTransparentBounds(Z)Ljava/util/regex/Matcher;

    .line 544
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->useAnchoringBounds(Z)Ljava/util/regex/Matcher;

    .line 545
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useLocale(Ljava/util/Locale;)Ljava/util/Scanner;

    .line 546
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 711
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 712
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .registers 4
    .param p1, "source"    # Ljava/nio/channels/ReadableByteChannel;

    .prologue
    .line 723
    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ReadableByteChannel;

    invoke-static {v0}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;)Ljava/lang/Readable;

    move-result-object v0

    .line 724
    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    .line 723
    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 725
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V
    .registers 5
    .param p1, "source"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 743
    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ReadableByteChannel;

    invoke-static {p2}, Ljava/util/Scanner;->toDecoder(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;

    move-result-object v0

    .line 744
    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    .line 743
    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 745
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .registers 3
    .param p1, "source"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 678
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/lang/String;)V
    .registers 5
    .param p1, "source"    # Ljava/nio/file/Path;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    invoke-static {p2}, Ljava/util/Scanner;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V

    .line 698
    return-void
.end method

.method private constructor <init>(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V
    .registers 4
    .param p1, "source"    # Ljava/nio/file/Path;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Scanner;->makeReadable(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Readable;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    .line 702
    return-void
.end method

.method private static boolPattern()Ljava/util/regex/Pattern;
    .registers 3

    .prologue
    .line 409
    sget-object v0, Ljava/util/Scanner;->boolPattern:Ljava/util/regex/Pattern;

    .line 410
    .local v0, "bp":Ljava/util/regex/Pattern;
    if-nez v0, :cond_e

    .line 411
    const-string/jumbo v1, "true|false"

    .line 412
    const/4 v2, 0x2

    .line 411
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->boolPattern:Ljava/util/regex/Pattern;

    .line 413
    :cond_e
    return-object v0
.end method

.method private buildFloatAndDecimalPattern()V
    .registers 16

    .prologue
    .line 483
    const-string/jumbo v2, "([0-9]|(\\p{javaDigit}))"

    .line 484
    .local v2, "digit":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "([eE][+-]?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "+)?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "exponent":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ljava/util/Scanner;->non0Digit:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "?("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 486
    iget-object v14, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    .line 485
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 486
    const-string/jumbo v14, ")+)"

    .line 485
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 488
    .local v4, "groupedNumeral":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "(("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "++)|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 489
    .local v9, "numeral":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 490
    iget-object v14, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    .line 489
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 490
    const-string/jumbo v14, "*+|"

    .line 489
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 490
    iget-object v14, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    .line 489
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 491
    const-string/jumbo v14, "++)"

    .line 489
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "decimalNumeral":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "(NaN|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "|Infinity|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 493
    iget-object v14, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    .line 492
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 493
    const-string/jumbo v14, ")"

    .line 492
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 494
    .local v8, "nonNumber":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 495
    iget-object v14, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    .line 494
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 495
    const-string/jumbo v14, ")"

    .line 494
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 496
    .local v10, "positiveFloat":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 497
    iget-object v14, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    .line 496
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 497
    const-string/jumbo v14, ")"

    .line 496
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 498
    .local v6, "negativeFloat":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "(([-+]?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 499
    const-string/jumbo v14, "|"

    .line 498
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 499
    const-string/jumbo v14, ")"

    .line 498
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "decimal":Ljava/lang/String;
    const-string/jumbo v5, "[-+]?0[xX][0-9a-fA-F]*\\.[0-9a-fA-F]+([pP][-+]?[0-9]+)?"

    .line 502
    .local v5, "hexFloat":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 503
    iget-object v14, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    .line 502
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 503
    const-string/jumbo v14, ")"

    .line 502
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 504
    .local v11, "positiveNonNumber":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 505
    iget-object v14, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    .line 504
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 505
    const-string/jumbo v14, ")"

    .line 504
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 506
    .local v7, "negativeNonNumber":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "(([-+]?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 507
    const-string/jumbo v14, "|"

    .line 506
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 508
    const-string/jumbo v14, ")"

    .line 506
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 509
    .local v12, "signedNonNumber":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    iput-object v13, p0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    .line 511
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    iput-object v13, p0, Ljava/util/Scanner;->decimalPattern:Ljava/util/regex/Pattern;

    .line 512
    return-void
.end method

.method private buildIntegerPatternString()Ljava/lang/String;
    .registers 13

    .prologue
    .line 424
    iget-object v8, p0, Ljava/util/Scanner;->digits:Ljava/lang/String;

    iget v9, p0, Ljava/util/Scanner;->radix:I

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 426
    .local v7, "radixDigits":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "((?i)["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/util/Scanner;->digits:Ljava/lang/String;

    iget v10, p0, Ljava/util/Scanner;->radix:I

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]|("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/util/Scanner;->non0Digit:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "))"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 432
    .local v4, "nonZeroRadixDigits":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "((?i)["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]|\\p{javaDigit})"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "digit":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "?("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 435
    iget-object v9, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    .line 434
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 435
    const-string/jumbo v9, ")+)"

    .line 434
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "groupedNumeral":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "++)|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 439
    .local v5, "numeral":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "([-+]?("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "))"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, "javaStyleInteger":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, "negativeInteger":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 442
    .local v6, "positiveInteger":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")|("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 443
    const-string/jumbo v9, ")|("

    .line 442
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 444
    const-string/jumbo v9, ")"

    .line 442
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private cacheResult()V
    .registers 2

    .prologue
    .line 767
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    .line 768
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    .line 769
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 770
    return-void
.end method

.method private cacheResult(Ljava/lang/String;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 773
    iput-object p1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    .line 774
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    .line 775
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 776
    return-void
.end method

.method private clearCaches()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 780
    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 781
    iput-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 782
    return-void
.end method

.method private decimalPattern()Ljava/util/regex/Pattern;
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, Ljava/util/Scanner;->decimalPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_7

    .line 521
    invoke-direct {p0}, Ljava/util/Scanner;->buildFloatAndDecimalPattern()V

    .line 523
    :cond_7
    iget-object v0, p0, Ljava/util/Scanner;->decimalPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private ensureOpen()V
    .registers 3

    .prologue
    .line 1081
    iget-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v0, :cond_d

    .line 1082
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Scanner closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1083
    :cond_d
    return-void
.end method

.method private findPatternInBuffer(Ljava/util/regex/Pattern;I)Ljava/lang/String;
    .registers 10
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "horizon"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1012
    iput-boolean v3, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1013
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1014
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    .line 1015
    .local v0, "bufferLimit":I
    const/4 v1, -0x1

    .line 1016
    .local v1, "horizonLimit":I
    move v2, v0

    .line 1017
    .local v2, "searchLimit":I
    if-lez p2, :cond_1b

    .line 1018
    iget v3, p0, Ljava/util/Scanner;->position:I

    add-int v1, v3, p2

    .line 1019
    if-ge v1, v0, :cond_1b

    .line 1020
    move v2, v1

    .line 1022
    :cond_1b
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->position:I

    invoke-virtual {v3, v4, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1023
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 1024
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4a

    .line 1026
    if-eq v2, v1, :cond_3d

    .line 1028
    iput-boolean v6, p0, Ljava/util/Scanner;->needInput:Z

    .line 1029
    return-object v5

    .line 1032
    :cond_3d
    if-ne v2, v1, :cond_4a

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->requireEnd()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 1036
    iput-boolean v6, p0, Ljava/util/Scanner;->needInput:Z

    .line 1037
    return-object v5

    .line 1041
    :cond_4a
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 1042
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1045
    :cond_59
    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v3, :cond_5e

    .line 1046
    return-object v5

    .line 1050
    :cond_5e
    if-eqz p2, :cond_62

    if-eq v2, v1, :cond_64

    .line 1051
    :cond_62
    iput-boolean v6, p0, Ljava/util/Scanner;->needInput:Z

    .line 1052
    :cond_64
    return-object v5
.end method

.method private floatPattern()Ljava/util/regex/Pattern;
    .registers 2

    .prologue
    .line 514
    iget-object v0, p0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_7

    .line 515
    invoke-direct {p0}, Ljava/util/Scanner;->buildFloatAndDecimalPattern()V

    .line 517
    :cond_7
    iget-object v0, p0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private getCachedResult()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 786
    iget v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 787
    iput-object v1, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 788
    iput-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 789
    iget-object v0, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    return-object v0
.end method

.method private getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 10
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 914
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/util/Scanner;->matchValid:Z

    .line 917
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v4, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 918
    iget-boolean v3, p0, Ljava/util/Scanner;->skipped:Z

    if-nez v3, :cond_40

    .line 919
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->position:I

    iget-object v5, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 920
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 923
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v3

    if-eqz v3, :cond_36

    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_36

    .line 924
    iput-boolean v7, p0, Ljava/util/Scanner;->needInput:Z

    .line 925
    return-object v6

    .line 928
    :cond_36
    iput-boolean v7, p0, Ljava/util/Scanner;->skipped:Z

    .line 929
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 934
    :cond_40
    iget v3, p0, Ljava/util/Scanner;->position:I

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    if-ne v3, v4, :cond_52

    .line 935
    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v3, :cond_4f

    .line 936
    return-object v6

    .line 937
    :cond_4f
    iput-boolean v7, p0, Ljava/util/Scanner;->needInput:Z

    .line 938
    return-object v6

    .line 947
    :cond_52
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->position:I

    iget-object v5, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 948
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 949
    .local v0, "foundNextDelim":Z
    if-eqz v0, :cond_77

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iget v4, p0, Ljava/util/Scanner;->position:I

    if-ne v3, v4, :cond_77

    .line 953
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 955
    :cond_77
    if-eqz v0, :cond_b8

    .line 962
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->requireEnd()Z

    move-result v3

    if-eqz v3, :cond_8a

    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8a

    .line 963
    iput-boolean v7, p0, Ljava/util/Scanner;->needInput:Z

    .line 964
    return-object v6

    .line 966
    :cond_8a
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 968
    .local v2, "tokenEnd":I
    if-nez p1, :cond_94

    .line 970
    sget-object p1, Ljava/util/Scanner;->FIND_ANY_PATTERN:Ljava/util/regex/Pattern;

    .line 973
    :cond_94
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 974
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->position:I

    invoke-virtual {v3, v4, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 975
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 976
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 977
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 978
    return-object v1

    .line 980
    .end local v1    # "s":Ljava/lang/String;
    :cond_b7
    return-object v6

    .line 986
    .end local v2    # "tokenEnd":I
    :cond_b8
    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v3, :cond_ea

    .line 987
    if-nez p1, :cond_c0

    .line 989
    sget-object p1, Ljava/util/Scanner;->FIND_ANY_PATTERN:Ljava/util/regex/Pattern;

    .line 992
    :cond_c0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 993
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->position:I

    iget-object v5, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 994
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_e9

    .line 995
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 996
    .restart local v1    # "s":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 997
    return-object v1

    .line 1000
    .end local v1    # "s":Ljava/lang/String;
    :cond_e9
    return-object v6

    .line 1005
    :cond_ea
    iput-boolean v7, p0, Ljava/util/Scanner;->needInput:Z

    .line 1006
    return-object v6
.end method

.method private hasTokenInBuffer()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 883
    iput-boolean v3, p0, Ljava/util/Scanner;->matchValid:Z

    .line 884
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v1, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 885
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v1, p0, Ljava/util/Scanner;->position:I

    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 888
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 889
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 892
    :cond_27
    iget v0, p0, Ljava/util/Scanner;->position:I

    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    if-ne v0, v1, :cond_32

    .line 893
    return v3

    .line 895
    :cond_32
    const/4 v0, 0x1

    return v0
.end method

.method private integerPattern()Ljava/util/regex/Pattern;
    .registers 3

    .prologue
    .line 447
    iget-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_12

    .line 448
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-direct {p0}, Ljava/util/Scanner;->buildIntegerPatternString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    .line 450
    :cond_12
    iget-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static linePattern()Ljava/util/regex/Pattern;
    .registers 2

    .prologue
    .line 470
    sget-object v0, Ljava/util/Scanner;->linePattern:Ljava/util/regex/Pattern;

    .line 471
    .local v0, "lp":Ljava/util/regex/Pattern;
    if-nez v0, :cond_d

    .line 472
    const-string/jumbo v1, ".*(\r\n|[\n\r\u2028\u2029\u0085])|.+$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->linePattern:Ljava/util/regex/Pattern;

    .line 473
    :cond_d
    return-object v0
.end method

.method private static makeReadable(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Readable;
    .registers 3
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 603
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static makeReadable(Ljava/nio/channels/ReadableByteChannel;)Ljava/lang/Readable;
    .registers 2
    .param p0, "source"    # Ljava/nio/channels/ReadableByteChannel;

    .prologue
    .line 728
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;

    move-result-object v0

    return-object v0
.end method

.method private static makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;
    .registers 3
    .param p0, "source"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "dec"    # Ljava/nio/charset/CharsetDecoder;

    .prologue
    .line 658
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method private makeSpace()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 838
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 839
    iget v3, p0, Ljava/util/Scanner;->savedScannerPosition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_25

    .line 840
    iget v2, p0, Ljava/util/Scanner;->position:I

    .line 841
    .local v2, "offset":I
    :goto_b
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 843
    if-lez v2, :cond_28

    .line 844
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    .line 845
    invoke-direct {p0, v2}, Ljava/util/Scanner;->translateSavedIndexes(I)V

    .line 846
    iget v3, p0, Ljava/util/Scanner;->position:I

    sub-int/2addr v3, v2

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 847
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 848
    return v5

    .line 840
    .end local v2    # "offset":I
    :cond_25
    iget v2, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .restart local v2    # "offset":I
    goto :goto_b

    .line 851
    :cond_28
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->capacity()I

    move-result v3

    mul-int/lit8 v1, v3, 0x2

    .line 852
    .local v1, "newSize":I
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 853
    .local v0, "newBuf":Ljava/nio/CharBuffer;
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    .line 854
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 855
    invoke-direct {p0, v2}, Ljava/util/Scanner;->translateSavedIndexes(I)V

    .line 856
    iget v3, p0, Ljava/util/Scanner;->position:I

    sub-int/2addr v3, v2

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 857
    iput-object v0, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    .line 858
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 859
    return v5
.end method

.method private matchPatternInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 7
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1058
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1059
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1060
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v1, p0, Ljava/util/Scanner;->position:I

    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1061
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1062
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_30

    .line 1064
    iput-boolean v4, p0, Ljava/util/Scanner;->needInput:Z

    .line 1065
    return-object v3

    .line 1067
    :cond_30
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 1068
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1071
    :cond_3f
    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v0, :cond_44

    .line 1072
    return-object v3

    .line 1075
    :cond_44
    iput-boolean v4, p0, Ljava/util/Scanner;->needInput:Z

    .line 1076
    return-object v3
.end method

.method private processFloatToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 2258
    iget-object v9, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    const-string/jumbo v10, ""

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2259
    .local v7, "result":Ljava/lang/String;
    iget-object v9, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    const-string/jumbo v10, "\\."

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1d

    .line 2260
    iget-object v9, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    const-string/jumbo v10, "."

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2261
    :cond_1d
    const/4 v3, 0x0

    .line 2262
    .local v3, "isNegative":Z
    iget-object v9, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    .line 2263
    .local v6, "preLen":I
    if-lez v6, :cond_33

    iget-object v9, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 2264
    const/4 v3, 0x1

    .line 2265
    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 2267
    :cond_33
    iget-object v9, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    .line 2268
    .local v8, "sufLen":I
    if-lez v8, :cond_51

    iget-object v9, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_51

    .line 2269
    const/4 v3, 0x1

    .line 2270
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v8

    .line 2271
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    .line 2270
    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2273
    :cond_51
    iget-object v9, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 2274
    const-string/jumbo v7, "NaN"

    .line 2275
    :cond_5c
    iget-object v9, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_67

    .line 2276
    const-string/jumbo v7, "Infinity"

    .line 2278
    :cond_67
    const-string/jumbo v9, "\u221e"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_73

    .line 2279
    const-string/jumbo v7, "Infinity"

    .line 2280
    :cond_73
    if-eqz v3, :cond_89

    .line 2281
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2284
    :cond_89
    sget-object v9, Ljava/util/Scanner;->NON_ASCII_DIGIT:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2285
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_c6

    .line 2286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2287
    .local v2, "inASCII":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v1, v9, :cond_c2

    .line 2288
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2289
    .local v5, "nextChar":C
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_be

    .line 2290
    const/16 v9, 0xa

    invoke-static {v5, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 2291
    .local v0, "d":I
    const/4 v9, -0x1

    if-eq v0, v9, :cond_ba

    .line 2292
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2287
    .end local v0    # "d":I
    :goto_b7
    add-int/lit8 v1, v1, 0x1

    goto :goto_9b

    .line 2294
    .restart local v0    # "d":I
    :cond_ba
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b7

    .line 2296
    .end local v0    # "d":I
    :cond_be
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b7

    .line 2299
    .end local v5    # "nextChar":C
    :cond_c2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2302
    .end local v1    # "i":I
    .end local v2    # "inASCII":Ljava/lang/StringBuilder;
    :cond_c6
    return-object v7
.end method

.method private processIntegerToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 2059
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2060
    .local v2, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2061
    .local v0, "isNegative":Z
    iget-object v4, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 2062
    .local v1, "preLen":I
    if-lez v1, :cond_33

    iget-object v4, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 2063
    const/4 v0, 0x1

    .line 2064
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2066
    :cond_33
    iget-object v4, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 2067
    .local v3, "sufLen":I
    if-lez v3, :cond_51

    iget-object v4, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 2068
    const/4 v0, 0x1

    .line 2069
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    .line 2070
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 2069
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2072
    :cond_51
    if-eqz v0, :cond_67

    .line 2073
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2074
    :cond_67
    return-object v2
.end method

.method private readInput()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 803
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->capacity()I

    move-result v4

    if-ne v3, v4, :cond_12

    .line 804
    invoke-direct {p0}, Ljava/util/Scanner;->makeSpace()Z

    .line 807
    :cond_12
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    .line 808
    .local v2, "p":I
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 809
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 811
    const/4 v1, 0x0

    .line 813
    .local v1, "n":I
    :try_start_2f
    iget-object v3, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-interface {v3, v4}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_36} :catch_5b

    move-result v1

    .line 819
    :goto_37
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3f

    .line 820
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    .line 821
    iput-boolean v5, p0, Ljava/util/Scanner;->needInput:Z

    .line 824
    :cond_3f
    if-lez v1, :cond_43

    .line 825
    iput-boolean v5, p0, Ljava/util/Scanner;->needInput:Z

    .line 828
    :cond_43
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 829
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 832
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 833
    return-void

    .line 814
    :catch_5b
    move-exception v0

    .line 815
    .local v0, "ioe":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Scanner;->lastException:Ljava/io/IOException;

    .line 816
    const/4 v1, -0x1

    goto :goto_37
.end method

.method private revertState()V
    .registers 2

    .prologue
    .line 754
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 755
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .line 756
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    .line 757
    return-void
.end method

.method private revertState(Z)Z
    .registers 3
    .param p1, "b"    # Z

    .prologue
    .line 760
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 761
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .line 762
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    .line 763
    return p1
.end method

.method private saveState()V
    .registers 2

    .prologue
    .line 750
    iget v0, p0, Ljava/util/Scanner;->position:I

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .line 751
    return-void
.end method

.method private static separatorPattern()Ljava/util/regex/Pattern;
    .registers 2

    .prologue
    .line 463
    sget-object v0, Ljava/util/Scanner;->separatorPattern:Ljava/util/regex/Pattern;

    .line 464
    .local v0, "sp":Ljava/util/regex/Pattern;
    if-nez v0, :cond_d

    .line 465
    const-string/jumbo v1, "\r\n|[\n\r\u2028\u2029\u0085]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->separatorPattern:Ljava/util/regex/Pattern;

    .line 466
    :cond_d
    return-object v0
.end method

.method private setRadix(I)V
    .registers 5
    .param p1, "radix"    # I

    .prologue
    .line 1278
    const/16 v0, 0x24

    if-le p1, v0, :cond_1e

    .line 1279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "radix == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1282
    :cond_1e
    iget v0, p0, Ljava/util/Scanner;->radix:I

    if-eq v0, p1, :cond_27

    .line 1284
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    .line 1285
    iput p1, p0, Ljava/util/Scanner;->radix:I

    .line 1287
    :cond_27
    return-void
.end method

.method private throwFor()V
    .registers 3

    .prologue
    .line 872
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    .line 873
    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v0, :cond_17

    iget v0, p0, Ljava/util/Scanner;->position:I

    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 874
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 876
    :cond_17
    new-instance v0, Ljava/util/InputMismatchException;

    invoke-direct {v0}, Ljava/util/InputMismatchException;-><init>()V

    throw v0
.end method

.method private static toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .param p0, "csn"    # Ljava/lang/String;

    .prologue
    .line 593
    const-string/jumbo v1, "charsetName"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 595
    :try_start_6
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_9
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_6 .. :try_end_9} :catch_b
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    .line 596
    :catch_b
    move-exception v0

    .line 598
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static toDecoder(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;
    .registers 4
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 646
    if-nez p0, :cond_b

    .line 647
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "charsetName == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 650
    :cond_b
    :try_start_b
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;
    :try_end_12
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_b .. :try_end_12} :catch_14
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_b .. :try_end_12} :catch_14

    move-result-object v1

    return-object v1

    .line 651
    :catch_14
    move-exception v0

    .line 652
    .local v0, "unused":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private translateSavedIndexes(I)V
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 865
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 866
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    sub-int/2addr v0, p1

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .line 867
    :cond_a
    return-void
.end method

.method private useTypeCache()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 794
    iget-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v0, :cond_e

    .line 795
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Scanner closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 796
    :cond_e
    iget v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 797
    iput-object v1, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 798
    iput-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 799
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1101
    iget-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v1, :cond_6

    .line 1102
    return-void

    .line 1103
    :cond_6
    iget-object v1, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_13

    .line 1105
    :try_start_c
    iget-object v1, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_1b

    .line 1110
    :cond_13
    :goto_13
    iput-boolean v2, p0, Ljava/util/Scanner;->sourceClosed:Z

    .line 1111
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    .line 1112
    iput-boolean v2, p0, Ljava/util/Scanner;->closed:Z

    .line 1113
    return-void

    .line 1106
    :catch_1b
    move-exception v0

    .line 1107
    .local v0, "ioe":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Scanner;->lastException:Ljava/io/IOException;

    goto :goto_13
.end method

.method public delimiter()Ljava/util/regex/Pattern;
    .registers 2

    .prologue
    .line 1133
    iget-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public findInLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1583
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 8
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1605
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1606
    if-nez p1, :cond_d

    .line 1607
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1608
    :cond_d
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1610
    const/4 v0, 0x0

    .line 1611
    .local v0, "endPosition":I
    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    .line 1613
    :goto_14
    invoke-static {}, Ljava/util/Scanner;->separatorPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Ljava/util/Scanner;->findPatternInBuffer(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v2

    .line 1614
    .local v2, "token":Ljava/lang/String;
    if-eqz v2, :cond_2e

    .line 1615
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    .line 1625
    :goto_24
    invoke-direct {p0}, Ljava/util/Scanner;->revertState()V

    .line 1626
    iget v3, p0, Ljava/util/Scanner;->position:I

    sub-int v1, v0, v3

    .line 1630
    .local v1, "horizonForLine":I
    if-nez v1, :cond_3d

    .line 1631
    return-object v4

    .line 1618
    .end local v1    # "horizonForLine":I
    :cond_2e
    iget-boolean v3, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v3, :cond_36

    .line 1619
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_14

    .line 1621
    :cond_36
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    goto :goto_24

    .line 1633
    .restart local v1    # "horizonForLine":I
    :cond_3d
    invoke-virtual {p0, p1, v1}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "horizon"    # I

    .prologue
    .line 1652
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0, p2}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;
    .registers 6
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "horizon"    # I

    .prologue
    const/4 v2, 0x0

    .line 1687
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1688
    if-nez p1, :cond_c

    .line 1689
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1690
    :cond_c
    if-gez p2, :cond_17

    .line 1691
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "horizon < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1692
    :cond_17
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1696
    :goto_1a
    invoke-direct {p0, p1, p2}, Ljava/util/Scanner;->findPatternInBuffer(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    .line 1697
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_24

    .line 1698
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1699
    return-object v0

    .line 1701
    :cond_24
    iget-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v1, :cond_2c

    .line 1702
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_1a

    .line 1706
    :cond_2c
    return-object v2
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 1351
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1352
    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    .line 1353
    :goto_6
    iget-boolean v1, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-nez v1, :cond_1a

    .line 1354
    invoke-direct {p0}, Ljava/util/Scanner;->hasTokenInBuffer()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1355
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/Scanner;->revertState(Z)Z

    move-result v1

    return v1

    .line 1356
    :cond_16
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_6

    .line 1358
    :cond_1a
    invoke-direct {p0}, Ljava/util/Scanner;->hasTokenInBuffer()Z

    move-result v0

    .line 1359
    .local v0, "result":Z
    invoke-direct {p0, v0}, Ljava/util/Scanner;->revertState(Z)Z

    move-result v1

    return v1
.end method

.method public hasNext(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1417
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNext(Ljava/util/regex/Pattern;)Z
    .registers 4
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1450
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1451
    if-nez p1, :cond_d

    .line 1452
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1453
    :cond_d
    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 1454
    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    .line 1457
    :goto_12
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1458
    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1459
    invoke-direct {p0}, Ljava/util/Scanner;->cacheResult()V

    .line 1460
    invoke-direct {p0, v1}, Ljava/util/Scanner;->revertState(Z)Z

    move-result v0

    return v0

    .line 1462
    :cond_22
    iget-boolean v0, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v0, :cond_2a

    .line 1463
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_12

    .line 1465
    :cond_2a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/Scanner;->revertState(Z)Z

    move-result v0

    return v0
.end method

.method public hasNextBigDecimal()Z
    .registers 5

    .prologue
    .line 2557
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Ljava/util/Scanner;->setRadix(I)V

    .line 2558
    invoke-direct {p0}, Ljava/util/Scanner;->decimalPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    .line 2559
    .local v1, "result":Z
    if-eqz v1, :cond_1c

    .line 2561
    :try_start_f
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2562
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1c} :catch_1d

    .line 2567
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_1c
    :goto_1c
    return v1

    .line 2563
    .restart local v1    # "result":Z
    :catch_1d
    move-exception v0

    .line 2564
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .local v1, "result":Z
    goto :goto_1c
.end method

.method public hasNextBigInteger()Z
    .registers 2

    .prologue
    .line 2453
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextBigInteger(I)Z

    move-result v0

    return v0
.end method

.method public hasNextBigInteger(I)Z
    .registers 7
    .param p1, "radix"    # I

    .prologue
    .line 2468
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2469
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    .line 2470
    .local v1, "result":Z
    if-eqz v1, :cond_24

    .line 2472
    :try_start_d
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_25

    .line 2473
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2475
    .local v2, "s":Ljava/lang/String;
    :goto_1d
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 2480
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_24
    :goto_24
    return v1

    .line 2474
    .restart local v1    # "result":Z
    :cond_25
    iget-object v2, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_27} :catch_28

    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_1d

    .line 2476
    .end local v2    # "s":Ljava/lang/String;
    :catch_28
    move-exception v0

    .line 2477
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .local v1, "result":Z
    goto :goto_24
.end method

.method public hasNextBoolean()Z
    .registers 2

    .prologue
    .line 1782
    invoke-static {}, Ljava/util/Scanner;->boolPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNextByte()Z
    .registers 2

    .prologue
    .line 1812
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextByte(I)Z

    move-result v0

    return v0
.end method

.method public hasNextByte(I)Z
    .registers 7
    .param p1, "radix"    # I

    .prologue
    .line 1826
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 1827
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    .line 1828
    .local v1, "result":Z
    if-eqz v1, :cond_27

    .line 1830
    :try_start_d
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28

    .line 1831
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1833
    .local v2, "s":Ljava/lang/String;
    :goto_1d
    invoke-static {v2, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 1838
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_27
    :goto_27
    return v1

    .line 1832
    .restart local v1    # "result":Z
    :cond_28
    iget-object v2, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_2a} :catch_2b

    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_1d

    .line 1834
    .end local v2    # "s":Ljava/lang/String;
    :catch_2b
    move-exception v0

    .line 1835
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .local v1, "result":Z
    goto :goto_27
.end method

.method public hasNextDouble()Z
    .registers 7

    .prologue
    .line 2382
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Ljava/util/Scanner;->setRadix(I)V

    .line 2383
    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    .line 2384
    .local v1, "result":Z
    if-eqz v1, :cond_1f

    .line 2386
    :try_start_f
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2387
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1f} :catch_20

    .line 2392
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_1f
    :goto_1f
    return v1

    .line 2388
    .restart local v1    # "result":Z
    :catch_20
    move-exception v0

    .line 2389
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .local v1, "result":Z
    goto :goto_1f
.end method

.method public hasNextFloat()Z
    .registers 5

    .prologue
    .line 2315
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Ljava/util/Scanner;->setRadix(I)V

    .line 2316
    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    .line 2317
    .local v1, "result":Z
    if-eqz v1, :cond_1f

    .line 2319
    :try_start_f
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2320
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1f} :catch_20

    .line 2325
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_1f
    :goto_1f
    return v1

    .line 2321
    .restart local v1    # "result":Z
    :catch_20
    move-exception v0

    .line 2322
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .local v1, "result":Z
    goto :goto_1f
.end method

.method public hasNextInt()Z
    .registers 2

    .prologue
    .line 2024
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextInt(I)Z

    move-result v0

    return v0
.end method

.method public hasNextInt(I)Z
    .registers 7
    .param p1, "radix"    # I

    .prologue
    .line 2038
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2039
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    .line 2040
    .local v1, "result":Z
    if-eqz v1, :cond_27

    .line 2042
    :try_start_d
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28

    .line 2043
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2045
    .local v2, "s":Ljava/lang/String;
    :goto_1d
    invoke-static {v2, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 2050
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_27
    :goto_27
    return v1

    .line 2044
    .restart local v1    # "result":Z
    :cond_28
    iget-object v2, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_2a} :catch_2b

    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_1d

    .line 2046
    .end local v2    # "s":Ljava/lang/String;
    :catch_2b
    move-exception v0

    .line 2047
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .local v1, "result":Z
    goto :goto_27
.end method

.method public hasNextLine()Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1515
    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    .line 1517
    invoke-static {}, Ljava/util/Scanner;->linePattern()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v2

    .line 1518
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_29

    .line 1519
    invoke-virtual {p0}, Ljava/util/Scanner;->match()Ljava/util/regex/MatchResult;

    move-result-object v1

    .line 1520
    .local v1, "mr":Ljava/util/regex/MatchResult;
    invoke-interface {v1, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1521
    .local v0, "lineSep":Ljava/lang/String;
    if-eqz v0, :cond_2f

    .line 1522
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 1523
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1522
    sub-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1524
    invoke-direct {p0, v2}, Ljava/util/Scanner;->cacheResult(Ljava/lang/String;)V

    .line 1530
    .end local v0    # "lineSep":Ljava/lang/String;
    .end local v1    # "mr":Ljava/util/regex/MatchResult;
    :cond_29
    :goto_29
    invoke-direct {p0}, Ljava/util/Scanner;->revertState()V

    .line 1531
    if-eqz v2, :cond_33

    :goto_2e
    return v3

    .line 1527
    .restart local v0    # "lineSep":Ljava/lang/String;
    .restart local v1    # "mr":Ljava/util/regex/MatchResult;
    :cond_2f
    invoke-direct {p0}, Ljava/util/Scanner;->cacheResult()V

    goto :goto_29

    .end local v0    # "lineSep":Ljava/lang/String;
    .end local v1    # "mr":Ljava/util/regex/MatchResult;
    :cond_33
    move v3, v4

    .line 1531
    goto :goto_2e
.end method

.method public hasNextLong()Z
    .registers 2

    .prologue
    .line 2154
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextLong(I)Z

    move-result v0

    return v0
.end method

.method public hasNextLong(I)Z
    .registers 8
    .param p1, "radix"    # I

    .prologue
    .line 2168
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2169
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    .line 2170
    .local v1, "result":Z
    if-eqz v1, :cond_27

    .line 2172
    :try_start_d
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28

    .line 2173
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2175
    .local v2, "s":Ljava/lang/String;
    :goto_1d
    invoke-static {v2, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 2180
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_27
    :goto_27
    return v1

    .line 2174
    .restart local v1    # "result":Z
    :cond_28
    iget-object v2, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_2a} :catch_2b

    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_1d

    .line 2176
    .end local v2    # "s":Ljava/lang/String;
    :catch_2b
    move-exception v0

    .line 2177
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .local v1, "result":Z
    goto :goto_27
.end method

.method public hasNextShort()Z
    .registers 2

    .prologue
    .line 1918
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextShort(I)Z

    move-result v0

    return v0
.end method

.method public hasNextShort(I)Z
    .registers 7
    .param p1, "radix"    # I

    .prologue
    .line 1932
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 1933
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v1

    .line 1934
    .local v1, "result":Z
    if-eqz v1, :cond_27

    .line 1936
    :try_start_d
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28

    .line 1937
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1939
    .local v2, "s":Ljava/lang/String;
    :goto_1d
    invoke-static {v2, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 1944
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_27
    :goto_27
    return v1

    .line 1938
    .restart local v1    # "result":Z
    :cond_28
    iget-object v2, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_2a} :catch_2b

    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_1d

    .line 1940
    .end local v2    # "s":Ljava/lang/String;
    :catch_2b
    move-exception v0

    .line 1941
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .local v1, "result":Z
    goto :goto_27
.end method

.method public ioException()Ljava/io/IOException;
    .registers 2

    .prologue
    .line 1123
    iget-object v0, p0, Ljava/util/Scanner;->lastException:Ljava/io/IOException;

    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 1176
    iget-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public match()Ljava/util/regex/MatchResult;
    .registers 3

    .prologue
    .line 1309
    iget-boolean v0, p0, Ljava/util/Scanner;->matchValid:Z

    if-nez v0, :cond_d

    .line 1310
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No match result available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1311
    :cond_d
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1362
    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1375
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1376
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1379
    :goto_7
    invoke-direct {p0, v2}, Ljava/util/Scanner;->getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 1380
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 1381
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1382
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Scanner;->skipped:Z

    .line 1383
    return-object v0

    .line 1385
    :cond_14
    iget-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v1, :cond_1c

    .line 1386
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_7

    .line 1388
    :cond_1c
    invoke-direct {p0}, Ljava/util/Scanner;->throwFor()V

    goto :goto_7
.end method

.method public next(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1435
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 4
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 1482
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1483
    if-nez p1, :cond_b

    .line 1484
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1487
    :cond_b
    iget-object v1, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    if-ne v1, p1, :cond_14

    .line 1488
    invoke-direct {p0}, Ljava/util/Scanner;->getCachedResult()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1489
    :cond_14
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1493
    :goto_17
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 1494
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_24

    .line 1495
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1496
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Scanner;->skipped:Z

    .line 1497
    return-object v0

    .line 1499
    :cond_24
    iget-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v1, :cond_2c

    .line 1500
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_17

    .line 1502
    :cond_2c
    invoke-direct {p0}, Ljava/util/Scanner;->throwFor()V

    goto :goto_17
.end method

.method public nextBigDecimal()Ljava/math/BigDecimal;
    .registers 6

    .prologue
    .line 2592
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v3, :cond_12

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v3, v3, Ljava/math/BigDecimal;

    if-eqz v3, :cond_12

    .line 2593
    iget-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v2, Ljava/math/BigDecimal;

    .line 2594
    .local v2, "val":Ljava/math/BigDecimal;
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2595
    return-object v2

    .line 2597
    .end local v2    # "val":Ljava/math/BigDecimal;
    :cond_12
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Ljava/util/Scanner;->setRadix(I)V

    .line 2598
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2601
    :try_start_1a
    invoke-direct {p0}, Ljava/util/Scanner;->decimalPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2602
    .local v1, "s":Ljava/lang/String;
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_2b} :catch_2c

    return-object v3

    .line 2603
    .end local v1    # "s":Ljava/lang/String;
    :catch_2c
    move-exception v0

    .line 2604
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 2605
    new-instance v3, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public nextBigInteger()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 2500
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public nextBigInteger(I)Ljava/math/BigInteger;
    .registers 7
    .param p1, "radix"    # I

    .prologue
    .line 2526
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v3, :cond_16

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v3, v3, Ljava/math/BigInteger;

    if-eqz v3, :cond_16

    .line 2527
    iget v3, p0, Ljava/util/Scanner;->radix:I

    if-ne v3, p1, :cond_16

    .line 2528
    iget-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v2, Ljava/math/BigInteger;

    .line 2529
    .local v2, "val":Ljava/math/BigInteger;
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2530
    return-object v2

    .line 2532
    .end local v2    # "val":Ljava/math/BigInteger;
    :cond_16
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2533
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2536
    :try_start_1c
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 2537
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_32

    .line 2538
    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2539
    :cond_32
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_37} :catch_38

    return-object v3

    .line 2540
    .end local v1    # "s":Ljava/lang/String;
    :catch_38
    move-exception v0

    .line 2541
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 2542
    new-instance v3, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public nextBoolean()Z
    .registers 2

    .prologue
    .line 1798
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1799
    invoke-static {}, Ljava/util/Scanner;->boolPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public nextByte()B
    .registers 2

    .prologue
    .line 1857
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextByte(I)B

    move-result v0

    return v0
.end method

.method public nextByte(I)B
    .registers 7
    .param p1, "radix"    # I

    .prologue
    .line 1888
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Byte;

    if-eqz v3, :cond_1a

    .line 1889
    iget v3, p0, Ljava/util/Scanner;->radix:I

    if-ne v3, p1, :cond_1a

    .line 1890
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 1891
    .local v2, "val":B
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 1892
    return v2

    .line 1894
    .end local v2    # "val":B
    :cond_1a
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 1895
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1898
    :try_start_20
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 1899
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_36

    .line 1900
    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1901
    :cond_36
    invoke-static {v1, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_39} :catch_3b

    move-result v3

    return v3

    .line 1902
    .end local v1    # "s":Ljava/lang/String;
    :catch_3b
    move-exception v0

    .line 1903
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 1904
    new-instance v3, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public nextDouble()D
    .registers 7

    .prologue
    .line 2424
    iget-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v1, :cond_16

    iget-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Double;

    if-eqz v1, :cond_16

    .line 2425
    iget-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 2426
    .local v2, "val":D
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2427
    return-wide v2

    .line 2429
    .end local v2    # "val":D
    :cond_16
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2430
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2433
    :try_start_1e
    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_2d} :catch_2f

    move-result-wide v4

    return-wide v4

    .line 2434
    :catch_2f
    move-exception v0

    .line 2435
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 2436
    new-instance v1, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextFloat()F
    .registers 5

    .prologue
    .line 2357
    iget-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v2, :cond_16

    iget-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Float;

    if-eqz v2, :cond_16

    .line 2358
    iget-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 2359
    .local v1, "val":F
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2360
    return v1

    .line 2362
    .end local v1    # "val":F
    :cond_16
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Ljava/util/Scanner;->setRadix(I)V

    .line 2363
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2365
    :try_start_1e
    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_2d} :catch_2f

    move-result v2

    return v2

    .line 2366
    :catch_2f
    move-exception v0

    .line 2367
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iput v2, p0, Ljava/util/Scanner;->position:I

    .line 2368
    new-instance v2, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public nextInt()I
    .registers 2

    .prologue
    .line 2093
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .registers 7
    .param p1, "radix"    # I

    .prologue
    .line 2124
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1a

    .line 2125
    iget v3, p0, Ljava/util/Scanner;->radix:I

    if-ne v3, p1, :cond_1a

    .line 2126
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2127
    .local v2, "val":I
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2128
    return v2

    .line 2130
    .end local v2    # "val":I
    :cond_1a
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2131
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2134
    :try_start_20
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 2135
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_36

    .line 2136
    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2137
    :cond_36
    invoke-static {v1, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_39} :catch_3b

    move-result v3

    return v3

    .line 2138
    .end local v1    # "s":Ljava/lang/String;
    :catch_3b
    move-exception v0

    .line 2139
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 2140
    new-instance v3, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public nextLine()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1551
    iget-object v3, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    invoke-static {}, Ljava/util/Scanner;->linePattern()Ljava/util/regex/Pattern;

    move-result-object v4

    if-ne v3, v4, :cond_e

    .line 1552
    invoke-direct {p0}, Ljava/util/Scanner;->getCachedResult()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1553
    :cond_e
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1555
    sget-object v3, Ljava/util/Scanner;->linePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v3, v5}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v2

    .line 1556
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_22

    .line 1557
    new-instance v3, Ljava/util/NoSuchElementException;

    const-string/jumbo v4, "No line found"

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1558
    :cond_22
    invoke-virtual {p0}, Ljava/util/Scanner;->match()Ljava/util/regex/MatchResult;

    move-result-object v1

    .line 1559
    .local v1, "mr":Ljava/util/regex/MatchResult;
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1560
    .local v0, "lineSep":Ljava/lang/String;
    if-eqz v0, :cond_3a

    .line 1561
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1562
    :cond_3a
    if-nez v2, :cond_42

    .line 1563
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 1565
    :cond_42
    return-object v2
.end method

.method public nextLong()J
    .registers 3

    .prologue
    .line 2199
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(I)J
    .registers 8
    .param p1, "radix"    # I

    .prologue
    .line 2230
    iget-object v4, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_1a

    .line 2231
    iget v4, p0, Ljava/util/Scanner;->radix:I

    if-ne v4, p1, :cond_1a

    .line 2232
    iget-object v4, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2233
    .local v2, "val":J
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2234
    return-wide v2

    .line 2236
    .end local v2    # "val":J
    :cond_1a
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2237
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2239
    :try_start_20
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 2240
    .local v1, "s":Ljava/lang/String;
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v5, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_36

    .line 2241
    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2242
    :cond_36
    invoke-static {v1, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_39} :catch_3b

    move-result-wide v4

    return-wide v4

    .line 2243
    .end local v1    # "s":Ljava/lang/String;
    :catch_3b
    move-exception v0

    .line 2244
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    iput v4, p0, Ljava/util/Scanner;->position:I

    .line 2245
    new-instance v4, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public nextShort()S
    .registers 2

    .prologue
    .line 1963
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextShort(I)S

    move-result v0

    return v0
.end method

.method public nextShort(I)S
    .registers 7
    .param p1, "radix"    # I

    .prologue
    .line 1994
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Short;

    if-eqz v3, :cond_1a

    .line 1995
    iget v3, p0, Ljava/util/Scanner;->radix:I

    if-ne v3, p1, :cond_1a

    .line 1996
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v2

    .line 1997
    .local v2, "val":S
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 1998
    return v2

    .line 2000
    .end local v2    # "val":S
    :cond_1a
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2001
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2004
    :try_start_20
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 2005
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_36

    .line 2006
    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2007
    :cond_36
    invoke-static {v1, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_39} :catch_3b

    move-result v3

    return v3

    .line 2008
    .end local v1    # "s":Ljava/lang/String;
    :catch_3b
    move-exception v0

    .line 2009
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 2010
    new-instance v3, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public radix()I
    .registers 2

    .prologue
    .line 1241
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    return v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 1400
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()Ljava/util/Scanner;
    .registers 2

    .prologue
    .line 2631
    sget-object v0, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    .line 2632
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useLocale(Ljava/util/Locale;)Ljava/util/Scanner;

    .line 2633
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useRadix(I)Ljava/util/Scanner;

    .line 2634
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2635
    return-object p0
.end method

.method public skip(Ljava/lang/String;)Ljava/util/Scanner;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1766
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;

    move-result-object v0

    return-object v0
.end method

.method public skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .registers 4
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 1733
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1734
    if-nez p1, :cond_b

    .line 1735
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1736
    :cond_b
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1740
    :goto_e
    invoke-direct {p0, p1}, Ljava/util/Scanner;->matchPatternInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 1741
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_20

    .line 1742
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1743
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 1744
    return-object p0

    .line 1746
    :cond_20
    iget-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v1, :cond_28

    .line 1747
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_e

    .line 1749
    :cond_28
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1323
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "java.util.Scanner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    const-string/jumbo v1, "[delimiters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    const-string/jumbo v1, "[position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/Scanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    const-string/jumbo v1, "[match valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/util/Scanner;->matchValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    const-string/jumbo v1, "[need input="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/util/Scanner;->needInput:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    const-string/jumbo v1, "[source closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/util/Scanner;->sourceClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    const-string/jumbo v1, "[skipped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/util/Scanner;->skipped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    const-string/jumbo v1, "[group separator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    const-string/jumbo v1, "[decimal separator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    const-string/jumbo v1, "[positive prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    const-string/jumbo v1, "[negative prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    const-string/jumbo v1, "[positive suffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    const-string/jumbo v1, "[negative suffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    const-string/jumbo v1, "[NaN string="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    const-string/jumbo v1, "[infinity string="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1162
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    .line 1163
    return-object p0
.end method

.method public useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .registers 2
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 1143
    iput-object p1, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    .line 1144
    return-object p0
.end method

.method public useLocale(Ljava/util/Locale;)Ljava/util/Scanner;
    .registers 7
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v4, 0x0

    .line 1193
    iget-object v2, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1194
    return-object p0

    .line 1196
    :cond_a
    iput-object p1, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 1198
    invoke-static {p1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    .line 1199
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-static {p1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    .line 1203
    .local v1, "dfs":Ljava/text/DecimalFormatSymbols;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    .line 1204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    .line 1208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\\E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    .line 1209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\\E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    .line 1210
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    .line 1211
    iget-object v2, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b9

    .line 1212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\\E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    .line 1213
    :cond_b9
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    .line 1214
    iget-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e6

    .line 1215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\\E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    .line 1216
    :cond_e6
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    .line 1217
    iget-object v2, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_113

    .line 1218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\\E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    .line 1219
    :cond_113
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    .line 1220
    iget-object v2, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_140

    .line 1221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\\E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    .line 1225
    :cond_140
    iput-object v4, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    .line 1226
    iput-object v4, p0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    .line 1228
    return-object p0
.end method

.method public useRadix(I)Ljava/util/Scanner;
    .registers 5
    .param p1, "radix"    # I

    .prologue
    .line 1263
    const/4 v0, 0x2

    if-lt p1, v0, :cond_7

    const/16 v0, 0x24

    if-le p1, v0, :cond_21

    .line 1264
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "radix:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1266
    :cond_21
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    if-ne v0, p1, :cond_26

    .line 1267
    return-object p0

    .line 1268
    :cond_26
    iput p1, p0, Ljava/util/Scanner;->defaultRadix:I

    .line 1270
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    .line 1271
    return-object p0
.end method
