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

.field public static final whitelist test-api err:Ljava/io/PrintStream;

.field public static final whitelist test-api in:Ljava/io/InputStream;

.field private static greylist-max-o justRanFinalization:Z

.field private static greylist-max-o lineSeparator:Ljava/lang/String;

.field public static final whitelist test-api out:Ljava/io/PrintStream;

.field private static greylist-max-o props:Ljava/util/Properties;

.field private static greylist-max-o runGC:Z

.field private static greylist-max-o unchangeableProps:Ljava/util/Properties;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    .line 198
    const/4 v0, 0x0

    sput-object v0, Ljava/lang/System;->cons:Ljava/io/Console;

    .line 1690
    invoke-static {}, Ljava/lang/System;->initUnchangeableSystemProperties()Ljava/util/Properties;

    move-result-object v0

    sput-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    .line 1691
    invoke-static {}, Ljava/lang/System;->initProperties()Ljava/util/Properties;

    move-result-object v0

    sput-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    .line 1692
    invoke-static {}, Ljava/lang/System;->addLegacyLocaleSystemProperties()V

    .line 1693
    invoke-static {}, Lsun/misc/Version;->initSystemProperties()V

    .line 1698
    sget-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    const-string v1, "line.separator"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    .line 1700
    new-instance v0, Ljava/io/FileInputStream;

    sget-object v1, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1701
    .local v0, "fdIn":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1702
    .local v1, "fdOut":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1705
    .local v2, "fdErr":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v4, 0x80

    invoke-direct {v3, v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    sput-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 1707
    sget-object v3, Ljava/lang/System;->props:Ljava/util/Properties;

    const-string v4, "sun.stdout.encoding"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/System;->newPrintStream(Ljava/io/FileOutputStream;Ljava/lang/String;)Ljava/io/PrintStream;

    move-result-object v3

    sput-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1708
    sget-object v3, Ljava/lang/System;->props:Ljava/util/Properties;

    const-string v4, "sun.stderr.encoding"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->newPrintStream(Ljava/io/FileOutputStream;Ljava/lang/String;)Ljava/io/PrintStream;

    move-result-object v3

    sput-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 1714
    invoke-static {}, Lsun/misc/VM;->initializeOSEnvironment()V

    .line 1720
    invoke-static {}, Lsun/misc/VM;->booted()V

    .line 1721
    .end local v0    # "fdIn":Ljava/io/FileInputStream;
    .end local v1    # "fdOut":Ljava/io/FileOutputStream;
    .end local v2    # "fdErr":Ljava/io/FileOutputStream;
    return-void
.end method

.method private constructor greylist-max-r <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method private static greylist-max-o addLegacyLocaleSystemProperties()V
    .registers 6

    .line 1071
    const-string v0, "user.locale"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, "locale":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "user.region"

    const-string v4, "user.language"

    if-nez v2, :cond_2e

    .line 1073
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 1074
    .local v1, "l":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    const-string v3, "user.variant"

    invoke-static {v3, v2}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    .end local v1    # "l":Ljava/util/Locale;
    goto :goto_4c

    .line 1082
    :cond_2e
    invoke-static {v4, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1083
    .local v2, "language":Ljava/lang/String;
    invoke-static {v3, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1085
    .local v1, "region":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 1086
    const-string v5, "en"

    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    :cond_41
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1090
    const-string v4, "US"

    invoke-static {v3, v4}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    .end local v1    # "region":Ljava/lang/String;
    .end local v2    # "language":Ljava/lang/String;
    :cond_4c
    :goto_4c
    return-void
.end method

.method public static native whitelist test-api arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
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

    .line 514
    if-eqz p0, :cond_82

    .line 517
    if-eqz p2, :cond_7a

    .line 520
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 526
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 528
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 532
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 533
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    .line 532
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 537
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 538
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 543
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyByteUnchecked([BI[BII)V

    .line 545
    :goto_40
    return-void

    .line 522
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

    .line 518
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
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

    .line 459
    if-eqz p0, :cond_82

    .line 462
    if-eqz p2, :cond_7a

    .line 465
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 471
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 473
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 477
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 478
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-char v2, p0, v2

    aput-char v2, p2, v1

    .line 477
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 482
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 483
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-char v2, p0, v2

    aput-char v2, p2, v1

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 488
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyCharUnchecked([CI[CII)V

    .line 490
    :goto_40
    return-void

    .line 467
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

    .line 463
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
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

    .line 789
    if-eqz p0, :cond_82

    .line 792
    if-eqz p2, :cond_7a

    .line 795
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 801
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 803
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 807
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 808
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 807
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 812
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 813
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 812
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 818
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyDoubleUnchecked([DI[DII)V

    .line 820
    :goto_40
    return-void

    .line 797
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

    .line 793
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
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

    .line 734
    if-eqz p0, :cond_82

    .line 737
    if-eqz p2, :cond_7a

    .line 740
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 746
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 748
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 752
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 753
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 752
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 757
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 758
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 757
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 763
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyFloatUnchecked([FI[FII)V

    .line 765
    :goto_40
    return-void

    .line 742
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

    .line 738
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
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

    .line 624
    if-eqz p0, :cond_82

    .line 627
    if-eqz p2, :cond_7a

    .line 630
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 636
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 638
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 642
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 643
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 642
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 647
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 648
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 647
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 653
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyIntUnchecked([II[III)V

    .line 655
    :goto_40
    return-void

    .line 632
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

    .line 628
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
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

    .line 679
    if-eqz p0, :cond_82

    .line 682
    if-eqz p2, :cond_7a

    .line 685
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 691
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 693
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 697
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 698
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 697
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 702
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 703
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 708
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyLongUnchecked([JI[JII)V

    .line 710
    :goto_40
    return-void

    .line 687
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

    .line 683
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
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

    .line 569
    if-eqz p0, :cond_82

    .line 572
    if-eqz p2, :cond_7a

    .line 575
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 581
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 583
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 587
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 588
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-short v2, p0, v2

    aput-short v2, p2, v1

    .line 587
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 592
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 593
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-short v2, p0, v2

    aput-short v2, p2, v1

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 598
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyShortUnchecked([SI[SII)V

    .line 600
    :goto_40
    return-void

    .line 577
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

    .line 573
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
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

    .line 844
    if-eqz p0, :cond_82

    .line 847
    if-eqz p2, :cond_7a

    .line 850
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 856
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 858
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 862
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 863
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-boolean v2, p0, v2

    aput-boolean v2, p2, v1

    .line 862
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 867
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 868
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-boolean v2, p0, v2

    aput-boolean v2, p2, v1

    .line 867
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 873
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyBooleanUnchecked([ZI[ZII)V

    .line 875
    :goto_40
    return-void

    .line 852
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

    .line 848
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
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

    .line 1350
    if-eqz p0, :cond_13

    .line 1353
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1356
    return-void

    .line 1354
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1351
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api clearProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;

    .line 1340
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1341
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1342
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 1343
    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "write"

    invoke-direct {v1, p0, v2}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1346
    :cond_13
    sget-object v1, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static whitelist test-api console()Ljava/io/Console;
    .registers 2

    .line 209
    sget-object v0, Ljava/lang/System;->cons:Ljava/io/Console;

    if-nez v0, :cond_16

    .line 210
    const-class v0, Ljava/lang/System;

    monitor-enter v0

    .line 211
    :try_start_7
    sget-object v1, Ljava/lang/System;->cons:Ljava/io/Console;

    if-nez v1, :cond_11

    .line 212
    invoke-static {}, Ljava/io/Console;->console()Ljava/io/Console;

    move-result-object v1

    sput-object v1, Ljava/lang/System;->cons:Ljava/io/Console;

    .line 214
    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1

    .line 216
    :cond_16
    :goto_16
    sget-object v0, Ljava/lang/System;->cons:Ljava/io/Console;

    return-object v0
.end method

.method public static native whitelist test-api currentTimeMillis()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api exit(I)V
    .registers 2
    .param p0, "status"    # I

    .line 1483
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exit(I)V

    .line 1484
    return-void
.end method

.method public static whitelist test-api gc()V
    .registers 3

    .line 1506
    sget-object v0, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1507
    :try_start_3
    sget-boolean v1, Ljava/lang/System;->justRanFinalization:Z

    .line 1508
    .local v1, "shouldRunGC":Z
    if-eqz v1, :cond_b

    .line 1509
    const/4 v2, 0x0

    sput-boolean v2, Ljava/lang/System;->justRanFinalization:Z

    goto :goto_e

    .line 1511
    :cond_b
    const/4 v2, 0x1

    sput-boolean v2, Ljava/lang/System;->runGC:Z

    .line 1513
    :goto_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_19

    .line 1514
    if-eqz v1, :cond_18

    .line 1515
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1517
    :cond_18
    return-void

    .line 1513
    .end local v1    # "shouldRunGC":Z
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public static whitelist test-api getProperties()Ljava/util/Properties;
    .registers 2

    .line 1157
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1158
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 1159
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkPropertiesAccess()V

    .line 1162
    :cond_9
    sget-object v1, Ljava/lang/System;->props:Ljava/util/Properties;

    return-object v1
.end method

.method public static whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .line 1227
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1228
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1229
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_c

    .line 1230
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkPropertyAccess(Ljava/lang/String;)V

    .line 1233
    :cond_c
    sget-object v1, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .line 1263
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1264
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1265
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_c

    .line 1266
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkPropertyAccess(Ljava/lang/String;)V

    .line 1269
    :cond_c
    sget-object v1, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v1, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api getSecurityManager()Ljava/lang/SecurityManager;
    .registers 1

    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist test-api getenv(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1405
    if-eqz p0, :cond_9

    .line 1409
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1406
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getenv()Ljava/util/Map;
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

    .line 1454
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1455
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 1456
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getenv.*"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1459
    :cond_10
    invoke-static {}, Ljava/lang/ProcessEnvironment;->getenv()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api identityHashCode(Ljava/lang/Object;)I
    .registers 2
    .param p0, "x"    # Ljava/lang/Object;

    .line 898
    if-nez p0, :cond_4

    .line 899
    const/4 v0, 0x0

    return v0

    .line 901
    :cond_4
    invoke-static {p0}, Ljava/lang/Object;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api inheritedChannel()Ljava/nio/channels/Channel;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->inheritedChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o initProperties()Ljava/util/Properties;
    .registers 2

    .line 1028
    new-instance v0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;

    sget-object v1, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    invoke-direct {v0, v1}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;-><init>(Ljava/util/Properties;)V

    .line 1029
    .local v0, "p":Ljava/util/Properties;
    invoke-static {v0}, Ljava/lang/System;->setDefaultChangeableProperties(Ljava/util/Properties;)Ljava/util/Properties;

    .line 1030
    return-object v0
.end method

.method private static greylist-max-o initUnchangeableSystemProperties()Ljava/util/Properties;
    .registers 12

    .line 967
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 968
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 971
    .local v1, "p":Ljava/util/Properties;
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->bootClassPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.boot.class.path"

    invoke-virtual {v1, v3, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->classPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.class.path"

    invoke-virtual {v1, v3, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    const-string v2, "JAVA_HOME"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 976
    .local v2, "javaHome":Ljava/lang/String;
    if-nez v2, :cond_25

    .line 977
    const-string v2, "/system"

    .line 979
    :cond_25
    const-string v3, "java.home"

    invoke-virtual {v1, v3, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->vmVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.vm.version"

    invoke-virtual {v1, v4, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    :try_start_33
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4}, Llibcore/io/Os;->getuid()I

    move-result v4

    invoke-interface {v3, v4}, Llibcore/io/Os;->getpwuid(I)Landroid/system/StructPasswd;

    move-result-object v3

    iget-object v3, v3, Landroid/system/StructPasswd;->pw_name:Ljava/lang/String;
    :try_end_41
    .catch Landroid/system/ErrnoException; {:try_start_33 .. :try_end_41} :catch_42

    .line 988
    .local v3, "userName":Ljava/lang/String;
    goto :goto_46

    .line 986
    .end local v3    # "userName":Ljava/lang/String;
    :catch_42
    move-exception v3

    .line 987
    .local v3, "exception":Landroid/system/ErrnoException;
    const-string v4, "unknown"

    move-object v3, v4

    .line 989
    .local v3, "userName":Ljava/lang/String;
    :goto_46
    const-string v4, "user.name"

    invoke-virtual {v1, v4, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4}, Llibcore/io/Os;->uname()Landroid/system/StructUtsname;

    move-result-object v4

    .line 992
    .local v4, "info":Landroid/system/StructUtsname;
    iget-object v5, v4, Landroid/system/StructUtsname;->machine:Ljava/lang/String;

    const-string v6, "os.arch"

    invoke-virtual {v1, v6, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    iget-object v5, v4, Landroid/system/StructUtsname;->sysname:Ljava/lang/String;

    const-string v6, "os.name"

    invoke-virtual {v1, v6, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    iget-object v5, v4, Landroid/system/StructUtsname;->release:Ljava/lang/String;

    const-string v6, "os.version"

    invoke-virtual {v1, v6, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    invoke-static {}, Llibcore/icu/ICU;->getIcuVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.icu.library.version"

    invoke-virtual {v1, v6, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    invoke-static {}, Llibcore/icu/ICU;->getUnicodeVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.icu.unicode.version"

    invoke-virtual {v1, v6, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    invoke-static {}, Llibcore/icu/ICU;->getCldrVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.icu.cldr.version"

    invoke-virtual {v1, v6, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    invoke-static {}, Ljava/lang/System;->specialProperties()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->properties()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    .line 1013
    sget-object v5, Ljava/lang/AndroidHardcodedSystemProperties;->STATIC_PROPERTIES:[[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_94
    if-ge v8, v6, :cond_cb

    aget-object v9, v5, v8

    .line 1014
    .local v9, "pair":[Ljava/lang/String;
    aget-object v10, v9, v7

    invoke-virtual {v1, v10}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b6

    .line 1015
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring command line argument: -D"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v9, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 1017
    :cond_b6
    const/4 v10, 0x1

    aget-object v11, v9, v10

    if-nez v11, :cond_c1

    .line 1018
    aget-object v10, v9, v7

    invoke-virtual {v1, v10}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c8

    .line 1020
    :cond_c1
    aget-object v11, v9, v7

    aget-object v10, v9, v10

    invoke-virtual {v1, v11, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    .end local v9    # "pair":[Ljava/lang/String;
    :goto_c8
    add-int/lit8 v8, v8, 0x1

    goto :goto_94

    .line 1024
    :cond_cb
    return-object v1
.end method

.method public static whitelist test-api lineSeparator()Ljava/lang/String;
    .registers 1

    .line 1177
    sget-object v0, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist test-api load(Ljava/lang/String;)V
    .registers 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 1620
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/lang/Runtime;->load0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1621
    return-void
.end method

.method public static whitelist test-api loadLibrary(Ljava/lang/String;)V
    .registers 3
    .param p0, "libname"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 1656
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/lang/Runtime;->loadLibrary0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1657
    return-void
.end method

.method private static native greylist-max-r log(CLjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public static greylist logE(Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .line 1727
    const/16 v0, 0x45

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1728
    return-void
.end method

.method public static greylist logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .line 1734
    const/16 v0, 0x45

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1735
    return-void
.end method

.method public static greylist-max-o logI(Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .line 1741
    const/16 v0, 0x49

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1742
    return-void
.end method

.method public static greylist-max-o logI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .line 1748
    const/16 v0, 0x49

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1749
    return-void
.end method

.method public static greylist-max-o logW(Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .line 1755
    const/16 v0, 0x57

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1756
    return-void
.end method

.method public static greylist logW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .line 1762
    const/16 v0, 0x57

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1763
    return-void
.end method

.method public static native whitelist test-api mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native whitelist test-api nanoTime()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static greylist-max-o newPrintStream(Ljava/io/FileOutputStream;Ljava/lang/String;)Ljava/io/PrintStream;
    .registers 6
    .param p0, "fos"    # Ljava/io/FileOutputStream;
    .param p1, "enc"    # Ljava/lang/String;

    .line 1677
    const/4 v0, 0x1

    const/16 v1, 0x80

    if-eqz p1, :cond_11

    .line 1679
    :try_start_5
    new-instance v2, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, p0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v3, v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_f} :catch_10

    return-object v2

    .line 1680
    :catch_10
    move-exception v2

    .line 1682
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

    .line 958
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_1d

    aget-object v3, p1, v2

    .line 959
    .local v3, "assignment":Ljava/lang/String;
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 960
    .local v4, "split":I
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 961
    .local v5, "key":Ljava/lang/String;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 962
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {p0, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    .end local v3    # "assignment":Ljava/lang/String;
    .end local v4    # "split":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 964
    :cond_1d
    return-void
.end method

.method public static whitelist test-api runFinalization()V
    .registers 3

    .line 1539
    sget-object v0, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1540
    :try_start_3
    sget-boolean v1, Ljava/lang/System;->runGC:Z

    .line 1541
    .local v1, "shouldRunGC":Z
    const/4 v2, 0x0

    sput-boolean v2, Ljava/lang/System;->runGC:Z

    .line 1542
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_22

    .line 1543
    if-eqz v1, :cond_12

    .line 1544
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 1546
    :cond_12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->runFinalization()V

    .line 1547
    monitor-enter v0

    .line 1548
    const/4 v2, 0x1

    :try_start_1b
    sput-boolean v2, Ljava/lang/System;->justRanFinalization:Z

    .line 1549
    monitor-exit v0

    .line 1550
    return-void

    .line 1549
    :catchall_1f
    move-exception v2

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_1f

    throw v2

    .line 1542
    .end local v1    # "shouldRunGC":Z
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public static whitelist test-api runFinalizersOnExit(Z)V
    .registers 1
    .param p0, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1579
    invoke-static {p0}, Ljava/lang/Runtime;->runFinalizersOnExit(Z)V

    .line 1580
    return-void
.end method

.method private static greylist-max-o setDefaultChangeableProperties(Ljava/util/Properties;)Ljava/util/Properties;
    .registers 3
    .param p0, "p"    # Ljava/util/Properties;

    .line 1039
    sget-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    const-string v1, "java.io.tmpdir"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1040
    const-string v0, "/tmp"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    :cond_f
    sget-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    const-string v1, "user.home"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1051
    const-string v0, ""

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    :cond_1e
    return-object p0
.end method

.method public static whitelist test-api setErr(Ljava/io/PrintStream;)V
    .registers 1
    .param p0, "err"    # Ljava/io/PrintStream;

    .line 195
    invoke-static {p0}, Ljava/lang/System;->setErr0(Ljava/io/PrintStream;)V

    .line 196
    return-void
.end method

.method private static native greylist-max-o setErr0(Ljava/io/PrintStream;)V
.end method

.method public static whitelist test-api setIn(Ljava/io/InputStream;)V
    .registers 1
    .param p0, "in"    # Ljava/io/InputStream;

    .line 149
    invoke-static {p0}, Ljava/lang/System;->setIn0(Ljava/io/InputStream;)V

    .line 150
    return-void
.end method

.method private static native greylist-max-o setIn0(Ljava/io/InputStream;)V
.end method

.method public static whitelist test-api setOut(Ljava/io/PrintStream;)V
    .registers 1
    .param p0, "out"    # Ljava/io/PrintStream;

    .line 172
    invoke-static {p0}, Ljava/lang/System;->setOut0(Ljava/io/PrintStream;)V

    .line 173
    return-void
.end method

.method private static native greylist-max-o setOut0(Ljava/io/PrintStream;)V
.end method

.method public static whitelist test-api setProperties(Ljava/util/Properties;)V
    .registers 3
    .param p0, "props"    # Ljava/util/Properties;

    .line 1190
    new-instance v0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;

    sget-object v1, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    invoke-direct {v0, v1}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;-><init>(Ljava/util/Properties;)V

    .line 1191
    .local v0, "baseProperties":Ljava/util/Properties;
    if-eqz p0, :cond_d

    .line 1192
    invoke-virtual {v0, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    goto :goto_10

    .line 1194
    :cond_d
    invoke-static {v0}, Ljava/lang/System;->setDefaultChangeableProperties(Ljava/util/Properties;)Ljava/util/Properties;

    .line 1197
    :goto_10
    sput-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    .line 1198
    return-void
.end method

.method public static whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 1302
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1303
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1304
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 1305
    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "write"

    invoke-direct {v1, p0, v2}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1309
    :cond_13
    sget-object v1, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v1, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static whitelist test-api setSecurityManager(Ljava/lang/SecurityManager;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/SecurityManager;

    .line 265
    if-nez p0, :cond_3

    .line 268
    return-void

    .line 266
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
.end method

.method public static greylist-max-o setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 1066
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1067
    sget-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    return-void
.end method

.method private static native greylist-max-o specialProperties()[Ljava/lang/String;
.end method
