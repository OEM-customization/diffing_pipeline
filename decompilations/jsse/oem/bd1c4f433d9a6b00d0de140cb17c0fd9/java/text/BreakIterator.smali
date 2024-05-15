.class public abstract Ljava/text/BreakIterator;
.super Ljava/lang/Object;
.source "BreakIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DONE:I = -0x1


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    return-void
.end method

.method public static declared-synchronized getAvailableLocales()[Ljava/util/Locale;
    .registers 2

    .prologue
    const-class v0, Ljava/text/BreakIterator;

    monitor-enter v0

    .line 543
    :try_start_3
    invoke-static {}, Landroid/icu/text/BreakIterator;->getAvailableLocales()[Ljava/util/Locale;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getCharacterInstance()Ljava/text/BreakIterator;
    .registers 1

    .prologue
    .line 487
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 501
    new-instance v0, Ljava/text/IcuIteratorWrapper;

    .line 502
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    move-result-object v1

    .line 501
    invoke-direct {v0, v1}, Ljava/text/IcuIteratorWrapper;-><init>(Landroid/icu/text/BreakIterator;)V

    return-object v0
.end method

.method public static getLineInstance()Ljava/text/BreakIterator;
    .registers 1

    .prologue
    .line 461
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 475
    new-instance v0, Ljava/text/IcuIteratorWrapper;

    .line 476
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    move-result-object v1

    .line 475
    invoke-direct {v0, v1}, Ljava/text/IcuIteratorWrapper;-><init>(Landroid/icu/text/BreakIterator;)V

    return-object v0
.end method

.method public static getSentenceInstance()Ljava/text/BreakIterator;
    .registers 1

    .prologue
    .line 513
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/BreakIterator;->getSentenceInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getSentenceInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 527
    new-instance v0, Ljava/text/IcuIteratorWrapper;

    .line 528
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    move-result-object v1

    .line 527
    invoke-direct {v0, v1}, Ljava/text/IcuIteratorWrapper;-><init>(Landroid/icu/text/BreakIterator;)V

    return-object v0
.end method

.method public static getWordInstance()Ljava/text/BreakIterator;
    .registers 1

    .prologue
    .line 435
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 449
    new-instance v0, Ljava/text/IcuIteratorWrapper;

    .line 450
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    move-result-object v1

    .line 449
    invoke-direct {v0, v1}, Ljava/text/IcuIteratorWrapper;-><init>(Landroid/icu/text/BreakIterator;)V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 242
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 244
    :catch_5
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract current()I
.end method

.method public abstract first()I
.end method

.method public abstract following(I)I
.end method

.method public abstract getText()Ljava/text/CharacterIterator;
.end method

.method public isBoundary(I)Z
    .registers 6
    .param p1, "offset"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 375
    if-nez p1, :cond_5

    .line 376
    return v1

    .line 378
    :cond_5
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    .line 379
    .local v0, "boundary":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_14

    .line 380
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 382
    :cond_14
    if-ne v0, p1, :cond_17

    :goto_16
    return v1

    :cond_17
    move v1, v2

    goto :goto_16
.end method

.method public abstract last()I
.end method

.method public abstract next()I
.end method

.method public abstract next(I)I
.end method

.method public preceding(I)I
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    .line 351
    .local v0, "pos":I
    :goto_4
    if-lt v0, p1, :cond_e

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 352
    invoke-virtual {p0}, Ljava/text/BreakIterator;->previous()I

    move-result v0

    goto :goto_4

    .line 354
    :cond_e
    return v0
.end method

.method public abstract previous()I
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 417
    new-instance v0, Ljava/text/StringCharacterIterator;

    invoke-direct {v0, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 418
    return-void
.end method

.method public abstract setText(Ljava/text/CharacterIterator;)V
.end method
