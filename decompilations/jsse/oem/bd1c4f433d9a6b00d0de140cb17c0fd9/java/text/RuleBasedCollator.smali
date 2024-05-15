.class public Ljava/text/RuleBasedCollator;
.super Ljava/text/Collator;
.source "RuleBasedCollator.java"


# direct methods
.method constructor <init>(Landroid/icu/text/RuleBasedCollator;)V
    .registers 2
    .param p1, "wrapper"    # Landroid/icu/text/RuleBasedCollator;

    .prologue
    .line 247
    invoke-direct {p0, p1}, Ljava/text/Collator;-><init>(Landroid/icu/text/Collator;)V

    .line 248
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "rules"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/text/Collator;-><init>()V

    .line 283
    if-nez p1, :cond_e

    .line 284
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "rules == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_e
    :try_start_e
    new-instance v1, Landroid/icu/text/RuleBasedCollator;

    invoke-direct {v1, p1}, Landroid/icu/text/RuleBasedCollator;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljava/text/RuleBasedCollator;->icuColl:Landroid/icu/text/Collator;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_16

    .line 298
    return-void

    .line 288
    :catch_16
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/text/ParseException;

    if-eqz v1, :cond_1e

    .line 290
    check-cast v0, Ljava/text/ParseException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 296
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private collAsICU()Landroid/icu/text/RuleBasedCollator;
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Landroid/icu/text/Collator;

    check-cast v0, Landroid/icu/text/RuleBasedCollator;

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 377
    invoke-super {p0}, Ljava/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 354
    if-eqz p1, :cond_5

    if-nez p2, :cond_e

    .line 355
    :cond_5
    :try_start_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 357
    :cond_e
    :try_start_e
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_b

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 387
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 388
    :cond_4
    invoke-super {p0, p1}, Ljava/text/Collator;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 322
    if-nez p1, :cond_b

    .line 323
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_b
    new-instance v0, Ljava/text/CollationElementIterator;

    invoke-direct {p0}, Ljava/text/RuleBasedCollator;->collAsICU()Landroid/icu/text/RuleBasedCollator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/CollationElementIterator;-><init>(Landroid/icu/text/CollationElementIterator;)V

    return-object v0
.end method

.method public getCollationElementIterator(Ljava/text/CharacterIterator;)Ljava/text/CollationElementIterator;
    .registers 4
    .param p1, "source"    # Ljava/text/CharacterIterator;

    .prologue
    .line 338
    if-nez p1, :cond_b

    .line 339
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_b
    new-instance v0, Ljava/text/CollationElementIterator;

    invoke-direct {p0}, Ljava/text/RuleBasedCollator;->collAsICU()Landroid/icu/text/RuleBasedCollator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/text/CharacterIterator;)Landroid/icu/text/CollationElementIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/CollationElementIterator;-><init>(Landroid/icu/text/CollationElementIterator;)V

    return-object v0
.end method

.method public declared-synchronized getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 367
    if-nez p1, :cond_6

    monitor-exit p0

    .line 368
    return-object v0

    .line 370
    :cond_6
    :try_start_6
    new-instance v0, Llibcore/icu/CollationKeyICU;

    iget-object v1, p0, Ljava/text/RuleBasedCollator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v1, p1}, Landroid/icu/text/Collator;->getCollationKey(Ljava/lang/String;)Landroid/icu/text/CollationKey;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Llibcore/icu/CollationKeyICU;-><init>(Ljava/lang/String;Landroid/icu/text/CollationKey;)V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRules()Ljava/lang/String;
    .registers 2

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/text/RuleBasedCollator;->collAsICU()Landroid/icu/text/RuleBasedCollator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedCollator;->getRules()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 395
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v0}, Landroid/icu/text/Collator;->hashCode()I

    move-result v0

    return v0
.end method
