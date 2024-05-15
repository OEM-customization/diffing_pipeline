.class public Ljava/text/DecimalFormatSymbols;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final greylist-max-o currentSerialVersion:I = 0x3

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final whitelist serialVersionUID:J = 0x501d17990868939cL


# instance fields
.field private greylist-max-o NaN:Ljava/lang/String;

.field private transient greylist-max-o cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

.field private transient greylist-max-o currency:Ljava/util/Currency;

.field private greylist-max-o currencySymbol:Ljava/lang/String;

.field private greylist-max-o decimalSeparator:C

.field private greylist-max-o digit:C

.field private greylist-max-o exponential:C

.field private greylist-max-o exponentialSeparator:Ljava/lang/String;

.field private greylist-max-o groupingSeparator:C

.field private greylist-max-o infinity:Ljava/lang/String;

.field private greylist-max-o intlCurrencySymbol:Ljava/lang/String;

.field private greylist-max-o locale:Ljava/util/Locale;

.field private greylist-max-o minusSign:C

.field private greylist-max-o monetarySeparator:C

.field private greylist-max-o patternSeparator:C

.field private greylist-max-o perMill:C

.field private greylist-max-o percent:C

.field private greylist-max-o serialVersionOnStream:I

.field private greylist-max-o zeroDigit:C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 855
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v2, Ljava/lang/String;

    const-string v3, "currencySymbol"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v3, "decimalSeparator"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v3, "digit"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v3, "exponential"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v2, Ljava/lang/String;

    const-string v3, "exponentialSeparator"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v3, "groupingSeparator"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v2, Ljava/lang/String;

    const-string v3, "infinity"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v2, Ljava/lang/String;

    const-string v3, "intlCurrencySymbol"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v3, "minusSign"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v3, "monetarySeparator"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v2, Ljava/lang/String;

    const-string v3, "NaN"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v3, "patternSeparator"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v3, "percent"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v3, "perMill"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "serialVersionOnStream"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v3, "zeroDigit"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v2, Ljava/util/Locale;

    const-string v3, "locale"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v2, Ljava/lang/String;

    const-string v3, "minusSignStr"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v2, Ljava/lang/String;

    const-string v3, "percentStr"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Ljava/text/DecimalFormatSymbols;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1148
    const/4 v0, 0x3

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1156
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 81
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/DecimalFormatSymbols;->initialize(Ljava/util/Locale;)V

    .line 82
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1148
    const/4 v0, 0x3

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1156
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 102
    invoke-direct {p0, p1}, Ljava/text/DecimalFormatSymbols;->initialize(Ljava/util/Locale;)V

    .line 103
    return-void
.end method

