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
.field private static final CURRENCYSTYLE:I = 0x1

.field public static final FRACTION_FIELD:I = 0x1

.field private static final INTEGERSTYLE:I = 0x3

.field public static final INTEGER_FIELD:I = 0x0

.field private static final NUMBERSTYLE:I = 0x0

.field private static final PERCENTSTYLE:I = 0x2

.field private static final cachedLocaleData:Ljava/util/Hashtable;

.field static final currentSerialVersion:I = 0x1

.field static final serialVersionUID:J = -0x20094c40ec82f818L


# instance fields
.field private groupingUsed:Z

.field private maxFractionDigits:B

.field private maxIntegerDigits:B

.field private maximumFractionDigits:I

.field private maximumIntegerDigits:I

.field private minFractionDigits:B

.field private minIntegerDigits:B

.field private minimumFractionDigits:I

.field private minimumIntegerDigits:I

.field private parseIntegerOnly:Z

.field private serialVersionOnStream:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 918
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Ljava/text/NumberFormat;->cachedLocaleData:Ljava/util/Hashtable;

    .line 180
    return-void
.end method

.method protected constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x28

    const/4 v2, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 200
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 933
    iput-boolean v0, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    .line 951
    iput-byte v3, p0, Ljava/text/NumberFormat;->maxIntegerDigits:B

    .line 969
    iput-byte v0, p0, Ljava/text/NumberFormat;->minIntegerDigits:B

    .line 987
    iput-byte v2, p0, Ljava/text/NumberFormat;->maxFractionDigits:B

    .line 1005
    iput-byte v1, p0, Ljava/text/NumberFormat;->minFractionDigits:B

    .line 1013
    iput-boolean v1, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    .line 1026
    iput v3, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    .line 1037
    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    .line 1048
    iput v2, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    .line 1059
    iput v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    .line 1084
    iput v0, p0, Ljava/text/NumberFormat;->serialVersionOnStream:I

    .line 201
    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .prologue
    .line 559
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final getCurrencyInstance()Ljava/text/NumberFormat;
    .registers 2

    .prologue
    .line 510
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .registers 2
    .param p0, "inLocale"    # Ljava/util/Locale;

    .prologue
    .line 520
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Ljava/text/NumberFormat;
    .registers 2

    .prologue
    .line 416
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .registers 2
    .param p0, "inLocale"    # Ljava/util/Locale;

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;
    .registers 12
    .param p0, "desiredLocale"    # Ljava/util/Locale;
    .param p1, "choice"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 826
    sget-object v5, Ljava/text/NumberFormat;->cachedLocaleData:Ljava/util/Hashtable;

    invoke-virtual {v5, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 827
    .local v3, "numberPatterns":[Ljava/lang/String;
    if-nez v3, :cond_2a

    .line 828
    invoke-static {p0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 829
    .local v0, "data":Llibcore/icu/LocaleData;
    const/4 v5, 0x4

    new-array v3, v5, [Ljava/lang/String;

    .line 830
    iget-object v5, v0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    aput-object v5, v3, v7

    .line 831
    iget-object v5, v0, Llibcore/icu/LocaleData;->currencyPattern:Ljava/lang/String;

    aput-object v5, v3, v8

    .line 832
    iget-object v5, v0, Llibcore/icu/LocaleData;->percentPattern:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v5, v3, v6

    .line 833
    iget-object v5, v0, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    aput-object v5, v3, v9

    .line 835
    sget-object v5, Ljava/text/NumberFormat;->cachedLocaleData:Ljava/util/Hashtable;

    invoke-virtual {v5, p0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    .end local v0    # "data":Llibcore/icu/LocaleData;
    :cond_2a
    invoke-static {p0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v4

    .line 839
    .local v4, "symbols":Ljava/text/DecimalFormatSymbols;
    if-ne p1, v9, :cond_44

    const/4 v1, 0x0

    .line 840
    .local v1, "entry":I
    :goto_31
    new-instance v2, Ljava/text/DecimalFormat;

    aget-object v5, v3, v1

    invoke-direct {v2, v5, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 842
    .local v2, "format":Ljava/text/DecimalFormat;
    if-ne p1, v9, :cond_46

    .line 843
    invoke-virtual {v2, v7}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 844
    invoke-virtual {v2, v7}, Ljava/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 845
    invoke-virtual {v2, v8}, Ljava/text/DecimalFormat;->setParseIntegerOnly(Z)V

    .line 850
    :cond_43
    :goto_43
    return-object v2

    .line 839
    .end local v1    # "entry":I
    .end local v2    # "format":Ljava/text/DecimalFormat;
    :cond_44
    move v1, p1

    .restart local v1    # "entry":I
    goto :goto_31

    .line 846
    .restart local v2    # "format":Ljava/text/DecimalFormat;
    :cond_46
    if-ne p1, v8, :cond_43

    .line 847
    invoke-virtual {v2}, Ljava/text/DecimalFormat;->adjustForCurrencyDefaultFractionDigits()V

    goto :goto_43
.end method

.method public static final getIntegerInstance()Ljava/text/NumberFormat;
    .registers 2

    .prologue
    .line 478
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .registers 2
    .param p0, "inLocale"    # Ljava/util/Locale;

    .prologue
    .line 495
    const/4 v0, 0x3

    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getNumberInstance()Ljava/text/NumberFormat;
    .registers 2

    .prologue
    .line 445
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .registers 2
    .param p0, "inLocale"    # Ljava/util/Locale;

    .prologue
    .line 456
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getPercentInstance()Ljava/text/NumberFormat;
    .registers 2

    .prologue
    .line 535
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .registers 2
    .param p0, "inLocale"    # Ljava/util/Locale;

    .prologue
    .line 545
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 876
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 877
    iget v0, p0, Ljava/text/NumberFormat;->serialVersionOnStream:I

    if-ge v0, v2, :cond_18

    .line 879
    iget-byte v0, p0, Ljava/text/NumberFormat;->maxIntegerDigits:B

    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    .line 880
    iget-byte v0, p0, Ljava/text/NumberFormat;->minIntegerDigits:B

    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    .line 881
    iget-byte v0, p0, Ljava/text/NumberFormat;->maxFractionDigits:B

    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    .line 882
    iget-byte v0, p0, Ljava/text/NumberFormat;->minFractionDigits:B

    iput v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    .line 884
    :cond_18
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-gt v0, v1, :cond_24

    .line 885
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    if-le v0, v1, :cond_2d

    .line 887
    :cond_24
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Digit count range invalid"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    :cond_2d
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-ltz v0, :cond_24

    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ltz v0, :cond_24

    .line 889
    iput v2, p0, Ljava/text/NumberFormat;->serialVersionOnStream:I

    .line 890
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x7f

    .line 904
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_21

    move v0, v1

    :goto_7
    iput-byte v0, p0, Ljava/text/NumberFormat;->maxIntegerDigits:B

    .line 906
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-le v0, v1, :cond_25

    move v0, v1

    :goto_e
    iput-byte v0, p0, Ljava/text/NumberFormat;->minIntegerDigits:B

    .line 908
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    if-le v0, v1, :cond_29

    move v0, v1

    :goto_15
    iput-byte v0, p0, Ljava/text/NumberFormat;->maxFractionDigits:B

    .line 910
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-le v0, v1, :cond_2d

    :goto_1b
    iput-byte v1, p0, Ljava/text/NumberFormat;->minFractionDigits:B

    .line 912
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 913
    return-void

    .line 905
    :cond_21
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    int-to-byte v0, v0

    goto :goto_7

    .line 907
    :cond_25
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    int-to-byte v0, v0

    goto :goto_e

    .line 909
    :cond_29
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    int-to-byte v0, v0

    goto :goto_15

    .line 911
    :cond_2d
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    int-to-byte v1, v0

    goto :goto_1b
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 599
    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    .line 600
    .local v0, "other":Ljava/text/NumberFormat;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 576
    if-nez p1, :cond_5

    .line 577
    return v2

    .line 579
    :cond_5
    if-ne p0, p1, :cond_8

    .line 580
    return v1

    .line 582
    :cond_8
    invoke-virtual {p0}, Ljava/text/NumberFormat;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    .line 583
    return v2

    :cond_13
    move-object v0, p1

    .line 585
    check-cast v0, Ljava/text/NumberFormat;

    .line 586
    .local v0, "other":Ljava/text/NumberFormat;
    iget v3, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    iget v4, v0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-ne v3, v4, :cond_3d

    .line 587
    iget v3, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iget v4, v0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    if-ne v3, v4, :cond_3d

    .line 588
    iget v3, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iget v4, v0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    if-ne v3, v4, :cond_3d

    .line 589
    iget v3, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    iget v4, v0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ne v3, v4, :cond_3d

    .line 590
    iget-boolean v3, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    iget-boolean v4, v0, Ljava/text/NumberFormat;->groupingUsed:Z

    if-ne v3, v4, :cond_3d

    .line 591
    iget-boolean v3, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    iget-boolean v4, v0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    if-ne v3, v4, :cond_3b

    .line 586
    :goto_3a
    return v1

    :cond_3b
    move v1, v2

    .line 591
    goto :goto_3a

    :cond_3d
    move v1, v2

    .line 586
    goto :goto_3a
.end method

.method public final format(D)Ljava/lang/String;
    .registers 6
    .param p1, "number"    # D

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 290
    sget-object v1, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    .line 289
    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final format(J)Ljava/lang/String;
    .registers 6
    .param p1, "number"    # J

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 304
    sget-object v1, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    .line 303
    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "number"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    .line 237
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_27

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_27

    .line 238
    instance-of v0, p1, Ljava/lang/Short;

    .line 237
    if-nez v0, :cond_27

    .line 238
    instance-of v0, p1, Ljava/lang/Byte;

    .line 237
    if-nez v0, :cond_27

    .line 239
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 237
    if-nez v0, :cond_27

    .line 239
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 237
    if-nez v0, :cond_27

    .line 240
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_32

    move-object v0, p1

    .line 241
    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_32

    .line 242
    :cond_27
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 243
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_32
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_41

    .line 244
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 246
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot format given Object as a Number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrency()Ljava/util/Currency;
    .registers 2

    .prologue
    .line 764
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMaximumFractionDigits()I
    .registers 2

    .prologue
    .line 696
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    return v0
.end method

.method public getMaximumIntegerDigits()I
    .registers 2

    .prologue
    .line 636
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    return v0
.end method

.method public getMinimumFractionDigits()I
    .registers 2

    .prologue
    .line 726
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    return v0
.end method

.method public getMinimumIntegerDigits()I
    .registers 2

    .prologue
    .line 666
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    return v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .registers 2

    .prologue
    .line 799
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 567
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    mul-int/lit8 v0, v0, 0x25

    iget-byte v1, p0, Ljava/text/NumberFormat;->maxFractionDigits:B

    add-int/2addr v0, v1

    return v0
.end method

.method public isGroupingUsed()Z
    .registers 2

    .prologue
    .line 614
    iget-boolean v0, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    return v0
.end method

.method public isParseIntegerOnly()Z
    .registers 2

    .prologue
    .line 390
    iget-boolean v0, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Number;
    .registers 7
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 369
    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 370
    .local v0, "parsePosition":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    .line 371
    .local v1, "result":Ljava/lang/Number;
    iget v2, v0, Ljava/text/ParsePosition;->index:I

    if-nez v2, :cond_31

    .line 372
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unparseable number: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 373
    iget v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    .line 372
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 375
    :cond_31
    return-object v1
.end method

.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
.end method

.method public final parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 276
    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .registers 3
    .param p1, "currency"    # Ljava/util/Currency;

    .prologue
    .line 782
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setGroupingUsed(Z)V
    .registers 2
    .param p1, "newValue"    # Z

    .prologue
    .line 625
    iput-boolean p1, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    .line 626
    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .registers 4
    .param p1, "newValue"    # I

    .prologue
    .line 712
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    .line 713
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ge v0, v1, :cond_11

    .line 714
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    .line 716
    :cond_11
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .registers 4
    .param p1, "newValue"    # I

    .prologue
    .line 652
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    .line 653
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_11

    .line 654
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    .line 656
    :cond_11
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .registers 4
    .param p1, "newValue"    # I

    .prologue
    .line 742
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    .line 743
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    if-ge v0, v1, :cond_11

    .line 744
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    .line 746
    :cond_11
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .registers 4
    .param p1, "newValue"    # I

    .prologue
    .line 682
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    .line 683
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_11

    .line 684
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    .line 686
    :cond_11
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 401
    iput-boolean p1, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    .line 402
    return-void
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)V
    .registers 3
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 817
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
