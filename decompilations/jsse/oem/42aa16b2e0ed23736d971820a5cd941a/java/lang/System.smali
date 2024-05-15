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
.field private static final greylist-max-o ARRAYCOPY_SHORT_BOOLEAN_ARRAY_THRESHOLD:I = 0x20

.field private static final greylist-max-o ARRAYCOPY_SHORT_BYTE_ARRAY_THRESHOLD:I = 0x20

.field private static final greylist-max-o ARRAYCOPY_SHORT_CHAR_ARRAY_THRESHOLD:I = 0x20

.field private static final greylist-max-o ARRAYCOPY_SHORT_DOUBLE_ARRAY_THRESHOLD:I = 0x20

.field private static final greylist-max-o ARRAYCOPY_SHORT_FLOAT_ARRAY_THRESHOLD:I = 0x20

.field private static final greylist-max-o ARRAYCOPY_SHORT_INT_ARRAY_THRESHOLD:I = 0x20

.field private static final greylist-max-o ARRAYCOPY_SHORT_LONG_ARRAY_THRESHOLD:I = 0x20

.field private static final greylist-max-o ARRAYCOPY_SHORT_SHORT_ARRAY_THRESHOLD:I = 0x20

.field private static final greylist-max-o LOCK:Ljava/lang/Object;

.field private static volatile greylist-max-o cons:Ljava/io/Console;

.field public static final whitelist core-platform-api test-api err:Ljava/io/PrintStream;

.field public static final whitelist core-platform-api test-api in:Ljava/io/InputStream;

.field private static greylist-max-o justRanFinalization:Z

.field private static greylist-max-o lineSeparator:Ljava/lang/String;

.field public static final whitelist core-platform-api test-api out:Ljava/io/PrintStream;

.field private static greylist-max-o props:Ljava/util/Properties;

.field private static greylist-max-o runGC:Z

