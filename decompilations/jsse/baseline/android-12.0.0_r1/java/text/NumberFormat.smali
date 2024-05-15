.class public abstract Ljava/text/NumberFormat;
.super Ljava/text/Format;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/NumberFormat$Field;
    }
.end annotation


# static fields
.field private static final greylist-max-o CURRENCYSTYLE:I = 0x1

.field public static final whitelist test-api FRACTION_FIELD:I = 0x1

.field private static final greylist-max-o INTEGERSTYLE:I = 0x3

.field public static final whitelist test-api INTEGER_FIELD:I = 0x0

.field private static final greylist-max-o NUMBERSTYLE:I = 0x0

.field private static final greylist-max-o PERCENTSTYLE:I = 0x2

.field static final greylist-max-o currentSerialVersion:I = 0x1

.field static final whitelist serialVersionUID:J = -0x20094c40ec82f818L


# instance fields
.field private greylist-max-o groupingUsed:Z

.field private greylist-max-o maxFractionDigits:B

.field private greylist-max-o maxIntegerDigits:B

.field private greylist-max-o maximumFractionDigits:I

.field private greylist-max-o maximumIntegerDigits:I

.field private greylist-max-o minFractionDigits:B

.field private greylist-max-o minIntegerDigits:B

.field private greylist-max-o minimumFractionDigits:I

.field private greylist-max-o minimumIntegerDigits:I

.field private greylist-max-o parseIntegerOnly:Z

.field private greylist-max-o serialVersionOnStream:I


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 5

    .line 200
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 938
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    .line 956
    const/16 v1, 0x28

    iput-byte v1, p0, Ljava/text/NumberFormat;->maxIntegerDigits:B

    .line 974
    iput-byte v0, p0, Ljava/text/NumberFormat;->minIntegerDigits:B

    .line 992
    const/4 v2, 0x3

    iput-byte v2, p0, Ljava/text/NumberFormat;->maxFractionDigits:B

    .line 1010
    const/4 v3, 0x0

    iput-byte v3, p0, Ljava/text/NumberFormat;->minFractionDigits:B

    .line 1018
    iput-boolean v3, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    .line 1031
    iput v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    .line 1042
    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    .line 1053
    iput v2, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    .line 1064
    iput v3, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    .line 1089
    iput v0, p0, Ljava/text/NumberFormat;->serialVersionOnStream:I

    .line 201
    return-void
.end method