.method protected static greylist-max-o fromIcuInstance(Landroid/icu/text/DecimalFormatSymbols;)Ljava/text/DecimalFormatSymbols;
    .registers 4
    .param p0, "dfs"    # Landroid/icu/text/DecimalFormatSymbols;

    .line 824
    const-string v0, "XXX"

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 825
    .local v1, "result":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setZeroDigit(C)V

    .line 826
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigit()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setDigit(C)V

    .line 827
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 828
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 829
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    .line 830
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPercent()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setPercent(C)V

    .line 831
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPerMill()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setPerMill(C)V

    .line 832
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    .line 833
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    .line 834
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    .line 839
    :try_start_5f
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v2

    if-eqz v2, :cond_75

    .line 840
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V

    goto :goto_7c

    .line 842
    :cond_75
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V
    :try_end_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5f .. :try_end_7c} :catch_7d

    .line 846
    :goto_7c
    goto :goto_85

    .line 844
    :catch_7d
    move-exception v2

    .line 845
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V

    .line 848
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_85
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DecimalFormatSymbols;->setInternationalCurrencySymbol(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    .line 850
    return-object v1
.end method

.method public static whitelist core-platform-api test-api getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .line 117
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist core-platform-api test-api getInstance()Ljava/text/DecimalFormatSymbols;
    .registers 1

    .line 133
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist core-platform-api test-api getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 156
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private greylist-max-o initialize(Ljava/util/Locale;)V
    .registers 19
    .param p1, "locale"    # Ljava/util/Locale;

    .line 648
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iput-object v0, v1, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    .line 660
    if-eqz v0, :cond_111

    .line 663
    invoke-static/range {p1 .. p1}, Llibcore/icu/LocaleData;->mapInvalidAndNullLocales(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v2

    .line 664
    .end local p1    # "locale":Ljava/util/Locale;
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v3

    .line 665
    .local v3, "localeData":Llibcore/icu/LocaleData;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    .line 666
    .local v4, "data":[Ljava/lang/Object;
    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/String;

    .line 667
    .local v5, "values":[Ljava/lang/String;
    iget-char v6, v3, Llibcore/icu/LocaleData;->decimalSeparator:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 668
    iget-char v6, v3, Llibcore/icu/LocaleData;->groupingSeparator:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 669
    iget-char v6, v3, Llibcore/icu/LocaleData;->patternSeparator:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v5, v9

    .line 670
    iget-object v6, v3, Llibcore/icu/LocaleData;->percent:Ljava/lang/String;

    aput-object v6, v5, v0

    .line 671
    iget-char v6, v3, Llibcore/icu/LocaleData;->zeroDigit:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x4

    aput-object v6, v5, v10

    .line 672
    const-string v6, "#"

    const/4 v11, 0x5

    aput-object v6, v5, v11

    .line 673
    iget-object v6, v3, Llibcore/icu/LocaleData;->minusSign:Ljava/lang/String;

    const/4 v12, 0x6

    aput-object v6, v5, v12

    .line 674
    iget-object v6, v3, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    const/4 v13, 0x7

    aput-object v6, v5, v13

    .line 675
    iget-object v6, v3, Llibcore/icu/LocaleData;->perMill:Ljava/lang/String;

    const/16 v14, 0x8

    aput-object v6, v5, v14

    .line 676
    iget-object v6, v3, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    const/16 v15, 0x9

    aput-object v6, v5, v15

    .line 677
    iget-object v6, v3, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    const/16 v16, 0xa

    aput-object v6, v5, v16

    .line 678
    aput-object v5, v4, v7

    .line 681
    aget-object v6, v4, v7

    check-cast v6, [Ljava/lang/String;

    .line 684
    .local v6, "numberElements":[Ljava/lang/String;
    aget-object v15, v6, v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    iput-char v15, v1, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    .line 685
    aget-object v15, v6, v8

    invoke-virtual {v15, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    iput-char v15, v1, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    .line 686
    aget-object v15, v6, v9

    invoke-virtual {v15, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    iput-char v15, v1, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    .line 687
    aget-object v0, v6, v0

    const/16 v15, 0x25

    invoke-static {v0, v15}, Ljava/text/DecimalFormatSymbols;->maybeStripMarkers(Ljava/lang/String;C)C

    move-result v0

    iput-char v0, v1, Ljava/text/DecimalFormatSymbols;->percent:C

    .line 688
    aget-object v0, v6, v10

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, v1, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    .line 689
    aget-object v0, v6, v11

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, v1, Ljava/text/DecimalFormatSymbols;->digit:C

    .line 690
    aget-object v0, v6, v12

    const/16 v10, 0x2d

    invoke-static {v0, v10}, Ljava/text/DecimalFormatSymbols;->maybeStripMarkers(Ljava/lang/String;C)C

    move-result v0

    iput-char v0, v1, Ljava/text/DecimalFormatSymbols;->minusSign:C

    .line 691
    aget-object v0, v6, v13

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, v1, Ljava/text/DecimalFormatSymbols;->exponential:C

    .line 692
    aget-object v0, v6, v13

    iput-object v0, v1, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    .line 693
    aget-object v0, v6, v14

    const/16 v7, 0x2030

    invoke-static {v0, v7}, Ljava/text/DecimalFormatSymbols;->maybeStripMarkers(Ljava/lang/String;C)C

    move-result v0

    iput-char v0, v1, Ljava/text/DecimalFormatSymbols;->perMill:C

    .line 694
    const/16 v0, 0x9

    aget-object v0, v6, v0

    iput-object v0, v1, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 695
    aget-object v0, v6, v16

    iput-object v0, v1, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 701
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d4

    .line 703
    :try_start_cc
    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    iput-object v0, v1, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;
    :try_end_d2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_cc .. :try_end_d2} :catch_d3

    .line 706
    goto :goto_d4

    .line 704
    :catch_d3
    move-exception v0

    .line 708
    :cond_d4
    :goto_d4
    iget-object v0, v1, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    if-eqz v0, :cond_fc

    .line 709
    invoke-virtual {v0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 710
    aget-object v7, v4, v8

    if-eqz v7, :cond_ed

    aget-object v7, v4, v8

    if-ne v7, v0, :cond_ed

    .line 711
    aget-object v0, v4, v9

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    goto :goto_10c

    .line 713
    :cond_ed
    iget-object v0, v1, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v0, v2}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 714
    iget-object v7, v1, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    aput-object v7, v4, v8

    .line 715
    aput-object v0, v4, v9

    goto :goto_10c

    .line 719
    :cond_fc
    const-string v0, "XXX"

    iput-object v0, v1, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 721
    :try_start_100
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    iput-object v0, v1, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;
    :try_end_106
    .catch Ljava/lang/IllegalArgumentException; {:try_start_100 .. :try_end_106} :catch_107

    .line 723
    goto :goto_108

    .line 722
    :catch_107
    move-exception v0

    .line 724
    :goto_108
    const-string v0, "\u00a4"

    iput-object v0, v1, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 729
    :goto_10c
    iget-char v0, v1, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    iput-char v0, v1, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    .line 730
    return-void

    .line 661
    .end local v2    # "locale":Ljava/util/Locale;
    .end local v3    # "localeData":Llibcore/icu/LocaleData;
    .end local v4    # "data":[Ljava/lang/Object;
    .end local v5    # "values":[Ljava/lang/String;
    .end local v6    # "numberElements":[Ljava/lang/String;
    .restart local p1    # "locale":Ljava/util/Locale;
    :cond_111
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "locale"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist-max-o maybeStripMarkers(Ljava/lang/String;C)C
    .registers 8
    .param p0, "symbol"    # Ljava/lang/String;
    .param p1, "fallback"    # C

    .line 742
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 743
    .local v0, "length":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_28

    .line 744
    const/4 v1, 0x0

    .line 745
    .local v1, "sawNonMarker":Z
    const/4 v2, 0x0

    .line 746
    .local v2, "nonMarker":C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v0, :cond_25

    .line 747
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 748
    .local v4, "c":C
    const/16 v5, 0x200e

    if-eq v4, v5, :cond_22

    const/16 v5, 0x200f

    if-eq v4, v5, :cond_22

    const/16 v5, 0x61c

    if-ne v4, v5, :cond_1d

    .line 749
    goto :goto_22

    .line 751
    :cond_1d
    if-eqz v1, :cond_20

    .line 753
    return p1

    .line 755
    :cond_20
    const/4 v1, 0x1

    .line 756
    move v2, v4

    .line 746
    .end local v4    # "c":C
    :cond_22
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 758
    .end local v3    # "i":I
    :cond_25
    if-eqz v1, :cond_28

    .line 759
    return v2

    .line 762
    .end local v1    # "sawNonMarker":Z
    .end local v2    # "nonMarker":C
    :cond_28
    return p1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 926
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 927
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    .line 928
    .local v1, "serialVersionOnStream":I
    const-string v3, "currencySymbol"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 929
    const-string v3, "decimalSeparator"

    const/16 v5, 0x2e

    invoke-virtual {v0, v3, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 930
    const-string v3, "digit"

    const/16 v6, 0x23

    invoke-virtual {v0, v3, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setDigit(C)V

    .line 931
    const-string v3, "groupingSeparator"

    const/16 v6, 0x2c

    invoke-virtual {v0, v3, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 932
    const-string v3, "infinity"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 933
    const-string v3, "intlCurrencySymbol"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 934
    const-string v3, "NaN"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 935
    const-string v3, "patternSeparator"

    const/16 v4, 0x3b

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    .line 941
    const-string v3, "minusSignStr"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 942
    .local v3, "minusSignStr":Ljava/lang/String;
    if-eqz v3, :cond_73

    .line 943
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    goto :goto_7e

    .line 945
    :cond_73
    const/16 v6, 0x2d

    const-string v7, "minusSign"

    invoke-virtual {v0, v7, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v6

    invoke-virtual {p0, v6}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    .line 947
    :goto_7e
    const-string v6, "percentStr"

    invoke-virtual {v0, v6, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 948
    .local v6, "percentStr":Ljava/lang/String;
    if-eqz v6, :cond_8f

    .line 949
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    goto :goto_9a

    .line 951
    :cond_8f
    const/16 v2, 0x25

    const-string v7, "percent"

    invoke-virtual {v0, v7, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setPercent(C)V

    .line 954
    :goto_9a
    const/16 v2, 0x2030

    const-string v7, "perMill"

    invoke-virtual {v0, v7, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setPerMill(C)V

    .line 955
    const/16 v2, 0x30

    const-string v7, "zeroDigit"

    invoke-virtual {v0, v7, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setZeroDigit(C)V

    .line 956
    const-string v2, "locale"

    invoke-virtual {v0, v2, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    .line 957
    if-nez v1, :cond_c4

    .line 958
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    goto :goto_cd

    .line 960
    :cond_c4
    const-string v2, "monetarySeparator"

    invoke-virtual {v0, v2, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    .line 963
    :goto_cd
    const-string v2, "E"

    if-nez v1, :cond_d4

    .line 965
    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    goto :goto_f2

    .line 966
    :cond_d4
    const/4 v5, 0x3

    if-ge v1, v5, :cond_e7

    .line 968
    const/16 v2, 0x45

    const-string v5, "exponential"

    invoke-virtual {v0, v5, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    goto :goto_f2

    .line 971
    :cond_e7
    const-string v5, "exponentialSeparator"

    invoke-virtual {v0, v5, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    .line 975
    :goto_f2
    :try_start_f2
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    iput-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;
    :try_end_fa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f2 .. :try_end_fa} :catch_fb

    .line 978
    goto :goto_fe

    .line 976
    :catch_fb
    move-exception v2

    .line 977
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    iput-object v4, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 980
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_fe
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 878
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 879
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    const-string v2, "currencySymbol"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 880
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v1

    const-string v2, "decimalSeparator"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 881
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    move-result v1

    const-string v2, "digit"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 882
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v2, "exponential"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 883
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    const-string v2, "exponentialSeparator"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 884
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v1

    const-string v2, "groupingSeparator"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 885
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    const-string v2, "infinity"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 886
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    const-string v2, "intlCurrencySymbol"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 887
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v1

    const-string v2, "monetarySeparator"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 888
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    const-string v2, "NaN"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 889
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v1

    const-string v2, "patternSeparator"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 890
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    move-result v1

    const-string v2, "perMill"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 891
    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 892
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    const-string v2, "zeroDigit"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 893
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    const-string v2, "locale"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 897
    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    const-string v2, "minusSign"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 898
    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    const-string v2, "percent"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 900
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "minusSignStr"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 901
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "percentStr"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 902
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 903
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 3

    .line 584
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 586
    :catch_7
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 596
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 597
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 598
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v0

    .line 599
    :cond_13
    move-object v2, p1

    check-cast v2, Ljava/text/DecimalFormatSymbols;

    .line 600
    .local v2, "other":Ljava/text/DecimalFormatSymbols;
    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    iget-char v4, v2, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    if-ne v3, v4, :cond_90

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    iget-char v4, v2, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    if-ne v3, v4, :cond_90

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    iget-char v4, v2, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    if-ne v3, v4, :cond_90

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    iget-char v4, v2, Ljava/text/DecimalFormatSymbols;->percent:C

    if-ne v3, v4, :cond_90

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    iget-char v4, v2, Ljava/text/DecimalFormatSymbols;->perMill:C

    if-ne v3, v4, :cond_90

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    iget-char v4, v2, Ljava/text/DecimalFormatSymbols;->digit:C

    if-ne v3, v4, :cond_90

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    iget-char v4, v2, Ljava/text/DecimalFormatSymbols;->minusSign:C

    if-ne v3, v4, :cond_90

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    iget-char v4, v2, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    if-ne v3, v4, :cond_90

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 608
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 609
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 610
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 611
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    iget-object v4, v2, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    if-ne v3, v4, :cond_90

    iget-char v3, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    iget-char v4, v2, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    if-ne v3, v4, :cond_90

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    iget-object v4, v2, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    .line 614
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    iget-object v3, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    iget-object v4, v2, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    .line 615
    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    move v0, v1

    goto :goto_91

    :cond_90
    nop

    .line 600
    :goto_91
    return v0
.end method

.method public whitelist core-platform-api test-api getCurrency()Ljava/util/Currency;
    .registers 2

    .line 471
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getCurrencySymbol()Ljava/lang/String;
    .registers 2

    .line 401
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getDecimalSeparator()C
    .registers 2

    .line 205
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    return v0
.end method

.method public whitelist core-platform-api test-api getDigit()C
    .registers 2

    .line 275
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    return v0
.end method

.method public whitelist core-platform-api test-api getExponentSeparator()Ljava/lang/String;
    .registers 2

    .line 543
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getExponentialSymbol()C
    .registers 2

    .line 531
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->exponential:C

    return v0
.end method

.method public whitelist core-platform-api test-api getGroupingSeparator()C
    .registers 2

    .line 185
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    return v0
.end method

.method protected greylist-max-o getIcuDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;
    .registers 5

    .line 771
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    if-eqz v0, :cond_5

    .line 772
    return-object v0

    .line 775
    :cond_5
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 778
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setPlusSign(C)V

    .line 779
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setZeroDigit(C)V

    .line 780
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setDigit(C)V

    .line 781
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 782
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 786
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setMonetaryGroupingSeparator(C)V

    .line 787
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    .line 788
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setPercent(C)V

    .line 789
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setPerMill(C)V

    .line 790
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    .line 791
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v1, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setMinusSign(C)V

    .line 792
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, ""

    invoke-virtual {v0, v2, v1, v3}, Landroid/icu/text/DecimalFormatSymbols;->setPatternForCurrencySpacing(IZLjava/lang/String;)V

    .line 801
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/icu/text/DecimalFormatSymbols;->setPatternForCurrencySpacing(IZLjava/lang/String;)V

    .line 806
    :try_start_7d
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 807
    invoke-virtual {v1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v1

    .line 806
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setCurrency(Landroid/icu/util/Currency;)V
    :try_end_8c
    .catch Ljava/lang/NullPointerException; {:try_start_7d .. :try_end_8c} :catch_8d

    .line 810
    goto :goto_96

    .line 808
    :catch_8d
    move-exception v0

    .line 809
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "XXX"

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 812
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_96
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setInternationalCurrencySymbol(Ljava/lang/String;)V

    .line 815
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getInfinity()Ljava/lang/String;
    .registers 2

    .line 318
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getInternationalCurrencySymbol()Ljava/lang/String;
    .registers 2

    .line 427
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getMinusSign()C
    .registers 2

    .line 363
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    return v0
.end method

.method public greylist-max-o getMinusSignString()Ljava/lang/String;
    .registers 2

    .line 376
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getMonetaryDecimalSeparator()C
    .registers 2

    .line 506
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    return v0
.end method

.method public whitelist core-platform-api test-api getNaN()Ljava/lang/String;
    .registers 2

    .line 340
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getPatternSeparator()C
    .registers 2

    .line 296
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    return v0
.end method

.method public whitelist core-platform-api test-api getPerMill()C
    .registers 2

    .line 225
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    return v0
.end method

.method public whitelist core-platform-api test-api getPercent()C
    .registers 2

    .line 245
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    return v0
.end method

.method public greylist getPercentString()Ljava/lang/String;
    .registers 2

    .line 255
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getZeroDigit()C
    .registers 2

    .line 165
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    return v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 4

    .line 623
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    .line 624
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    add-int/2addr v1, v2

    .line 625
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    add-int/2addr v0, v2

    .line 627
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    add-int/2addr v1, v2

    .line 628
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    add-int/2addr v0, v2

    .line 629
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    add-int/2addr v1, v2

    .line 630
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    add-int/2addr v0, v2

    .line 631
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    add-int/2addr v1, v2

    .line 632
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 633
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 634
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 635
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 636
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 637
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    add-int/2addr v1, v2

    .line 638
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 639
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 641
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist core-platform-api test-api setCurrency(Ljava/util/Currency;)V
    .registers 4
    .param p1, "currency"    # Ljava/util/Currency;

    .line 487
    const/4 v0, 0x0

    if-eqz p1, :cond_16

    .line 490
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 491
    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 492
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 494
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 495
    return-void

    .line 488
    :cond_16
    throw v0
.end method

.method public whitelist core-platform-api test-api setCurrencySymbol(Ljava/lang/String;)V
    .registers 3
    .param p1, "currency"    # Ljava/lang/String;

    .line 413
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 416
    return-void
.end method

.method public whitelist core-platform-api test-api setDecimalSeparator(C)V
    .registers 3
    .param p1, "decimalSeparator"    # C

    .line 214
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 217
    return-void
.end method

.method public whitelist core-platform-api test-api setDigit(C)V
    .registers 3
    .param p1, "digit"    # C

    .line 284
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 287
    return-void
.end method

.method public whitelist core-platform-api test-api setExponentSeparator(Ljava/lang/String;)V
    .registers 3
    .param p1, "exp"    # Ljava/lang/String;

    .line 567
    if-eqz p1, :cond_5

    .line 570
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    .line 571
    return-void

    .line 568
    :cond_5
    const/4 v0, 0x0

    throw v0
.end method

.method greylist-max-o setExponentialSymbol(C)V
    .registers 3
    .param p1, "exp"    # C

    .line 551
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->exponential:C

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 554
    return-void
.end method

.method public whitelist core-platform-api test-api setGroupingSeparator(C)V
    .registers 3
    .param p1, "groupingSeparator"    # C

    .line 194
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 197
    return-void
.end method

.method public whitelist core-platform-api test-api setInfinity(Ljava/lang/String;)V
    .registers 3
    .param p1, "infinity"    # Ljava/lang/String;

    .line 328
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 331
    return-void
.end method

.method public whitelist core-platform-api test-api setInternationalCurrencySymbol(Ljava/lang/String;)V
    .registers 5
    .param p1, "currencyCode"    # Ljava/lang/String;

    .line 448
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 450
    if-eqz p1, :cond_17

    .line 452
    :try_start_7
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 454
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_15} :catch_16

    .line 456
    goto :goto_17

    .line 455
    :catch_16
    move-exception v1

    .line 459
    :cond_17
    :goto_17
    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 460
    return-void
.end method

.method public whitelist core-platform-api test-api setMinusSign(C)V
    .registers 3
    .param p1, "minusSign"    # C

    .line 387
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 390
    return-void
.end method

.method public whitelist core-platform-api test-api setMonetaryDecimalSeparator(C)V
    .registers 3
    .param p1, "sep"    # C

    .line 517
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 520
    return-void
.end method

.method public whitelist core-platform-api test-api setNaN(Ljava/lang/String;)V
    .registers 3
    .param p1, "NaN"    # Ljava/lang/String;

    .line 350
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 353
    return-void
.end method

.method public whitelist core-platform-api test-api setPatternSeparator(C)V
    .registers 3
    .param p1, "patternSeparator"    # C

    .line 306
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 309
    return-void
.end method

.method public whitelist core-platform-api test-api setPerMill(C)V
    .registers 3
    .param p1, "perMill"    # C

    .line 234
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 237
    return-void
.end method

.method public whitelist core-platform-api test-api setPercent(C)V
    .registers 3
    .param p1, "percent"    # C

    .line 264
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 267
    return-void
.end method

.method public whitelist core-platform-api test-api setZeroDigit(C)V
    .registers 3
    .param p1, "zeroDigit"    # C

    .line 174
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 177
    return-void
.end method