.field private static greylist-max-o unchangeableProps:Ljava/util/Properties;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    .line 200
    const/4 v0, 0x0

    sput-object v0, Ljava/lang/System;->cons:Ljava/io/Console;

    .line 1698
    invoke-static {}, Ljava/lang/System;->initUnchangeableSystemProperties()Ljava/util/Properties;

    move-result-object v0

    sput-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    .line 1699
    invoke-static {}, Ljava/lang/System;->initProperties()Ljava/util/Properties;

    move-result-object v0

    sput-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    .line 1700
    invoke-static {}, Ljava/lang/System;->addLegacyLocaleSystemProperties()V

    .line 1701
    invoke-static {}, Lsun/misc/Version;->initSystemProperties()V

    .line 1706
    sget-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    const-string v1, "line.separator"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    .line 1708
    new-instance v0, Ljava/io/FileInputStream;

    sget-object v1, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1709
    .local v0, "fdIn":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1710
    .local v1, "fdOut":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1713
    .local v2, "fdErr":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v4, 0x80

    invoke-direct {v3, v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    sput-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 1715
    sget-object v3, Ljava/lang/System;->props:Ljava/util/Properties;

    const-string v4, "sun.stdout.encoding"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/System;->newPrintStream(Ljava/io/FileOutputStream;Ljava/lang/String;)Ljava/io/PrintStream;

    move-result-object v3

    sput-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1716
    sget-object v3, Ljava/lang/System;->props:Ljava/util/Properties;

    const-string v4, "sun.stderr.encoding"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->newPrintStream(Ljava/io/FileOutputStream;Ljava/lang/String;)Ljava/io/PrintStream;

    move-result-object v3

    sput-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 1722
    invoke-static {}, Lsun/misc/VM;->initializeOSEnvironment()V

    .line 1728
    invoke-static {}, Lsun/misc/VM;->booted()V

    .line 1729
    .end local v0    # "fdIn":Ljava/io/FileInputStream;
    .end local v1    # "fdOut":Ljava/io/FileOutputStream;
    .end local v2    # "fdErr":Ljava/io/FileOutputStream;
    return-void
.end method

.method private constructor greylist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private static greylist-max-o addLegacyLocaleSystemProperties()V
    .registers 6

    .line 1079
    const-string v0, "user.locale"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, "locale":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "user.region"

    const-string v4, "user.language"

    if-nez v2, :cond_2e

    .line 1081
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 1082
    .local v1, "l":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    const-string v3, "user.variant"

    invoke-static {v3, v2}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    .end local v1    # "l":Ljava/util/Locale;
    goto :goto_4c

    .line 1090
    :cond_2e
    invoke-static {v4, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1091
    .local v2, "language":Ljava/lang/String;
    invoke-static {v3, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1093
    .local v1, "region":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 1094
    const-string v5, "en"

    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    :cond_41
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1098
    const-string v4, "US"

    invoke-static {v3, v4}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    .end local v1    # "region":Ljava/lang/String;
    .end local v2    # "language":Ljava/lang/String;
    :cond_4c
    :goto_4c
    return-void
.end method

.method public static native whitelist core-platform-api test-api arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static greylist arraycopy([BI[BII)V
    .registers 8
    .param p0, "src"    # [B
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [B
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .line 516
    if-eqz p0, :cond_82

    .line 519
    if-eqz p2, :cond_7a

    .line 522
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 528
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 530
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 534
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 535
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    .line 534
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 539
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 540
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 545
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyByteUnchecked([BI[BII)V

    .line 547
    :goto_40
    return-void

    .line 524
    :cond_41
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " srcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dst.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dstPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist arraycopy([CI[CII)V
    .registers 8
    .param p0, "src"    # [C
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [C
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .line 461
    if-eqz p0, :cond_82

    .line 464
    if-eqz p2, :cond_7a

    .line 467
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 473
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 475
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 479
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 480
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-char v2, p0, v2

    aput-char v2, p2, v1

    .line 479
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 484
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 485
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-char v2, p0, v2

    aput-char v2, p2, v1

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 490
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyCharUnchecked([CI[CII)V

    .line 492
    :goto_40
    return-void

    .line 469
    :cond_41
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " srcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dst.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dstPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o arraycopy([DI[DII)V
    .registers 9
    .param p0, "src"    # [D
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .line 791
    if-eqz p0, :cond_82

    .line 794
    if-eqz p2, :cond_7a

    .line 797
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 803
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 805
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 809
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 810
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 809
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 814
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 815
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 820
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyDoubleUnchecked([DI[DII)V

    .line 822
    :goto_40
    return-void

    .line 799
    :cond_41
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " srcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dst.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dstPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist arraycopy([FI[FII)V
    .registers 8
    .param p0, "src"    # [F
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .line 736
    if-eqz p0, :cond_82

    .line 739
    if-eqz p2, :cond_7a

    .line 742
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 748
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 750
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 754
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 755
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 754
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 759
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 760
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 759
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 765
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyFloatUnchecked([FI[FII)V

    .line 767
    :goto_40
    return-void

    .line 744
    :cond_41
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " srcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dst.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dstPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 740
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist arraycopy([II[III)V
    .registers 8
    .param p0, "src"    # [I
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [I
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .line 626
    if-eqz p0, :cond_82

    .line 629
    if-eqz p2, :cond_7a

    .line 632
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 638
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 640
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 644
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 645
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 644
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 649
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 650
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 655
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyIntUnchecked([II[III)V

    .line 657
    :goto_40
    return-void

    .line 634
    :cond_41
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " srcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dst.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dstPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist arraycopy([JI[JII)V
    .registers 9
    .param p0, "src"    # [J
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [J
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .line 681
    if-eqz p0, :cond_82

    .line 684
    if-eqz p2, :cond_7a

    .line 687
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 693
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 695
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 699
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 700
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 699
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 704
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 705
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 710
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyLongUnchecked([JI[JII)V

    .line 712
    :goto_40
    return-void

    .line 689
    :cond_41
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " srcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dst.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dstPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist arraycopy([SI[SII)V
    .registers 8
    .param p0, "src"    # [S
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .line 571
    if-eqz p0, :cond_82

    .line 574
    if-eqz p2, :cond_7a

    .line 577
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 583
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 585
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 589
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 590
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-short v2, p0, v2

    aput-short v2, p2, v1

    .line 589
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 594
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 595
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-short v2, p0, v2

    aput-short v2, p2, v1

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 600
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyShortUnchecked([SI[SII)V

    .line 602
    :goto_40
    return-void

    .line 579
    :cond_41
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " srcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dst.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dstPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist arraycopy([ZI[ZII)V
    .registers 8
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [Z
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .line 846
    if-eqz p0, :cond_82

    .line 849
    if-eqz p2, :cond_7a

    .line 852
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 858
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 860
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 864
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 865
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-boolean v2, p0, v2

    aput-boolean v2, p2, v1

    .line 864
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 869
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 870
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-boolean v2, p0, v2

    aput-boolean v2, p2, v1

    .line 869
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 875
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyBooleanUnchecked([ZI[ZII)V

    .line 877
    :goto_40
    return-void

    .line 854
    :cond_41
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " srcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dst.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dstPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 850
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :cond_82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native greylist-max-o arraycopyBooleanUnchecked([ZI[ZII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o arraycopyByteUnchecked([BI[BII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o arraycopyCharUnchecked([CI[CII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o arraycopyDoubleUnchecked([DI[DII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o arraycopyFloatUnchecked([FI[FII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o arraycopyIntUnchecked([II[III)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o arraycopyLongUnchecked([JI[JII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o arraycopyShortUnchecked([SI[SII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static greylist-max-o checkKey(Ljava/lang/String;)V
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .line 1358
    if-eqz p0, :cond_13

    .line 1361
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1364
    return-void

    .line 1362
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1359
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist core-platform-api test-api clearProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;

    .line 1348
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1349
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1350
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 1351
    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "write"

    invoke-direct {v1, p0, v2}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1354
    :cond_13
    sget-object v1, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static whitelist core-platform-api test-api console()Ljava/io/Console;
    .registers 2

    .line 211
    sget-object v0, Ljava/lang/System;->cons:Ljava/io/Console;

    if-nez v0, :cond_16

    .line 212
    const-class v0, Ljava/lang/System;

    monitor-enter v0

    .line 213
    :try_start_7
    sget-object v1, Ljava/lang/System;->cons:Ljava/io/Console;

    if-nez v1, :cond_11

    .line 214
    invoke-static {}, Ljava/io/Console;->console()Ljava/io/Console;

    move-result-object v1

    sput-object v1, Ljava/lang/System;->cons:Ljava/io/Console;

    .line 216
    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1

    .line 218
    :cond_16
    :goto_16
    sget-object v0, Ljava/lang/System;->cons:Ljava/io/Console;

    return-object v0
.end method

.method public static native whitelist core-platform-api test-api currentTimeMillis()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api exit(I)V
    .registers 2
    .param p0, "status"    # I

    .line 1491
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exit(I)V

    .line 1492
    return-void
.end method

.method public static whitelist core-platform-api test-api gc()V
    .registers 3

    .line 1514
    sget-object v0, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1515
    :try_start_3
    sget-boolean v1, Ljava/lang/System;->justRanFinalization:Z

    .line 1516
    .local v1, "shouldRunGC":Z
    if-eqz v1, :cond_b

    .line 1517
    const/4 v2, 0x0

    sput-boolean v2, Ljava/lang/System;->justRanFinalization:Z

    goto :goto_e

    .line 1519
    :cond_b
    const/4 v2, 0x1

    sput-boolean v2, Ljava/lang/System;->runGC:Z

    .line 1521
    :goto_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_19

    .line 1522
    if-eqz v1, :cond_18

    .line 1523
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1525
    :cond_18
    return-void

    .line 1521
    .end local v1    # "shouldRunGC":Z
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public static whitelist core-platform-api test-api getProperties()Ljava/util/Properties;
    .registers 2

    .line 1165
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1166
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 1167
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkPropertiesAccess()V

    .line 1170
    :cond_9
    sget-object v1, Ljava/lang/System;->props:Ljava/util/Properties;

    return-object v1
.end method

.method public static whitelist core-platform-api test-api getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .line 1235
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1236
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1237
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_c

    .line 1238
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkPropertyAccess(Ljava/lang/String;)V

    .line 1241
    :cond_c
    sget-object v1, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist core-platform-api test-api getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .line 1271
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1272
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1273
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_c

    .line 1274
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkPropertyAccess(Ljava/lang/String;)V

    .line 1277
    :cond_c
    sget-object v1, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v1, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist core-platform-api test-api getSecurityManager()Ljava/lang/SecurityManager;
    .registers 1

    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api getenv(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1413
    if-eqz p0, :cond_9

    .line 1417
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1414
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist core-platform-api test-api getenv()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1462
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1463
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 1464
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getenv.*"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1467
    :cond_10
    invoke-static {}, Ljava/lang/ProcessEnvironment;->getenv()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist core-platform-api test-api identityHashCode(Ljava/lang/Object;)I
    .registers 2
    .param p0, "x"    # Ljava/lang/Object;

    .line 900
    if-nez p0, :cond_4

    .line 901
    const/4 v0, 0x0

    return v0

    .line 903
    :cond_4
    invoke-static {p0}, Ljava/lang/Object;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api inheritedChannel()Ljava/nio/channels/Channel;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->inheritedChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o initProperties()Ljava/util/Properties;
    .registers 2

    .line 1036
    new-instance v0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;

    sget-object v1, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    invoke-direct {v0, v1}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;-><init>(Ljava/util/Properties;)V

    .line 1037
    .local v0, "p":Ljava/util/Properties;
    invoke-static {v0}, Ljava/lang/System;->setDefaultChangeableProperties(Ljava/util/Properties;)Ljava/util/Properties;

    .line 1038
    return-object v0
.end method

.method private static greylist-max-o initUnchangeableSystemProperties()Ljava/util/Properties;
    .registers 12

    .line 969
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 970
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 973
    .local v1, "p":Ljava/util/Properties;
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->bootClassPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.boot.class.path"

    invoke-virtual {v1, v3, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->classPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.class.path"

    invoke-virtual {v1, v3, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    const-string v2, "JAVA_HOME"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 978
    .local v2, "javaHome":Ljava/lang/String;
    if-nez v2, :cond_25

    .line 979
    const-string v2, "/system"

    .line 981
    :cond_25
    const-string v3, "java.home"

    invoke-virtual {v1, v3, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->vmVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.vm.version"

    invoke-virtual {v1, v4, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    :try_start_33
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4}, Llibcore/io/Os;->getuid()I

    move-result v4

    invoke-interface {v3, v4}, Llibcore/io/Os;->getpwuid(I)Landroid/system/StructPasswd;

    move-result-object v3

    .line 987
    .local v3, "passwd":Landroid/system/StructPasswd;
    const-string v4, "user.name"

    iget-object v5, v3, Landroid/system/StructPasswd;->pw_name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Landroid/system/ErrnoException; {:try_start_33 .. :try_end_46} :catch_d1

    .line 990
    nop

    .line 992
    .end local v3    # "passwd":Landroid/system/StructPasswd;
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3}, Llibcore/io/Os;->uname()Landroid/system/StructUtsname;

    move-result-object v3

    .line 993
    .local v3, "info":Landroid/system/StructUtsname;
    iget-object v4, v3, Landroid/system/StructUtsname;->machine:Ljava/lang/String;

    const-string v5, "os.arch"

    invoke-virtual {v1, v5, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    iget-object v4, v3, Landroid/system/StructUtsname;->sysname:Ljava/lang/String;

    const-string v5, "os.name"

    invoke-virtual {v1, v5, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    iget-object v4, v3, Landroid/system/StructUtsname;->release:Ljava/lang/String;

    const-string v5, "os.version"

    invoke-virtual {v1, v5, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    invoke-static {}, Lcom/android/icu/util/Icu4cMetadata;->getIcuVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.icu.library.version"

    invoke-virtual {v1, v5, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    invoke-static {}, Lcom/android/icu/util/Icu4cMetadata;->getUnicodeVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.icu.unicode.version"

    invoke-virtual {v1, v5, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    invoke-static {}, Lcom/android/icu/util/Icu4cMetadata;->getCldrVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.icu.cldr.version"

    invoke-virtual {v1, v5, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    invoke-static {}, Llibcore/timezone/TimeZoneDataFiles;->generateIcuDataPath()Ljava/lang/String;

    move-result-object v4

    .line 1009
    .local v4, "icuDataPath":Ljava/lang/String;
    const-string v5, "android.icu.impl.ICUBinary.dataPath"

    invoke-virtual {v1, v5, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    invoke-static {}, Ljava/lang/System;->specialProperties()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->properties()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    .line 1021
    sget-object v5, Ljava/lang/AndroidHardcodedSystemProperties;->STATIC_PROPERTIES:[[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_99
    if-ge v8, v6, :cond_d0

    aget-object v9, v5, v8

    .line 1022
    .local v9, "pair":[Ljava/lang/String;
    aget-object v10, v9, v7

    invoke-virtual {v1, v10}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_bb

    .line 1023
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring command line argument: -D"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v9, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 1025
    :cond_bb
    const/4 v10, 0x1

    aget-object v11, v9, v10

    if-nez v11, :cond_c6

    .line 1026
    aget-object v10, v9, v7

    invoke-virtual {v1, v10}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cd

    .line 1028
    :cond_c6
    aget-object v11, v9, v7

    aget-object v10, v9, v10

    invoke-virtual {v1, v11, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    .end local v9    # "pair":[Ljava/lang/String;
    :goto_cd
    add-int/lit8 v8, v8, 0x1

    goto :goto_99

    .line 1032
    :cond_d0
    return-object v1

    .line 988
    .end local v3    # "info":Landroid/system/StructUtsname;
    .end local v4    # "icuDataPath":Ljava/lang/String;
    :catch_d1
    move-exception v3

    .line 989
    .local v3, "exception":Landroid/system/ErrnoException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public static whitelist core-platform-api test-api lineSeparator()Ljava/lang/String;
    .registers 1

    .line 1185
    sget-object v0, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api load(Ljava/lang/String;)V
    .registers 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 1628
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/lang/Runtime;->load0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1629
    return-void
.end method

.method public static whitelist core-platform-api test-api loadLibrary(Ljava/lang/String;)V
    .registers 3
    .param p0, "libname"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 1664
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/lang/Runtime;->loadLibrary0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1665
    return-void
.end method

.method private static native greylist log(CLjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public static greylist logE(Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .line 1735
    const/16 v0, 0x45

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1736
    return-void
.end method

.method public static greylist core-platform-api logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .line 1742
    const/16 v0, 0x45

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1743
    return-void
.end method

.method public static greylist-max-o logI(Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .line 1749
    const/16 v0, 0x49

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1750
    return-void
.end method

.method public static greylist-max-o logI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .line 1756
    const/16 v0, 0x49

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1757
    return-void
.end method

.method public static greylist-max-o logW(Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .line 1763
    const/16 v0, 0x57

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1764
    return-void
.end method

.method public static greylist logW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .line 1770
    const/16 v0, 0x57

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1771
    return-void
.end method

.method public static native whitelist core-platform-api test-api mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native whitelist core-platform-api test-api nanoTime()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static greylist-max-o newPrintStream(Ljava/io/FileOutputStream;Ljava/lang/String;)Ljava/io/PrintStream;
    .registers 6
    .param p0, "fos"    # Ljava/io/FileOutputStream;
    .param p1, "enc"    # Ljava/lang/String;

    .line 1685
    const/4 v0, 0x1

    const/16 v1, 0x80

    if-eqz p1, :cond_11

    .line 1687
    :try_start_5
    new-instance v2, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, p0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v3, v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_f} :catch_10

    return-object v2

    .line 1688
    :catch_10
    move-exception v2

    .line 1690
    :cond_11
    new-instance v2, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, p0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v3, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    return-object v2
.end method

.method private static greylist-max-o parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V
    .registers 9
    .param p0, "p"    # Ljava/util/Properties;
    .param p1, "assignments"    # [Ljava/lang/String;

    .line 960
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_1d

    aget-object v3, p1, v2

    .line 961
    .local v3, "assignment":Ljava/lang/String;
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 962
    .local v4, "split":I
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 963
    .local v5, "key":Ljava/lang/String;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 964
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {p0, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    .end local v3    # "assignment":Ljava/lang/String;
    .end local v4    # "split":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 966
    :cond_1d
    return-void
.end method

.method public static whitelist core-platform-api test-api runFinalization()V
    .registers 3

    .line 1547
    sget-object v0, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1548
    :try_start_3
    sget-boolean v1, Ljava/lang/System;->runGC:Z

    .line 1549
    .local v1, "shouldRunGC":Z
    const/4 v2, 0x0

    sput-boolean v2, Ljava/lang/System;->runGC:Z

    .line 1550
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_24

    .line 1551
    if-eqz v1, :cond_12

    .line 1552
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1554
    :cond_12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 1555
    sget-object v2, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 1556
    const/4 v0, 0x1

    :try_start_1d
    sput-boolean v0, Ljava/lang/System;->justRanFinalization:Z

    .line 1557
    monitor-exit v2

    .line 1558
    return-void

    .line 1557
    :catchall_21
    move-exception v0

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_21

    throw v0

    .line 1550
    .end local v1    # "shouldRunGC":Z
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public static whitelist core-platform-api test-api runFinalizersOnExit(Z)V
    .registers 1
    .param p0, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1587
    invoke-static {p0}, Ljava/lang/Runtime;->runFinalizersOnExit(Z)V

    .line 1588
    return-void
.end method

.method private static greylist-max-o setDefaultChangeableProperties(Ljava/util/Properties;)Ljava/util/Properties;
    .registers 3
    .param p0, "p"    # Ljava/util/Properties;

    .line 1047
    sget-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    const-string v1, "java.io.tmpdir"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1048
    const-string v0, "/tmp"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    :cond_f
    sget-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    const-string v1, "user.home"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1059
    const-string v0, ""

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    :cond_1e
    return-object p0
.end method

.method public static whitelist core-platform-api test-api setErr(Ljava/io/PrintStream;)V
    .registers 1
    .param p0, "err"    # Ljava/io/PrintStream;

    .line 197
    invoke-static {p0}, Ljava/lang/System;->setErr0(Ljava/io/PrintStream;)V

    .line 198
    return-void
.end method

.method private static native greylist-max-o setErr0(Ljava/io/PrintStream;)V
.end method

.method public static whitelist core-platform-api test-api setIn(Ljava/io/InputStream;)V
    .registers 1
    .param p0, "in"    # Ljava/io/InputStream;

    .line 151
    invoke-static {p0}, Ljava/lang/System;->setIn0(Ljava/io/InputStream;)V

    .line 152
    return-void
.end method

.method private static native greylist-max-o setIn0(Ljava/io/InputStream;)V
.end method

.method public static whitelist core-platform-api test-api setOut(Ljava/io/PrintStream;)V
    .registers 1
    .param p0, "out"    # Ljava/io/PrintStream;

    .line 174
    invoke-static {p0}, Ljava/lang/System;->setOut0(Ljava/io/PrintStream;)V

    .line 175
    return-void
.end method

.method private static native greylist-max-o setOut0(Ljava/io/PrintStream;)V
.end method

.method public static whitelist core-platform-api test-api setProperties(Ljava/util/Properties;)V
    .registers 3
    .param p0, "props"    # Ljava/util/Properties;

    .line 1198
    new-instance v0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;

    sget-object v1, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    invoke-direct {v0, v1}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;-><init>(Ljava/util/Properties;)V

    .line 1199
    .local v0, "baseProperties":Ljava/util/Properties;
    if-eqz p0, :cond_d

    .line 1200
    invoke-virtual {v0, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    goto :goto_10

    .line 1202
    :cond_d
    invoke-static {v0}, Ljava/lang/System;->setDefaultChangeableProperties(Ljava/util/Properties;)Ljava/util/Properties;

    .line 1205
    :goto_10
    sput-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    .line 1206
    return-void
.end method

.method public static whitelist core-platform-api test-api setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 1310
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1311
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1312
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 1313
    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "write"

    invoke-direct {v1, p0, v2}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1317
    :cond_13
    sget-object v1, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v1, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static whitelist core-platform-api test-api setSecurityManager(Ljava/lang/SecurityManager;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/SecurityManager;

    .line 267
    if-nez p0, :cond_3

    .line 270
    return-void

    .line 268
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
.end method

.method public static greylist-max-o setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 1074
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1075
    sget-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    return-void
.end method

.method private static native greylist-max-o specialProperties()[Ljava/lang/String;
.end method
