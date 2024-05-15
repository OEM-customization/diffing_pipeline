.class public final Ljava/lang/System;
.super Ljava/lang/Object;
.source "System.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/System$PropertiesWithNonOverrideableDefaults;
    }
.end annotation


# static fields
.field private static final ARRAYCOPY_SHORT_BOOLEAN_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_BYTE_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_CHAR_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_DOUBLE_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_FLOAT_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_INT_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_LONG_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_SHORT_ARRAY_THRESHOLD:I = 0x20

.field private static final LOCK:Ljava/lang/Object;

.field private static volatile cons:Ljava/io/Console;

.field public static final err:Ljava/io/PrintStream;

.field public static final in:Ljava/io/InputStream;

.field private static justRanFinalization:Z

.field private static lineSeparator:Ljava/lang/String;

.field public static final out:Ljava/io/PrintStream;

.field private static props:Ljava/util/Properties;

.field private static runGC:Z

.field private static unchangeableProps:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 118
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    .line 201
    const/4 v3, 0x0

    sput-object v3, Ljava/lang/System;->cons:Ljava/io/Console;

    .line 1691
    invoke-static {}, Ljava/lang/System;->initUnchangeableSystemProperties()Ljava/util/Properties;

    move-result-object v3

    sput-object v3, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    .line 1692
    invoke-static {}, Ljava/lang/System;->initProperties()Ljava/util/Properties;

    move-result-object v3

    sput-object v3, Ljava/lang/System;->props:Ljava/util/Properties;

    .line 1693
    invoke-static {}, Ljava/lang/System;->addLegacyLocaleSystemProperties()V

    .line 1694
    invoke-static {}, Lsun/misc/Version;->initSystemProperties()V

    .line 1699
    sget-object v3, Ljava/lang/System;->props:Ljava/util/Properties;

    const-string/jumbo v4, "line.separator"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    .line 1701
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v3, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1702
    .local v1, "fdIn":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1703
    .local v2, "fdOut":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v3, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1706
    .local v0, "fdErr":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v4, 0x80

    invoke-direct {v3, v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    sput-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 1708
    sget-object v3, Ljava/lang/System;->props:Ljava/util/Properties;

    const-string/jumbo v4, "sun.stdout.encoding"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->newPrintStream(Ljava/io/FileOutputStream;Ljava/lang/String;)Ljava/io/PrintStream;

    move-result-object v3

    sput-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1709
    sget-object v3, Ljava/lang/System;->props:Ljava/util/Properties;

    const-string/jumbo v4, "sun.stderr.encoding"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/System;->newPrintStream(Ljava/io/FileOutputStream;Ljava/lang/String;)Ljava/io/PrintStream;

    move-result-object v3

    sput-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 1715
    invoke-static {}, Lsun/misc/VM;->initializeOSEnvironment()V

    .line 1721
    invoke-static {}, Lsun/misc/VM;->booted()V

    .line 61
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method private static addLegacyLocaleSystemProperties()V
    .registers 6

    .prologue
    .line 1072
    const-string/jumbo v4, "user.locale"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1073
    .local v2, "locale":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_33

    .line 1074
    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 1075
    .local v0, "l":Ljava/util/Locale;
    const-string/jumbo v4, "user.language"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const-string/jumbo v4, "user.region"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const-string/jumbo v4, "user.variant"

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    .end local v0    # "l":Ljava/util/Locale;
    :cond_32
    :goto_32
    return-void

    .line 1083
    :cond_33
    const-string/jumbo v4, "user.language"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1084
    .local v1, "language":Ljava/lang/String;
    const-string/jumbo v4, "user.region"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1086
    .local v3, "region":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 1087
    const-string/jumbo v4, "user.language"

    const-string/jumbo v5, "en"

    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :cond_56
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1091
    const-string/jumbo v4, "user.region"

    const-string/jumbo v5, "US"

    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method public static native arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static arraycopy([BI[BII)V
    .registers 9
    .param p0, "src"    # [B
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [B
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 513
    if-nez p0, :cond_b

    .line 514
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 516
    :cond_b
    if-nez p2, :cond_16

    .line 517
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 519
    :cond_16
    if-ltz p1, :cond_1a

    if-gez p3, :cond_62

    .line 521
    :cond_1a
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 523
    const-string/jumbo v3, " dst.length="

    .line 522
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 523
    array-length v3, p2

    .line 522
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 523
    const-string/jumbo v3, " dstPos="

    .line 522
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 523
    const-string/jumbo v3, " length="

    .line 522
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 521
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 519
    :cond_62
    if-ltz p4, :cond_1a

    .line 520
    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_1a

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_1a

    .line 525
    const/16 v1, 0x20

    if-gt p4, v1, :cond_95

    .line 527
    if-ne p0, p2, :cond_87

    if-ge p1, p3, :cond_87

    add-int v1, p1, p4

    if-ge p3, v1, :cond_87

    .line 531
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_7a
    if-ltz v0, :cond_98

    .line 532
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    .line 531
    add-int/lit8 v0, v0, -0x1

    goto :goto_7a

    .line 536
    .end local v0    # "i":I
    :cond_87
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_88
    if-ge v0, p4, :cond_98

    .line 537
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    .line 542
    .end local v0    # "i":I
    :cond_95
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyByteUnchecked([BI[BII)V

    .line 544
    :cond_98
    return-void
.end method

.method public static arraycopy([CI[CII)V
    .registers 9
    .param p0, "src"    # [C
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [C
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 459
    if-nez p0, :cond_b

    .line 460
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    :cond_b
    if-nez p2, :cond_16

    .line 463
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_16
    if-ltz p1, :cond_1a

    if-gez p3, :cond_62

    .line 467
    :cond_1a
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 469
    const-string/jumbo v3, " dst.length="

    .line 468
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 469
    array-length v3, p2

    .line 468
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 469
    const-string/jumbo v3, " dstPos="

    .line 468
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 469
    const-string/jumbo v3, " length="

    .line 468
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_62
    if-ltz p4, :cond_1a

    .line 466
    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_1a

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_1a

    .line 471
    const/16 v1, 0x20

    if-gt p4, v1, :cond_95

    .line 473
    if-ne p0, p2, :cond_87

    if-ge p1, p3, :cond_87

    add-int v1, p1, p4

    if-ge p3, v1, :cond_87

    .line 477
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_7a
    if-ltz v0, :cond_98

    .line 478
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-char v2, p0, v2

    aput-char v2, p2, v1

    .line 477
    add-int/lit8 v0, v0, -0x1

    goto :goto_7a

    .line 482
    .end local v0    # "i":I
    :cond_87
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_88
    if-ge v0, p4, :cond_98

    .line 483
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-char v2, p0, v2

    aput-char v2, p2, v1

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    .line 488
    .end local v0    # "i":I
    :cond_95
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyCharUnchecked([CI[CII)V

    .line 490
    :cond_98
    return-void
.end method

.method public static arraycopy([DI[DII)V
    .registers 9
    .param p0, "src"    # [D
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 783
    if-nez p0, :cond_b

    .line 784
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 786
    :cond_b
    if-nez p2, :cond_16

    .line 787
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 789
    :cond_16
    if-ltz p1, :cond_1a

    if-gez p3, :cond_62

    .line 791
    :cond_1a
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 793
    const-string/jumbo v3, " dst.length="

    .line 792
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 793
    array-length v3, p2

    .line 792
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 793
    const-string/jumbo v3, " dstPos="

    .line 792
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 793
    const-string/jumbo v3, " length="

    .line 792
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 791
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 789
    :cond_62
    if-ltz p4, :cond_1a

    .line 790
    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_1a

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_1a

    .line 795
    const/16 v1, 0x20

    if-gt p4, v1, :cond_95

    .line 797
    if-ne p0, p2, :cond_87

    if-ge p1, p3, :cond_87

    add-int v1, p1, p4

    if-ge p3, v1, :cond_87

    .line 801
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_7a
    if-ltz v0, :cond_98

    .line 802
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 801
    add-int/lit8 v0, v0, -0x1

    goto :goto_7a

    .line 806
    .end local v0    # "i":I
    :cond_87
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_88
    if-ge v0, p4, :cond_98

    .line 807
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 806
    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    .line 812
    .end local v0    # "i":I
    :cond_95
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyDoubleUnchecked([DI[DII)V

    .line 814
    :cond_98
    return-void
.end method

.method public static arraycopy([FI[FII)V
    .registers 9
    .param p0, "src"    # [F
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 729
    if-nez p0, :cond_b

    .line 730
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 732
    :cond_b
    if-nez p2, :cond_16

    .line 733
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 735
    :cond_16
    if-ltz p1, :cond_1a

    if-gez p3, :cond_62

    .line 737
    :cond_1a
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 739
    const-string/jumbo v3, " dst.length="

    .line 738
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 739
    array-length v3, p2

    .line 738
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 739
    const-string/jumbo v3, " dstPos="

    .line 738
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 739
    const-string/jumbo v3, " length="

    .line 738
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 737
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 735
    :cond_62
    if-ltz p4, :cond_1a

    .line 736
    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_1a

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_1a

    .line 741
    const/16 v1, 0x20

    if-gt p4, v1, :cond_95

    .line 743
    if-ne p0, p2, :cond_87

    if-ge p1, p3, :cond_87

    add-int v1, p1, p4

    if-ge p3, v1, :cond_87

    .line 747
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_7a
    if-ltz v0, :cond_98

    .line 748
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 747
    add-int/lit8 v0, v0, -0x1

    goto :goto_7a

    .line 752
    .end local v0    # "i":I
    :cond_87
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_88
    if-ge v0, p4, :cond_98

    .line 753
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 752
    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    .line 758
    .end local v0    # "i":I
    :cond_95
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyFloatUnchecked([FI[FII)V

    .line 760
    :cond_98
    return-void
.end method

.method public static arraycopy([II[III)V
    .registers 9
    .param p0, "src"    # [I
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [I
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 621
    if-nez p0, :cond_b

    .line 622
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 624
    :cond_b
    if-nez p2, :cond_16

    .line 625
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 627
    :cond_16
    if-ltz p1, :cond_1a

    if-gez p3, :cond_62

    .line 629
    :cond_1a
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 631
    const-string/jumbo v3, " dst.length="

    .line 630
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 631
    array-length v3, p2

    .line 630
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 631
    const-string/jumbo v3, " dstPos="

    .line 630
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 631
    const-string/jumbo v3, " length="

    .line 630
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 629
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 627
    :cond_62
    if-ltz p4, :cond_1a

    .line 628
    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_1a

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_1a

    .line 633
    const/16 v1, 0x20

    if-gt p4, v1, :cond_95

    .line 635
    if-ne p0, p2, :cond_87

    if-ge p1, p3, :cond_87

    add-int v1, p1, p4

    if-ge p3, v1, :cond_87

    .line 639
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_7a
    if-ltz v0, :cond_98

    .line 640
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 639
    add-int/lit8 v0, v0, -0x1

    goto :goto_7a

    .line 644
    .end local v0    # "i":I
    :cond_87
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_88
    if-ge v0, p4, :cond_98

    .line 645
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    .line 650
    .end local v0    # "i":I
    :cond_95
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyIntUnchecked([II[III)V

    .line 652
    :cond_98
    return-void
.end method

.method public static arraycopy([JI[JII)V
    .registers 9
    .param p0, "src"    # [J
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [J
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 675
    if-nez p0, :cond_b

    .line 676
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 678
    :cond_b
    if-nez p2, :cond_16

    .line 679
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 681
    :cond_16
    if-ltz p1, :cond_1a

    if-gez p3, :cond_62

    .line 683
    :cond_1a
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 685
    const-string/jumbo v3, " dst.length="

    .line 684
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 685
    array-length v3, p2

    .line 684
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 685
    const-string/jumbo v3, " dstPos="

    .line 684
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 685
    const-string/jumbo v3, " length="

    .line 684
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 683
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 681
    :cond_62
    if-ltz p4, :cond_1a

    .line 682
    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_1a

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_1a

    .line 687
    const/16 v1, 0x20

    if-gt p4, v1, :cond_95

    .line 689
    if-ne p0, p2, :cond_87

    if-ge p1, p3, :cond_87

    add-int v1, p1, p4

    if-ge p3, v1, :cond_87

    .line 693
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_7a
    if-ltz v0, :cond_98

    .line 694
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 693
    add-int/lit8 v0, v0, -0x1

    goto :goto_7a

    .line 698
    .end local v0    # "i":I
    :cond_87
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_88
    if-ge v0, p4, :cond_98

    .line 699
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    .line 704
    .end local v0    # "i":I
    :cond_95
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyLongUnchecked([JI[JII)V

    .line 706
    :cond_98
    return-void
.end method

.method public static arraycopy([SI[SII)V
    .registers 9
    .param p0, "src"    # [S
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 567
    if-nez p0, :cond_b

    .line 568
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 570
    :cond_b
    if-nez p2, :cond_16

    .line 571
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 573
    :cond_16
    if-ltz p1, :cond_1a

    if-gez p3, :cond_62

    .line 575
    :cond_1a
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 577
    const-string/jumbo v3, " dst.length="

    .line 576
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 577
    array-length v3, p2

    .line 576
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 577
    const-string/jumbo v3, " dstPos="

    .line 576
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 577
    const-string/jumbo v3, " length="

    .line 576
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 575
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 573
    :cond_62
    if-ltz p4, :cond_1a

    .line 574
    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_1a

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_1a

    .line 579
    const/16 v1, 0x20

    if-gt p4, v1, :cond_95

    .line 581
    if-ne p0, p2, :cond_87

    if-ge p1, p3, :cond_87

    add-int v1, p1, p4

    if-ge p3, v1, :cond_87

    .line 585
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_7a
    if-ltz v0, :cond_98

    .line 586
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-short v2, p0, v2

    aput-short v2, p2, v1

    .line 585
    add-int/lit8 v0, v0, -0x1

    goto :goto_7a

    .line 590
    .end local v0    # "i":I
    :cond_87
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_88
    if-ge v0, p4, :cond_98

    .line 591
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-short v2, p0, v2

    aput-short v2, p2, v1

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    .line 596
    .end local v0    # "i":I
    :cond_95
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyShortUnchecked([SI[SII)V

    .line 598
    :cond_98
    return-void
.end method

.method public static arraycopy([ZI[ZII)V
    .registers 9
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [Z
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 837
    if-nez p0, :cond_b

    .line 838
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 840
    :cond_b
    if-nez p2, :cond_16

    .line 841
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 843
    :cond_16
    if-ltz p1, :cond_1a

    if-gez p3, :cond_62

    .line 845
    :cond_1a
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 846
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "src.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " srcPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 847
    const-string/jumbo v3, " dst.length="

    .line 846
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 847
    array-length v3, p2

    .line 846
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 847
    const-string/jumbo v3, " dstPos="

    .line 846
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 847
    const-string/jumbo v3, " length="

    .line 846
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 845
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 843
    :cond_62
    if-ltz p4, :cond_1a

    .line 844
    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_1a

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_1a

    .line 849
    const/16 v1, 0x20

    if-gt p4, v1, :cond_95

    .line 851
    if-ne p0, p2, :cond_87

    if-ge p1, p3, :cond_87

    add-int v1, p1, p4

    if-ge p3, v1, :cond_87

    .line 855
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_7a
    if-ltz v0, :cond_98

    .line 856
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-boolean v2, p0, v2

    aput-boolean v2, p2, v1

    .line 855
    add-int/lit8 v0, v0, -0x1

    goto :goto_7a

    .line 860
    .end local v0    # "i":I
    :cond_87
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_88
    if-ge v0, p4, :cond_98

    .line 861
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-boolean v2, p0, v2

    aput-boolean v2, p2, v1

    .line 860
    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    .line 866
    .end local v0    # "i":I
    :cond_95
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyBooleanUnchecked([ZI[ZII)V

    .line 868
    :cond_98
    return-void
.end method

.method private static native arraycopyBooleanUnchecked([ZI[ZII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native arraycopyByteUnchecked([BI[BII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native arraycopyCharUnchecked([CI[CII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native arraycopyDoubleUnchecked([DI[DII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native arraycopyFloatUnchecked([FI[FII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native arraycopyIntUnchecked([II[III)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native arraycopyLongUnchecked([JI[JII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native arraycopyShortUnchecked([SI[SII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static checkKey(Ljava/lang/String;)V
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1351
    if-nez p0, :cond_b

    .line 1352
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1354
    :cond_b
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1357
    :cond_1d
    return-void
.end method

.method public static clearProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1341
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1342
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1343
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_14

    .line 1344
    new-instance v1, Ljava/util/PropertyPermission;

    const-string/jumbo v2, "write"

    invoke-direct {v1, p0, v2}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1347
    :cond_14
    sget-object v1, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static console()Ljava/io/Console;
    .registers 2

    .prologue
    .line 212
    sget-object v0, Ljava/lang/System;->cons:Ljava/io/Console;

    if-nez v0, :cond_12

    .line 213
    const-class v1, Ljava/lang/System;

    monitor-enter v1

    .line 214
    :try_start_7
    sget-object v0, Ljava/lang/System;->cons:Ljava/io/Console;

    if-nez v0, :cond_11

    .line 215
    invoke-static {}, Ljava/io/Console;->console()Ljava/io/Console;

    move-result-object v0

    sput-object v0, Ljava/lang/System;->cons:Ljava/io/Console;
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit v1

    .line 219
    :cond_12
    sget-object v0, Ljava/lang/System;->cons:Ljava/io/Console;

    return-object v0

    .line 213
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static native currentTimeMillis()J
.end method

.method public static exit(I)V
    .registers 2
    .param p0, "status"    # I

    .prologue
    .line 1484
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exit(I)V

    .line 1485
    return-void
.end method

.method public static gc()V
    .registers 3

    .prologue
    .line 1507
    sget-object v2, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 1508
    :try_start_3
    sget-boolean v0, Ljava/lang/System;->justRanFinalization:Z

    .line 1509
    .local v0, "shouldRunGC":Z
    if-eqz v0, :cond_15

    .line 1510
    const/4 v1, 0x0

    sput-boolean v1, Ljava/lang/System;->justRanFinalization:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_19

    :goto_a
    monitor-exit v2

    .line 1515
    if-eqz v0, :cond_14

    .line 1516
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 1518
    :cond_14
    return-void

    .line 1512
    :cond_15
    const/4 v1, 0x1

    :try_start_16
    sput-boolean v1, Ljava/lang/System;->runGC:Z
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_19

    goto :goto_a

    .line 1507
    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getProperties()Ljava/util/Properties;
    .registers 2

    .prologue
    .line 1158
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1159
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 1160
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkPropertiesAccess()V

    .line 1163
    :cond_9
    sget-object v1, Ljava/lang/System;->props:Ljava/util/Properties;

    return-object v1
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1228
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1229
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1230
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_c

    .line 1231
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkPropertyAccess(Ljava/lang/String;)V

    .line 1234
    :cond_c
    sget-object v1, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 1264
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1265
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1266
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_c

    .line 1267
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkPropertyAccess(Ljava/lang/String;)V

    .line 1270
    :cond_c
    sget-object v1, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v1, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSecurityManager()Ljava/lang/SecurityManager;
    .registers 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getenv(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1406
    if-nez p0, :cond_b

    .line 1407
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1410
    :cond_b
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getenv()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1455
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1456
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_11

    .line 1457
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "getenv.*"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1460
    :cond_11
    invoke-static {}, Ljava/lang/ProcessEnvironment;->getenv()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static identityHashCode(Ljava/lang/Object;)I
    .registers 2
    .param p0, "x"    # Ljava/lang/Object;

    .prologue
    .line 891
    if-nez p0, :cond_4

    .line 892
    const/4 v0, 0x0

    return v0

    .line 894
    :cond_4
    invoke-static {p0}, Ljava/lang/Object;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static inheritedChannel()Ljava/nio/channels/Channel;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->inheritedChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    return-object v0
.end method

.method private static initProperties()Ljava/util/Properties;
    .registers 2

    .prologue
    .line 1029
    new-instance v0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;

    sget-object v1, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    invoke-direct {v0, v1}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;-><init>(Ljava/util/Properties;)V

    .line 1030
    .local v0, "p":Ljava/util/Properties;
    invoke-static {v0}, Ljava/lang/System;->setDefaultChangeableProperties(Ljava/util/Properties;)Ljava/util/Properties;

    .line 1031
    return-object v0
.end method

.method private static initUnchangeableSystemProperties()Ljava/util/Properties;
    .registers 15

    .prologue
    const/4 v14, 0x1

    const/4 v9, 0x0

    .line 960
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    .line 961
    .local v7, "runtime":Ldalvik/system/VMRuntime;
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 964
    .local v4, "p":Ljava/util/Properties;
    const-string/jumbo v8, "java.boot.class.path"

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->bootClassPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    const-string/jumbo v8, "java.class.path"

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->classPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    const-string/jumbo v8, "JAVA_HOME"

    invoke-static {v8}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 969
    .local v3, "javaHome":Ljava/lang/String;
    if-nez v3, :cond_2b

    .line 970
    const-string/jumbo v3, "/system"

    .line 972
    :cond_2b
    const-string/jumbo v8, "java.home"

    invoke-virtual {v4, v8, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    const-string/jumbo v8, "java.vm.version"

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->vmVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    :try_start_3b
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v10}, Llibcore/io/Os;->getuid()I

    move-result v10

    invoke-interface {v8, v10}, Llibcore/io/Os;->getpwuid(I)Landroid/system/StructPasswd;

    move-result-object v6

    .line 978
    .local v6, "passwd":Landroid/system/StructPasswd;
    const-string/jumbo v8, "user.name"

    iget-object v10, v6, Landroid/system/StructPasswd;->pw_name:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catch Landroid/system/ErrnoException; {:try_start_3b .. :try_end_4f} :catch_11d

    .line 983
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8}, Llibcore/io/Os;->uname()Landroid/system/StructUtsname;

    move-result-object v2

    .line 984
    .local v2, "info":Landroid/system/StructUtsname;
    const-string/jumbo v8, "os.arch"

    iget-object v10, v2, Landroid/system/StructUtsname;->machine:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    const-string/jumbo v8, "os.name"

    invoke-virtual {v4, v8}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_aa

    const-string/jumbo v8, "os.name"

    invoke-virtual {v4, v8}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget-object v10, v2, Landroid/system/StructUtsname;->sysname:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_aa

    .line 986
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Wrong compile-time assumption for os.name: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "os.name"

    invoke-virtual {v4, v10}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " vs "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 987
    iget-object v10, v2, Landroid/system/StructUtsname;->sysname:Ljava/lang/String;

    .line 986
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 988
    const-string/jumbo v8, "os.name"

    iget-object v10, v2, Landroid/system/StructUtsname;->sysname:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    :cond_aa
    const-string/jumbo v8, "os.version"

    iget-object v10, v2, Landroid/system/StructUtsname;->release:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    const-string/jumbo v8, "android.icu.library.version"

    invoke-static {}, Llibcore/icu/ICU;->getIcuVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    const-string/jumbo v8, "android.icu.unicode.version"

    invoke-static {}, Llibcore/icu/ICU;->getUnicodeVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    const-string/jumbo v8, "android.icu.cldr.version"

    invoke-static {}, Llibcore/icu/ICU;->getCldrVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    invoke-static {}, Llibcore/util/TimeZoneDataFiles;->generateIcuDataPath()Ljava/lang/String;

    move-result-object v1

    .line 1002
    .local v1, "icuDataPath":Ljava/lang/String;
    const-string/jumbo v8, "android.icu.impl.ICUBinary.dataPath"

    invoke-virtual {v4, v8, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    invoke-static {}, Ljava/lang/System;->specialProperties()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->properties()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    .line 1014
    sget-object v10, Ljava/lang/AndroidHardcodedSystemProperties;->STATIC_PROPERTIES:[[Ljava/lang/String;

    array-length v11, v10

    move v8, v9

    :goto_ec
    if-ge v8, v11, :cond_12c

    aget-object v5, v10, v8

    .line 1015
    .local v5, "pair":[Ljava/lang/String;
    aget-object v12, v5, v9

    invoke-virtual {v4, v12}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_111

    .line 1016
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Ignoring command line argument: -D"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v5, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 1018
    :cond_111
    aget-object v12, v5, v14

    if-nez v12, :cond_124

    .line 1019
    aget-object v12, v5, v9

    invoke-virtual {v4, v12}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    :goto_11a
    add-int/lit8 v8, v8, 0x1

    goto :goto_ec

    .line 979
    .end local v1    # "icuDataPath":Ljava/lang/String;
    .end local v2    # "info":Landroid/system/StructUtsname;
    .end local v5    # "pair":[Ljava/lang/String;
    .end local v6    # "passwd":Landroid/system/StructPasswd;
    :catch_11d
    move-exception v0

    .line 980
    .local v0, "exception":Landroid/system/ErrnoException;
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 1021
    .end local v0    # "exception":Landroid/system/ErrnoException;
    .restart local v1    # "icuDataPath":Ljava/lang/String;
    .restart local v2    # "info":Landroid/system/StructUtsname;
    .restart local v5    # "pair":[Ljava/lang/String;
    .restart local v6    # "passwd":Landroid/system/StructPasswd;
    :cond_124
    aget-object v12, v5, v9

    aget-object v13, v5, v14

    invoke-virtual {v4, v12, v13}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11a

    .line 1025
    .end local v5    # "pair":[Ljava/lang/String;
    :cond_12c
    return-object v4
.end method

.method public static lineSeparator()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1178
    sget-object v0, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public static load(Ljava/lang/String;)V
    .registers 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 1621
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/lang/Runtime;->load0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1622
    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .registers 3
    .param p0, "libname"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 1657
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/lang/Runtime;->loadLibrary0(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 1658
    return-void
.end method

.method private static native log(CLjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public static logE(Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1728
    const/16 v0, 0x45

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1729
    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 1735
    const/16 v0, 0x45

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1736
    return-void
.end method

.method public static logI(Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1742
    const/16 v0, 0x49

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1743
    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 1749
    const/16 v0, 0x49

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1750
    return-void
.end method

.method public static logW(Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1756
    const/16 v0, 0x57

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1757
    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 1763
    const/16 v0, 0x57

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1764
    return-void
.end method

.method public static native mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nanoTime()J
.end method

.method private static newPrintStream(Ljava/io/FileOutputStream;Ljava/lang/String;)Ljava/io/PrintStream;
    .registers 8
    .param p0, "fos"    # Ljava/io/FileOutputStream;
    .param p1, "enc"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x80

    const/4 v4, 0x1

    .line 1678
    if-eqz p1, :cond_14

    .line 1680
    :try_start_5
    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    const/16 v3, 0x80

    invoke-direct {v2, p0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_12} :catch_13

    return-object v1

    .line 1681
    :catch_13
    move-exception v0

    .line 1683
    :cond_14
    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, p0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v1, v2, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    return-object v1
.end method

.method private static parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V
    .registers 10
    .param p0, "p"    # Ljava/util/Properties;
    .param p1, "assignments"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 951
    array-length v6, p1

    move v4, v5

    :goto_3
    if-ge v4, v6, :cond_1d

    aget-object v0, p1, v4

    .line 952
    .local v0, "assignment":Ljava/lang/String;
    const/16 v7, 0x3d

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 953
    .local v2, "split":I
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 954
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 955
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 957
    .end local v0    # "assignment":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "split":I
    .end local v3    # "value":Ljava/lang/String;
    :cond_1d
    return-void
.end method

.method public static runFinalization()V
    .registers 3

    .prologue
    .line 1540
    sget-object v2, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 1541
    :try_start_3
    sget-boolean v0, Ljava/lang/System;->runGC:Z

    .line 1542
    .local v0, "shouldRunGC":Z
    const/4 v1, 0x0

    sput-boolean v1, Ljava/lang/System;->runGC:Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_21

    monitor-exit v2

    .line 1544
    if-eqz v0, :cond_12

    .line 1545
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 1547
    :cond_12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->runFinalization()V

    .line 1548
    sget-object v1, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1549
    const/4 v2, 0x1

    :try_start_1d
    sput-boolean v2, Ljava/lang/System;->justRanFinalization:Z
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_24

    monitor-exit v1

    .line 1551
    return-void

    .line 1540
    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1548
    :catchall_24
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static runFinalizersOnExit(Z)V
    .registers 1
    .param p0, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1580
    invoke-static {p0}, Ljava/lang/Runtime;->runFinalizersOnExit(Z)V

    .line 1581
    return-void
.end method

.method private static setDefaultChangeableProperties(Ljava/util/Properties;)Ljava/util/Properties;
    .registers 3
    .param p0, "p"    # Ljava/util/Properties;

    .prologue
    .line 1040
    sget-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    const-string/jumbo v1, "java.io.tmpdir"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1041
    const-string/jumbo v0, "java.io.tmpdir"

    const-string/jumbo v1, "/tmp"

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    :cond_14
    sget-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    const-string/jumbo v1, "user.home"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1052
    const-string/jumbo v0, "user.home"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    :cond_28
    return-object p0
.end method

.method public static setErr(Ljava/io/PrintStream;)V
    .registers 1
    .param p0, "err"    # Ljava/io/PrintStream;

    .prologue
    .line 198
    invoke-static {p0}, Ljava/lang/System;->setErr0(Ljava/io/PrintStream;)V

    .line 199
    return-void
.end method

.method private static native setErr0(Ljava/io/PrintStream;)V
.end method

.method public static setIn(Ljava/io/InputStream;)V
    .registers 1
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 152
    invoke-static {p0}, Ljava/lang/System;->setIn0(Ljava/io/InputStream;)V

    .line 153
    return-void
.end method

.method private static native setIn0(Ljava/io/InputStream;)V
.end method

.method public static setOut(Ljava/io/PrintStream;)V
    .registers 1
    .param p0, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 175
    invoke-static {p0}, Ljava/lang/System;->setOut0(Ljava/io/PrintStream;)V

    .line 176
    return-void
.end method

.method private static native setOut0(Ljava/io/PrintStream;)V
.end method

.method public static setProperties(Ljava/util/Properties;)V
    .registers 3
    .param p0, "props"    # Ljava/util/Properties;

    .prologue
    .line 1191
    new-instance v0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;

    sget-object v1, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    invoke-direct {v0, v1}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;-><init>(Ljava/util/Properties;)V

    .line 1192
    .local v0, "baseProperties":Ljava/util/Properties;
    if-eqz p0, :cond_f

    .line 1193
    invoke-virtual {v0, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 1198
    :goto_c
    sput-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    .line 1199
    return-void

    .line 1195
    :cond_f
    invoke-static {v0}, Ljava/lang/System;->setDefaultChangeableProperties(Ljava/util/Properties;)Ljava/util/Properties;

    goto :goto_c
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1303
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1304
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1305
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_14

    .line 1306
    new-instance v1, Ljava/util/PropertyPermission;

    .line 1307
    const-string/jumbo v2, "write"

    .line 1306
    invoke-direct {v1, p0, v2}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1310
    :cond_14
    sget-object v1, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v1, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static setSecurityManager(Ljava/lang/SecurityManager;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/SecurityManager;

    .prologue
    .line 268
    if-eqz p0, :cond_8

    .line 269
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 271
    :cond_8
    return-void
.end method

.method public static setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1067
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1068
    sget-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    return-void
.end method

.method private static native specialProperties()[Ljava/lang/String;
.end method
