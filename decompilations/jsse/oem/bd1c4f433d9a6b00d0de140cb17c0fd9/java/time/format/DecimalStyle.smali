.class public final Ljava/time/format/DecimalStyle;
.super Ljava/lang/Object;
.source "DecimalStyle.java"


# static fields
.field private static final CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/time/format/DecimalStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final STANDARD:Ljava/time/format/DecimalStyle;


# instance fields
.field private final decimalSeparator:C

.field private final negativeSign:C

.field private final positiveSign:C

.field private final zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
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

    .line 84
    return-void
.end method

.method private constructor <init>(CCCC)V
    .registers 5
    .param p1, "zeroChar"    # C
    .param p2, "positiveSignChar"    # C
    .param p3, "negativeSignChar"    # C
    .param p4, "decimalPointChar"    # C

    .prologue
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

.method private static create(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;
    .registers 7
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 166
    invoke-static {p0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    .line 167
    .local v2, "oldSymbols":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v4

    .line 168
    .local v4, "zeroDigit":C
    const/16 v3, 0x2b

    .line 169
    .local v3, "positiveSign":C
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v1

    .line 170
    .local v1, "negativeSign":C
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v0

    .line 171
    .local v0, "decimalSeparator":C
    const/16 v5, 0x30

    if-ne v4, v5, :cond_21

    const/16 v5, 0x2d

    if-ne v1, v5, :cond_21

    const/16 v5, 0x2e

    if-ne v0, v5, :cond_21

    .line 172
    sget-object v5, Ljava/time/format/DecimalStyle;->STANDARD:Ljava/time/format/DecimalStyle;

    return-object v5

    .line 174
    :cond_21
    new-instance v5, Ljava/time/format/DecimalStyle;

    invoke-direct {v5, v4, v3, v1, v0}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    return-object v5
.end method

.method public static getAvailableLocales()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
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

.method public static of(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 155
    const-string/jumbo v1, "locale"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    sget-object v1, Ljava/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    move-result-object v0

    .end local v0    # "info":Ljava/time/format/DecimalStyle;
    check-cast v0, Ljava/time/format/DecimalStyle;

    .line 162
    .restart local v0    # "info":Ljava/time/format/DecimalStyle;
    :cond_21
    return-object v0
.end method

.method public static ofDefaultLocale()Ljava/time/format/DecimalStyle;
    .registers 1

    .prologue
    .line 143
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/time/format/DecimalStyle;->of(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "numericText"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-char v3, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    const/16 v4, 0x30

    if-ne v3, v4, :cond_7

    .line 330
    return-object p1

    .line 332
    :cond_7
    iget-char v3, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    add-int/lit8 v1, v3, -0x30

    .line 333
    .local v1, "diff":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 334
    .local v0, "array":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, v0

    if-ge v2, v3, :cond_1c

    .line 335
    aget-char v3, v0, v2

    add-int/2addr v3, v1

    int-to-char v3, v3

    aput-char v3, v0, v2

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 337
    :cond_1c
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method convertToDigit(C)I
    .registers 4
    .param p1, "ch"    # C

    .prologue
    .line 318
    iget-char v1, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    sub-int v0, p1, v1

    .line 319
    .local v0, "val":I
    if-ltz v0, :cond_b

    const/16 v1, 0x9

    if-gt v0, v1, :cond_b

    .end local v0    # "val":I
    :goto_a
    return v0

    .restart local v0    # "val":I
    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 349
    if-ne p0, p1, :cond_5

    .line 350
    return v1

    .line 352
    :cond_5
    instance-of v3, p1, Ljava/time/format/DecimalStyle;

    if-eqz v3, :cond_29

    move-object v0, p1

    .line 353
    check-cast v0, Ljava/time/format/DecimalStyle;

    .line 354
    .local v0, "other":Ljava/time/format/DecimalStyle;
    iget-char v3, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    iget-char v4, v0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    if-ne v3, v4, :cond_27

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    iget-char v4, v0, Ljava/time/format/DecimalStyle;->positiveSign:C

    if-ne v3, v4, :cond_27

    .line 355
    iget-char v3, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    iget-char v4, v0, Ljava/time/format/DecimalStyle;->negativeSign:C

    if-ne v3, v4, :cond_27

    iget-char v3, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    iget-char v4, v0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    if-ne v3, v4, :cond_25

    .line 354
    :goto_24
    return v1

    :cond_25
    move v1, v2

    .line 355
    goto :goto_24

    :cond_27
    move v1, v2

    .line 354
    goto :goto_24

    .line 357
    .end local v0    # "other":Ljava/time/format/DecimalStyle;
    :cond_29
    return v2
.end method

.method public getDecimalSeparator()C
    .registers 2

    .prologue
    .line 291
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    return v0
.end method

.method public getNegativeSign()C
    .registers 2

    .prologue
    .line 262
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    return v0
.end method

.method public getPositiveSign()C
    .registers 2

    .prologue
    .line 233
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    return v0
.end method

.method public getZeroDigit()C
    .registers 2

    .prologue
    .line 203
    iget-char v0, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
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

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DecimalStyle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->zeroDigit:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->positiveSign:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->negativeSign:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDecimalSeparator(C)Ljava/time/format/DecimalStyle;
    .registers 6
    .param p1, "decimalSeparator"    # C

    .prologue
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

.method public withNegativeSign(C)Ljava/time/format/DecimalStyle;
    .registers 6
    .param p1, "negativeSign"    # C

    .prologue
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

.method public withPositiveSign(C)Ljava/time/format/DecimalStyle;
    .registers 6
    .param p1, "positiveSign"    # C

    .prologue
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

.method public withZeroDigit(C)Ljava/time/format/DecimalStyle;
    .registers 6
    .param p1, "zeroDigit"    # C

    .prologue
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