.method public static whitelist test-api getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .line 564
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getCurrencyInstance()Ljava/text/NumberFormat;
    .registers 2

    .line 513
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .registers 2
    .param p0, "inLocale"    # Ljava/util/Locale;

    .line 523
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance()Ljava/text/NumberFormat;
    .registers 2

    .line 419
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .registers 2
    .param p0, "inLocale"    # Ljava/util/Locale;

    .line 432
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-r getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;
    .registers 11
    .param p0, "desiredLocale"    # Ljava/util/Locale;
    .param p1, "choice"    # I

    .line 839
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    .line 840
    .local v1, "numberPatterns":[Ljava/lang/String;
    invoke-static {p0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    .line 841
    .local v2, "data":Llibcore/icu/LocaleData;
    iget-object v3, v2, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 842
    iget-object v3, v2, Llibcore/icu/LocaleData;->currencyPattern:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v1, v5

    .line 843
    iget-object v3, v2, Llibcore/icu/LocaleData;->percentPattern:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v3, v1, v6

    .line 846
    invoke-static {p0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    .line 847
    .local v3, "symbols":Ljava/text/DecimalFormatSymbols;
    if-ne p1, v0, :cond_1e

    move v6, v4

    goto :goto_1f

    :cond_1e
    move v6, p1

    .line 848
    .local v6, "entry":I
    :goto_1f
    new-instance v7, Ljava/text/DecimalFormat;

    aget-object v8, v1, v6

    invoke-direct {v7, v8, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 850
    .local v7, "numberFormat":Ljava/text/DecimalFormat;
    if-ne p1, v0, :cond_32

    .line 851
    invoke-virtual {v7, v4}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 852
    invoke-virtual {v7, v4}, Ljava/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 853
    invoke-virtual {v7, v5}, Ljava/text/DecimalFormat;->setParseIntegerOnly(Z)V

    goto :goto_37

    .line 854
    :cond_32
    if-ne p1, v5, :cond_37

    .line 855
    invoke-virtual {v7}, Ljava/text/DecimalFormat;->adjustForCurrencyDefaultFractionDigits()V

    .line 858
    :cond_37
    :goto_37
    return-object v7
.end method

.method public static final whitelist test-api getIntegerInstance()Ljava/text/NumberFormat;
    .registers 2

    .line 481
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .registers 2
    .param p0, "inLocale"    # Ljava/util/Locale;

    .line 498
    const/4 v0, 0x3

    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getNumberInstance()Ljava/text/NumberFormat;
    .registers 2

    .line 448
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .registers 2
    .param p0, "inLocale"    # Ljava/util/Locale;

    .line 459
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getPercentInstance()Ljava/text/NumberFormat;
    .registers 2

    .line 538
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .registers 2
    .param p0, "inLocale"    # Ljava/util/Locale;

    .line 548
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 884
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 885
    iget v0, p0, Ljava/text/NumberFormat;->serialVersionOnStream:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_18

    .line 887
    iget-byte v0, p0, Ljava/text/NumberFormat;->maxIntegerDigits:B

    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    .line 888
    iget-byte v0, p0, Ljava/text/NumberFormat;->minIntegerDigits:B

    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    .line 889
    iget-byte v0, p0, Ljava/text/NumberFormat;->maxFractionDigits:B

    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    .line 890
    iget-byte v0, p0, Ljava/text/NumberFormat;->minFractionDigits:B

    iput v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    .line 892
    :cond_18
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iget v2, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-gt v0, v2, :cond_2b

    iget v2, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    iget v3, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    if-gt v2, v3, :cond_2b

    if-ltz v0, :cond_2b

    if-ltz v2, :cond_2b

    .line 897
    iput v1, p0, Ljava/text/NumberFormat;->serialVersionOnStream:I

    .line 898
    return-void

    .line 895
    :cond_2b
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Digit count range invalid"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 912
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    const/16 v1, 0x7f

    if-le v0, v1, :cond_8

    .line 913
    move v0, v1

    goto :goto_9

    :cond_8
    int-to-byte v0, v0

    :goto_9
    iput-byte v0, p0, Ljava/text/NumberFormat;->maxIntegerDigits:B

    .line 914
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-le v0, v1, :cond_11

    .line 915
    move v0, v1

    goto :goto_12

    :cond_11
    int-to-byte v0, v0

    :goto_12
    iput-byte v0, p0, Ljava/text/NumberFormat;->minIntegerDigits:B

    .line 916
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    if-le v0, v1, :cond_1a

    .line 917
    move v0, v1

    goto :goto_1b

    :cond_1a
    int-to-byte v0, v0

    :goto_1b
    iput-byte v0, p0, Ljava/text/NumberFormat;->maxFractionDigits:B

    .line 918
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-le v0, v1, :cond_22

    .line 919
    goto :goto_23

    :cond_22
    int-to-byte v1, v0

    :goto_23
    iput-byte v1, p0, Ljava/text/NumberFormat;->minFractionDigits:B

    .line 920
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 921
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 604
    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    .line 605
    .local v0, "other":Ljava/text/NumberFormat;
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 581
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 582
    return v0

    .line 584
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 585
    return v1

    .line 587
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 588
    return v0

    .line 590
    :cond_13
    move-object v2, p1

    check-cast v2, Ljava/text/NumberFormat;

    .line 591
    .local v2, "other":Ljava/text/NumberFormat;
    iget v3, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    iget v4, v2, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-ne v3, v4, :cond_3b

    iget v3, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iget v4, v2, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-ne v3, v4, :cond_3b

    iget v3, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iget v4, v2, Ljava/text/NumberFormat;->maximumFractionDigits:I

    if-ne v3, v4, :cond_3b

    iget v3, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    iget v4, v2, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ne v3, v4, :cond_3b

    iget-boolean v3, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    iget-boolean v4, v2, Ljava/text/NumberFormat;->groupingUsed:Z

    if-ne v3, v4, :cond_3b

    iget-boolean v3, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    iget-boolean v4, v2, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    if-ne v3, v4, :cond_3b

    move v0, v1

    :cond_3b
    return v0
.end method

.method public final whitelist test-api format(D)Ljava/lang/String;
    .registers 5
    .param p1, "number"    # D

    .line 290
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    return-object v0
.end method

.method public final whitelist test-api format(J)Ljava/lang/String;
    .registers 5
    .param p1, "number"    # J

    .line 306
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    return-object v0
.end method

.method public abstract whitelist test-api format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract whitelist test-api format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public whitelist test-api format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "number"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 237
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_40

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_40

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_40

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_40

    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_40

    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_40

    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_28

    move-object v0, p1

    check-cast v0, Ljava/math/BigInteger;

    .line 241
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_28

    goto :goto_40

    .line 243
    :cond_28
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_38

    .line 244
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 246
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot format given Object as a Number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_40
    :goto_40
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getCurrency()Ljava/util/Currency;
    .registers 2

    .line 769
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getMaximumFractionDigits()I
    .registers 2

    .line 701
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    return v0
.end method

.method public whitelist test-api getMaximumIntegerDigits()I
    .registers 2

    .line 641
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    return v0
.end method

.method public whitelist test-api getMinimumFractionDigits()I
    .registers 2

    .line 731
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    return v0
.end method

.method public whitelist test-api getMinimumIntegerDigits()I
    .registers 2

    .line 671
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    return v0
.end method

.method public whitelist test-api getRoundingMode()Ljava/math/RoundingMode;
    .registers 2

    .line 804
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 572
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    mul-int/lit8 v0, v0, 0x25

    iget-byte v1, p0, Ljava/text/NumberFormat;->maxFractionDigits:B

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isGroupingUsed()Z
    .registers 2

    .line 619
    iget-boolean v0, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    return v0
.end method

.method public whitelist test-api isParseIntegerOnly()Z
    .registers 2

    .line 393
    iget-boolean v0, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    return v0
.end method

.method public whitelist test-api parse(Ljava/lang/String;)Ljava/lang/Number;
    .registers 7
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 372
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 373
    .local v0, "parsePosition":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    .line 374
    .local v1, "result":Ljava/lang/Number;
    iget v2, v0, Ljava/text/ParsePosition;->index:I

    if-eqz v2, :cond_f

    .line 378
    return-object v1

    .line 375
    :cond_f
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unparseable number: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public abstract whitelist test-api parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
.end method

.method public final whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 276
    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setCurrency(Ljava/util/Currency;)V
    .registers 3
    .param p1, "currency"    # Ljava/util/Currency;

    .line 787
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setGroupingUsed(Z)V
    .registers 2
    .param p1, "newValue"    # Z

    .line 630
    iput-boolean p1, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    .line 631
    return-void
.end method

.method public whitelist test-api setMaximumFractionDigits(I)V
    .registers 4
    .param p1, "newValue"    # I

    .line 717
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    .line 718
    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ge v0, v1, :cond_d

    .line 719
    iput v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    .line 721
    :cond_d
    return-void
.end method

.method public whitelist test-api setMaximumIntegerDigits(I)V
    .registers 4
    .param p1, "newValue"    # I

    .line 657
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    .line 658
    iget v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-le v1, v0, :cond_d

    .line 659
    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    .line 661
    :cond_d
    return-void
.end method

.method public whitelist test-api setMinimumFractionDigits(I)V
    .registers 4
    .param p1, "newValue"    # I

    .line 747
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    .line 748
    iget v1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    if-ge v1, v0, :cond_d

    .line 749
    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    .line 751
    :cond_d
    return-void
.end method

.method public whitelist test-api setMinimumIntegerDigits(I)V
    .registers 4
    .param p1, "newValue"    # I

    .line 687
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    .line 688
    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_d

    .line 689
    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    .line 691
    :cond_d
    return-void
.end method

.method public whitelist test-api setParseIntegerOnly(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 404
    iput-boolean p1, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    .line 405
    return-void
.end method

.method public whitelist test-api setRoundingMode(Ljava/math/RoundingMode;)V
    .registers 3
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;

    .line 822
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
