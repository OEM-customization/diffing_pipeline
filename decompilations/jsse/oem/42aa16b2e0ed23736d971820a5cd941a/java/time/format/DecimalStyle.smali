.class public final Ljava/time/format/DecimalStyle;
.super Ljava/lang/Object;
.source "DecimalStyle.java"


# static fields
.field private static final greylist-max-o CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Ljava/time/format/DecimalStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist core-platform-api test-api STANDARD:Ljava/time/format/DecimalStyle;


# instance fields
.field private final greylist-max-o decimalSeparator:C

.field private final greylist-max-o negativeSign:C

.field private final greylist-max-o positiveSign:C

.field private final greylist-max-o zeroDigit:C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 91
    new-instance v0, Ljava/time/format/DecimalStyle;

    const/16 v1, 0x30

    const/16 v2, 0x2b

    const/16 v3, 0x2d

    const/16 v4, 0x2e

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    sput-object v0, Ljava/time/format/DecimalStyle;->STANDARD:Ljava/time/format/DecimalStyle;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor greylist-max-o <init>(CCCC)V
    .registers 5
    .param p1, "zeroChar"    # C
    .param p2, "positiveSignChar"    # C
    .param p3, "negativeSignChar"    # C
    .param p4, "decimalPointChar"    # C

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-char p1, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    .line 188
    iput-char p2, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    .line 189
    iput-char p3, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    .line 190
    iput-char p4, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    .line 191
    return-void
.end method

.method private static greylist-max-o create(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;
    .registers 7
    .param p0, "locale"    # Ljava/util/Locale;

    .line 166
    invoke-static {p0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    .line 167
    .local v0, "oldSymbols":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    .line 168
    .local v1, "zeroDigit":C
    const/16 v2, 0x2b

    .line 169
    .local v2, "positiveSign":C
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v3

    .line 170
    .local v3, "negativeSign":C
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v4

    .line 171
    .local v4, "decimalSeparator":C
    const/16 v5, 0x30

    if-ne v1, v5, :cond_21

    const/16 v5, 0x2d

    if-ne v3, v5, :cond_21

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_21

    .line 172
    sget-object v5, Ljava/time/format/DecimalStyle;->STANDARD:Ljava/time/format/DecimalStyle;

    return-object v5

    .line 174
    :cond_21
    new-instance v5, Ljava/time/format/DecimalStyle;

    invoke-direct {v5, v1, v2, v3, v4}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v5
.end method

.method public static whitelist core-platform-api test-api getAvailableLocales()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    .line 124
    .local v0, "l":[Ljava/util/Locale;
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 125
    .local v1, "locales":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 126
    return-object v1
.end method

.method public static whitelist core-platform-api test-api of(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 155
    const-string v0, "locale"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    sget-object v0, Ljava/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/format/DecimalStyle;

    .line 157
    .local v0, "info":Ljava/time/format/DecimalStyle;
    if-nez v0, :cond_21

    .line 158
    invoke-static {p0}, Ljava/time/format/DecimalStyle;->create(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;

    move-result-object v0

    .line 159
    sget-object v1, Ljava/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Ljava/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/time/format/DecimalStyle;

    .line 162
    :cond_21
    return-object v0
.end method

.method public static whitelist core-platform-api test-api ofDefaultLocale()Ljava/time/format/DecimalStyle;
    .registers 1

    .line 143
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/time/format/DecimalStyle;->of(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method greylist-max-o convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "numericText"    # Ljava/lang/String;

    .line 329
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    const/16 v1, 0x30

    if-ne v0, v1, :cond_7

    .line 330
    return-object p1

    .line 332
    :cond_7
    sub-int/2addr v0, v1

    .line 333
    .local v0, "diff":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 334
    .local v1, "array":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    array-length v3, v1

    if-ge v2, v3, :cond_19

    .line 335
    aget-char v3, v1, v2

    add-int/2addr v3, v0

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 337
    .end local v2    # "i":I
    :cond_19
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method greylist-max-o convertToDigit(C)I
    .registers 4
    .param p1, "ch"    # C

    .line 318
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    sub-int v0, p1, v0

    .line 319
    .local v0, "val":I
    if-ltz v0, :cond_c

    const/16 v1, 0x9

    if-gt v0, v1, :cond_c

    move v1, v0

    goto :goto_d

    :cond_c
    const/4 v1, -0x1

    :goto_d
    return v1
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 349
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 350
    return v0

    .line 352
    :cond_4
    instance-of v1, p1, Ljava/time/format/DecimalStyle;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 353
    move-object v1, p1

    check-cast v1, Ljava/time/format/DecimalStyle;

    .line 354
    .local v1, "other":Ljava/time/format/DecimalStyle;
    iget-char v3, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    iget-char v4, v1, Ljava/time/format/DecimalStyle;->zeroDigit:C

    if-ne v3, v4, :cond_25

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    iget-char v4, v1, Ljava/time/format/DecimalStyle;->positiveSign:C

    if-ne v3, v4, :cond_25

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    iget-char v4, v1, Ljava/time/format/DecimalStyle;->negativeSign:C

    if-ne v3, v4, :cond_25

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    iget-char v4, v1, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    if-ne v3, v4, :cond_25

    goto :goto_26

    :cond_25
    move v0, v2

    :goto_26
    return v0

    .line 357
    .end local v1    # "other":Ljava/time/format/DecimalStyle;
    :cond_27
    return v2
.end method

.method public whitelist core-platform-api test-api getDecimalSeparator()C
    .registers 2

    .line 291
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    return v0
.end method

.method public whitelist core-platform-api test-api getNegativeSign()C
    .registers 2

    .line 262
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    return v0
.end method

.method public whitelist core-platform-api test-api getPositiveSign()C
    .registers 2

    .line 233
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    return v0
.end method

.method public whitelist core-platform-api test-api getZeroDigit()C
    .registers 2

    .line 203
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    return v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

    .line 367
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    add-int/2addr v0, v1

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    add-int/2addr v0, v1

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecimalStyle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api withDecimalSeparator(C)Ljava/time/format/DecimalStyle;
    .registers 6
    .param p1, "decimalSeparator"    # C

    .line 304
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    if-ne p1, v0, :cond_5

    .line 305
    return-object p0

    .line 307
    :cond_5
    new-instance v0, Ljava/time/format/DecimalStyle;

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    iget-char v2, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api withNegativeSign(C)Ljava/time/format/DecimalStyle;
    .registers 6
    .param p1, "negativeSign"    # C

    .line 275
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    if-ne p1, v0, :cond_5

    .line 276
    return-object p0

    .line 278
    :cond_5
    new-instance v0, Ljava/time/format/DecimalStyle;

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    iget-char v2, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api withPositiveSign(C)Ljava/time/format/DecimalStyle;
    .registers 6
    .param p1, "positiveSign"    # C

    .line 246
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    if-ne p1, v0, :cond_5

    .line 247
    return-object p0

    .line 249
    :cond_5
    new-instance v0, Ljava/time/format/DecimalStyle;

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    iget-char v2, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    invoke-direct {v0, v1, p1, v2, v3}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api withZeroDigit(C)Ljava/time/format/DecimalStyle;
    .registers 6
    .param p1, "zeroDigit"    # C

    .line 217
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    if-ne p1, v0, :cond_5

    .line 218
    return-object p0

    .line 220
    :cond_5
    new-instance v0, Ljava/time/format/DecimalStyle;

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    iget-char v2, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v0
.end method
